local _, Addon = ...
local L = Addon:GetModule("Locale")
local Widgets = Addon:GetModule("Widgets")

--[[
  Creates a ScrollableTitleFrame with an edit box.

  options = {
    name? = string,
    parent? = UIObject,
    points? = table[],
    width? = number,
    height? = number,
    titleText = string,
    descriptionText = string
  }
]]
function Widgets:TextFrame(options)
  -- Defaults.
  options.titleTemplate = nil
  options.titleJustify = "CENTER"

  options.onUpdateTooltip = function(self, tooltip)
    tooltip:SetText(options.titleText)
    tooltip:AddLine(options.descriptionText)
    tooltip:AddLine(" ")
    tooltip:AddDoubleLine(L.LEFT_CLICK, L.SELECT_ALL)
    tooltip:AddDoubleLine(L.RIGHT_CLICK, L.CLEAR)
  end

  -- Base frame.
  local frame = Widgets:ScrollableTitleFrame(options)

  frame.titleButton:SetScript("OnClick", function(_, button)
    -- Select all.
    if button == "LeftButton" then
      frame.editBox:SetFocus()
      frame.editBox:HighlightText()
      frame.editBox:SetCursorPosition(frame.editBox:GetNumLetters())
    end
    -- Clear.
    if button == "RightButton" then
      frame.editBox:SetText("")
      frame.editBox:ClearFocus()
    end
  end)

  -- Edit box.
  frame.editBox = CreateFrame("EditBox", "$parent_EditBox", frame.scrollFrame)
  frame.editBox:SetFontObject("GameFontNormal")
  frame.editBox:SetTextColor(1, 1, 1)
  frame.editBox:SetAutoFocus(false)
  frame.editBox:SetMultiLine(true)
  frame.editBox:SetCountInvisibleLetters(true)

  ScrollingEdit_OnCursorChanged(frame.editBox, 0, 0, 0, 0)
  frame.editBox:SetScript("OnCursorChanged", ScrollingEdit_OnCursorChanged)

  frame.editBox:SetScript("OnEscapePressed", function(self)
    frame.editBox:ClearFocus()
    frame.editBox:HighlightText(0, 0)
  end)

  frame.editBox:SetScript("OnTextChanged", function(self)
    ScrollingEdit_OnTextChanged(self, frame.scrollFrame)
  end)

  frame.editBox:SetScript("OnUpdate", function(self, elapsed)
    ScrollingEdit_OnUpdate(self, elapsed, frame.scrollFrame)
    frame.slider:SetValue(frame.scrollFrame:GetVerticalScroll())
  end)

  -- Scroll frame.
  frame.scrollFrame:SetScrollChild(frame.editBox)
  frame.scrollFrame:SetScript("OnMouseDown", function(self)
    frame.editBox:SetFocus()
    frame.editBox:HighlightText(0, 0)
    frame.editBox:SetCursorPosition(frame.editBox:GetNumLetters())
  end)

  return frame
end
