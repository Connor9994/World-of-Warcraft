local ADDON_NAME, Addon = ...
local Colors = Addon:GetModule("Colors")
local Widgets = Addon:GetModule("Widgets")

--[[
  Creates a basic frame with title text.

  options = {
    name? = string,
    parent? = UIObject,
    points? = table[],
    width? = number,
    height? = number,
    onUpdateTooltip? = function(self, tooltip) -> nil,
    titleText? = string,
    titleTemplate? = string,
    titleJustify? = "LEFT" | "RIGHT" | "CENTER"
  }
]]
function Widgets:TitleFrame(options)
  -- Defaults.
  options.frameType = "Frame"
  options.titleText = Addon:IfNil(options.titleText, ADDON_NAME)
  options.titleTemplate = Addon:IfNil(options.titleTemplate, "GameFontNormal")
  options.titleJustify = Addon:IfNil(options.titleJustify, "CENTER")

  local onUpdateTooltip = options.onUpdateTooltip
  options.onUpdateTooltip = nil

  -- Base frame.
  local frame = self:Frame(options)

  -- Title button.
  frame.titleButton = self:Frame({
    name = "$parent_TitleBackground",
    frameType = "Button",
    parent = frame,
    points = { { "TOPLEFT" }, { "TOPRIGHT" } },
    onUpdateTooltip = onUpdateTooltip
  })
  frame.titleButton:SetBackdropColor(Colors.DarkGrey:GetRGBA(0.75))
  frame.titleButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")

  -- Title text.
  frame.title = frame.titleButton:CreateFontString("$parent_Title", "ARTWORK", options.titleTemplate)
  frame.title:SetText(Colors.White(options.titleText))
  frame.title:SetPoint("LEFT", self:Padding(), 0)
  frame.title:SetPoint("RIGHT", -self:Padding(), 0)
  frame.title:SetJustifyH(options.titleJustify)

  frame.titleButton:SetFontString(frame.title)
  frame.titleButton:SetHeight(frame.title:GetStringHeight() + self:Padding(2))

  return frame
end
