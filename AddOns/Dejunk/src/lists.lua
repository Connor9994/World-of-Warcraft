local _, Addon = ...
local Colors = Addon:GetModule("Colors")
local E = Addon:GetModule("Events")
local EventManager = Addon:GetModule("EventManager")
local Items = Addon:GetModule("Items")
local L = Addon:GetModule("Locale")
local Lists = Addon:GetModule("Lists")
local SavedVariables = Addon:GetModule("SavedVariables")
local Seller = Addon:GetModule("Seller")

local MAX_PARSE_ATTEMPTS = 50
local parseAttempts = {
  -- ["itemId"] = count
}

-- ============================================================================
-- Local Functions
-- ============================================================================

local function getItemById(itemId)
  local name, link, quality, _, _, _, _, _, _, texture, price, classId = GetItemInfo(itemId)
  if link == nil then return nil end

  return {
    id = itemId,
    name = name,
    link = link,
    quality = quality,
    texture = texture,
    price = price,
    classId = classId
  }
end

-- ============================================================================
-- Mixins
-- ============================================================================

local Mixins = {}

function Mixins:GetPartner()
  return self.getPartner()
end

function Mixins:GetSibling()
  return self.getSibling()
end

function Mixins:Contains(itemId)
  return not not self.sv[tostring(itemId)]
end

function Mixins:Add(itemId)
  itemId = tostring(itemId)

  if self:Contains(itemId) then
    local index = self:GetIndex(itemId)
    if index ~= -1 then
      Addon:Print(L.ITEM_ALREADY_ON_LIST:format(self.items[index].link, self.name))
    end
  else
    self.toAdd[itemId] = true
  end
end

function Mixins:Remove(itemId)
  itemId = tostring(itemId)

  if self.sv[itemId] then
    self.sv[itemId] = nil

    local index = self:GetIndex(itemId)
    if index ~= -1 then
      local item = table.remove(self.items, index)
      Addon:Print(L.ITEM_REMOVED_FROM_LIST:format(item.link, self.name))
    end
  else
    local link = select(2, GetItemInfo(itemId))
    if link then Addon:Print(L.ITEM_NOT_ON_LIST:format(link, self.name)) end
  end
end

function Mixins:GetIndex(itemId)
  itemId = tostring(itemId)

  for i, item in ipairs(self.items) do
    if tostring(item.id) == itemId then
      return i
    end
  end

  return -1
end

function Mixins:RemoveAll()
  if next(self.sv) then Addon:Print(L.ALL_ITEMS_REMOVED_FROM_LIST:format(self.name)) end
  for k in pairs(self.sv) do self.sv[k] = nil end
  for k in pairs(self.items) do self.items[k] = nil end
end

function Mixins:GetItems()
  return self.items
end

function Mixins:Parse()
  if not next(self.toAdd) then return end

  -- Parse items.
  for itemId in pairs(self.toAdd) do
    -- Instantly fail if item doesn't exist.
    if not GetItemInfoInstant(itemId) then
      self.sv[itemId] = nil
      self.toAdd[itemId] = nil
      Addon:Print(L.ITEM_ID_DOES_NOT_EXIST:format(Colors.Grey(itemId)))
    else
      -- Attempt to parse the item.
      local item = getItemById(itemId)
      if item then
        -- Only add item if it can be sold or destroyed.
        if Items:IsItemSellable(item) or Items:IsItemDestroyable(item) then
          if not self.sv[itemId] then
            Addon:Print(L.ITEM_ADDED_TO_LIST:format(item.link, self.name))
          end
          self.sv[itemId] = true
          self.items[#self.items + 1] = item
          EventManager:Fire(E.ListItemAdded, self, item)
        else
          if not self.sv[itemId] then
            Addon:Print(L.CANNOT_SELL_OR_DESTROY_ITEM:format(item.link))
          end
          self.sv[itemId] = nil
        end

        -- Remove from parsing.
        parseAttempts[itemId] = nil
        self.toAdd[itemId] = nil
      else
        -- Retry parsing until max attempts reached.
        local attempts = (parseAttempts[itemId] or 0) + 1
        if attempts >= MAX_PARSE_ATTEMPTS then
          parseAttempts[itemId] = nil
          self.sv[itemId] = nil
          self.toAdd[itemId] = nil
          Addon:Print(L.ITEM_ID_FAILED_TO_PARSE:format(Colors.Grey(itemId)))
        else
          parseAttempts[itemId] = attempts
        end
      end
    end
  end

  -- Sort the list once all items have been parsed.
  if not next(self.toAdd) then
    table.sort(self.items, function(a, b)
      return a.quality == b.quality and a.name < b.name or a.quality < b.quality
    end)
  end
end

-- ============================================================================
-- Events
-- ============================================================================

EventManager:Once(E.SavedVariablesReady, function()
  for list in Lists:Iterate() do
    list.sv = list.getSv()
    for k in pairs(list.sv) do list.toAdd[k] = true end
  end
end)

EventManager:On(E.ListItemAdded, function(list, item)
  local sibling = list:GetSibling()
  if sibling:Contains(item.id) then sibling:Remove(item.id) end
end)

-- ============================================================================
-- Lists
-- ============================================================================

do
  local function createList(data)
    local list = data
    list.toAdd = {}
    list.items = {}
    for k, v in pairs(Mixins) do list[k] = v end
    return list
  end

  -- PerCharInclusions.
  Lists.PerCharInclusions = createList({
    name = Colors.Red("%s (%s)"):format(L.INCLUSIONS_TEXT, Colors.White(L.CHARACTER)),
    description = L.INCLUSIONS_DESCRIPTION_PERCHAR,
    getSv = function() return SavedVariables:GetPerChar().inclusions end,
    getPartner = function() return Lists.GlobalInclusions end,
    getSibling = function() return Lists.PerCharExclusions end
  })

  -- PerCharExclusions.
  Lists.PerCharExclusions = createList({
    name = Colors.Green("%s (%s)"):format(L.EXCLUSIONS_TEXT, Colors.White(L.CHARACTER)),
    description = L.EXCLUSIONS_DESCRIPTION_PERCHAR,
    getSv = function() return SavedVariables:GetPerChar().exclusions end,
    getPartner = function() return Lists.GlobalExclusions end,
    getSibling = function() return Lists.PerCharInclusions end
  })

  -- GlobalInclusions.
  Lists.GlobalInclusions = createList({
    name = Colors.Red("%s (%s)"):format(L.INCLUSIONS_TEXT, Colors.White(L.GLOBAL)),
    description = L.INCLUSIONS_DESCRIPTION_GLOBAL:format(Lists.PerCharExclusions.name),
    getSv = function() return SavedVariables:GetGlobal().inclusions end,
    getPartner = function() return Lists.PerCharInclusions end,
    getSibling = function() return Lists.GlobalExclusions end
  })

  -- GlobalExclusions.
  Lists.GlobalExclusions = createList({
    name = Colors.Green("%s (%s)"):format(L.EXCLUSIONS_TEXT, Colors.White(L.GLOBAL)),
    description = L.EXCLUSIONS_DESCRIPTION_GLOBAL:format(Lists.PerCharInclusions.name),
    getSv = function() return SavedVariables:GetGlobal().exclusions end,
    getPartner = function() return Lists.PerCharExclusions end,
    getSibling = function() return Lists.GlobalInclusions end
  })
end

do -- Lists:Iterate()
  local lists = {
    [Lists.GlobalInclusions] = true,
    [Lists.PerCharInclusions] = true,
    [Lists.GlobalExclusions] = true,
    [Lists.PerCharExclusions] = true
  }
  function Lists:Iterate()
    return next, lists
  end
end

function Lists:IsBusy()
  for list in self:Iterate() do
    if next(list.toAdd) ~= nil then return true end
  end

  return false
end

-- ============================================================================
-- Initialize
-- ============================================================================

-- Attempt to parse lists every 0.1 seconds.
C_Timer.NewTicker(0.1, function()
  if Seller:IsBusy() then return end
  for list in Lists:Iterate() do list:Parse() end
end)
