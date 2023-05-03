local _, Addon = ...
local Colors = Addon:GetModule("Colors")
local Widgets = Addon:GetModule("Widgets")

--[[
  Creates a basic button.

  options = {
    name? = string,
    parent? = UIObject,
    points? = table[],
    width? = number,
    onUpdateTooltip? = function(self, tooltip) -> nil,
    labelText = string,
    labelColor? = Color,
    onClick? = function(self, button) -> nil
  }
]]
function Widgets:Button(options)
  -- Defaults.
  options.frameType = "Button"
  options.labelColor = Addon:IfNil(options.labelColor, Colors.Gold)

  -- Base frame.
  local frame = self:Frame(options)
  frame.onClick = options.onClick
  frame:SetBackdropColor(Colors.DarkGrey:GetRGBA(0.75))
  frame:SetBackdropBorderColor(0, 0, 0, 1)

  -- Label text.
  frame.label = frame:CreateFontString("$parent_Label", "ARTWORK", "GameFontNormal")
  frame.label:SetText(options.labelText)
  frame.label:SetTextColor(options.labelColor:GetRGB())
  frame.label:SetPoint("LEFT", frame, self:Padding(0.5), 0)
  frame.label:SetPoint("RIGHT", frame, -self:Padding(0.5), 0)
  frame.label:SetWordWrap(false)
  frame:SetFontString(frame.label)

  -- OnClick.
  frame:SetScript("OnClick", function(self, button)
    if self.onClick then self.onClick(self, button) end
  end)

  -- OnEnter.
  frame:HookScript("OnEnter", function(self)
    self:SetBackdropColor(options.labelColor:GetRGBA(0.25))
    self:SetBackdropBorderColor(options.labelColor:GetRGB())
    self.label:SetTextColor(Colors.White:GetRGB())
  end)

  -- OnLeave.
  frame:HookScript("OnLeave", function(self)
    self:SetBackdropColor(Colors.DarkGrey:GetRGBA(0.75))
    self:SetBackdropBorderColor(0, 0, 0, 1)
    self.label:SetTextColor(options.labelColor:GetRGB())
  end)

  -- OnUpdate.
  frame:SetScript("OnUpdate", function(self)
    self:SetHeight(self.label:GetHeight() + Widgets:Padding(2))
    self:SetAlpha(self:IsEnabled() and 1 or 0.5)
  end)

  return frame
end
