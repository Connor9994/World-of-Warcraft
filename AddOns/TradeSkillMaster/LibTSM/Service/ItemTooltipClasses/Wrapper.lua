-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
local Wrapper = TSM.Init("Service.ItemTooltipClasses.Wrapper")
local ExtraTip = TSM.Include("Service.ItemTooltipClasses.ExtraTip")
local Builder = TSM.Include("Service.ItemTooltipClasses.Builder")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local ItemString = TSM.Include("Util.ItemString")
local Theme = TSM.Include("Util.Theme")
local private = {
	builder = nil,
	settings = nil,
	tooltipRegistry = {},
	hookedBattlepetGlobal = nil,
	tooltipMethodPrehooks = nil,
	tooltipMethodPosthooks = {},
	lastMailTooltipUpdate = nil,
	lastMailTooltipIndex = nil,
	populateFunc = nil,
}



-- ============================================================================
-- Module Loading
-- ============================================================================

Wrapper:OnSettingsLoad(function()
	private.builder = Builder.Create()
	private.settings = Settings.NewView()
		:AddKey("global", "tooltipOptions", "embeddedTooltip")
		:AddKey("global", "tooltipOptions", "enabled")
		:AddKey("global", "tooltipOptions", "tooltipShowModifier")
	private.RegisterTooltip(GameTooltip)
	private.RegisterTooltip(ItemRefTooltip)
	if Environment.HasFeature(Environment.FEATURES.BATTLE_PETS) then
		private.RegisterTooltip(BattlePetTooltip)
		private.RegisterTooltip(FloatingBattlePetTooltip)
	end
	local orig = OpenMailAttachment_OnEnter
	OpenMailAttachment_OnEnter = function(self, index)
		private.lastMailTooltipUpdate = private.lastMailTooltipUpdate or 0
		if private.lastMailTooltipIndex ~= index or private.lastMailTooltipUpdate + 0.1 < GetTime() then
			private.lastMailTooltipUpdate = GetTime()
			private.lastMailTooltipIndex = index
			orig(self, index)
		end
	end
end)

Wrapper:OnGameDataLoad(function()
	if ArkInventory and ArkInventory.API and ArkInventory.API.CustomBattlePetTooltipReady then
		hooksecurefunc(ArkInventory.API, "CustomBattlePetTooltipReady", function(tooltip, link)
			link = ItemInfo.GetLink(ItemString.Get(link))
			private.SetTooltipItem(tooltip, link)
		end)
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function Wrapper.SetPopulateFunction(func)
	assert(type(func) == "function" and not private.populateFunc)
	private.populateFunc = func
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.RegisterTooltip(tooltip)
	local reg = {}
	reg.extraTip = ExtraTip.Create(tooltip)
	private.tooltipRegistry[tooltip] = reg

	if private.IsBattlePetTooltip(tooltip) then
		if not private.hookedBattlepetGlobal then
			private.hookedBattlepetGlobal = true
			hooksecurefunc("BattlePetTooltipTemplate_SetBattlePet", private.OnTooltipSetBattlePet)
			hooksecurefunc("BattlePetToolTip_Show", private.OnBattlePetTooltipShow)
		end
		tooltip:HookScript("OnHide", private.OnTooltipCleared)
	else
		tooltip:HookScript("OnTooltipCleared", private.OnTooltipCleared)
		if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
			TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, private.OnTooltipSetItem)
		else
			tooltip:HookScript("OnTooltipSetItem", private.OnTooltipSetItem)
			for method, prehook in pairs(private.tooltipMethodPrehooks) do
				local posthook = private.tooltipMethodPosthooks[method]
				local orig = tooltip[method]
				tooltip[method] = function(...)
					prehook(...)
					local a, b, c, d, e, f, g, h, i, j, k = orig(...)
					posthook(...)
					return a, b, c, d, e, f, g, h, i, j, k
				end
			end
		end
	end
end

function private.IsBattlePetTooltip(tooltip)
	if not Environment.HasFeature(Environment.FEATURES.BATTLE_PETS) then
		return false
	end
	return tooltip == BattlePetTooltip or tooltip == FloatingBattlePetTooltip
end

function private.OnTooltipSetItem(tooltip, data)
	local reg = private.tooltipRegistry[tooltip]
	if not reg then
		return
	end
	if reg.hasItem then
		return
	end
	local itemLocation = Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) and data.guid and C_Item.GetItemLocation(data.guid)
	if itemLocation and itemLocation:IsBagAndSlot() then
		reg.quantity = C_Container.GetContainerItemInfo(itemLocation.bagID, itemLocation.slotIndex).stackCount
	end

	tooltip:Show()
	local testName, item = tooltip:GetItem()
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) and item and data.id and data.id ~= ItemString.ToId(item) then
		-- GetItem() seems to be broken for recipes on retail, so just look it up by ID
		item = ItemString.Get(data.id)
	elseif not item then
		item = reg.item
	elseif testName == "" then
		-- this is likely a case where :GetItem() is broken for recipes - detect and try to fix it
		if strmatch(item, "item:([0-9]*):") == "" then
			item = reg.item
		end
	end
	if not item then
		return
	end

	private.SetTooltipItem(tooltip, item)
end

function private.OnTooltipSetBattlePet(tooltip, data)
	local reg = private.tooltipRegistry[tooltip]
	if reg.hasItem then
		private.OnTooltipCleared(tooltip)
	end

	local link = reg.item
	if not link then
		-- extract values from data
		local speciesID = data.speciesID
		local level = data.level
		local maxHealth = data.maxHealth
		local power = data.power
		local speed = data.speed
		local battlePetID = data.battlePetID or "0x0000000000000000"
		local name = data.name
		local customName = data.customName
		local breedQuality = data.breedQuality
		local colorCode = breedQuality == -1 and NORMAL_FONT_COLOR_CODE or (ITEM_QUALITY_COLORS[breedQuality] or ITEM_QUALITY_COLORS[0]).hex
		link = format("%s|Hbattlepet:%d:%d:%d:%d:%d:%d:%s|h[%s]|h|r", colorCode, speciesID, level, breedQuality, maxHealth, power, speed, battlePetID, customName or name)
	end

	private.SetTooltipItem(tooltip, link)
end

function private.OnTooltipCleared(tooltip)
	local reg = private.tooltipRegistry[tooltip]
	if reg.ignoreOnCleared then return end

	reg.extraTipUsed = nil
	reg.minWidth = 0
	reg.quantity = nil
	reg.hasItem = nil
	reg.item = nil
	reg.extraTip:Hide()
	reg.extraTip.minWidth = 0
	reg.extraTip.isTop = nil
end

function private.OnBattlePetTooltipShow()
	local reg = private.tooltipRegistry[BattlePetTooltip]
	reg.extraTip:Show()
end

function private.SetTooltipItem(tooltip, link)
	local itemString = ItemString.Get(link)
	if not private.IsEnabled() or not itemString then
		return
	end

	local reg = private.tooltipRegistry[tooltip]
	local quantity = max(IsShiftKeyDown() and reg.quantity or 1, 1)
	local isCached = private.builder:_Prepare(itemString, quantity)
	if not isCached then
		-- populate all the lines
		private.populateFunc(private.builder, itemString)
	end
	if private.builder:_IsEmpty() then
		return
	end
	reg.hasItem = true
	local useExtraTip = private.IsBattlePetTooltip(tooltip) or not private.settings.embeddedTooltip

	-- setup the extra tip if necessary
	if useExtraTip then
		reg.extraTip:Attach(tooltip)
		local r, g, b = GetItemQualityColor(ItemInfo.GetQuality(link) or 0)
		reg.extraTip:AddLine(ItemInfo.GetName(link), r, g, b)
	end

	-- add all the lines
	local targetTip = useExtraTip and reg.extraTip or tooltip
	targetTip:AddLine(" ")
	for _, left, right, lineColor in private.builder:_LineIterator() do
		local r, g, b = Theme.GetColor(lineColor):GetFractionalRGBA()
		if right then
			targetTip:AddDoubleLine(left, right, r, g, b, r, g, b)
		else
			targetTip:AddLine(left, r, g, b)
		end
	end

	-- show the tooltip / extra tip as necessary
	if not private.IsBattlePetTooltip(tooltip) then
		tooltip:Show()
	end
	if useExtraTip then
		reg.extraTip:Show()
	end
end

function private.IsEnabled()
	if not private.settings.enabled then
		return false
	elseif private.settings.tooltipShowModifier == "alt" and not IsAltKeyDown() then
		return false
	elseif private.settings.tooltipShowModifier == "ctrl" and not IsControlKeyDown() then
		return false
	end
	return true
end



-- ============================================================================
-- Hook Setup Code
-- ============================================================================

do
	local function PreHookHelper(self, quantityFunc, quantityOffset, ...)
		private.OnTooltipCleared(self)
		local reg = private.tooltipRegistry[self]
		reg.ignoreOnCleared = true
		if type(quantityFunc) == "number" then
			reg.quantity = quantityFunc
		elseif type(quantityOffset) == "string" then
			local data = quantityFunc(...)
			reg.quantity = data and data[quantityOffset] or nil
		else
			reg.quantity = select(quantityOffset, quantityFunc(...))
		end
		return reg
	end
	private.tooltipMethodPrehooks = {
		SetQuestItem = function(self, ...) PreHookHelper(self, GetQuestItemInfo, 3, ...) end,
		SetQuestLogItem = function(self, type, ...)
			local quantityFunc = type == "choice" and GetQuestLogChoiceInfo or GetQuestLogRewardInfo
			PreHookHelper(self, quantityFunc, 3, ...)
		end,
		SetRecipeReagentItem = function(self, ...)
			local spellId, dataSlotIndex = ...
			local info = C_TradeSkillUI.GetRecipeSchematic(spellId, false)
			local quantity = 1
			for _, reagentInfo in ipairs(info.reagentSlotSchematics) do
				if reagentInfo.dataSlotIndex == dataSlotIndex then
					quantity = reagentInfo.quantityRequired
					break
				end
			end
			local reg = PreHookHelper(self, quantity)
			reg.item = C_TradeSkillUI.GetRecipeFixedReagentItemLink(spellId, dataSlotIndex)
		end,
		SetRecipeResultItem = function(self, ...)
			private.OnTooltipCleared(self)
			local reg = private.tooltipRegistry[self]
			reg.ignoreOnCleared = true
			local info = C_TradeSkillUI.GetRecipeSchematic(..., false)
			local lNum, hNum = info.quantityMin, info.quantityMax
			-- the quantity can be a range, so use a quantity of 1 if so
			reg.quantity = lNum == hNum and lNum or 1
		end,
		SetTradeSkillItem = function(self, ...)
			private.OnTooltipCleared(self)
			local reg = private.tooltipRegistry[self]
			reg.ignoreOnCleared = true
			local lNum, hNum = GetTradeSkillNumMade(...)
			-- the quantity can be a range, so use a quantity of 1 if so
			reg.quantity = lNum == hNum and lNum or 1
		end,
		SetBagItem = function(self, ...)
			if Environment.HasFeature(Environment.FEATURES.C_CONTAINER) then
				PreHookHelper(self, C_Container.GetContainerItemInfo, "stackCount", ...)
			else
				PreHookHelper(self, GetContainerItemInfo, 2, ...)
			end
		end,
		SetGuildBankItem = function(self, ...)
			local reg = PreHookHelper(self, GetGuildBankItemInfo, 2, ...)
			reg.item = GetGuildBankItemLink(...)
		end,
		SetVoidItem = function(self, ...) PreHookHelper(self, 1) end,
		SetVoidDepositItem = function(self, ...) PreHookHelper(self, 1) end,
		SetVoidWithdrawalItem = function(self, ...) PreHookHelper(self, 1) end,
		SetInventoryItem = function(self, ...) PreHookHelper(self, GetInventoryItemCount, 1, ...) end,
		SetMerchantItem = function(self, ...)
			local reg = PreHookHelper(self, GetMerchantItemInfo, 4, ...)
			reg.item = GetMerchantItemLink(...)
		end,
		SetMerchantCostItem = function(self, ...) PreHookHelper(self, GetMerchantItemCostItem, 2, ...) end,
		SetBuybackItem = function(self, ...) PreHookHelper(self, GetBuybackItemInfo, 4, ...) end,
		SetAuctionItem = not Environment.IsRetail() and function(self, ...)
			local reg = PreHookHelper(self, GetAuctionItemInfo, 3, ...)
			reg.item = GetAuctionItemLink(...)
		end or nil,
		SetAuctionSellItem = not Environment.IsRetail() and function(self, ...) PreHookHelper(self, GetAuctionSellItemInfo, 3, ...) end or nil,
		SetInboxItem = function(self, index) PreHookHelper(self, GetInboxItem, 4, index, 1) end,
		SetSendMailItem = function(self, ...) PreHookHelper(self, GetSendMailItem, 4, ...) end,
		SetLootItem = function(self, ...) PreHookHelper(self, GetLootSlotInfo, 3, ...) end,
		SetLootRollItem = function(self, ...) PreHookHelper(self, GetLootRollItemInfo, 3, ...) end,
		SetTradePlayerItem = function(self, ...) PreHookHelper(self, GetTradePlayerItemInfo, 3, ...) end,
		SetTradeTargetItem = function(self, ...) PreHookHelper(self, GetTradeTargetItemInfo, 3, ...) end,
		SetHyperlink = function(self, link)
			local reg = private.tooltipRegistry[self]
			private.OnTooltipCleared(self)
			reg.ignoreOnCleared = true
			reg.item = link
		end,
	}

	-- populate all the posthooks
	local function TooltipMethodPostHook(self)
		private.tooltipRegistry[self].ignoreOnCleared = nil
	end
	for funcName in pairs(private.tooltipMethodPrehooks) do
		private.tooltipMethodPosthooks[funcName] = TooltipMethodPostHook
	end
	-- SetHyperlink is special
	private.tooltipMethodPosthooks.SetHyperlink = function(self)
		local reg = private.tooltipRegistry[self]
		reg.ignoreOnCleared = nil
	end
end
