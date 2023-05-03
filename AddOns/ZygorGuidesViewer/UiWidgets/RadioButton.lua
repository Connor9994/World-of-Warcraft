local name,ZGV = ...

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ui = ZGV.UI

local RadioButton = {}
ui:RegisterWidget("RadioButton",RadioButton)

local RadioButtonGroup = {}
ui:RegisterWidget("RadioButtonGroup",RadioButtonGroup)

local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 14
local DEFAULTHEIGHT = 14
local TEXTBUTTONBONUS = 1

--[[
	Class for a radio button sets. 
	Based on togglebutton.

	Usage:
		groupname = ui:Create("RadioButtonGroup")
		radio1 = groupname:AddRadio("value",parent)

		groupname:GetValue()
		groupname:SetValue("value")


	Groups and buttons can have separate callbacks set via RegisterToggleCallback
--]]

function RadioButtonGroup:New()
	self.ButtonGroup = {}
	return self
end

function RadioButtonGroup:AddRadio(value,parent)
	local object = ui:Create("RadioButton",parent)
	object.group = self
	object.value = value
	table.insert(self.ButtonGroup,object)
	return object
end

function RadioButtonGroup:GetValue()
	for i,v in pairs(self.ButtonGroup) do
		if v.curToggle == true then
			return v.value
		end
	end

	return false
end

function RadioButtonGroup:SetValue(value)
	for i,v in pairs(self.ButtonGroup) do
		if v.value == value then
			v.curToggle = true
			v:SetBackdrop(SkinData("RadioOn"))
		else
			v:SetBackdrop(SkinData("RadioOff"))
		end
	end
end

function RadioButtonGroup:RegisterToggleCallback(callback)
	if not self.toggleCallbacks then
		self.toggleCallbacks={}
	end
	tinsert(self.toggleCallbacks, callback)
end


function RadioButton:New(parent)
	local button = CHAIN(ui:Create("Button",parent))
		:SetScript("OnEnter",function(button)
			if button.onEnterCallbacks then  -- TODO: was "not nocallbacks", how?
				for _, callback in pairs(button.onEnterCallbacks) do
					callback(button)
				end
			end
		end)
		:SetScript("OnLeave",function(button)
			if button.onLeaveCallbacks then  -- TODO: was "not nocallbacks", how?
				for _, callback in pairs(button.onLeaveCallbacks) do
					callback(button)
				end
			end
		end)
		:SetScript("OnClick",function(me) me:Toggle() end)
	 .__END

	-- TODO does not handle word wrapping.
	button.text=CHAIN(button:CreateFontString(nil,"ARTWORK"))
		:SetPoint("LEFT",button,"RIGHT",5,0)
		:SetFont(FONT,12)
		:SetTextColor(1,1,1,1)
		:SetText("Toggle Button with no text.")
	.__END

	-- Button that contains the text so that if you click the text it toggles the box too.
	button.textbutton = CHAIN(CreateFrame("Button",nil,button))
		-- We are invisible
		:SetHeight(DEFAULTHEIGHT + TEXTBUTTONBONUS)
		:SetPoint("LEFT",button,"RIGHT")
		:RegisterForClicks("LeftButtonUp")
		-- Make scripts behave like button's
		:SetScript("OnEnter",function(button)
			if button.canToggle and button:GetText() then button:LockHighlight() end
			if button.onEnterCallbacks then  -- TODO: was "not nocallbacks", how?
				for _, callback in pairs(button.onEnterCallbacks) do
					callback(button)
				end
			end
		end)
		
		:SetScript("OnLeave",function(button)
			if button.canToggle and button:GetText() then button:UnlockHighlight() end 
			if button.onLeaveCallbacks then  -- TODO: was "not nocallbacks", how?
				for _, callback in pairs(button.onLeaveCallbacks) do
					callback(button)
				end
			end
		end)
		
		:SetScript("OnClick",function() if button:GetText()~="" then button:GetScript("OnClick")(button) end end)
	.__END

	button.savedSetSize = button.SetSize

	for f,fun in pairs(self) do
		button[f]=fun
	end

	-- initial settings
	button.canToggle = true
	button.curToggle = false
	return button
end

--[[
	Ran on button click

	Changes the color to orange/grey(default) based on T/F.
--]]

function RadioButton:Toggle(nocallbacks)
	if not self.canToggle then return end

	for i,v in pairs(self.group.ButtonGroup) do
		v.curToggle = false
		ZGV.ButtonSets.Interactions.CHECKBOX:AssignToButton(v)
	end
	
	ZGV.ButtonSets.Interactions.CHECKBOX_ON:AssignToButton(self)

	self.curToggle = true

	if not nocallbacks then
		if self.toggleCallbacks then
			for _, callback in pairs(self.toggleCallbacks) do
				callback(self)
			end
		end
		if self.group.toggleCallbacks then
			for _, callback in pairs(self.group.toggleCallbacks) do
				callback(self)
			end
		end
	end
end

function RadioButton:ApplySkin()
	for i,v in pairs(self.group.ButtonGroup) do
		if v.curToggle then
			ZGV.ButtonSets.Interactions.CHECKBOX_ON:AssignToButton(v)
		else
			ZGV.ButtonSets.Interactions.CHECKBOX:AssignToButton(v)
		end
	end
end

-- Allow callbacks when toggled
function RadioButton:RegisterToggleCallback(callback)
	if not self.toggleCallbacks then
		self.toggleCallbacks={}
	end
	tinsert(self.toggleCallbacks, callback)
end

-- Removes toggle callbacks
function RadioButton:RemoveToggleCallbacks()
	if not self.toggleCallbacks then return end
	wipe(self.toggleCallbacks)
end

-- Callbacks for OnEnter and OnLeave, useful for tooltips.
function RadioButton:RegisterOnEnterCallback(callback)
	-- Text
	if not self.onEnterCallbacks then
		self.onEnterCallbacks={}
	end
	tinsert(self.onEnterCallbacks, callback)

	-- Button
	if self:GetParent() then
		if not self:GetParent().onEnterCallbacks then
			self:GetParent().onEnterCallbacks={}
		end
		tinsert(self:GetParent().onEnterCallbacks, callback)
	end
end

function RadioButton:RegisterOnLeaveCallback(callback)
	-- Text
	if not self.onLeaveCallbacks then
		self.onLeaveCallbacks={}
	end
	tinsert(self.onLeaveCallbacks, callback)

	-- Button
	if self:GetParent() then
		if not self:GetParent().onLeaveCallbacks then
			self:GetParent().onLeaveCallbacks={}
		end
		tinsert(self:GetParent().onLeaveCallbacks, callback)
	end
end

-- Removes OnEnter, OnLeave callbacks
function RadioButton:RemoveOnEnterCallbacks()
	if not self.onEnterCallbacks then return end
	wipe(self.onEnterCallbacks)
end

function RadioButton:RemoveOnLeaveCallbacks()
	if not self.onLeaveCallbacks then return end
	wipe(self.onLeaveCallbacks)
end


--[[
	Can be set to prevent toggling from clicking the button. Can still set with :SetToggle(t)
--]]

function RadioButton:SetCanToggle(set)
	self:EnableIf(set)
	self.canToggle = set
end

--[[
	Returns T/F. Use your imagination what the T/F mean.
--]]

function RadioButton:IsChecked()
	return self.curToggle
end

--[[
	Overwrites the normal button:SetText and sets the text of the .text object for the toggle button instead.
--]]

function RadioButton:SetText(text)
	if not text then return end
	self.text:SetText(text)
	self.textbutton:SetWidth(self.text:GetStringWidth() + 10)
end

--[[
	Put the text of a toggle button on the LEFT or RIGHT
	Defaults to RIGHT so should really only need to be moved to the left
--]]
function RadioButton:SetTextPos(pos)
	self.text:ClearAllPoints()
	self.textbutton:ClearAllPoints()
	if pos == "LEFT" then
		self.text:SetPoint("RIGHT",self,"LEFT",-5,0)
		self.textbutton:SetPoint("RIGHT",self,"LEFT")

	elseif pos == "RIGHT" then
		self.text:SetPoint("LEFT",self,"RIGHT",5,0)
		self.textbutton:SetPoint("LEFT",self,"RIGHT")
	else
		error("Can only move text to left or right")
	end
end

function RadioButton:SetFont(font,size)
	self.text:SetFont(font or FONT,size or 12)
end

function RadioButton:SetTextColor(r,g,b,a)
	self.text:SetTextColor(r or 1, g or 1, b or 1, a or 1)
end

function RadioButton:GetFont()
	return self.text:GetFont()
end

function RadioButton:GetText()
	return self.text:GetText()
end

function RadioButton:SetSize(x,y)
	self:savedSetSize(x,y)
	-- textbutton width is determined by text legnth. But height can change.
	self.textbutton:SetHeight(x+TEXTBUTTONBONUS)
end

function RadioButton:SetWidth(x)
	self:SetSize(x,self:GetHeight())
end

function RadioButton:SetHeight(y)
	self:SetSize(self:GetWidth(),y)
end