--[[-----------------------------------------------------------------------------
EditBox Widget
-------------------------------------------------------------------------------]]
local Type, Version = "EditBox-Z", 26
local AceGUI = LibStub and LibStub("AceGUI-3.0-Z", true)
if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

-- Lua APIs
local tostring, pairs = tostring, pairs

-- WoW APIs
local PlaySound = PlaySound
local GetCursorInfo, ClearCursor, GetSpellInfo = GetCursorInfo, ClearCursor, GetSpellInfo
local CreateFrame, UIParent = CreateFrame, UIParent
local _G = _G
local CreateFrame = AceGUI.CreateFrameWithBG

-- Global vars/functions that we don't upvalue since they might get hooked, or upgraded
-- List them here for Mikk's FindGlobals script
-- GLOBALS: AceGUIEditBoxInsertLink, ChatFontNormal, OKAY

--[[-----------------------------------------------------------------------------
Support functions
-------------------------------------------------------------------------------]]
if not AceGUIEditBoxInsertLink then
	-- upgradeable hook
	hooksecurefunc("ChatEdit_InsertLink", function(...) return _G.AceGUIEditBoxInsertLink(...) end)
end

function _G.AceGUIEditBoxInsertLink(text)
	for i = 1, AceGUI:GetWidgetCount(Type) do
		local editbox = _G["AceGUI30ZEditBox"..i]
		if editbox and editbox:IsVisible() and editbox:HasFocus() then
			editbox:Insert(text)
			return true
		end
	end
end

local function ShowButton(self)
	if not self.disablebutton then
		self.button:Show()
		if self.buttonStatic then return end
		self.editbox:SetTextInsets(0, 20, 3, 3)
	end
end

local function HideButton(self)
	if self.buttonStatic then return end
	self.button:Hide()
	self.editbox:SetTextInsets(0, 0, 3, 3)
end

--[[-----------------------------------------------------------------------------
Scripts
-------------------------------------------------------------------------------]]
local function Control_OnEnter(frame)
	frame.obj:Fire("OnEnter")
end

local function Control_OnLeave(frame)
	frame.obj:Fire("OnLeave")
end

local function Frame_OnShowFocus(frame)
	frame.obj.editbox:SetFocus()
	frame:SetScript("OnShow", nil)
end

local function EditBox_OnEscapePressed(frame)
	AceGUI:ClearFocus()
end

local function EditBox_OnEnterPressed(frame)
	local self = frame.obj
	local value = frame:GetText()
	local cancel = self:Fire("OnEnterPressed", value)
	if not cancel then
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
		HideButton(self)
	end
end

local function EditBox_OnReceiveDrag(frame)
	local self = frame.obj
	local type, id, info = GetCursorInfo()
	if type == "item" then
		self:SetText(info)
		self:Fire("OnEnterPressed", info)
		ClearCursor()
	elseif type == "spell" then
		local name = GetSpellInfo(id, info)
		self:SetText(name)
		self:Fire("OnEnterPressed", name)
		ClearCursor()
	elseif type == "macro" then
		local name = GetMacroInfo(id)
		self:SetText(name)
		self:Fire("OnEnterPressed", name)
		ClearCursor()
	end
	HideButton(self)
	AceGUI:ClearFocus()
end

local function EditBox_OnTextChanged(frame)
	local self = frame.obj
	local value = frame:GetText()
	if tostring(value) ~= tostring(self.lasttext) then
		self:Fire("OnTextChanged", value)
		self.lasttext = value
		ShowButton(self)
	end
end

local function EditBox_OnFocusGained(frame)
	AceGUI:SetFocus(frame.obj)
end

local function Button_OnClick(frame)
	local editbox = frame.obj.editbox
	editbox:ClearFocus()
	EditBox_OnEnterPressed(editbox)
end

--[[-----------------------------------------------------------------------------
Methods
-------------------------------------------------------------------------------]]
local methods = {
	["OnAcquire"] = function(self)
		-- height is controlled by SetLabel
		self:SetWidth(200)
		self:SetDisabled(false)
		self:SetLabel()
		self:SetText()
		self:DisableButton(false)
		self:SetMaxLetters(0)
		self:SetLabelFontObject()
		self:SetEditFontObject()
		self:SetButtonNormalFontObject()
		self:SetButtonHighlightFontObject()
		self:SetButtonText()
		self:SetButtonWidth()
		self:SetButtonStatic()
		self:SetHiddenText()
		HideButton(self)
		self:ApplySkin()
	end,

	["OnRelease"] = function(self)
		self:ClearFocus()
	end,

	["SetDisabled"] = function(self, disabled)
		self.disabled = disabled
		if disabled then
			self.editbox:EnableMouse(false)
			self.editbox:ClearFocus()
			if not self.sethiddentext then self.editbox:SetTextColor(0.5,0.5,0.5) end
			self.label:SetTextColor(0.5,0.5,0.5)
		else
			self.editbox:EnableMouse(true)
			if not self.sethiddentext then self.editbox:SetTextColor(1,1,1) end
			self.label:SetTextColor(1,.82,0)
		end
	end,

	["SetText"] = function(self, text)
		self.lasttext = text or ""
		self.editbox:SetText(text or "")
		self.editbox:SetCursorPosition(0)
		HideButton(self)
	end,

	["GetText"] = function(self, text)
		return self.editbox:GetText()
	end,

	["SetLabel"] = function(self, text)
		if text and text ~= "" then
			self.label:SetText(text)
			self.label:Show()
			self.editbox:SetPoint("TOPLEFT",self.frame,"TOPLEFT",7,-18)
			self:SetHeight(44)
			self.alignoffset = 30
		else
			self.label:SetText("")
			self.label:Hide()
			self.editbox:SetPoint("TOPLEFT",self.frame,"TOPLEFT",7,0)
			self:SetHeight(26)
			self.alignoffset = 12
		end
	end,

	["DisableButton"] = function(self, disabled)
		self.disablebutton = disabled
		if disabled then
			HideButton(self)
		end
	end,

	["SetMaxLetters"] = function (self, num)
		self.editbox:SetMaxLetters(num or 0)
	end,

	["ClearFocus"] = function(self)
		self.editbox:ClearFocus()
		self.frame:SetScript("OnShow", nil)
	end,

	["SetFocus"] = function(self)
		self.editbox:SetFocus()
		if not self.frame:IsShown() then
			self.frame:SetScript("OnShow", Frame_OnShowFocus)
		end
	end,

	["HighlightText"] = function(self, from, to)
		self.editbox:HighlightText(from, to)
	end,

	["SetLabelFontObject"] = function(self, font)
		self.label:SetFontObject(font or GameFontNormalSmall)
	end,

	["SetEditFontObject"] = function(self, font)
		self.editbox:SetFontObject(font or ChatFontNormal)
	end,

	["SetButtonNormalFontObject"] = function(self, font)
		self.button:SetNormalFontObject(font or ChatFontNormal)
	end,

	["SetButtonHighlightFontObject"] = function(self, font)
		self.button:SetHighlightFontObject(font or ChatFontNormal)
	end,

	["SetButtonText"] = function(self, text)
		self.button:SetText(text or "Accept")
	end,

	["SetButtonWidth"] = function(self, width)
		self.button:SetWidth(width or 40)
	end,
	["SetButtonHeight"] = function(self, height)
		self.button:SetHeight(height or 20)
	end,

	["SetButtonStatic"] = function(self, value)
		self.buttonStatic = value
		if value then 
			self.button:ClearAllPoints()
			self.button:SetPoint("TOPLEFT", self.editbox, "BOTTOMLEFT", -7, 0)
			self.button:SetPoint("TOPRIGHT", self.editbox, "BOTTOMRIGHT", 0, 0)
			self.button:Show()
		else
			self.button:ClearAllPoints()
			self.button:SetPoint("RIGHT", -2, 0)
			self.button:Hide()
		end
	end,
	["SetHiddenText"] = function(self, value)
		self.sethiddentext = value
		if self.sethiddentext then 
			self.editbox:SetTextColor(0,0,0,0)
		end
	end,

	["ApplySkin"] = function(self)
		local SkinData = ZGV.UI.SkinData
		local CHAIN=ZGV.ChainCall

		if not SkinData("StyleAceGUI") then return end

		CHAIN(self.button)
			:SetBackdrop(SkinData("AceGUIButtonTexture"))
			:SetBackdropColor(unpack(SkinData("AceGUIButtonTextureColor")))
			:SetBackdropBorderColor(unpack(SkinData("AceGUIButtonTextureColor")))

		CHAIN(self.button:GetHighlightTexture())
			:SetTexture(ZGV.SKINSDIR.."white")
			:SetVertexColor(1,1,1,0.2)
			:SetTexCoord(0,1,0,1)
			:ClearAllPoints()
			:SetPoint("TOPLEFT",0,-3)
			:SetPoint("BOTTOMRIGHT",0,3)

		CHAIN(self.editbox.Left)
			:SetTexture(SkinData("AceGUIInputTexture"))
			:SetTexCoord(0,0.1953125,0,1)
			:SetSize(25,64)
			:SetPoint("LEFT",-22,0)

		CHAIN(self.editbox.Middle)
			:SetTexture(SkinData("AceGUIInputTexture"))
			:SetTexCoord(0.1953125,0.8046875,0,1)
			:SetSize(115,64)

		CHAIN(self.editbox.Right)
			:SetTexture(SkinData("AceGUIInputTexture"))
			:SetTexCoord(0.8046875,1,0,1)
			:SetSize(25,64)
			:SetPoint("RIGHT",18,0)

		self.button.Left:Hide()
		self.button.Middle:Hide()
		self.button.Right:Hide()
	end,
}

--[[-----------------------------------------------------------------------------
Constructor
-------------------------------------------------------------------------------]]
local function Constructor()
	local num  = AceGUI:GetNextWidgetNum(Type)
	local frame = CreateFrame("Frame", nil, UIParent)
	frame:Hide()

	local editbox = CreateFrame("EditBox", "AceGUI30ZEditBox"..num, frame, "InputBoxTemplate,BackdropTemplate")
	editbox:SetAutoFocus(false)
	editbox:SetFontObject(ChatFontNormal)
	editbox:SetScript("OnEnter", Control_OnEnter)
	editbox:SetScript("OnLeave", Control_OnLeave)
	editbox:SetScript("OnEscapePressed", EditBox_OnEscapePressed)
	editbox:SetScript("OnEnterPressed", EditBox_OnEnterPressed)
	editbox:SetScript("OnTextChanged", EditBox_OnTextChanged)
	editbox:SetScript("OnReceiveDrag", EditBox_OnReceiveDrag)
	editbox:SetScript("OnMouseDown", EditBox_OnReceiveDrag)
	editbox:SetScript("OnEditFocusGained", EditBox_OnFocusGained)
	editbox:SetTextInsets(0, 0, 3, 3)
	editbox:SetMaxLetters(256)
	editbox:SetPoint("BOTTOMLEFT", 6, 0)
	editbox:SetPoint("BOTTOMRIGHT")
	editbox:SetHeight(19)

	local label = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	label:SetPoint("TOPLEFT", 0, -2)
	label:SetPoint("TOPRIGHT", 0, -2)
	label:SetJustifyH("LEFT")
	label:SetHeight(18)

	local button = CreateFrame("Button", nil, editbox, "UIPanelButtonTemplate,BackdropTemplate")
	button:SetWidth(40)
	button:SetHeight(20)
	button:SetPoint("RIGHT", -2, 0)
	button:SetText(OKAY)
	button:SetScript("OnClick", Button_OnClick)
	button:Hide()

	local widget = {
		alignoffset = 30,
		editbox     = editbox,
		label       = label,
		button      = button,
		frame       = frame,
		type        = Type
	}
	for method, func in pairs(methods) do
		widget[method] = func
	end
	editbox.obj, button.obj = widget, widget

	return AceGUI:RegisterAsWidget(widget)
end

AceGUI:RegisterWidgetType(Type, Constructor, Version)
