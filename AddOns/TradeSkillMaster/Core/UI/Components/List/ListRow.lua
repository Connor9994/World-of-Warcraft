-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Theme = TSM.Include("Util.Theme")
local Reactive = TSM.Include("Util.Reactive")
local Tooltip = TSM.Include("UI.Tooltip")
local UIElements = TSM.Include("UI.UIElements")
local private = {}



-- ============================================================================
-- Element Definition
-- ============================================================================

local ListRow = TSM.Include("LibTSMClass").DefineClass("ListRow") ---@class ListRow
TSM.UI.ListRow = ListRow
ListRow._STATE_SCHEMA = Reactive.CreateStateSchema()
	:AddStringField("backgroundColor", "PRIMARY_BG")
	:AddBooleanField("isHovering", false)
	:AddBooleanField("highlightDisabled", false)
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function ListRow:__init()
	self._cancellables = {}
	self._state = self._STATE_SCHEMA:CreateState()
	self._state:SetAutoStore(self._cancellables)
	self._frameEventHandler = nil
	self._dataIndex = nil
	self._used = {
		texts = {},
		textures = {},
		buttons = {},
	}
	self._recycled = {
		texts = {},
		textures = {},
		buttons = {},
	}

	local frame = UIElements.CreateFrame(self, "Button")
	self._frame = frame
	frame:TSMSetScript("OnEnter", self:__closure("_FrameOnEnter"))
	frame:TSMSetScript("OnLeave", self:__closure("_FrameOnLeave"))
	frame:TSMSetScript("OnClick", self:__closure("_FrameOnClick"))

	frame.background = UIElements.CreateTexture(self, frame, "BACKGROUND")
	frame.background:SetAllPoints()

	frame.highlight = UIElements.CreateTexture(self, frame, "ARTWORK", -1)
	frame.highlight:SetAllPoints()
	frame.highlight:Hide()
end

function ListRow:Acquire(parentFrame, height, frameEventHandler)
	self._frameEventHandler = frameEventHandler
	local frame = self._frame
	frame:SetParent(parentFrame)
	frame:SetHeight(height)

	-- Set the background color
	self._state:PublisherForKeyChange("backgroundColor")
		:CallMethod(frame.background, "TSMSubscribeColorTexture")

	-- Set the highlight state
	self._state:Publisher()
		:IgnoreDuplicatesWithKeys("isHovering", "highlightDisabled")
		:MapWithFunction(private.StateToHighlightVisible)
		:CallMethod(frame.highlight, "TSMSetShown")

	-- Set the highlight color
	self._state:PublisherForKeyChange("backgroundColor")
		:MapWithFunction(private.BackgroundColorKeyToHighlightColorKey)
		:CallMethod(frame.highlight, "TSMSubscribeColorTexture")
end

function ListRow:Release()
	local frame = self._frame
	for _, cancellable in pairs(self._cancellables) do
		cancellable:Cancel()
	end
	wipe(self._cancellables)
	frame.background:TSMCancelAll()
	frame.highlight:TSMCancelAll()
	self._state:ResetToDefault()
	frame:Hide()
	self._frameEventHandler = nil
	self._dataIndex = nil

	for _, text in pairs(self._used.texts) do
		text:Hide()
		text:ClearAllPoints()
		text:SetWidth(0)
		text:SetHeight(0)
		text:SetTextColor(1, 1, 1, 1)
		tinsert(self._recycled.texts, text)
	end
	wipe(self._used.texts)

	for _, texture in pairs(self._used.textures) do
		texture:Hide()
		texture:SetDrawLayer("ARTWORK", 0)
		texture:SetTexture(nil)
		texture:SetTexCoord(0, 0, 0, 1, 1, 0, 1, 1)
		texture:SetColorTexture(0, 0, 0, 0)
		texture:SetVertexColor(1, 1, 1, 1)
		texture:ClearAllPoints()
		texture:SetWidth(0)
		texture:SetHeight(0)
		tinsert(self._recycled.textures, texture)
	end
	wipe(self._used.textures)

	for _, button in pairs(self._used.buttons) do
		if button.isShowingTooltip then
			Tooltip.Hide()
			button.isShowingTooltip = nil
		end
		button:Hide()
		button:SetMouseClickEnabled(true)
		button:RegisterForDrag()
		button:SetResizable(false)
		button:SetMovable(false)
		button:TSMSetScript("OnEnter", nil)
		button:TSMSetScript("OnLeave", nil)
		button:TSMSetScript("OnClick", nil)
		button:TSMSetScript("OnMouseDown", nil)
		button:TSMSetScript("OnMouseUp", nil)
		button:TSMSetScript("OnUpdate", nil)
		button:SetParent(nil)
		button:ClearAllPoints()
		button:SetWidth(0)
		button:SetHeight(0)
		tinsert(self._recycled.buttons, button)
	end
	wipe(self._used.buttons)

	frame:RegisterForDrag()
	frame:SetParent(nil)
	frame:ClearAllPoints()
end

---Sets the vertical offset of the row within the list.
---@param offset number
function ListRow:SetOffset(offset)
	local frame = self._frame
	local height = self._frame:GetHeight()
	frame:SetPoint("TOPLEFT", 0, -height * offset)
	frame:SetPoint("TOPRIGHT", 0, -height * offset)
end

---Sets the background color.
---@param color ThemeColorKey The background color as a theme color key
function ListRow:SetBackgroundColor(color)
	assert(Theme.IsValidColor(color))
	self._state.backgroundColor = color
end

---Sets the row's data index.
---@param dataIndex number The data index
function ListRow:SetDataIndex(dataIndex)
	local frame = self._frame
	-- Explicitly hide the row first in order to fire any necessary OnLeave handlers
	frame:Hide()
	self._dataIndex = dataIndex
	if dataIndex then
		frame:Show()
	end
end

---Updates the data index without redrawing the row for when the index changes but the data doesn't.
---@param dataIndex number The new data index
function ListRow:UpdateDataIndex(dataIndex)
	self._dataIndex = dataIndex
end

---Gets the data index.
---@return number
function ListRow:GetDataIndex()
	assert(self._dataIndex)
	return self._dataIndex
end

---Disables highlighting of the row.
function ListRow:DisableHighlight()
	self._state.highlightDisabled = true
end

---Adds a text element to the row.
---@param key string A key to identify the text element
---@return any
function ListRow:AddText(key)
	assert(not self._used.texts[key])
	local text = tremove(self._recycled.texts) or self._frame:CreateFontString()
	text:SetWordWrap(false)
	text:Show()
	self._used.texts[key] = text
	return text
end

---Gets an existing text element.
---@param key string The key which identifies the text element
---@return any
function ListRow:GetText(key)
	local text = self._used.texts[key]
	assert(text)
	return text
end

---Adds a texture element to the row.
---@param key string A key to identify the texture element
---@return any
function ListRow:AddTexture(key)
	assert(not self._used.textures[key])
	local texture = tremove(self._recycled.textures) or self._frame:CreateTexture()
	texture:Show()
	self._used.textures[key] = texture
	return texture
end

---Gets an existing texture element.
---@param key string THe key which identifies the texture element
---@return any
function ListRow:GetTexture(key)
	local texture = self._used.textures[key]
	assert(texture)
	return texture
end

---Adds a button element to the row.
---@param key string A key to identify the button element
---@return any
function ListRow:AddButton(key)
	assert(not self._used.buttons[key])
	local button = tremove(self._recycled.buttons) or CreateFrame("Button", nil, self._frame, nil)
	button:SetParent(self._frame)
	button:SetHitRectInsets(0, 0, 0, 0)
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	button:Show()
	self._used.buttons[key] = button
	return button
end

---Gets an existing button element.
---@param key string THe key which identifies the button element
---@return any
function ListRow:GetButton(key)
	local button = self._used.buttons[key]
	assert(button)
	return button
end

---Sets a script on the row's frame.
---@param script string The script to set
---@param handler? function The script handler
function ListRow:SetScript(script, handler)
	self._frame:TSMSetScript(script, handler, self)
end

---Shows a tooltip anchored to the row.
---@param data any The tooltip data
function ListRow:ShowTooltip(data)
	Tooltip.Show(self._frame, data)
end

---Enables dragging of the list row.
---@param dragStartHandler function The OnDragStart handler
---@param dragStopHandler function The OnDragStop handler
function ListRow:EnableDragging(dragStartHandler, dragStopHandler)
	local frame = self._frame
	frame:RegisterForDrag("LeftButton")
	frame:TSMSetScript("OnDragStart", dragStartHandler, self)
	frame:TSMSetScript("OnDragStop", dragStopHandler, self)
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function ListRow.__private:_FrameOnEnter(frame)
	self._state.isHovering = true
	self:_frameEventHandler("OnEnter")
end

function ListRow.__private:_FrameOnLeave(frame)
	self._state.isHovering = false
	self:_frameEventHandler("OnLeave")
end

function ListRow.__private:_FrameOnClick(frame, mouseButton)
	self:_frameEventHandler("OnClick", mouseButton)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.StateToHighlightVisible(state)
	return state.isHovering and not state.highlightDisabled
end

function private.BackgroundColorKeyToHighlightColorKey(color)
	return color.."+HOVER"
end
