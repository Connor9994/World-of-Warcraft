local _, Addon = ...
local Confirmer = Addon:GetModule("Confirmer")
local E = Addon:GetModule("Events")
local EventManager = Addon:GetModule("EventManager")
local Items = Addon:GetModule("Items")
local L = Addon:GetModule("Locale")

local profit = 0
local profitReady = false
local soldItems = {}
local destroyedItems = {}

-- ============================================================================
-- Events
-- ============================================================================

EventManager:On(E.SellerStarted, function()
  profit = 0
  profitReady = false
end)

EventManager:On(E.SellerStopped, function()
  profitReady = true
end)

EventManager:On(E.AttemptedToSellItem, function(item)
  soldItems[item] = true

  -- If not confirmed after 5 seconds, item may not have been sold.
  C_Timer.After(5, function()
    if soldItems[item] then
      soldItems[item] = nil
      Addon:Print(L.MAY_NOT_HAVE_SOLD_ITEM:format(item.link))
    end
  end)
end)

EventManager:On(E.AttemptedToDestroyItem, function(item)
  destroyedItems[item] = true

  -- If not confirmed after 5 seconds, item may not have been destroyed.
  C_Timer.After(5, function()
    if destroyedItems[item] then
      destroyedItems[item] = nil
      Addon:Print(L.MAY_NOT_HAVE_DESTROYED_ITEM:format(item.link))
    end
  end)
end)

-- If an item becomes unlocked after an attempt, then the operation failed.
EventManager:On(E.Wow.ItemUnlocked, function(bag, slot)
  for item in pairs(soldItems) do
    if item.bag == bag and item.slot == slot then
      soldItems[item] = nil
      Addon:Print(L.FAILED_TO_SELL_ITEM:format(item.link))
    end
  end

  for item in pairs(destroyedItems) do
    if item.bag == bag and item.slot == slot then
      destroyedItems[item] = nil
      Addon:Print(L.FAILED_TO_DESTROY_ITEM:format(item.link))
    end
  end
end)

-- ============================================================================
-- Confirmer
-- ============================================================================

local function getLink(item)
  return item.quantity > 1 and (item.link .. "x" .. item.quantity) or item.link
end

C_Timer.NewTicker(0, function()
  -- Confirm sold items.
  for item in pairs(soldItems) do
    if not Items:IsItemStillInBags(item) then
      soldItems[item] = nil
      profit = profit + item.price * item.quantity
      Addon:Print(L.SOLD_ITEM:format(getLink(item)))
    end
  end

  -- Print profit.
  if profitReady and next(soldItems) == nil then
    profitReady = false
    if profit > 0 then
      Addon:Print(L.PROFIT:format(GetCoinTextureString(profit)))
    end
  end

  -- Confirm destroyed items.
  for item in pairs(destroyedItems) do
    if not Items:IsItemStillInBags(item) then
      destroyedItems[item] = nil
      Addon:Print(L.DESTROYED_ITEM:format(getLink(item)))
    end
  end
end)

function Confirmer:IsBusy()
  return next(soldItems) ~= nil or next(destroyedItems) ~= nil
end
