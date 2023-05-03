-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ItemLinked = TSM.Include("Service.ItemLinked")
local UIElements = TSM.Include("UI.UIElements")
local private = {}
local STRING_RIGHT_PADDING = 16
local ITEM_INSERT_MODE = {
	DISABLED = "DISABLED",
	NAME = "NAME",
	LINK = "LINK",
}



-- ============================================================================
-- Element Definition
-- ============================================================================

local EditableText = UIElements.Define("EditableText", "Text") ---@class EditableText: Text
EditableText:_ExtendStateSchema()
	:AddBooleanField("editing", false)
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function EditableText:__init()
	local frame = UIElements.CreateFrame(self, "EditBox")
	self.__super:__init(frame)

	frame:SetShadowColor(0, 0, 0, 0)
	frame:SetAutoFocus(false)
	frame:TSMSetScript("OnEscapePressed", self:__closure("_HandleEscapePressed"))
	frame:TSMSetScript("OnEnterPressed", self:__closure("_HandleEnterPressed"))
	frame:TSMSetScript("OnEditFocusLost", self:__closure("_HandleEditFocusLost"))

	self._itemInsertMode = ITEM_INSERT_MODE.DISABLED
	self._onValueChangedHandler = nil
	self._onEditingChangedHandler = nil
end

function EditableText:Acquire()
	self.__super:Acquire()
	ItemLinked.RegisterCallback(self:__closure("_HandleItemLinked"))
	local frame = self:_GetBaseFrame()

	-- Set the editbox font
	self._state:PublisherForKeyChange("font")
		:CallMethod(frame, "TSMSetFont")

	-- Set the editbox text spacing
	self._state:PublisherForKeyChange("textSpacing")
		:CallMethod(frame, "SetSpacing")

	-- Set the editbox justification
	self._state:PublisherForKeyChange("justifyH")
		:CallMethod(frame, "SetJustifyH")
	self._state:PublisherForKeyChange("justifyV")
		:CallMethod(frame, "SetJustifyV")

	-- Set the editbox text color
	self._state:PublisherForKeyChange("color")
		:CallMethod(frame, "TSMSubscribeTextColor")

	-- Call the script handler when editing state changes
	self._state:PublisherForKeyChange("editing")
		:CallMethodIfNotNil(self, "_onEditingChangedHandler")

	-- Redraw when editing state changes
	self._state:PublisherForKeyChange("editing")
		:CallMethod(self, "_DrawForAutoWidth")

	-- Set the text visibility
	self._state:PublisherForKeyChange("editing")
		:InvertBoolean()
		:CallMethod(frame.text, "TSMSetShown")

	-- Set the editbox text
	self._state:Publisher()
		:IgnoreDuplicatesWithKeys("editing", "textStr")
		:MapWithFunction(private.StateToEditboxText)
		:CallMethod(frame, "SetText")

	-- Set the editbox state
	self._state:PublisherForKeyChange("editing")
		:CallMethod(frame, "TSMSetEnabled")
	self._state:PublisherForKeyChange("editing")
		:CallMethod(frame, "TSMSetFocused")
	self._state:PublisherForKeyChange("editing")
		:CallMethod(frame, "TSMSetAllHighlighted")
end

function EditableText:Release()
	local frame = self:_GetBaseFrame()
	frame:ClearFocus()
	frame:Disable()
	frame:TSMCancelAll()
	ItemLinked.UnregisterCallback(self:__closure("_HandleItemLinked"))
	self._itemInsertMode = ITEM_INSERT_MODE.DISABLED
	self._onValueChangedHandler = nil
	self._onEditingChangedHandler = nil
	self.__super:Release()
end

---Registers a script handler.
---@param script string The script to register for (supported scripts: `OnValueChanged`, `OnEditingChanged`)
---@param handler function The script handler which will be called with the editable text object followed by any
---arguments to the script
---@return EditableText @The editable text object
function EditableText:SetScript(script, handler)
	if script == "OnValueChanged" then
		self._onValueChangedHandler = handler
	elseif script == "OnEditingChanged" then
		self._onEditingChangedHandler = handler
	elseif script == "OnEnter" or script == "OnLeave" or script == "OnMouseDown" then
		self.__super:SetScript(script, handler)
	else
		error("Unknown EditableText script: "..tostring(script))
	end
	return self
end

---Sets whether or not the text is currently being edited.
---@param editing boolean The editing state to set
---@return EditableText @The editable text object
function EditableText:SetEditing(editing)
	self._state.editing = editing
	return self
end

---Allows inserting an item into the editable text by linking it while the editable text has focus.
---@param insertLink boolean Insert the link instead of the item name
---@return EditableText @The editable text object
function EditableText:AllowItemInsert(insertLink)
	assert(insertLink == nil or type(insertLink) == "boolean")
	self._itemInsertMode = insertLink and ITEM_INSERT_MODE.LINK or ITEM_INSERT_MODE.NAME
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function EditableText:_GetPreferredDimension(dimension)
	if dimension == "WIDTH" and self._state.autoWidth and not self._state.editing then
		return self:GetStringWidth() + STRING_RIGHT_PADDING
	else
		return self.__super.__super:_GetPreferredDimension(dimension)
	end
end

function EditableText.__private:_HandleItemLinked(name, link)
	if not self:IsVisible() or not self._state.editing then
		return false
	end
	local frame = self:_GetBaseFrame()
	if self._itemInsertMode == ITEM_INSERT_MODE.DISABLED then
		return false
	elseif self._itemInsertMode == ITEM_INSERT_MODE.LINK then
		frame:Insert(link)
	elseif self._itemInsertMode == ITEM_INSERT_MODE.NAME then
		frame:Insert(name)
	else
		error("Invalid item insert mode: "..tostring(self._itemInsertMode))
	end
	return true
end

function EditableText.__private:_HandleEscapePressed()
	self:SetEditing(false)
end

function EditableText.__private:_HandleEnterPressed()
	local newText = self:_GetBaseFrame():GetText()
	self:SetEditing(false)
	self:_onValueChangedHandler(newText)
end

function EditableText.__private:_HandleEditFocusLost()
	self:SetEditing(false)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.StateToEditboxText(state)
	return state.editing and state.textStr or ""
end
