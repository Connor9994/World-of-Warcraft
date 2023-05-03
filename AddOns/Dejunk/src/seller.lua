local _, Addon = ...
local Container = Addon:GetModule("Container")
local E = Addon:GetModule("Events")
local EventManager = Addon:GetModule("EventManager")
local Items = Addon:GetModule("Items")
local JunkFilter = Addon:GetModule("JunkFilter")
local L = Addon:GetModule("Locale")
local SavedVariables = Addon:GetModule("SavedVariables")
local Seller = Addon:GetModule("Seller")

-- ============================================================================
-- Events
-- ============================================================================

EventManager:On(E.Wow.MerchantShow, function()
  C_Timer.After(0.1, function()
    local savedVariables = SavedVariables:Get()

    -- Auto repair.
    if savedVariables.autoRepair then
      local repairCost, canRepair = GetRepairAllCost()
      if canRepair and GetMoney() >= repairCost then
        RepairAllItems()
        PlaySound(SOUNDKIT.ITEM_REPAIR)
        Addon:Print(L.REPAIRED_ALL_ITEMS:format(GetCoinTextureString(repairCost)))
      end
    end

    -- Auto sell.
    if savedVariables.autoSell then
      Seller:Start(true)
    end
  end)
end)

EventManager:On(E.Wow.MerchantClosed, function()
  Seller:Stop()
end)

EventManager:On(E.Wow.UIErrorMessage, function(_, msg)
  if msg == ERR_VENDOR_DOESNT_BUY then
    Seller:Stop()
  end
end)

-- ============================================================================
-- Local Functions
-- ============================================================================

local function handleStaticPopup()
  if Addon.IS_VANILLA then return end

  local popup
  for i = 1, STATICPOPUP_NUMDIALOGS do
    popup = _G["StaticPopup" .. i]
    if popup and
        popup:IsShown() and
        popup.which == "CONFIRM_MERCHANT_TRADE_TIMER_REMOVAL"
    then
      popup.button1:Click()
      return
    end
  end
end

local function handleItem(item)
  if not Items:IsItemStillInBags(item) then return end
  if Items:IsItemLocked(item) then return end

  Container.UseContainerItem(item.bag, item.slot)
  handleStaticPopup()

  EventManager:Fire(E.AttemptedToSellItem, item)
end

local function tickerCallback()
  local item = table.remove(Seller.items)
  if not item then return Seller:Stop() end
  handleItem(item)
end

-- ============================================================================
-- Seller
-- ============================================================================

function Seller:Start(auto)
  -- Don't start if busy.
  if Addon:IsBusy() then return end
  -- Don't start without merchant.
  if not (MerchantFrame and MerchantFrame:IsShown()) then
    return Addon:Print(L.CANNOT_SELL_WITHOUT_MERCHANT)
  end

  -- Get filtered items.
  self.items = JunkFilter:GetSellableJunkItems()

  -- Return if no items.
  if #self.items == 0 then
    if not auto then Addon:Print(L.NO_JUNK_ITEMS_TO_SELL) end
    return
  end

  -- Safe mode.
  if SavedVariables:Get().safeMode then
    while #self.items > 12 do table.remove(self.items) end
  end

  -- Start ticker.
  self.ticker = C_Timer.NewTicker(Addon:GetLatency(), tickerCallback)
  EventManager:Fire(E.SellerStarted)
end

function Seller:Stop()
  if self:IsBusy() then
    self.ticker:Cancel()
    EventManager:Fire(E.SellerStopped)
  end
end

function Seller:HandleItem(item)
  if Addon:IsBusy() then return end

  if not (MerchantFrame and MerchantFrame:IsShown()) then
    return Addon:Print(L.CANNOT_SELL_WITHOUT_MERCHANT)
  end

  handleItem(item)
end

function Seller:IsBusy()
  return self.ticker and not self.ticker:IsCancelled()
end
