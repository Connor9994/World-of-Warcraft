local _, Addon = ...
local Widgets = Addon:GetModule("Widgets")

Widgets.BORDER_BACKDROP = {
  bgFile = "Interface\\Buttons\\WHITE8x8",
  edgeFile = "Interface\\Buttons\\WHITE8x8",
  tileEdge = false,
  edgeSize = 1,
  insets = { left = 1, right = 1, top = 1, bottom = 1 },
}

do -- Widget:Padding()
  local PADDING = 8
  local cache = {}

  function Widgets:Padding(multiplier)
    if type(multiplier) ~= "number" then return PADDING end
    local value = cache[tostring(multiplier)]
    if not value then
      value = PADDING * multiplier
      cache[tostring(multiplier)] = value
    end
    return value
  end
end
