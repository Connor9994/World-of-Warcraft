local name,ZGV = ...

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ToggleButton = {}
local ui = ZGV.UI
ui:RegisterWidget("ToggleButton",ToggleButton)

local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 12
local DEFAULTHEIGHT = 12
local TEXTBUTTONBONUS = 1

--[[
	Class for a nice button that toggles on and off.

	Many functions are overwritten so that you can call tB:funct() instead of searching through the different componets to set the correct obj.
	e.g tb:SetText() actually does tb.text:SetText()

	Sample Use:
		local toggleButton = CHAIN(ZGV.Ui:Create("ToggleButton",MYFRAME,"nameofButton"))
			:SetPoint("LEFT",25,0)
			:SetText("I am a button!")
		.__END

	Known Issues:
		Only uses stealth skin.
		Text to the right of the button does not wrap
		No tooltips available
--]]

function ToggleButton:New(parent,name)
	local button = CHAIN(ui:Create("Button",parent,name))
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
		-- Get rid of OnEnter/Leave. Need a highlight texture not a backdrop color change because we overwrite that texture already.
		-- Hijacked OnEnter/Leave to make tooltips work when hovering over the button. ~~ Jeremiah, 1/20/2014
		:SetScript("OnEnter",function(button)
			if button.onEnterCallbacks then --TODO: was "not nocallbacks", how?
				for _, callback in pairs(button.onEnterCallbacks) do
					callback(button)
				end
			end
		end)
		:SetScript("OnLeave",function(button)
			if button.onLeaveCallbacks then --TODO: was "not nocallbacks", how?
				for _, callback in pairs(button.onLeaveCallbacks) do
					callback(button)
				end
			end
		end)
		:SetScript("OnClick",function(me) me:Toggle(not me.curToggle) end)
	 .__END

	-- TODO does not handle word wrapping.
	button.text=CHAIN(button:CreateFontString(nil,"ARTWORK"))
		:SetPoint("LEFT",button,"RIGHT",7,-1)
		:SetFont(FONT,12)
		:SetTextColor(1,1,1,1)
		:SetText("Toggle Button with no text.")
	.__END

	-- Button that contains the text so that if you click the text it toggles the box too.
	button.textbutton = CHAIN(CreateFrame("Button",nil,button))
		-- We are invisible
		:SetHeight(DEFAULTHEIGHT + TEXTBUTTONBONUS)
		:SetPoint("LEFT",button,"RIGHT",7,-1)
		:RegisterForClicks("LeftButtonUp")
		-- Make scripts behave like button's
		:SetScript("OnEnter",function(button)
			if button.canToggle and button:GetText() then button:LockHighlight() end
			if button.onEnterCallbacks then --TODO: was "not nocallbacks", how?
				for _, callback in pairs(button.onEnterCallbacks) do
					callback(button)
				end
			end
		end)
		
		:SetScript("OnLeave",function(button)
			if button.canToggle and button:GetText() then button:UnlockHighlight() end 
			if button.onLeaveCallbacks then --TODO: was "not nocallbacks", how?
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
--]]

function ToggleButton:Toggle(set)
	if not self.canToggle then return end

	self:SetToggle(set)
end

--[[
	True or false, bypass the .canToggle option because this is only called code side.

	Changes the color to orange/grey(default) based on T/F.

	Calls MyToggle after it is complete if additional works need to be done when a button is toggled.
	-- Event handlers are usually named OnSomething, can this MySomething be refactored..? ~~ 2013-12-11 sinus
	-- Also, what's the functional difference between MyToggle and .callbacks?  ~~ 2013-12-11 sinus
	
	-- Multiple callbacks can be registered, and they won't clobber anything previously there,
	-- allowing them to be used safely.
	--
	-- I would like to see MyToggle phased out eventually. ~~ Jeremiah 2013-12-12 

	-- MyToggle was just my bad design for callbacks. I converted it all to callbacks now. ~~ 2013-12-16 erich
--]]

function ToggleButton:ApplySkin()
	if self.curToggle then
		ZGV.ButtonSets.Interactions.CHECKBOX_ON:AssignToButton(self)
	else
		ZGV.ButtonSets.Interactions.CHECKBOX:AssignToButton(self)
	end
end

function ToggleButton:SetToggle(set, nocallbacks)
	if set then
		ZGV.ButtonSets.Interactions.CHECKBOX_ON:AssignToButton(self)
	else
		ZGV.ButtonSets.Interactions.CHECKBOX:AssignToButton(self)
	end

	self.curToggle = set
	
	if not nocallbacks and self.toggleCallbacks then
		for _, callback in pairs(self.toggleCallbacks) do
			callback(self)
		end
	end
end

-- Allow callbacks when toggled
function ToggleButton:RegisterToggleCallback(callback)
	if not self.toggleCallbacks then
		self.toggleCallbacks={}
	end
	tinsert(self.toggleCallbacks, callback)
end

-- Removes toggle callbacks
function ToggleButton:RemoveToggleCallbacks()
	if not self.toggleCallbacks then return end
	wipe(self.toggleCallbacks)
end

-- Callbacks for OnEnter and OnLeave, useful for tooltips.
function ToggleButton:RegisterOnEnterCallback(callback)
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

function ToggleButton:RegisterOnLeaveCallback(callback)
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
function ToggleButton:RemoveOnEnterCallbacks()
	if not self.onEnterCallbacks then return end
	wipe(self.onEnterCallbacks)
end

function ToggleButton:RemoveOnLeaveCallbacks()
	if not self.onLeaveCallbacks then return end
	wipe(self.onLeaveCallbacks)
end


--[[
	Can be set to prevent toggling from clicking the button. Can still set with :SetToggle(t)
	-- "Can" is commonly an ability CHECK, not setting. Refactor please? ~~ 2013-12-11 sinus
	-- Prepended Set, updated all instances of it's use. Was commented out in 1 place ~~ 2013-12-16 erich
--]]

function ToggleButton:SetCanToggle(set)
	self:EnableIf(set)
	self.canToggle = set
end

--[[
	Returns T/F. Use your imagination what the T/F mean.
	-- Great. So it means the button is toggled. Great! Shouldn't this be "set" or "active" or "checked" or "selected"? ~~ 2013-12-11 sinus
	-- Updated to IsChecked got all instances of it fixed. ~~ 2013-12-16 erich
--]]

function ToggleButton:IsChecked()
	return self.curToggle
end

--[[
	Overwrites the normal button:SetText and sets the text of the .text object for the toggle button instead.
--]]

function ToggleButton:SetText(text)
	if not text then return end
	self.text:SetText(text)
	self.textbutton:SetWidth(self.text:GetStringWidth() + 10)
end

--[[
	Put the text of a toggle button on the LEFT or RIGHT
	Defaults to RIGHT so should really only need to be moved to the left
--]]
function ToggleButton:SetTextPos(pos)
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

function ToggleButton:SetFont(font,size)
	self.text:SetFont(font or FONT,size or 12)
end

function ToggleButton:SetTextColor(r,g,b,a)
	self.text:SetTextColor(r or 1, g or 1, b or 1, a or 1)
end

function ToggleButton:GetFont()
	return self.text:GetFont()
end

function ToggleButton:GetText()
	return self.text:GetText()
end

function ToggleButton:SetSize(x,y)
	self:savedSetSize(x,y)
	-- textbutton width is determined by text legnth. But height can change.
	self.textbutton:SetHeight(x+TEXTBUTTONBONUS)
end

function ToggleButton:SetWidth(x)
	self:SetSize(x,self:GetHeight())
end

function ToggleButton:SetHeight(y)
	self:SetSize(self:GetWidth(),y)
end