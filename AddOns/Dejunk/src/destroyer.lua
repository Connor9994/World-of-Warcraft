local _, Addon = ...
local Container = Addon:GetModule("Container")
local Destroyer = Addon:GetModule("Destroyer")
local E = Addon:GetModule("Events")
local EventManager = Addon:GetModule("EventManager")
local Items = Addon:GetModule("Items")
local JunkFilter = Addon:GetModule("JunkFilter")
local L = Addon:GetModule("Locale")

-- ============================================================================
-- Local Functions
-- ============================================================================

local function handleItem(item)
  if not Items:IsItemStillInBags(item) then return end
  if Items:IsItemLocked(item) then return end

  ClearCursor()
  Container.PickupContainerItem(item.bag, item.slot)
  DeleteCursorItem()

  EventManager:Fire(E.AttemptedToDestroyItem, item)
end

-- ============================================================================
-- Destroyer
-- ============================================================================

function Destroyer:Start()
  -- Don't start if busy.
  if Addon:IsBusy() then return end

  -- Get items.
  local items = JunkFilter:GetDestroyableJunkItems()
  if #items == 0 then return Addon:Print(L.NO_JUNK_ITEMS_TO_DESTROY) end

  -- Get least expensive item.
  local item = table.remove(items, 1)

  -- Handle item.
  handleItem(item)
end

function Destroyer:HandleItem(item)
  if not Addon:IsBusy() then handleItem(item) end
end
