--[[-----------------------------------------------------------------------------
Button Widget
Graphical Button.
-------------------------------------------------------------------------------]]
local Type, Version = "Button-Z", 23
local AceGUI = LibStub and LibStub("AceGUI-3.0-Z", true)
if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

-- Lua APIs
local pairs = pairs

-- WoW APIs
local _G = _G
local PlaySound, CreateFrame, UIParent = PlaySound, CreateFrame, UIParent
local CreateFrame = AceGUI.CreateFrameWithBG

--[[-----------------------------------------------------------------------------
Scripts
-------------------------------------------------------------------------------]]
local function Button_OnClick(frame, ...)
	AceGUI:ClearFocus()
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION)
	frame.obj:Fire("OnClick", ...)
end

local function Control_OnEnter(frame)
	frame.obj:Fire("OnEnter")
end

local function Control_OnLeave(frame)
	frame.obj:Fire("OnLeave")
end

--[[-----------------------------------------------------------------------------
Methods
-------------------------------------------------------------------------------]]
local methods = {
	["OnAcquire"] = function(self)
		-- restore default values
		self:SetHeight(24)
		self:SetWidth(200)
		self:SetDisabled(false)
		self:SetAutoWidth(false)
		self:SetText()
		self:SetFontObject()
		self:SetHighlightFontObject()
		self:ApplySkin()
	end,

	-- ["OnRelease"] = nil,

	["SetText"] = function(self, text)
		self.text:SetText(text)
		if self.autoWidth then
			self:SetWidth(self.text:GetStringWidth() + 30)
		end
	end,
	
	["SetAutoWidth"] = function(self, autoWidth)
		self.autoWidth = autoWidth
		if self.autoWidth then
			self:SetWidth(self.text:GetStringWidth() + 30)
		end
	end,

	["SetDisabled"] = function(self, disabled)
		self.disabled = disabled
		if disabled then
			self.frame:Disable()
		else
			self.frame:Enable()
		end
	end,

	["SetFontObject"] = function(self, font)
		self.frame:SetNormalFontObject(font or GameFontNormal)
	end,

	["SetHighlightFontObject"] = function(self, font)
		self.frame:SetHighlightFontObject(font or GameFontHighlight)
	end,

	["ApplySkin"] = function(self)
		local SkinData = ZGV.UI.SkinData
		local CHAIN=ZGV.ChainCall

		if not SkinData("StyleAceGUI") then return end

		self:SetHeight(24)

		CHAIN(self.frame)
			:SetBackdrop(SkinData("AceGUIButtonTexture"))
			:SetBackdropColor(unpack(SkinData("AceGUIButtonTextureColor")))
			:SetBackdropBorderColor(unpack(SkinData("AceGUIButtonTextureColor")))

		self.text:SetTextColor(unpack(SkinData("AceGUIButtonTextColor")))

		CHAIN(self.frame:GetHighlightTexture())
			:SetTexture(ZGV.SKINSDIR.."white")
			:SetVertexColor(1,1,1,0.2)
			:SetTexCoord(0,1,0,1)
			:ClearAllPoints()
			:SetPoint("TOPLEFT",0,-3)
			:SetPoint("BOTTOMRIGHT",0,7)

		self.frame.Left:Hide()
		self.frame.Middle:Hide()
		self.frame.Right:Hide()


	end,
}

--[[-----------------------------------------------------------------------------
Constructor
-------------------------------------------------------------------------------]]
local function Constructor()
	local name = AceGUI.Prefix.."Button" .. AceGUI:GetNextWidgetNum(Type)
	local frame = CreateFrame("Button", name, UIParent, "UIPanelButtonTemplate,BackdropTemplate")
	frame:Hide()

	frame:EnableMouse(true)
	frame:SetScript("OnClick", Button_OnClick)
	frame:SetScript("OnEnter", Control_OnEnter)
	frame:SetScript("OnLeave", Control_OnLeave)

	local text = frame:GetFontString()
	text:ClearAllPoints()
	text:SetPoint("TOPLEFT", 15, -1)
	text:SetPoint("BOTTOMRIGHT", -15, 1)
	text:SetJustifyV("MIDDLE")

	local widget = {
		text  = text,
		frame = frame,
		type  = Type
	}
	for method, func in pairs(methods) do
		widget[method] = func
	end

	return AceGUI:RegisterAsWidget(widget)
end

AceGUI:RegisterWidgetType(Type, Constructor, Version)
