local _, Addon = ...
local Colors = Addon:GetModule("Colors")
local Widgets = Addon:GetModule("Widgets")

-- ============================================================================
-- Local Functions
-- ============================================================================

local setFrameLevel
do
  local prevLevel = 0
  setFrameLevel = function(frame)
    local level = prevLevel + 1
    prevLevel = level
    -- Delay to avoid overwrites from existing values in `{character}/layout-local.txt`.
    C_Timer.After(1, function() frame:SetFrameLevel(level) end)
  end
end

-- ============================================================================
-- Window
-- ============================================================================

--[[
  Creates a moveable frame with title text and a close button.

  options = {
    name? = string,
    parent? = UIObject,
    points? = table[],
    width? = number,
    height? = number,
    titleText? = string
  }
]]
function Widgets:Window(options)
  -- Defaults.
  options.points = Addon:IfNil(options.points, { { "CENTER" } })
  options.width = Addon:IfNil(options.width, 675)
  options.height = Addon:IfNil(options.height, 500)
  options.onUpdateTooltip = nil
  options.titleTemplate = "GameFontNormalLarge"
  options.titleJustify = "LEFT"

  -- Base frame.
  local frame = self:TitleFrame(options)
  frame.titleButton:SetBackdrop(nil)
  frame.titleButton:EnableMouse(false)
  setFrameLevel(frame)

  -- Add as special frame to be hidden on certain events.
  table.insert(UISpecialFrames, frame:GetName())

  -- Make frame moveable.
  frame:SetFrameStrata("HIGH")
  frame:SetMovable(true)
  frame:EnableMouse(true)
  frame:SetClampedToScreen(true)
  frame:RegisterForDrag("LeftButton")
  frame:SetScript("OnDragStart", frame.StartMoving)
  frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

  -- Close button.
  frame.closeButton = self:Frame({
    name = "$parent_CloseButton",
    frameType = "Button",
    parent = frame.titleButton
  })
  frame.closeButton:SetBackdropColor(0, 0, 0, 0)
  frame.closeButton:SetBackdropBorderColor(0, 0, 0, 0)
  frame.closeButton:SetPoint("TOPRIGHT", frame.titleButton)
  frame.closeButton:SetPoint("BOTTOMRIGHT", frame.titleButton)

  frame.closeButton.text = frame.closeButton:CreateFontString("$parent_Text", "ARTWORK", "GameFontNormalLarge")
  frame.closeButton.text:SetText(Colors.White("X"))
  frame.closeButton:SetFontString(frame.closeButton.text)
  frame.closeButton:SetWidth(frame.closeButton.text:GetWidth() + self:Padding(4))

  frame.closeButton:SetScript("OnEnter", function(self)
    self:SetBackdropColor(Colors.Red:GetRGBA(0.75))
  end)

  frame.closeButton:SetScript("OnLeave", function(self)
    self:SetBackdropColor(0, 0, 0, 0)
  end)

  frame.closeButton:SetScript("OnClick", function() frame:Hide() end)

  return frame
end
