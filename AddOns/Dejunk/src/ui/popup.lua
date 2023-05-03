local _, Addon = ...
local E = Addon:GetModule("Events")
local EventManager = Addon:GetModule("EventManager")
local Popup = Addon:GetModule("Popup")

Popup.keys = {}

-- ============================================================================
-- Events
-- ============================================================================

EventManager:On(E.SavedVariablesSwitched, function()
  for i = 1, STATICPOPUP_NUMDIALOGS do
    local popup = _G["StaticPopup" .. i]
    if popup and popup:IsShown() and Popup.keys[popup.which] then
      popup:Hide()
    end
  end
end)

-- ============================================================================
-- Local Functions
-- ============================================================================

local function registerPopup(popupKey, popup)
  Popup.keys[popupKey] = true
  StaticPopupDialogs[popupKey] = popup
  return popupKey, popup
end

-- ============================================================================
-- Popup
-- ============================================================================

do -- Popup:GetInteger()
  local function toInt(value)
    local value = tonumber(value or "", 10)
    local isInt = type(value) == "number" and value == floor(value)
    return isInt and floor(value) or nil
  end

  local popupKey, popup = registerPopup("DEJUNK_GET_INTEGER_POPUP", {
    button1 = ACCEPT,
    button2 = CANCEL,
    timeout = 0,
    exclusive = 1,
    whileDead = 1,
    hideOnEscape = 1,
    hasEditBox = true,
    EditBoxOnEscapePressed = function(self) self:GetParent():Hide() end,
    EditBoxOnTextChanged = function(self)
      local isInt = toInt(self:GetText()) ~= nil
      self:GetParent().button1:SetEnabled(isInt)
    end,
  })

  --[[
    Shows a popup requiring a valid integer input.

    options = {
      text? = string,
      initialValue? = string,
      onAccept? = function(self, value) -> nil,
      onCancel? = function(self) -> nil,
      onShow? = function(self) -> nil,
      onHide? = function(self) -> nil
    }
  ]]
  function Popup:GetInteger(options)
    popup.text = options.text

    popup.EditBoxOnEnterPressed = function(self)
      local parent = self:GetParent()
      if parent.button1:IsEnabled() then
        if options.onAccept then options.onAccept(self, toInt(self:GetText())) end
        parent:Hide()
      end
    end

    popup.OnAccept = function(self)
      if options.onAccept then
        options.onAccept(self, toInt(self.editBox:GetText()))
      end
    end
    popup.OnCancel = options.onCancel

    popup.OnShow = function(self)
      self.editBox:SetText(tostring(options.initialValue or ""))
      self.editBox:HighlightText()
      self.editBox:SetCursorPosition(self.editBox:GetNumLetters())
      if options.onShow then options.onShow(self) end
    end
    popup.OnHide = options.onHide

    StaticPopup_Show(popupKey)
  end
end
