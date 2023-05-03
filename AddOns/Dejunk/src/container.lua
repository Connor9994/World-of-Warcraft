local _, Addon = ...
local Container = Addon:GetModule("Container")

local function exists(k)
  return type(C_Container) == "table" and type(C_Container[k]) == "function"
end

setmetatable(Container, {
  __index = function(t, k)
    if exists(k) then return C_Container[k] end
    return _G[k]
  end
})

if not exists("GetContainerItemInfo") then
  function Container.GetContainerItemInfo(...)
    local texture, quantity, locked, quality, readable, lootable, link, isFiltered, noValue, id, isBound = GetContainerItemInfo(...)
    if id == nil then return nil end
    return {
      iconFileID = texture,
      stackCount = quantity,
      isLocked = locked,
      quality = quality,
      isReadable = readable,
      hasLoot = lootable,
      hyperlink = link,
      isFiltered = isFiltered,
      hasNoValue = noValue,
      itemID = id,
      isBound = isBound
    }
  end
end
