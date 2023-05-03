local AddonName, Addon = ...
local E = Addon:GetModule("Events")

-- ============================================================================
-- Addon Events
-- ============================================================================

local events = {
  -- Bags.
  "BagsUpdated",

  -- SavedVariables.
  "SavedVariablesReady",
  "SavedVariablesSwitched",

  -- Lists.
  "ListItemAdded",
  "ListItemRemoved",
  "ListRemovedAll",

  -- Seller.
  "SellerStarted",
  "SellerStopped",
  "AttemptedToSellItem",

  -- Destroyer.
  "AttemptedToDestroyItem",

  -- UI.
  "MainUIClosed",
}

for _, event in pairs(events) do
  E[event] = ("%s_%s"):format(AddonName, event)
end

-- ============================================================================
-- WoW Events
-- ============================================================================

E.Wow = {
  BagUpdate = "BAG_UPDATE",
  BagUpdateDelayed = "BAG_UPDATE_DELAYED",
  ItemUnlocked = "ITEM_UNLOCKED",
  MerchantClosed = "MERCHANT_CLOSED",
  MerchantShow = "MERCHANT_SHOW",
  PlayerLogin = "PLAYER_LOGIN",
  PlayerLogout = "PLAYER_LOGOUT",
  UIErrorMessage = "UI_ERROR_MESSAGE"
}
