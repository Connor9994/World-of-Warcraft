-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Input UI Element Class.
-- The input element allows the user to enter text. It is a subclass of the @{BaseInput} class.
-- @classmod Input

local TSM = select(2, ...) ---@type TSM
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local ItemLinked = TSM.Include("Service.ItemLinked")
local UIElements = TSM.Include("UI.UIElements")
local Input = UIElements.Define("Input", "BaseInput")
local private = {}
local PADDING_LEFT = 8
local PADDING_RIGHT = 8
local PADDING_TOP_BOTTOM = 4



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function Input.__init(self)
	local frame = UIElements.CreateFrame(self, "EditBox")
	self._editBox = frame
	self.__super:__init(frame)

	self._hintText = UIElements.CreateFontString(self, frame)
	self._hintText:SetFont(Theme.GetFont("BODY_BODY3"):GetWowFont())
	self._hintText:SetJustifyH("LEFT")
	self._hintText:SetJustifyV("MIDDLE")
	self._hintText:SetPoint("TOPLEFT", PADDING_LEFT, 0)
	self._hintText:SetPoint("BOTTOMRIGHT", -PADDING_RIGHT, 0)

	self._icon = frame:CreateTexture(nil, "ARTWORK")
	self._icon:SetPoint("RIGHT", -PADDING_RIGHT / 2, 0)

	self._clearBtn = CreateFrame("Button", nil, frame)
	self._clearBtn:SetAllPoints(self._icon)
	ScriptWrapper.Set(self._clearBtn, "OnClick", private.ClearBtnOnClick, self)

	self._subIcon = frame:CreateTexture(nil, "ARTWORK")
	self._subIcon:SetPoint("LEFT", PADDING_LEFT / 2, 0)
	TextureAtlas.SetTextureAndSize(self._subIcon, "iconPack.14x14/Subtract/Default")

	self._subBtn = CreateFrame("Button", nil, frame)
	self._subBtn:SetAllPoints(self._subIcon)
	ScriptWrapper.Set(self._subBtn, "OnClick", private.SubBtnOnClick, self)
	ScriptWrapper.SetPropagate(self._subBtn, "OnEnter")
	ScriptWrapper.SetPropagate(self._subBtn, "OnLeave")

	self._addIcon = frame:CreateTexture(nil, "ARTWORK")
	self._addIcon:SetPoint("RIGHT", -PADDING_RIGHT / 2, 0)
	TextureAtlas.SetTextureAndSize(self._addIcon, "iconPack.14x14/Add/Default")

	self._addBtn = CreateFrame("Button", nil, frame)
	self._addBtn:SetAllPoints(self._addIcon)
	ScriptWrapper.Set(self._addBtn, "OnClick", private.AddBtnOnClick, self)
	ScriptWrapper.SetPropagate(self._addBtn, "OnEnter")
	ScriptWrapper.SetPropagate(self._addBtn, "OnLeave")

	ScriptWrapper.Set(frame, "OnEnter", private.OnEnter, self)
	ScriptWrapper.Set(frame, "OnLeave", private.OnLeave, self)

	local function ItemLinkedCallback(name, link)
		if self._allowItemInsert == nil or not self:IsVisible() or not self:HasFocus() then
			return
		end
		if self._allowItemInsert == true then
			self._editBox:Insert(link)
		else
			self._editBox:Insert(name)
		end
		return true
	end
	ItemLinked.RegisterCallback(ItemLinkedCallback)

	self._clearEnabled = false
	self._subAddEnabled = false
	self._iconTexture = nil
	self._autoComplete = nil
	self._allowItemInsert = nil
	self._lostFocusOnButton = false
	self._onEnterHandler = nil
	self._onLeaveHandler = nil
end

function Input.Release(self)
	self._clearEnabled = false
	self._subAddEnabled = false
	self._iconTexture = nil
	self._autoComplete = nil
	self._allowItemInsert = nil
	self._lostFocusOnButton = false
	self._onEnterHandler = nil
	self._onLeaveHandler = nil
	self._hintText:SetText("")
	self.__super:Release()
end

--- Sets the horizontal justification of the hint text.
-- @tparam Input self The input object
-- @tparam string justifyH The horizontal justification (either "LEFT", "CENTER" or "RIGHT")
-- @treturn Input The input object
function Input.SetHintJustifyH(self, justifyH)
	assert(justifyH == "LEFT" or justifyH == "CENTER" or justifyH == "RIGHT")
	self._hintText:SetJustifyH(justifyH)
	return self
end

--- Sets the vertical justification of the hint text.
-- @tparam Input self The input object
-- @tparam string justifyV The vertical justification (either "TOP", "MIDDLE" or "BOTTOM")
-- @treturn Input The input object
function Input.SetHintJustifyV(self, justifyV)
	assert(justifyV == "TOP" or justifyV == "MIDDLE" or justifyV == "BOTTOM")
	self._hintText:SetJustifyV(justifyV)
	return self
end

--- Sets the auto complete table.
-- @tparam Input self The input object
-- @tparam table tbl A list of strings to auto-complete to
-- @treturn Input The input object
function Input.SetAutoComplete(self, tbl)
	assert(type(tbl) == "table")
	self._autoComplete = tbl
	return self
end

--- Sets the hint text.
-- The hint text is shown when there's no other text in the input.
-- @tparam Input self The input object
-- @tparam string text The hint text
-- @treturn Input The input object
function Input.SetHintText(self, text)
	self._hintText:SetText(text)
	return self
end

--- Sets whether or not the clear button is enabled.
-- @tparam Input self The input object
-- @tparam boolean enabled Whether or not the clear button is enabled
-- @treturn Input The input object
function Input.SetClearButtonEnabled(self, enabled)
	assert(type(enabled) == "boolean")
	assert(not self._subAddEnabled)
	self._clearEnabled = enabled
	return self
end

--- Sets whether or not the sub/add buttons are enabled.
-- @tparam Input self The input object
-- @tparam boolean enabled Whether or not the sub/add buttons are enabled
-- @treturn Input The input object
function Input.SetSubAddEnabled(self, enabled)
	assert(type(enabled) == "boolean")
	assert(not self._clearEnabled and not self._iconTexture)
	self._subAddEnabled = enabled
	return self
end

--- Sets the icon texture.
-- @tparam Input self The input object
-- @tparam[opt=nil] string iconTexture The texture string to use for the icon texture
-- @treturn Input The input object
function Input.SetIconTexture(self, iconTexture)
	assert(iconTexture == nil or TextureAtlas.IsValid(iconTexture))
	assert(not self._subAddEnabled)
	self._iconTexture = iconTexture
	return self
end

--- Allows inserting an item into the input by linking it while the input has focus.
-- @tparam Input self The input object
-- @tparam[opt=false] boolean insertLink Insert the link instead of the item name
-- @treturn Input The input object
function Input.AllowItemInsert(self, insertLink)
	assert(insertLink == true or insertLink == false or insertLink == nil)
	self._allowItemInsert = insertLink or false
	return self
end

--- Subtract from the input.
-- @tparam Input self The input object
-- @treturn Input The input object
function Input.Subtract(self)
	private.SubBtnOnClick(self)
	return self
end

--- Add to the input.
-- @tparam Input self The input object
-- @treturn Input The input object
function Input.Add(self)
	private.AddBtnOnClick(self)
	return self
end

--- Registers a script handler.
-- @tparam BaseInput self The input object
-- @tparam string script The script to register for
-- @tparam[opt=nil] function handler The script handler which should be called
-- @treturn BaseInput The element object
function Input.SetScript(self, script, handler)
	if script == "OnEnter" then
		self._onEnterHandler = handler
	elseif script == "OnLeave" then
		self._onLeaveHandler = handler
	else
		return self.__super:SetScript(script, handler)
	end
	return self
end

function Input.Draw(self)
	self.__super:Draw()
	self:_UpdateIconsForValue(self._value)
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function Input._UpdateIconsForValue(self, value)
	local frame = self:_GetBaseFrame()
	local leftPadding, rightPadding = PADDING_LEFT, PADDING_RIGHT

	-- set the hint text
	if value == "" and self._hintText:GetText() ~= "" then
		self._hintText:SetFont(Theme.GetFont(self._font):GetWowFont())
		self._hintText:SetTextColor(Theme.GetColor(self:_GetTextColorKey("HOVER")):GetFractionalRGBA())
		self._hintText:Show()
	else
		self._hintText:Hide()
	end

	local showSubAdd = self._subAddEnabled and (frame:IsMouseOver() or frame:HasFocus())
	if showSubAdd then
		self._subIcon:Show()
		self._subBtn:Show()
		self._addIcon:Show()
		self._addBtn:Show()
	else
		self._subIcon:Hide()
		self._subBtn:Hide()
		self._addIcon:Hide()
		self._addBtn:Hide()
	end

	-- set the icon
	local iconTexture = nil
	if self._clearEnabled and value ~= "" then
		self._clearBtn:Show()
		iconTexture = TextureAtlas.GetColoredKey("iconPack.18x18/Close/Default", self:_GetTextColorKey())
	else
		self._clearBtn:Hide()
		iconTexture = not frame:HasFocus() and self._iconTexture and TextureAtlas.GetColoredKey(self._iconTexture, self:_GetTextColorKey()) or nil
	end
	if iconTexture then
		assert(not showSubAdd)
		self._icon:Show()
		TextureAtlas.SetTextureAndSize(self._icon, iconTexture)
		rightPadding = rightPadding + TextureAtlas.GetWidth(iconTexture)
	else
		self._icon:Hide()
	end
	frame:SetTextInsets(leftPadding, rightPadding, PADDING_TOP_BOTTOM, PADDING_TOP_BOTTOM)
	-- for some reason the text insets don't take effect right away, so on the next frame, we call GetTextInsets() which seems to fix things
	ScriptWrapper.Set(frame, "OnUpdate", private.OnUpdate, self)
end

function Input._OnTextChanged(self, value)
	self:_UpdateIconsForValue(value)
end

function Input._ShouldKeepFocus(self)
	if not IsMouseButtonDown("LeftButton") then
		return false
	end
	if self._clearBtn:IsVisible() and self._clearBtn:IsMouseOver() then
		return true
	elseif self._subBtn:IsVisible() and self._subBtn:IsMouseOver() then
		return true
	elseif self._addBtn:IsVisible() and self._addBtn:IsMouseOver() then
		return true
	else
		return false
	end
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function Input._OnChar(self, c)
	self.__super:_OnChar(c)
	if not self._autoComplete then
		return
	end
	local frame = self:_GetBaseFrame()
	local text = frame:GetText()
	local match = nil
	for _, k in ipairs(self._autoComplete) do
		local start, ending = strfind(strlower(k), strlower(text), 1, true)
		if start == 1 and ending and ending == #text then
			match = k
			break
		end
	end
	if match and not IsControlKeyDown() then
		local compStart = #text
		frame:SetText(match)
		self:HighlightText(compStart, #match)
		frame:GetScript("OnTextChanged")(frame, true)
	end
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnUpdate(self)
	local frame = self:_GetBaseFrame()
	ScriptWrapper.Clear(frame, "OnUpdate")
	frame:GetTextInsets()
end

function private.ClearBtnOnClick(self)
	assert(self:_SetValueHelper(""))
	self._escValue = ""
	self._editBox:SetText(self._value)
	self:Draw()
end

function private.SubBtnOnClick(self)
	local minVal = self._validateContext and strsplit(":", self._validateContext)
	local value = tostring(max(tonumber(self:GetValue()) - (IsShiftKeyDown() and 10 or 1), minVal or -math.huge))
	if self:_SetValueHelper(value) then
		self._escValue = self._value
		self:_GetBaseFrame():SetText(value)
		self:_UpdateIconsForValue(value)
	end
end

function private.AddBtnOnClick(self)
	local _, maxVal = nil, nil
	if self._validateContext then
		_, maxVal = strsplit(":", self._validateContext)
	end
	local value = tostring(min(tonumber(self:GetValue()) + (IsShiftKeyDown() and 10 or 1), maxVal or math.huge))
	if self:_SetValueHelper(value) then
		self._escValue = self._value
		self:_GetBaseFrame():SetText(value)
		self:_UpdateIconsForValue(value)
	end
end

function private.OnEnter(self)
	self:_UpdateIconsForValue(self._value)
	if self._onEnterHandler then
		self:_onEnterHandler()
	end
end

function private.OnLeave(self)
	self:_UpdateIconsForValue(self._value)
	if self._onLeaveHandler then
		self:_onLeaveHandler()
	end
end
