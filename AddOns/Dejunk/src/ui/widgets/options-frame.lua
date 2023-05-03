local _, Addon = ...
local Colors = Addon:GetModule("Colors")
local Widgets = Addon:GetModule("Widgets")

--[[
  Creates a TitleFrame with the ability to add boolean options.

  options = {
    name? = string,
    parent? = UIObject,
    points? = table[],
    width? = number,
    height? = number,
    titleText? = string
  }
]]
function Widgets:OptionsFrame(options)
  local BUTTONS_PER_ROW = 4
  local SPACING = Widgets:Padding()

  -- Defaults.
  options.onUpdateTooltip = nil
  options.titleTemplate = nil
  options.titleJustify = "CENTER"

  -- Base frame.
  local frame = self:TitleFrame(options)
  frame.titleButton:EnableMouse(false)
  frame.buttons = {}

  --[[
    -- Adds an option button to the frame.

    options = {
      onUpdateTooltip? = function(self, tooltip) -> nil,
      labelText = string,
      tooltipText? = string,
      get = function() -> boolean,
      set = function(value: boolean) -> nil
    }
  ]]
  function frame:AddOption(options)
    -- Defaults.
    options.name = "$parent_CheckButton" .. #self.buttons + 1
    options.parent = self

    -- Set `points` based on `#self.buttons` and `BUTTONS_PER_ROW`.
    if #self.buttons == 0 then
      options.points = { { "TOPLEFT", self.titleButton, "BOTTOMLEFT", SPACING, -SPACING } }
    else
      local row = #self.buttons / BUTTONS_PER_ROW
      if math.floor(row) == row then
        local firstIndexOfPreviousRow = #self.buttons - (BUTTONS_PER_ROW - 1)
        options.points = { { "TOPLEFT", self.buttons[firstIndexOfPreviousRow], "BOTTOMLEFT", 0, -SPACING } }
      else
        options.points = { { "TOPLEFT", self.buttons[#self.buttons], "TOPRIGHT", SPACING, 0 } }
      end
    end

    -- Add button.
    self.buttons[#self.buttons + 1] = Widgets:OptionButton(options)
  end

  frame:SetScript("OnUpdate", function(self)
    -- Resize buttons.
    local numColumns = math.ceil(#self.buttons / BUTTONS_PER_ROW)
    local buttonAreaWidth = self:GetWidth() - (SPACING * 2)
    local buttonAreaHeight = self:GetHeight() - self.titleButton:GetHeight() - (SPACING * 2)
    local buttonSpacingHorizontal = (BUTTONS_PER_ROW - 1) * SPACING
    local buttonSpacingVertical = (numColumns - 1) * SPACING

    local buttonWidth = (buttonAreaWidth - buttonSpacingHorizontal) / BUTTONS_PER_ROW
    local buttonHeight = (buttonAreaHeight - buttonSpacingVertical) / numColumns

    for _, button in ipairs(self.buttons) do
      button:SetSize(buttonWidth, buttonHeight)
    end
  end)

  return frame
end

--[[
  Creates a toggleable option button.

  options = {
    name? = string,
    parent? = UIObject,
    points? = table[],
    width? = number,
    height? = number,
    onUpdateTooltip? = function(self, tooltip) -> nil,
    labelText = string,
    tooltipText? = string,
    get = function() -> boolean,
    set = function(value: boolean) -> nil
  }
]]
function Widgets:OptionButton(options)
  -- Defaults.
  options.frameType = "Button"

  if options.tooltipText then
    options.onUpdateTooltip = function(self, tooltip)
      tooltip:SetText(options.labelText)
      tooltip:AddLine(options.tooltipText)
    end
  end

  -- Base frame.
  local frame = self:Frame(options)
  frame:SetBackdropColor(Colors.DarkGrey:GetRGBA(0.25))
  frame:SetBackdropBorderColor(Colors.White:GetRGBA(0.25))

  -- Check box.
  frame.checkBox = self:Frame({
    name = "$parent_CheckBox",
    parent = frame
  })

  -- Label text.
  frame.label = frame:CreateFontString("$parent_Label", "ARTWORK", "GameFontNormal")
  frame.label:SetText(Colors.White(options.labelText))
  frame.label:SetPoint("LEFT", frame.checkBox, "RIGHT", self:Padding(0.5), 0)
  frame.label:SetPoint("RIGHT", frame, -self:Padding(), 0)
  frame.label:SetWordWrap(false)
  frame.label:SetJustifyH("LEFT")

  frame:HookScript("OnEnter", function(self)
    self:SetBackdropColor(Colors.DarkGrey:GetRGBA(0.5))
    self:SetBackdropBorderColor(Colors.White:GetRGBA(0.5))
  end)

  frame:HookScript("OnLeave", function(self)
    self:SetBackdropColor(Colors.DarkGrey:GetRGBA(0.25))
    self:SetBackdropBorderColor(Colors.White:GetRGBA(0.25))
  end)

  frame:SetScript("OnClick", function(self)
    options.set(not options.get())
  end)

  frame:SetScript("OnUpdate", function(self)
    -- Check box.
    local size = self.label:GetStringHeight()
    self.checkBox:SetSize(size, size)
    self.checkBox:SetPoint("LEFT", Widgets:Padding(), 0)

    if options.get() then
      self.checkBox:SetBackdropColor(Colors.Yellow:GetRGBA(0.5))
      self.checkBox:SetBackdropBorderColor(Colors.Yellow:GetRGB())
    else
      self.checkBox:SetBackdropColor(0, 0, 0, 0)
      self.checkBox:SetBackdropBorderColor(Colors.White:GetRGBA(0.25))
    end
  end)

  return frame
end
