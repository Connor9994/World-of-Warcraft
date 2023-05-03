local _, Addon = ...
local Colors = Addon:GetModule("Colors")

local colors = {
  White = "FFFFFFFF",
  Blue = "FF4FAFE3",
  Red = "FFE34F4F",
  Green = "FF4FE34F",
  Yellow = "FFE3E34F",
  Gold = "FFFFD100",
  Grey = "FF9D9D9D",
  DarkGrey = "FF1E1E1E"
}

for name, hex in pairs(colors) do
  local color = CreateColorFromHexString(hex)

  local t = setmetatable({}, {
    __call = function(self, text, alpha)
      alpha = (alpha or 1) * 255
      local _hex = ("%.2x%.2x%.2x%.2x"):format(alpha, color:GetRGBAsBytes())
      return WrapTextInColorCode(text or "", _hex)
    end
  })

  function t:GetRGB()
    return color:GetRGB()
  end

  function t:GetRGBA(alpha)
    local r, g, b, a = color:GetRGBA()
    return r, g, b, alpha or a
  end

  function t:GetHex(alpha)
    alpha = (alpha or 1) * 255
    return ("%.2x%.2x%.2x%.2x"):format(alpha, color:GetRGBAsBytes())
  end

  Colors[name] = t
end
