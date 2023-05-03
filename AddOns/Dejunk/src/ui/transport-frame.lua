local ADDON_NAME, Addon = ...
local Colors = Addon:GetModule("Colors")
local L = Addon:GetModule("Locale")
local TransportFrame = Addon:GetModule("TransportFrame")
local Widgets = Addon:GetModule("Widgets")

-- ============================================================================
-- TransportFrame
-- ============================================================================

function TransportFrame:Show(list)
  self.frame.list = list
  self.frame.textFrame.editBox:SetText("")
  self.frame.textFrame.editBox:ClearFocus()
  self.frame:Show()
end

function TransportFrame:Hide()
  self.frame:Hide()
end

function TransportFrame:Toggle(list)
  if list == self.frame.list and self.frame:IsShown() then
    self:Hide()
  else
    self:Show(list)
  end
end

-- ============================================================================
-- Initialize
-- ============================================================================

-- Create frame.
TransportFrame.frame = (function()
  local frame = Widgets:Window({
    name = ADDON_NAME .. "_TransportFrame",
    width = 325,
    height = 375
  })
  frame:SetFrameLevel(frame:GetFrameLevel() + 2)

  frame:HookScript("OnUpdate", function(self)
    if not self.list then return end
    self.title:SetText(Colors.Yellow("%s (%s)"):format(L.TRANSPORT, self.list.name))
  end)

  -- Import button.
  frame.importButton = Widgets:Button({
    name = "$parent_ImportButton",
    parent = frame,
    points = {
      { "BOTTOMLEFT", Widgets:Padding(), Widgets:Padding() },
      { "BOTTOMRIGHT", frame, "BOTTOM", -Widgets:Padding(0.25), Widgets:Padding() }
    },
    labelText = L.IMPORT,
    labelColor = Colors.Yellow,
    onClick = function(self)
      -- Import ids.
      local editBox = frame.textFrame.editBox
      for itemId in editBox:GetText():gmatch('([^;]+)') do
        itemId = tonumber(itemId)
        if itemId and itemId > 0 and itemId <= 2147483647 then
          frame.list:Add(itemId)
        end
      end
      -- Clear.
      editBox:ClearFocus()
      editBox:HighlightText(0, 0)
    end
  })

  -- Export button.
  frame.exportButton = Widgets:Button({
    name = "$parent_ExportButton",
    parent = frame,
    points = {
      { "BOTTOMLEFT", frame, "BOTTOM", Widgets:Padding(0.25), Widgets:Padding() },
      { "BOTTOMRIGHT", -Widgets:Padding(), Widgets:Padding() }
    },
    labelText = L.EXPORT,
    labelColor = Colors.Yellow,
    onClick = function(self)
      -- Set edit box text.
      local editBox = frame.textFrame.editBox
      local itemIds = {}
      for _, item in pairs(frame.list:GetItems()) do
        itemIds[#itemIds + 1] = item.id
      end
      editBox:SetText(table.concat(itemIds, ";"))
      -- Select all.
      local numLetters = editBox:GetNumLetters()
      editBox:SetFocus()
      editBox:HighlightText(0, numLetters)
      editBox:SetCursorPosition(numLetters)
    end
  })

  -- Text frame.
  frame.textFrame = Widgets:TextFrame({
    name = "$parent_TextFrame",
    parent = frame,
    points = {
      { "TOPLEFT", frame.titleButton, "BOTTOMLEFT", Widgets:Padding(), 0 },
      { "BOTTOMRIGHT", frame.exportButton, "TOPRIGHT", 0, Widgets:Padding(0.5) }
    },
    titleText = L.ITEM_IDS,
    descriptionText = L.TRANSPORT_FRAME_TOOLTIP
  })

  return frame
end)()
