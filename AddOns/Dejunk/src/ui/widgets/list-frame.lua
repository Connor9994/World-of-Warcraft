local _, Addon = ...
local Colors = Addon:GetModule("Colors")
local L = Addon:GetModule("Locale")
local TransportFrame = Addon:GetModule("TransportFrame")
local Widgets = Addon:GetModule("Widgets")

--[[
  Creates an ItemsFrame for displaying a list.

  options = {
    name? = string,
    parent? = UIObject,
    points? = table[],
    width? = number,
    height? = number,
    numButtons? = number,
    displayPrice? = boolean,
    list = table
  }
]]
function Widgets:ListFrame(options)
  -- Defaults.
  options.titleText = options.list.name

  function options.onUpdateTooltip(self, tooltip)
    tooltip:SetText(options.list.name)
    tooltip:AddLine(options.list.description)
    tooltip:AddLine(" ")
    tooltip:AddLine(L.LIST_FRAME_TOOLTIP)
    tooltip:AddLine(" ")
    tooltip:AddDoubleLine(L.LEFT_CLICK, L.LIST_FRAME_SWITCH_BUTTON_TEXT)
    tooltip:AddDoubleLine(Addon:Concat("+", L.CONTROL_KEY, L.ALT_KEY, L.RIGHT_CLICK), L.REMOVE_ALL_ITEMS)
  end

  function options.itemButtonOnUpdateTooltip(self, tooltip)
    tooltip:SetHyperlink(self.item.link)
    tooltip:AddLine(" ")
    tooltip:AddDoubleLine(L.RIGHT_CLICK, L.REMOVE)
    tooltip:AddDoubleLine(
      Addon:Concat("+", L.SHIFT_KEY, L.RIGHT_CLICK),
      L.ADD_TO_LIST:format(options.list:GetSibling().name)
    )
    tooltip:AddDoubleLine(
      Addon:Concat("+", L.CONTROL_KEY, L.RIGHT_CLICK),
      L.ADD_TO_LIST:format(options.list:GetPartner():GetSibling().name)
    )
    tooltip:AddDoubleLine(
      Addon:Concat("+", L.ALT_KEY, L.RIGHT_CLICK),
      L.ADD_TO_LIST:format(options.list:GetPartner().name)
    )
  end

  function options.itemButtonOnClick(self, button)
    if button == "RightButton" then
      if IsShiftKeyDown() then
        options.list:GetSibling():Add(self.item.id)
      elseif IsControlKeyDown() then
        options.list:GetPartner():GetSibling():Add(self.item.id)
      elseif IsAltKeyDown() then
        options.list:GetPartner():Add(self.item.id)
      else
        options.list:Remove(self.item.id)
      end
    end
  end

  function options.getItems()
    return options.list:GetItems()
  end

  function options.addItem(itemId)
    return options.list:Add(itemId)
  end

  function options.removeAllItems()
    return options.list:RemoveAll()
  end

  -- Base frame.
  local frame = self:ItemsFrame(options)
  frame.title:SetJustifyH("LEFT")

  function frame:SwitchList()
    options.list = options.list:GetPartner()
    self.title:SetText(options.list.name)
  end

  -- Hook OnClick.
  frame.titleButton:HookScript("OnClick", function(self, button)
    if button == "LeftButton" then
      frame:SwitchList()
      self:UpdateTooltip()
    end
  end)

  -- Transport button.
  frame.transportButton = self:ListFrameIconButton({
    name = "$parent_TransportButton",
    parent = frame.titleButton,
    points = { { "TOPRIGHT" }, { "BOTTOMRIGHT" } },
    texture = Addon:GetAsset("transport-icon"),
    textureSize = frame.title:GetStringHeight(),
    onClick = function() TransportFrame:Toggle(options.list) end,
    onUpdateTooltip = function(self, tooltip)
      tooltip:SetText(L.TRANSPORT)
      tooltip:AddLine(L.LIST_FRAME_TRANSPORT_BUTTON_TOOLTIP)
    end
  })

  -- Switch button.
  frame.switchButton = self:ListFrameIconButton({
    name = "$parent_SwitchButton",
    parent = frame.titleButton,
    points = {
      { "TOPRIGHT", frame.transportButton, "TOPLEFT", 0, 0 },
      { "BOTTOMRIGHT", frame.transportButton, "BOTTOMLEFT", 0, 0 }
    },
    texture = Addon:GetAsset("switch-icon"),
    textureSize = frame.title:GetStringHeight(),
    onClick = function(self)
      frame:SwitchList()
      self:UpdateTooltip()
    end,
    onUpdateTooltip = function(self, tooltip)
      tooltip:SetText(L.LIST_FRAME_SWITCH_BUTTON_TEXT)
      tooltip:AddLine(L.LIST_FRAME_SWITCH_BUTTON_TOOLTIP:format(options.list:GetPartner().name))
    end
  })

  return frame
end

--[[
  Creates a button Frame with an icon.

  options = {
    name? = string,
    parent? = UIObject,
    points? = table[],
    height? = number,
    onUpdateTooltip? = function(self, tooltip) -> nil,
    texture = string,
    textureSize = number,
    onClick? = function(self, button) -> nil
  }
]]
function Widgets:ListFrameIconButton(options)
  -- Defaults.
  options.frameType = "Button"

  -- Base frame.
  local frame = self:Frame(options)
  frame:SetBackdropColor(0, 0, 0, 0)
  frame:SetBackdropBorderColor(0, 0, 0, 0)
  frame:SetWidth(options.textureSize + self:Padding(4))

  -- Texture.
  frame.texture = frame:CreateTexture("$parent_Texture", "ARTWORK")
  frame.texture:SetTexture(options.texture)
  frame.texture:SetSize(options.textureSize, options.textureSize)
  frame.texture:SetPoint("CENTER")

  frame:HookScript("OnEnter", function(self) self:SetBackdropColor(Colors.Yellow:GetRGBA(0.75)) end)
  frame:HookScript("OnLeave", function(self) self:SetBackdropColor(0, 0, 0, 0) end)
  frame:SetScript("OnClick", options.onClick)

  return frame
end
