local _, Addon = ...
local Colors = Addon:GetModule("Colors")
local Tooltip = Addon:GetModule("Tooltip")

local cache = {}

setmetatable(Tooltip, {
  __index = function(_, k)
    local v = GameTooltip[k]
    if type(v) == "function" then
      if cache[k] == nil then
        cache[k] = function(_, ...) v(GameTooltip, ...) end
      end
      return cache[k]
    end
    return v
  end
})

function Tooltip:SetText(text)
  GameTooltip:SetText(Colors.White(text))
end

function Tooltip:AddLine(text)
  GameTooltip:AddLine(Colors.Gold(text), nil, nil, nil, true)
end

function Tooltip:AddDoubleLine(leftText, rightText)
  GameTooltip:AddDoubleLine(Colors.Yellow(leftText), Colors.White(rightText))
end
