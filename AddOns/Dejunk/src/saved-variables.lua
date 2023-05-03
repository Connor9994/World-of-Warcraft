local _, Addon = ...
local E = Addon:GetModule("Events")
local EventManager = Addon:GetModule("EventManager")
local SavedVariables = Addon:GetModule("SavedVariables")

local GLOBAL_SV = "__DEJUNK_ADDON_GLOBAL_SAVED_VARIABLES__"
local PERCHAR_SV = "__DEJUNK_ADDON_PERCHAR_SAVED_VARIABLES__"

-- ============================================================================
-- Local Functions
-- ============================================================================

local function globalDefaults()
  return {
    -- User interface.
    chatMessages = true,
    itemTooltips = true,
    merchantButton = true,
    minimapIcon = { hide = false },

    -- Junk.
    autoJunkFrame = false,
    autoSell = false,
    autoRepair = false,
    safeMode = false,
    excludeUnboundEquipment = Addon.IS_RETAIL,
    includePoorItems = true,
    includeBelowItemLevel = { enabled = false, value = 0 },
    includeUnsuitableEquipment = false,
    includeArtifactRelics = false,
    inclusions = { --[[ ["itemId"] = true, ... ]] },
    exclusions = { --[[ ["itemId"] = true, ... ]] },
  }
end

local function perCharDefaults()
  local t = globalDefaults()
  t.characterSpecificSettings = false
  return t
end

local function populate(t, defaults)
  for k, v in pairs(defaults) do
    if type(v) == "table" then
      if type(t[k]) ~= "table" then t[k] = {} end
      populate(t[k], v)
    else
      if type(t[k]) ~= type(v) then t[k] = v end
    end
  end
end

local function depopulate(t, defaults)
  for k, v in pairs(t) do
    if type(v) == "table" and type(defaults[k]) == "table" then
      depopulate(v, defaults[k])
      if next(v) == nil then t[k] = nil end
    elseif defaults[k] == v then
      t[k] = nil
    end
  end
end

-- ============================================================================
-- Events
-- ============================================================================

-- Initialize.
EventManager:Once(E.Wow.PlayerLogin, function()
  if type(_G[GLOBAL_SV]) ~= "table" then _G[GLOBAL_SV] = {} end
  if type(_G[PERCHAR_SV]) ~= "table" then _G[PERCHAR_SV] = {} end
  populate(_G[GLOBAL_SV], globalDefaults())
  populate(_G[PERCHAR_SV], perCharDefaults())
  local global = _G[GLOBAL_SV]
  local perChar = _G[PERCHAR_SV]

  function SavedVariables:Get()
    return perChar.characterSpecificSettings and perChar or global
  end

  function SavedVariables:GetGlobal()
    return global
  end

  function SavedVariables:GetPerChar()
    return perChar
  end

  function SavedVariables:IsGlobal()
    return perChar.characterSpecificSettings
  end

  function SavedVariables:Switch()
    perChar.characterSpecificSettings = not perChar.characterSpecificSettings
    EventManager:Fire(E.SavedVariablesSwitched)
  end

  EventManager:Fire(E.SavedVariablesReady)
  EventManager:Fire(E.SavedVariablesSwitched)
end)

-- Deinitialize.
EventManager:On(E.Wow.PlayerLogout, function()
  depopulate(_G[GLOBAL_SV], globalDefaults())
  depopulate(_G[PERCHAR_SV], perCharDefaults())
end)
