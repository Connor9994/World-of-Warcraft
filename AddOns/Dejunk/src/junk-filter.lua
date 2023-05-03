local _, Addon = ...
local Colors = Addon:GetModule("Colors")
local Items = Addon:GetModule("Items")
local JunkFilter = Addon:GetModule("JunkFilter")
local L = Addon:GetModule("Locale")
local Lists = Addon:GetModule("Lists")
local SavedVariables = Addon:GetModule("SavedVariables")

-- ============================================================================
-- Local Functions
-- ============================================================================

local function concat(...)
  return Addon:Concat(" > ", ...)
end

local function itemSortFunc(a, b)
  local aTotalPrice = a.price * a.quantity
  local bTotalPrice = b.price * b.quantity
  if aTotalPrice == bTotalPrice then
    if a.quality == b.quality then
      if a.name == b.name then
        return a.quantity < b.quantity
      end
      return a.name < b.name
    end
    return a.quality < b.quality
  end
  return aTotalPrice < bTotalPrice
end

local function getJunkItems(filterFunc, items)
  items = Items:GetItems(items)

  for i = #items, 1, -1 do
    local item = items[i]
    local isJunk, reason = filterFunc(JunkFilter, item)

    if isJunk then
      item.reason = reason
    else
      table.remove(items, i)
    end
  end

  table.sort(items, itemSortFunc)

  return items
end

-- ============================================================================
-- JunkFilter
-- ============================================================================

function JunkFilter:GetSellableJunkItems(items)
  return getJunkItems(self.IsSellableJunkItem, items)
end

function JunkFilter:GetDestroyableJunkItems(items)
  return getJunkItems(self.IsDestroyableJunkItem, items)
end

function JunkFilter:GetJunkItems(items)
  return getJunkItems(self.IsJunkItem, items)
end

function JunkFilter:IsSellableJunkItem(item)
  if not Items:IsItemSellable(item) then return false end
  return self:IsJunkItem(item)
end

function JunkFilter:IsDestroyableJunkItem(item)
  if not Items:IsItemDestroyable(item) then return false end
  return self:IsJunkItem(item)
end

function JunkFilter:IsJunkItem(item)
  local savedVariables = SavedVariables:Get()

  -- Check if item can be sold or destroyed.
  if not (Items:IsItemSellable(item) or Items:IsItemDestroyable(item)) then
    return false
  end

  -- Refundable.
  if Items:IsItemRefundable(item) then
    return false, L.ITEM_IS_REFUNDABLE
  end

  -- Locked.
  if Items:IsItemLocked(item) then
    return false, L.ITEM_IS_LOCKED
  end

  -- PerChar lists.
  if Lists.PerCharExclusions:Contains(item.id) then
    return false, concat(L.LISTS, Lists.PerCharExclusions.name)
  end
  if Lists.PerCharInclusions:Contains(item.id) then
    return true, concat(L.LISTS, Lists.PerCharInclusions.name)
  end

  -- Global lists.
  if Lists.GlobalExclusions:Contains(item.id) then
    return false, concat(L.LISTS, Lists.GlobalExclusions.name)
  end
  if Lists.GlobalInclusions:Contains(item.id) then
    return true, concat(L.LISTS, Lists.GlobalInclusions.name)
  end

  -- Exclude unbound equipment.
  if savedVariables.excludeUnboundEquipment and (Items:IsItemEquipment(item) and not Items:IsItemBound(item)) then
    return false, concat(L.OPTIONS_TEXT, L.EXCLUDE_UNBOUND_EQUIPMENT_TEXT)
  end

  -- Include poor items.
  if savedVariables.includePoorItems and item.quality == Enum.ItemQuality.Poor then
    return true, concat(L.OPTIONS_TEXT, L.INCLUDE_POOR_ITEMS_TEXT)
  end

  -- Soulbound equipment filters.
  if Items:IsItemBound(item) and Items:IsItemEquipment(item) then
    -- Include below item level.
    if savedVariables.includeBelowItemLevel.enabled then
      local value = savedVariables.includeBelowItemLevel.value
      if item.itemLevel < value then
        local valueText = Colors.Grey("(%s)"):format(Colors.Yellow(value))
        return true, concat(L.OPTIONS_TEXT, L.INCLUDE_BELOW_ITEM_LEVEL_TEXT .. " " .. valueText)
      end
    end
    -- Include unsuitable equipment.
    if savedVariables.includeUnsuitableEquipment and not Items:IsItemSuitable(item) then
      return true, concat(L.OPTIONS_TEXT, L.INCLUDE_UNSUITABLE_EQUIPMENT_TEXT)
    end
  end

  -- Include artifact relics.
  if Addon.IS_RETAIL and savedVariables.includeArtifactRelics and Items:IsItemArtifactRelic(item) then
    return true, concat(L.OPTIONS_TEXT, L.INCLUDE_ARTIFACT_RELICS_TEXT)
  end

  -- No filters matched.
  return false, L.NO_FILTERS_MATCHED
end
