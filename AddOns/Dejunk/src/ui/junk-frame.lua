local ADDON_NAME, Addon = ...
local Colors = Addon:GetModule("Colors")
local Commands = Addon:GetModule("Commands")
local Destroyer = Addon:GetModule("Destroyer")
local E = Addon:GetModule("Events")
local EventManager = Addon:GetModule("EventManager")
local Items = Addon:GetModule("Items")
local JunkFilter = Addon:GetModule("JunkFilter")
local JunkFrame = Addon:GetModule("JunkFrame")
local L = Addon:GetModule("Locale")
local Lists = Addon:GetModule("Lists")
local SavedVariables = Addon:GetModule("SavedVariables")
local Seller = Addon:GetModule("Seller")
local Widgets = Addon:GetModule("Widgets")

-- ============================================================================
-- Events
-- ============================================================================

-- Auto Junk Frame.
EventManager:Once(E.SavedVariablesReady, function()
  EventManager:On(E.Wow.MerchantShow, function()
    if SavedVariables:Get().autoJunkFrame then JunkFrame:Show() end
  end)
  EventManager:On(E.Wow.MerchantClosed, function()
    if SavedVariables:Get().autoJunkFrame then JunkFrame:Hide() end
  end)
end)

-- ============================================================================
-- JunkFrame
-- ============================================================================

function JunkFrame:Show()
  self.frame:Show()
end

function JunkFrame:Hide()
  self.frame:Hide()
end

function JunkFrame:Toggle()
  if self.frame:IsShown() then
    self.frame:Hide()
  else
    self.frame:Show()
  end
end

-- ============================================================================
-- Initialize
-- ============================================================================

local function hasSellableItems(items)
  for _, item in ipairs(items) do
    if Items:IsItemSellable(item) then
      return true
    end
  end
  return false
end

-- Create frame.
JunkFrame.frame = (function()
  local frame = Widgets:Window({
    name = ADDON_NAME .. "_JunkFrame",
    width = 325,
    height = 375,
    titleText = Colors.Yellow(L.JUNK_ITEMS),
  })
  frame.items = {}

  -- Start selling button.
  frame.startSellingButton = Widgets:Button({
    name = "$parent_StartSellingButton",
    parent = frame,
    points = {
      { "BOTTOMLEFT", frame, Widgets:Padding(), Widgets:Padding() },
      { "BOTTOMRIGHT", frame, "BOTTOM", -Widgets:Padding(0.25), Widgets:Padding() }
    },
    labelColor = Colors.Yellow,
    labelText = L.START_SELLING,
    onClick = Commands.sell
  })

  -- Destroy next item button.
  frame.destroyNextItemButton = Widgets:Button({
    name = "$parent_DestroyNextItemButton",
    parent = frame,
    points = {
      { "BOTTOMLEFT", frame, "BOTTOM", Widgets:Padding(0.25), Widgets:Padding() },
      { "BOTTOMRIGHT", frame, -Widgets:Padding(), Widgets:Padding() }
    },
    labelColor = Colors.Red,
    labelText = L.DESTROY_NEXT_ITEM,
    onClick = Commands.destroy,
    onUpdateTooltip = function(self, tooltip)
      local items = self:GetParent().items
      if items and items[1] then
        tooltip:SetBagItem(items[1].bag, items[1].slot)
      end
    end
  })

  frame:HookScript("OnUpdate", function(self)
    -- Get items.
    JunkFilter:GetJunkItems(self.items)

    -- Title.
    self.title:SetText(Colors.Yellow(("%s (%s)"):format(L.JUNK_ITEMS, Colors.White(#self.items))))

    -- Update button state.
    if #self.items > 0 then
      self.startSellingButton:Show()
      self.startSellingButton:SetEnabled(MerchantFrame and MerchantFrame:IsShown() and hasSellableItems(self.items))

      self.destroyNextItemButton:Show()
      self.destroyNextItemButton:SetEnabled(true)

      self.itemsFrame:SetPoint("BOTTOMRIGHT", self.destroyNextItemButton, "TOPRIGHT", 0, Widgets:Padding(0.5))
    else
      self.startSellingButton:Hide()
      self.destroyNextItemButton:Hide()
      self.itemsFrame:SetPoint("BOTTOMRIGHT", self, -Widgets:Padding(), Widgets:Padding())
    end

    -- Disable buttons if busy.
    if Addon:IsBusy() then
      self.startSellingButton:SetEnabled(false)
      self.destroyNextItemButton:SetEnabled(false)
    end
  end)

  -- Items frame.
  frame.itemsFrame = Widgets:ItemsFrame({
    name = "$parent_ItemsFrame",
    parent = frame,
    points = { { "TOPLEFT", frame.titleButton, "BOTTOMLEFT", Widgets:Padding(), 0 } },
    displayPrice = true,
    titleText = Colors.White(L.JUNK_ITEMS),
    onUpdateTooltip = function(self, tooltip)
      tooltip:SetText(L.JUNK_ITEMS)
      tooltip:AddLine(L.JUNK_FRAME_TOOLTIP:format(
        Lists.PerCharInclusions.name,
        Lists.GlobalInclusions.name,
        Colors.White(L.SHIFT_KEY)
      ))
      tooltip:AddLine(" ")
      tooltip:AddDoubleLine(
        Addon:Concat("+", L.CONTROL_KEY, L.ALT_KEY, L.RIGHT_CLICK),
        L.ADD_ALL_TO_LIST:format(Lists.PerCharExclusions.name)
      )
      tooltip:AddDoubleLine(
        Addon:Concat("+", L.CONTROL_KEY, L.ALT_KEY, L.SHIFT_KEY, L.RIGHT_CLICK),
        L.ADD_ALL_TO_LIST:format(Lists.GlobalExclusions.name)
      )
    end,
    itemButtonOnUpdateTooltip = function(self, tooltip)
      tooltip:SetBagItem(self.item.bag, self.item.slot)
      tooltip:AddLine(" ")
      tooltip:AddDoubleLine(L.LEFT_CLICK, L.SELL)
      tooltip:AddDoubleLine(L.RIGHT_CLICK, L.ADD_TO_LIST:format(Lists.PerCharExclusions.name))
      tooltip:AddDoubleLine(Addon:Concat("+", L.SHIFT_KEY, L.LEFT_CLICK), Colors.Red(L.DESTROY))
      tooltip:AddDoubleLine(
        Addon:Concat("+", L.SHIFT_KEY, L.RIGHT_CLICK),
        L.ADD_TO_LIST:format(Lists.GlobalExclusions.name)
      )
    end,
    itemButtonOnClick = function(self, button)
      if button == "LeftButton" then
        local handler = IsShiftKeyDown() and Destroyer or Seller
        handler:HandleItem(self.item)
      end

      if button == "RightButton" then
        local list = IsShiftKeyDown() and Lists.GlobalExclusions or Lists.PerCharExclusions
        list:Add(self.item.id)
      end
    end,
    getItems = function() return frame.items end,
    addItem = function(itemId)
      local list = IsShiftKeyDown() and Lists.GlobalInclusions or Lists.PerCharInclusions
      list:Add(itemId)
    end,
    removeAllItems = function()
      local list = IsShiftKeyDown() and Lists.GlobalExclusions or Lists.PerCharExclusions
      for _, item in pairs(frame.items) do list:Add(item.id) end
    end
  })

  frame.itemsFrame:HookScript("OnUpdate", function(self)
    local totalJunkValue = 0
    for _, item in pairs(frame.items) do
      totalJunkValue = totalJunkValue + item.price * item.quantity
    end
    self.title:SetText(Colors.White(GetCoinTextureString(totalJunkValue)))
  end)

  return frame
end)()
