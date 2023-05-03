local _, Addon = ...
local Tooltip = Addon:GetModule("Tooltip")
local Widgets = Addon:GetModule("Widgets")

--[[
  Creates a basic frame with a backdrop.

  options = {
    name? = string,
    frameType? = string,
    parent? = UIObject,
    points? = table[],
    width? = number,
    height? = number,
    onUpdateTooltip? = function(self, tooltip) -> nil
  }
]]
function Widgets:Frame(options)
  -- Defaults.
  options.frameType = Addon:IfNil(options.frameType, "Frame")
  options.parent = Addon:IfNil(options.parent, UIParent)

  -- Base frame.
  local frame = CreateFrame(options.frameType, options.name, options.parent)
  frame:SetClipsChildren(true)

  -- Backdrop.
  Mixin(frame, BackdropTemplateMixin)
  frame:SetBackdrop(self.BORDER_BACKDROP)
  frame:SetBackdropColor(0, 0, 0, 0.75)
  frame:SetBackdropBorderColor(0, 0, 0, 1)

  -- Size.
  if options.width then frame:SetWidth(options.width) end
  if options.height then frame:SetHeight(options.height) end

  -- Points.
  if options.points then
    for _, point in ipairs(options.points) do
      frame:SetPoint(SafeUnpack(point))
    end
  end

  -- Tooltip.
  if options.onUpdateTooltip then
    -- GameTooltip's `OnUpdate` script will call this function every 0.2 seconds.
    function frame:UpdateTooltip()
      Tooltip:SetOwner(self, "ANCHOR_TOP")
      options.onUpdateTooltip(self, Tooltip)
      Tooltip:Show()
    end

    frame:SetScript("OnEnter", frame.UpdateTooltip)
    frame:SetScript("OnLeave", function() Tooltip:Hide() end)
  end

  return frame
end
