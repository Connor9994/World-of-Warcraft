-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Auctioning = TSM.MainUI.Operations:NewPackage("Auctioning")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local String = TSM.Include("Util.String")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	currentOperationName = nil,
	currentTab = nil,
}
local IGNORE_DURATION_OPTIONS = {
	L["None"],
	AUCTION_TIME_LEFT1.." ("..AUCTION_TIME_LEFT1_DETAIL..")",
	AUCTION_TIME_LEFT2.." ("..AUCTION_TIME_LEFT2_DETAIL..")",
	AUCTION_TIME_LEFT3.." ("..AUCTION_TIME_LEFT3_DETAIL..")",
}
local BELOW_MIN_ITEMS = { L["Don't Post Items"], L["Post at Minimum Price"], L["Post at Maximum Price"], L["Post at Normal Price"], L["Ignore Auctions Below Min"] }
local BELOW_MIN_KEYS = { "none", "minPrice", "maxPrice", "normalPrice", "ignore" }
local ABOVE_MAX_ITEMS = { L["Don't Post Items"], L["Post at Minimum Price"], L["Post at Maximum Price"], L["Post at Normal Price"] }
local ABOVE_MAX_KEYS = { "none", "minPrice", "maxPrice", "normalPrice" }
local POST_CAP_VALIDATE_CONTEXT = {
	isNumber = true,
}
local STACK_SIZE_VALIDATE_CONTEXT = {
	isNumber = true,
}
local KEEP_QUANTITY_VALIDATE_CONTEXT = {
	isNumber = true,
}
local MAX_EXPIRES_VALIDATE_CONTEXT = {
	isNumber = true,
}
local UNDERCUT_VALIDATE_CONTEXT = {
	isUndercut = true,
}
local PRICE_VALIDATE_CONTEXT = {
	badSources = {
		auctioningopmin = true,
		auctioningopmax = true,
		auctioningopnormal = true,
	}
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Auctioning.OnInitialize()
	-- Set min and max values
	POST_CAP_VALIDATE_CONTEXT.minValue, POST_CAP_VALIDATE_CONTEXT.maxValue = TSM.Operations.Auctioning.GetMinMaxValues("postCap")
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		STACK_SIZE_VALIDATE_CONTEXT.minValue, STACK_SIZE_VALIDATE_CONTEXT.maxValue = TSM.Operations.Auctioning.GetMinMaxValues("stackSize")
	end
	KEEP_QUANTITY_VALIDATE_CONTEXT.minValue, KEEP_QUANTITY_VALIDATE_CONTEXT.maxValue = TSM.Operations.Auctioning.GetMinMaxValues("keepQuantity")
	MAX_EXPIRES_VALIDATE_CONTEXT.minValue, MAX_EXPIRES_VALIDATE_CONTEXT.maxValue = TSM.Operations.Auctioning.GetMinMaxValues("maxExpires")
	TSM.MainUI.Operations.RegisterModule("Auctioning", private.GetAuctioningOperationSettings)
end



-- ============================================================================
-- Auctioning Operation Settings UI
-- ============================================================================

function private.GetAuctioningOperationSettings(operationName)
	UIUtils.AnalyticsRecordPathChange("main", "operations", "auctioning")
	private.currentOperationName = operationName
	private.currentTab = private.currentTab or L["Details"]
	return UIElements.New("TabGroup", "tabs")
		:SetMargin(0, 0, 8, 0)
		:SetNavCallback(private.GetAuctioningSettings)
		:AddPath(L["Details"])
		:AddPath(L["Posting"])
		:AddPath(L["Canceling"])
		:SetPath(private.currentTab)
end

function private.GetDetailsSettings()
	UIUtils.AnalyticsRecordPathChange("main", "operations", "auctioning", "details")
	local operation = TSM.Operations.GetSettings("Auctioning", private.currentOperationName)
	return UIElements.New("ScrollFrame", "settings")
		:SetPadding(8, 8, 8, 0)
		:SetBackgroundColor("PRIMARY_BG")
		:AddChild(TSM.MainUI.Operations.CreateExpandableSection("Auctioning", "generalOptions", L["General Options"], L["Adjust some general settings."])
			:AddChild(UIElements.New("Frame", "content")
				:SetLayout("VERTICAL")
				:AddChildrenWithFunction(private.AddMaxStackSizeSetting)
				:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("ignoreLowDuration", L["Ignore auctions by duration"])
					:SetLayout("VERTICAL")
					:SetHeight(48)
					:SetMargin(0, 0, 0, 16)
					:AddChild(UIElements.New("SelectionDropdown", "dropdown")
						:SetHeight(24)
						:SetDisabled(TSM.Operations.HasRelationship("Auctioning", private.currentOperationName, "ignoreLowDuration"))
						:SetItems(IGNORE_DURATION_OPTIONS)
						:SetSelectedItemByKey(operation.ignoreLowDuration + 1, true)
						:SetScript("OnSelectionChanged", private.IgnoreLowDurationOnSelectionChanged)
					)
				)
				:AddChildrenWithFunction(private.AddBlacklistPlayers)
			)
		)
		:AddChild(TSM.MainUI.Operations.GetOperationManagementElements("Auctioning", private.currentOperationName))
end

function private.AddMaxStackSizeSetting(frame)
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		frame:AddChild(private.CreateToggleLine("matchStackSize", L["Match stack size"]))
	end
end

function private.GetPostingSettings()
	UIUtils.AnalyticsRecordPathChange("main", "operations", "auctioning", "posting")
	local operation = TSM.Operations.GetSettings("Auctioning", private.currentOperationName)
	return UIElements.New("ScrollFrame", "settings")
		:SetPadding(8, 8, 8, 0)
		:SetBackgroundColor("PRIMARY_BG")
		:AddChild(TSM.MainUI.Operations.CreateExpandableSection("Auctioning", "postingSettings", L["Posting Options"], L["Adjust the settings below to set how groups attached to this operation will be auctioned."])
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("duration", L["Auction duration"])
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("SelectionDropdown", "dropdown")
					:SetHeight(24)
					:SetDisabled(TSM.Operations.HasRelationship("Auctioning", private.currentOperationName, "duration"))
					:SetItems(TSM.CONST.AUCTION_DURATIONS)
					:SetSelectedItemByKey(operation.duration)
					:SetScript("OnSelectionChanged", private.SetAuctioningDuration)
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("postCap", L["Post cap"], POST_CAP_VALIDATE_CONTEXT)
				:SetMargin(0, 0, 0, 12)
			)
			:AddChildrenWithFunction(private.AddStackSizeSettings)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("keepQuantity", L["Amount kept in bags"], KEEP_QUANTITY_VALIDATE_CONTEXT)
				:SetMargin(0, 0, 0, 12)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("maxExpires", L["Don't post after this many expires"], MAX_EXPIRES_VALIDATE_CONTEXT)
				:SetMargin(0, 0, 0, 4)
			)
		)
		:AddChild(TSM.MainUI.Operations.CreateExpandableSection("Auctioning", "priceSettings", L["Posting Price"], L["Adjust the settings below to set how groups attached to this operation will be priced."])
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("bidPercent", L["Set bid as percentage of buyout"])
				:SetLayout("VERTICAL")
				:SetHeight(48)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Frame", "content")
					:SetLayout("HORIZONTAL")
					:SetHeight(24)
					:AddChild(UIElements.New("Input", "input")
						:SetMargin(0, 8, 0, 0)
						:SetBackgroundColor("ACTIVE_BG")
						:SetValidateFunc(private.BidPercentValidateFunc)
						:SetDisabled(TSM.Operations.HasRelationship("Auctioning", private.currentOperationName, "bidPercent"))
						:SetValue((operation.bidPercent * 100).."%")
						:SetScript("OnValueChanged", private.BidPercentOnValueChanged)
					)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY3")
						:SetFormattedText(L["Enter a value from %d - %d%%"], 0, 100)
						:SetTextColor(TSM.Operations.HasRelationship("Auctioning", private.currentOperationName, "bidPercent") and "TEXT_DISABLED" or "TEXT")
					)
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("undercut", L["Undercut amount"], UNDERCUT_VALIDATE_CONTEXT)
				:SetMargin(0, 0, 0, 12)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("minPrice", L["Minimum price"], PRICE_VALIDATE_CONTEXT))
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("priceReset", L["When below minimum:"])
				:SetMargin(0, 0, 12, 12)
				:AddChild(UIElements.New("SelectionDropdown", "dropdown")
					:SetWidth(240)
					:SetDisabled(TSM.Operations.HasRelationship("Auctioning", private.currentOperationName, "priceReset"))
					:SetItems(BELOW_MIN_ITEMS, BELOW_MIN_KEYS)
					:SetSettingInfo(operation, "priceReset")
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("maxPrice", L["Maximum price"], PRICE_VALIDATE_CONTEXT))
			:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("aboveMax", L["When above maximum:"])
				:SetMargin(0, 0, 12, 12)
				:AddChild(UIElements.New("SelectionDropdown", "dropdown")
					:SetWidth(240)
					:SetDisabled(TSM.Operations.HasRelationship("Auctioning", private.currentOperationName, "aboveMax"))
					:SetItems(ABOVE_MAX_ITEMS, ABOVE_MAX_KEYS)
					:SetSettingInfo(operation, "aboveMax")
				)
			)
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("normalPrice", L["Normal price"], PRICE_VALIDATE_CONTEXT))
		)
end

function private.AddStackSizeSettings(frame)
	if not Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		return
	end
	frame:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("stackSize", L["Stack size"], STACK_SIZE_VALIDATE_CONTEXT)
		:SetMargin(0, 0, 0, 12)
	)
	frame:AddChild(private.CreateToggleLine("stackSizeIsCap", L["Allow partial stack"]))
end

function private.GetCancelingSettings()
	UIUtils.AnalyticsRecordPathChange("main", "operations", "auctioning", "canceling")
	return UIElements.New("ScrollFrame", "settings")
		:SetPadding(8, 8, 8, 0)
		:AddChild(TSM.MainUI.Operations.CreateExpandableSection("Auctioning", "priceSettings", L["Canceling Options"], L["Adjust the settings below to set how groups attached to this operation will be cancelled."])
			:AddChild(private.CreateToggleLine("cancelUndercut", L["Cancel undercut auctions"]))
			:AddChild(private.CreateToggleLine("cancelRepost", L["Cancel to repost higher"]))
			:AddChild(TSM.MainUI.Operations.CreateLinkedPriceInput("cancelRepostThreshold", L["Repost threshold"]))
		)
end

function private.GetAuctioningSettings(self, button)
	private.currentTab = button
	if button == L["Details"] then
		return private.GetDetailsSettings()
	elseif button == L["Posting"] then
		return private.GetPostingSettings()
	elseif button == L["Canceling"] then
		return private.GetCancelingSettings()
	else
		error("Unknown button!")
	end
end

function private.AddBlacklistPlayers(frame)
	if Environment.IsRetail() then
		return
	end
	frame:AddChild(TSM.MainUI.Operations.CreateLinkedSettingLine("blacklist", L["Blacklisted players"])
		:SetLayout("VERTICAL")
		:SetHeight(48)
		:AddChild(UIElements.New("Input", "input")
			:SetHeight(24)
			:SetBackgroundColor("ACTIVE_BG")
			:SetHintText(L["Enter player name"])
			:SetDisabled(TSM.Operations.HasRelationship("Auctioning", private.currentOperationName, "blacklist"))
			:SetScript("OnEnterPressed", private.BlacklistInputOnEnterPressed)
		)
	)
	local operation = TSM.Operations.GetSettings("Auctioning", private.currentOperationName)
	if operation.blacklist == "" then return end
	local containerFrame = UIElements.New("Frame", "blacklistFrame")
		:SetLayout("FLOW")
	local index = 1
	for player in String.SplitIterator(operation.blacklist, ",") do
		containerFrame:AddChild(UIElements.New("Frame", "blacklist"..index)
			:SetLayout("HORIZONTAL")
			:SetSize(100, 20)
			:SetMargin(0, 12, 0, 0)
			:AddChild(UIElements.New("Text", "text")
				:SetWidth("AUTO")
				:SetMargin(0, 2, 0, 0)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(player)
			)
			:AddChild(UIElements.New("Button", "removeBtn")
				:SetBackgroundAndSize("iconPack.14x14/Close/Circle")
				:SetContext(player)
				:SetScript("OnClick", private.RemoveBlacklistOnClick)
			)
			:AddChild(UIElements.New("Spacer", "spacer"))
		)
		index = index + 1
	end
	frame:AddChild(containerFrame)
end

function private.CreateToggleLine(key, label)
	local operation = TSM.Operations.GetSettings("Auctioning", private.currentOperationName)
	return TSM.MainUI.Operations.CreateLinkedSettingLine(key, label)
		:SetLayout("VERTICAL")
		:SetHeight(48)
		:SetMargin(0, 0, 0, 12)
		:AddChild(UIElements.New("ToggleYesNo", "toggle")
			:SetHeight(18)
			:SetDisabled(TSM.Operations.HasRelationship("Auctioning", private.currentOperationName, key))
			:SetSettingInfo(operation, key)
		)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.IgnoreLowDurationOnSelectionChanged(self)
	local operation = TSM.Operations.GetSettings("Auctioning", private.currentOperationName)
	operation.ignoreLowDuration = self:GetSelectedItemKey() - 1
end

function private.BlacklistInputOnEnterPressed(input)
	local newPlayer = input:GetValue()
	if newPlayer == "" or strfind(newPlayer, ",") or newPlayer ~= String.Escape(newPlayer) then
		-- this is an invalid player name
		return
	end
	local operation = TSM.Operations.GetSettings("Auctioning", private.currentOperationName)
	if String.SeparatedContains(operation.blacklist, ",", newPlayer) then
		-- this player is already added
		input:SetValue("")
		return
	end
	operation.blacklist = (operation.blacklist == "") and newPlayer or (operation.blacklist..","..newPlayer)
	input:GetElement("__parent.__parent.__parent.__parent.__parent.__parent"):ReloadContent()
end

function private.RemoveBlacklistOnClick(button)
	local player = button:GetContext()
	-- FIXME: This sort of logic should go within some Auctioning-specific operation setting wrapper code
	local operation = TSM.Operations.GetSettings("Auctioning", private.currentOperationName)
	if operation.blacklist == player then
		operation.blacklist = ""
	else
		-- handle cases where this entry is at the start, in the middle, and at the end
		operation.blacklist = gsub(operation.blacklist, "^"..player..",", "")
		operation.blacklist = gsub(operation.blacklist, ","..player..",", ",")
		operation.blacklist = gsub(operation.blacklist, ","..player.."$", "")
	end
	button:GetElement("__parent.__parent.__parent.__parent.__parent.__parent.__parent"):ReloadContent()
end

function private.SetAuctioningDuration(dropdown)
	local operation = TSM.Operations.GetSettings("Auctioning", private.currentOperationName)
	operation.duration = dropdown:GetSelectedItemKey()
end

function private.BidPercentValidateFunc(_, value)
	value = strmatch(value, "^([0-9]+) *%%?$")
	value = tonumber(value)
	if not value or value < 0 or value > 100 then
		return false, L["Bid percent must be between 0 and 100."]
	end
	return true
end

function private.BidPercentOnValueChanged(input)
	local operation = TSM.Operations.GetSettings("Auctioning", private.currentOperationName)
	local value = strmatch(input:GetValue(), "^([0-9]+) *%%?$")
	value = tonumber(value) / 100
	operation.bidPercent = value
end
