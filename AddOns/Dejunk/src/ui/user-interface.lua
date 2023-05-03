local ADDON_NAME, Addon = ...
local Colors = Addon:GetModule("Colors")
local Commands = Addon:GetModule("Commands")
local L = Addon:GetModule("Locale")
local Lists = Addon:GetModule("Lists")
local MinimapIcon = Addon:GetModule("MinimapIcon")
local Popup = Addon:GetModule("Popup")
local SavedVariables = Addon:GetModule("SavedVariables")
local UserInterface = Addon:GetModule("UserInterface")
local Widgets = Addon:GetModule("Widgets")

-- ============================================================================
-- UserInterface
-- ============================================================================

function UserInterface:Show()
  self.frame:Show()
end

function UserInterface:Hide()
  self.frame:Hide()
end

function UserInterface:Toggle()
  if self.frame:IsShown() then
    self.frame:Hide()
  else
    self.frame:Show()
  end
end

-- ============================================================================
-- Initialize
-- ============================================================================

UserInterface.frame = (function()
  local frame = Widgets:Window({
    name = ADDON_NAME .. "_ParentFrame",
    width = 780,
    height = 600,
    titleText = Colors.Blue(ADDON_NAME),
  })

  -- Version text.
  frame.versionText = frame.titleButton:CreateFontString("$parent_VersionText", "ARTWORK", "GameFontNormalSmall")
  frame.versionText:SetPoint("CENTER")
  frame.versionText:SetText(Colors.White(Addon.VERSION))
  frame.versionText:SetAlpha(0.5)

  -- Keybinds button.
  frame.keybindsButton = Widgets:Frame({
    name = "$parent_KeybindsButton",
    frameType = "Button",
    parent = frame.titleButton
  })
  frame.keybindsButton:SetBackdropColor(0, 0, 0, 0)
  frame.keybindsButton:SetBackdropBorderColor(0, 0, 0, 0)
  frame.keybindsButton:SetPoint("TOPRIGHT", frame.closeButton, "TOPLEFT", 0, 0)
  frame.keybindsButton:SetPoint("BOTTOMRIGHT", frame.closeButton, "BOTTOMLEFT", 0, 0)
  frame.keybindsButton.text = frame.keybindsButton:CreateFontString("$parent_Text", "ARTWORK", "GameFontNormalLarge")
  frame.keybindsButton.text:SetText(Colors.White(L.KEYBINDS))
  frame.keybindsButton:SetFontString(frame.keybindsButton.text)
  frame.keybindsButton:SetWidth(frame.keybindsButton.text:GetWidth() + Widgets:Padding(4))
  frame.keybindsButton:SetScript("OnEnter", function(self) self:SetBackdropColor(Colors.Blue:GetRGBA(0.75)) end)
  frame.keybindsButton:SetScript("OnLeave", function(self) self:SetBackdropColor(0, 0, 0, 0) end)
  frame.keybindsButton:SetScript("OnClick", Commands.keybinds)

  -- Options frame.
  frame.optionsFrame = Widgets:OptionsFrame({
    name = "$parent_OptionsFrame",
    parent = frame,
    points = {
      { "TOPLEFT", frame.titleButton, "BOTTOMLEFT", Widgets:Padding(), 0 },
      { "BOTTOMRIGHT", frame, "RIGHT", -Widgets:Padding(), Widgets:Padding(10) }
    },
    titleText = L.OPTIONS_TEXT
  })
  frame.optionsFrame:AddOption({
    labelText = L.CHARACTER_SPECIFIC_SETTINGS_TEXT,
    tooltipText = L.CHARACTER_SPECIFIC_SETTINGS_TOOLTIP,
    get = function() return SavedVariables:GetPerChar().characterSpecificSettings end,
    set = function() SavedVariables:Switch() end
  })
  frame.optionsFrame:AddOption({
    labelText = L.CHAT_MESSAGES_TEXT,
    tooltipText = L.CHAT_MESSAGES_TOOLTIP,
    get = function() return SavedVariables:Get().chatMessages end,
    set = function(value) SavedVariables:Get().chatMessages = value end
  })
  frame.optionsFrame:AddOption({
    labelText = L.BAG_ITEM_TOOLTIPS_TEXT,
    tooltipText = L.BAG_ITEM_TOOLTIPS_TOOLTIP,
    get = function() return SavedVariables:Get().itemTooltips end,
    set = function(value) SavedVariables:Get().itemTooltips = value end
  })
  frame.optionsFrame:AddOption({
    labelText = L.MERCHANT_BUTTON_TEXT,
    tooltipText = L.MERCHANT_BUTTON_TOOLTIP,
    get = function() return SavedVariables:Get().merchantButton end,
    set = function(value) SavedVariables:Get().merchantButton = value end
  })
  frame.optionsFrame:AddOption({
    labelText = L.MINIMAP_ICON_TEXT,
    tooltipText = L.MINIMAP_ICON_TOOLTIP,
    get = function() return MinimapIcon:IsEnabled() end,
    set = function(value) MinimapIcon:SetEnabled(value) end
  })
  frame.optionsFrame:AddOption({
    labelText = L.AUTO_JUNK_FRAME_TEXT,
    tooltipText = L.AUTO_JUNK_FRAME_TOOLTIP,
    get = function() return SavedVariables:Get().autoJunkFrame end,
    set = function(value) SavedVariables:Get().autoJunkFrame = value end
  })
  frame.optionsFrame:AddOption({
    labelText = L.AUTO_REPAIR_TEXT,
    tooltipText = L.AUTO_REPAIR_TOOLTIP,
    get = function() return SavedVariables:Get().autoRepair end,
    set = function(value) SavedVariables:Get().autoRepair = value end
  })
  frame.optionsFrame:AddOption({
    labelText = L.AUTO_SELL_TEXT,
    tooltipText = L.AUTO_SELL_TOOLTIP,
    get = function() return SavedVariables:Get().autoSell end,
    set = function(value) SavedVariables:Get().autoSell = value end
  })
  frame.optionsFrame:AddOption({
    labelText = L.SAFE_MODE_TEXT,
    tooltipText = L.SAFE_MODE_TOOLTIP,
    get = function() return SavedVariables:Get().safeMode end,
    set = function(value) SavedVariables:Get().safeMode = value end
  })
  frame.optionsFrame:AddOption({
    labelText = L.EXCLUDE_UNBOUND_EQUIPMENT_TEXT,
    tooltipText = L.EXCLUDE_UNBOUND_EQUIPMENT_TOOLTIP,
    get = function() return SavedVariables:Get().excludeUnboundEquipment end,
    set = function(value) SavedVariables:Get().excludeUnboundEquipment = value end
  })
  frame.optionsFrame:AddOption({
    labelText = L.INCLUDE_POOR_ITEMS_TEXT,
    tooltipText = L.INCLUDE_POOR_ITEMS_TOOLTIP,
    get = function() return SavedVariables:Get().includePoorItems end,
    set = function(value) SavedVariables:Get().includePoorItems = value end
  })
  frame.optionsFrame:AddOption({
    labelText = L.INCLUDE_BELOW_ITEM_LEVEL_TEXT,
    onUpdateTooltip = function(self, tooltip)
      local itemLevel = Colors.White(SavedVariables:Get().includeBelowItemLevel.value)
      tooltip:SetText(L.INCLUDE_BELOW_ITEM_LEVEL_TEXT)
      tooltip:AddLine(L.INCLUDE_BELOW_ITEM_LEVEL_TOOLTIP:format(itemLevel))
    end,
    get = function() return SavedVariables:Get().includeBelowItemLevel.enabled end,
    set = function(value)
      if value then
        local sv = SavedVariables:Get()
        Popup:GetInteger({
          text = Colors.Gold(L.INCLUDE_BELOW_ITEM_LEVEL_TEXT) .. "|n|n" .. L.INCLUDE_BELOW_ITEM_LEVEL_POPUP_HELP,
          initialValue = sv.includeBelowItemLevel.value,
          onAccept = function(self, value)
            sv.includeBelowItemLevel.enabled = true
            sv.includeBelowItemLevel.value = value
          end
        })
      else
        SavedVariables:Get().includeBelowItemLevel.enabled = value
      end
    end
  })
  frame.optionsFrame:AddOption({
    labelText = L.INCLUDE_UNSUITABLE_EQUIPMENT_TEXT,
    tooltipText = L.INCLUDE_UNSUITABLE_EQUIPMENT_TOOLTIP,
    get = function() return SavedVariables:Get().includeUnsuitableEquipment end,
    set = function(value) SavedVariables:Get().includeUnsuitableEquipment = value end
  })

  if Addon.IS_RETAIL then
    frame.optionsFrame:AddOption({
      labelText = L.INCLUDE_ARTIFACT_RELICS_TEXT,
      tooltipText = L.INCLUDE_ARTIFACT_RELICS_TOOLTIP,
      get = function() return SavedVariables:Get().includeArtifactRelics end,
      set = function(value) SavedVariables:Get().includeArtifactRelics = value end
    })
  end

  -- Inclusions frame.
  frame.inclusionsFrame = Widgets:ListFrame({
    name = "$parent_InclusionsFrame",
    parent = frame,
    points = {
      { "TOPLEFT", frame.optionsFrame, "BOTTOMLEFT", 0, -Widgets:Padding(0.5) },
      { "BOTTOMRIGHT", frame, "BOTTOM", -Widgets:Padding(0.25), Widgets:Padding() }
    },
    list = Lists.PerCharInclusions,
    numButtons = 8
  })

  -- Exclusions frame.
  frame.exclusionsFrame = Widgets:ListFrame({
    name = "$parent_ExclusionsFrame",
    parent = frame,
    points = {
      { "TOPRIGHT", frame.optionsFrame, "BOTTOMRIGHT", 0, -Widgets:Padding(0.5) },
      { "BOTTOMLEFT", frame, "BOTTOM", Widgets:Padding(0.25), Widgets:Padding() }
    },
    list = Lists.PerCharExclusions,
    numButtons = 8
  })

  return frame
end)()
