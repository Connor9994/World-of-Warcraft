--[[-----------------------------------------------------------------------------
Slider Widget
Graphical Slider, like, for Range values.
-------------------------------------------------------------------------------]]
local Type, Version = "SliderLabeled-Z", 3
local AceGUI = LibStub and LibStub("AceGUI-3.0-Z", true)
if not AceGUI or (AceGUI:GetWidgetVersion(Type) or 0) >= Version then return end

-- Lua APIs
local min, max, floor = math.min, math.max, math.floor
local tonumber, pairs = tonumber, pairs

-- WoW APIs
local PlaySound = PlaySound
local CreateFrame, UIParent = CreateFrame, UIParent
local CreateFrame = AceGUI.CreateFrameWithBG

-- Global vars/functions that we don't upvalue since they might get hooked, or upgraded
-- List them here for Mikk's FindGlobals script
-- GLOBALS: GameFontHighlightSmall

--[[-----------------------------------------------------------------------------
Support functions
-------------------------------------------------------------------------------]]

--[[-----------------------------------------------------------------------------
Scripts
-------------------------------------------------------------------------------]]
local function Control_OnEnter(frame)
	frame.obj:Fire("OnEnter")
end

local function Control_OnLeave(frame)
	frame.obj:Fire("OnLeave")
end

local function Frame_OnMouseDown(frame)
	frame.obj.slider:EnableMouseWheel(true)
	AceGUI:ClearFocus()
end

local function Slider_OnValueChanged(frame)
	local self = frame.obj
	if not frame.setup then
		local newindex = frame:GetValue()
		newindex = floor((newindex - 1) + 0.5) + 1
		if newindex ~= self.index and not self.disabled then
			self.index = newindex
			self.value = self.values[newindex]
			self:Fire("OnValueChanged", self.value)
		end
	end
end

local function Slider_OnMouseUp(frame)
	local self = frame.obj
	self:Fire("OnMouseUp", self.value)
end

local function Slider_OnMouseWheel(frame, v)
	local self = frame.obj
	if not self.disabled then
		local index = self.index
		if v > 0 then
			index = min(index + 1, #self.values)
		else
			index = max(index - 1, 1)
		end
		self.slider:SetValue(index)
	end
end

local function alphasort(a,b)
	local na,nb=tonumber(a),tonumber(b)
	if na and nb then return na<nb end
	if na and not nb then return true end
	if nb and not na then return false end
	return tostring(a)<tostring(b)
end

--[[-----------------------------------------------------------------------------
Methods
-------------------------------------------------------------------------------]]
local methods = {
	["OnAcquire"] = function(self)
		self:SetWidth(200)
		self:SetHeight(43)
		self:SetDisabled(false)
		self:SetSliderValues({a="",b=""})
		self:SetValue('a')
		self.slider:EnableMouseWheel(false)

		self:SetLabelFontObject()
		self:SetValueFontObject()
		self:ApplySkin()
	end,

	-- ["OnRelease"] = nil,

	["OnWidthSet"] = function(self, width)
		self:UpdateLabels(width)
	end,

	["SetDisabled"] = function(self, disabled)
		self.disabled = disabled
		if disabled then
			self.slider:EnableMouse(false)
			self.label:SetTextColor(.5, .5, .5)
		else
			self.slider:EnableMouse(true)
			self.label:SetTextColor(self.label:GetFontObject():GetTextColor())
		end
	end,

	["SetValue"] = function(self, value)
		self.slider.setup = true
		value = value or self.values[1]
		local index = self:FindValueIndex(value)
		if not index then return end
		self.slider:SetValue(index)
		self.index = index
		self.value = value
		self.slider.setup = nil
	end,

	["GetValue"] = function(self)
		return self.value
	end,

	["SetLabel"] = function(self, text)
		self.label:SetText(text)
		self.label:SetHeight(text and #text>0 and 15 or 1)
	end,

	["FindValueIndex"] = function(self, value)
		for index,val in ipairs(self.values) do
			if val==value then  return index  end
		end
	end,

	["SetSliderValues"] = function(self, values)
		local vals={}
		for val in pairs(values) do  tinsert(vals,val)  end
		table.sort(vals,alphasort)

		self.frame.setup = true

		self.values={}

		for index,val in ipairs(vals) do
			-- store value, that's the easy part
			self.values[index]=val

			-- make a label
			local label = self.labels[index] or self:CreateLabel()
			label:SetText(values[val])
		end
		self:UpdateLabels()

		self.slider:SetMinMaxValues(1,#vals)
		self.slider:SetValueStep(1)

		if self.value then
			local index=self:FindValueIndex(self.value)
			if index then  -- new values list, but old value is in there... keep pointing to it.
				self.slider:SetValue(index)
			else  -- new values, old value has to be reset.
				self:SetValue()
			end
		end
		self.frame.setup = nil
	end,

	["CreateLabel"] = function (self)
		local label = self.slider:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
		tinsert(self.labels,label)
		return label
	end,

	["UpdateLabels"] = function (self, width)
		local leftmargin=15
		local rightmargin=22
		local width=width or self.slider:GetWidth()
		local sliderwidth=width-leftmargin-rightmargin
		for i,label in ipairs(self.labels) do
			local anchor = "TOP"
			local space=-2
			if i==1 then
				label:ClearAllPoints()
				label:SetPoint("TOPLEFT",self.slider,"BOTTOMLEFT",0,space)
				label:Show()
			elseif i==#self.values then
				label:ClearAllPoints()
				label:SetPoint("TOPRIGHT",self.slider,"BOTTOMRIGHT",0,space)
				label:Show()
			elseif i<#self.values then
				label:ClearAllPoints()
				local x = leftmargin + sliderwidth*(i-1)/(#self.values-1)
				label:SetPoint("TOP",self.slider,"BOTTOMLEFT",x,space)
				label:Show()
			else
				label:Hide()
			end
		end
	end,

	["SetLabelFontObject"] = function (self, font)
		font = font or GameFontHighlight
		self.label:SetFontObject(font)
		self.label:SetTextColor(font:GetTextColor())
	end,
	
	["SetValueFontObject"] = function (self, font)
		font = font or GameFontHighlight
		for i,label in ipairs(self.labels) do
			label:SetFontObject(font)
			label:SetTextColor(font:GetTextColor())
		end
	end,

	["ApplySkin"] = function(self)
		local SkinData = ZGV.UI.SkinData
		local CHAIN=ZGV.ChainCall
		if not SkinData("StyleAceGUI") then 
			self.slider:SetBackdrop({
				bgFile = "Interface\\Buttons\\UI-SliderBar-Background",
				edgeFile = "Interface\\Buttons\\UI-SliderBar-Border",
				tile = true, tileSize = 8, edgeSize = 8,
				insets = { left = 3, right = 3, top = 6, bottom = 6 }
			})
			self.slider:SetThumbTexture("Interface\\Buttons\\UI-SliderBar-Button-Horizontal")
		else
			self.slider:SetBackdrop(SkinData("AceGUISliderBackdrop"))
			self.slider:SetThumbTexture(SkinData("AceGUISliderThumb"))
		end
	end,
	
}

--[[-----------------------------------------------------------------------------
Constructor
-------------------------------------------------------------------------------]]
local SliderBackdrop  = {
	bgFile = "Interface\\Buttons\\UI-SliderBar-Background",
	edgeFile = "Interface\\Buttons\\UI-SliderBar-Border",
	tile = true, tileSize = 8, edgeSize = 8,
	insets = { left = 3, right = 3, top = 6, bottom = 6 }
}

local ManualBackdrop = {
	bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
	edgeFile = "Interface\\ChatFrame\\ChatFrameBackground",
	tile = true, edgeSize = 1, tileSize = 5,
}

local function Constructor()
	local frame = CreateFrame("Frame", AceGUI.Prefix.."SliderLabeled" .. AceGUI:GetNextWidgetNum(Type), UIParent)

	frame:EnableMouse(true)
	frame:SetScript("OnMouseDown", Frame_OnMouseDown)

	local label = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	label:SetPoint("TOPLEFT")
	label:SetPoint("TOPRIGHT")
	label:SetJustifyH("LEFT")
	label:SetHeight(18)

	local slider = CreateFrame("Slider", nil, frame)
	slider:SetOrientation("HORIZONTAL")
	slider:SetHeight(20)
	slider:SetHitRectInsets(0, 0, -10, 0)
	slider:SetBackdrop(SliderBackdrop)
	slider:SetThumbTexture("Interface\\Buttons\\UI-SliderBar-Button-Horizontal")
	slider:SetPoint("TOP", label, "BOTTOM")
	slider:SetPoint("LEFT", 3, 0)
	slider:SetPoint("RIGHT", -3, 0)
	slider:SetValue(0)
	slider:SetScript("OnValueChanged",Slider_OnValueChanged)
	slider:SetScript("OnEnter", Control_OnEnter)
	slider:SetScript("OnLeave", Control_OnLeave)
	slider:SetScript("OnMouseUp", Slider_OnMouseUp)
	slider:SetScript("OnMouseWheel", Slider_OnMouseWheel)
	slider:SetObeyStepOnDrag(true)

	local labels={}

	local widget = {
		label       = label,
		slider      = slider,
		alignoffset = 25,
		frame       = frame,
		labels       = labels,
		type        = Type
	}
	for method, func in pairs(methods) do
		widget[method] = func
	end
	slider.obj = widget

	return AceGUI:RegisterAsWidget(widget)
end

AceGUI:RegisterWidgetType(Type,Constructor,Version)
