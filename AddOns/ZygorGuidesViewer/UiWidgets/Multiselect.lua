local name,ZGV = ...

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local G = _G

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall
local AceGUI = LibStub("AceGUI-3.0-Z")

local Multiselect = {}
local private = {}
Multiselect.private = private

ZGV.UI:RegisterWidget("Multiselect",Multiselect)
local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 150

--[=[
	Class for a zygor themed multiselect. Mutation of regular dropdown

	Usage:

	-- define items
	local items = { -- name, default on/off, name (used for db save/load), tooltip text
		{"item 1",false,"item1","item 1 tip"},
		...
	}

	-- create dropdow
	dropdown = ZGV.UI:Create("Multiselect",parent,style,level)

	-- attach db handling
	for optnum,opt in ipairs(items) do
		local profile = ZGV.db.profile
		if type(profile.DATABASEARRAY[opt[3]])=="nil" then profile.DATABASEARRAY[opt[3]]=opt[2] end

		local item = dropdown:AddItem(opt[1],opt[2],opt[3], function(item) profile.DATABASEARRAY[opt[3]]=not profile.DATABASEARRAY[opt[3]] item.checked=profile.DATABASEARRAY[opt[3]] end, opt[3])
		item.checked = profile.DATABASEARRAY[opt[3]]
	end

--]=]


function Multiselect:New(parent,style,frameLevel)
	style = style or 1

	local multiselectObj = CHAIN(AceGUI:Create("Dropdown-Z","multiselect"))
		:SetWidth(DEFAULTWIDTH)
		:SetMultiselect(true)
	.__END

	local multiselect = multiselectObj.dropdown
	local multiselectFrame = multiselectObj.frame
	local multiselectPullout = multiselectObj.pullout
	local multiselectText = multiselectObj.text
	local multiselectButton = multiselectObj.button
	local multiselectButtonCover = multiselectObj.button_cover
	local frameBackdrop, frameBackdropColor, frameBackdropEdgeColor

	if style == 1 then
		frameBackdrop, frameBackdropColor = "DropDownBackdrop1", "DropDownBackdrop1Color"
	elseif style == 2 then
		frameBackdrop, frameBackdropColor, frameBackdropEdgeColor = "DropDownBackdrop2", "DropDownBackdrop2Color", "DropDownBackdrop2BorderColor"
	else
		error(("Style %s not supported"):format(style))
	end

	-- Hide the preset template. Only way to get at it is with the globals.
	G[multiselect:GetName().."Left"]:Hide()
	G[multiselect:GetName().."Middle"]:Hide()
	G[multiselect:GetName().."Right"]:Hide()

	-- Old stuff is hidden so make it look Zygory
	CHAIN(multiselectFrame)
		:SetBackdrop(SkinData(frameBackdrop))
		:SetBackdropColor(unpack(SkinData(frameBackdropColor)))
		:SetParent(parent)

	if frameBackdropEdgeColor then multiselectFrame:SetBackdropBorderColor(unpack(SkinData(frameBackdropEdgeColor))) end

	if frameLevel then multiselectFrame:SetFrameLevel(frameLevel) end	-- Since everything else gets parented to this, just set this framelevel then rest will follow.

	-- parent the pullout to use.
	multiselectPullout:SetParent(multiselect)
	
	-- ReSkin the pullout
	CHAIN(multiselectPullout.frame)
		:SetBackdrop(SkinData("DropDownPulloutBackdrop"))
		:SetBackdropColor(unpack(SkinData("DropDownPulloutColor")))
		:SetBackdropBorderColor(unpack(SkinData("DropDownPulloutBorderColor")))
		:SetParent(multiselect)

	-- Fix the text now.
	CHAIN(multiselectText)
		:ClearAllPoints()
		:SetParent(multiselectFrame)
		:SetPoint("LEFT",5,0)
		:SetPoint("RIGHT",multiselectButton,"LEFT",-5,0) -- Max to the right is the button.
		:SetJustifyH("LEFT")
		:SetFont(FONT,12)

	-- multiselectButton is the actual button. multiselectButtonCover goes over the frame and also shows the pullout
	CHAIN(multiselectButton)
		:HookScript("OnClick",private.Multiselect_Click)
		:ClearAllPoints()									-- Button seemed off before
		:SetPoint("TOPRIGHT",multiselectFrame,"TOPRIGHT")
	
	if style == 1 then
		ZGV.ButtonSets.TitleButtons.DROPDOWN:AssignToButton(multiselectButton)
	elseif style == 2 then
		-- Gets a texture then a gray backdrop
		ZGV.ButtonSets.TitleButtons.DROPDOWN:AssignToButton(multiselectButton)

		CHAIN(multiselectButton)
			:SetBackdrop(SkinData("DropDownButtonBackdrop2"))
			:SetBackdropColor(unpack(SkinData("DropDownButtonBackdrop2Color")))
	end

	if multiselectButtonCover then multiselectButtonCover:HookScript("OnClick",private.Multiselect_Click) end

	for f,fun in pairs(self) do
		multiselectObj[f]=fun
	end

	return multiselectObj
end

--[[
	Adds a new item to the pullout of the multiselect.

	Can pass a string OR a Dropdown-Item-Toggle.
	There are other types of items but they are not supported at this time.

	Applies a visual for a ToggleButton by overwriting the default check texture with our custom one.

	Can add a callback for when an item is clicked.
--]]

function Multiselect:AddItem(obj,value,dbname,callback, tooltip)
	if not obj then return end
	value = value==nil and true or value		-- nil/true = true, false = false

	local item
	if type(obj) == "number" then obj = tostring(obj) end
	if type(obj) == "string" then
		item = AceGUI:Create("Dropdown-Item-Toggle-Z")
		item:SetText(obj)
	elseif type(obj) == "table" and obj.type == "Dropdown-Item-Toggle-Z" then
		item = obj
	else
		error("Can not add to multiselect. Needs to be string or Dropdown-Item-Toggle-Z.")
	end

	-- Overwrite default because default does not close pullout and allows for multiple clicks at once, which we don't want.
	item.frame:SetScript("OnClick",private.PulloutItem_Click)

	if tooltip then
		item.frame:SetScript("OnEnter", function()
			GameTooltip:ClearAllPoints()
			GameTooltip:SetOwner(item.frame:GetParent(), self.tooltipPos)
			GameTooltip:SetFrameLevel(item.frame:GetParent():GetFrameLevel()+1) -- Ensure we are on top.
			GameTooltip:AddLine(tooltip)
			GameTooltip:Show()
		end)
		
		item.frame:SetScript("OnLeave", function()
			GameTooltip:ClearAllPoints()
			GameTooltip:Hide()
		end)
	end
	
	-- Creates a grey backdrop next to the text. Looks like a toggle button
	item.zygorbackdrop = CHAIN(ZGV.CreateFrameWithBG("Button", nil, item.frame)) --TODO: make these buttons change for Midnight.
		:SetBackdrop(SkinData("DropDownItemBackdrop"))
		:SetBackdropColor(unpack(SkinData("DropDownItemColor")))
		:SetSize(8,8)
		:SetPoint("LEFT",item.frame,"LEFT",3,0)
	 .__END

	-- OverWrite the default check. This allows it to still be shown/hidden properly
	-- Note: In overwriting Parent is changed from item.frame
	item.check = CHAIN(item.zygorbackdrop:CreateTexture("OVERLAY"))
		:SetColorTexture(unpack(SkinData("Accent")))
		:SetAllPoints()
		:Hide()
	.__END

	item.userdata.value = value
	item.callback = callback

	self.pullout:AddItem(item)

	return item
end

--[[
	Adds a tooltip that shows/hides when the main part of the multiselect is hovered over.
--]]
function Multiselect:AddTooltip(pos,text)
	local multiselectFrame = self.frame
	local multiselectButton = self.button
	local multiselectButtonCover = self.button_cover
	self.tooltipPos = pos
	
	local function showTooltip(self)
		GameTooltip:SetOwner(multiselectFrame,pos)

		GameTooltip:ClearAllPoints()
		GameTooltip:ClearLines()
		GameTooltip:SetText(text)
	end

	local function hideTooltip(self)
		GameTooltip:Hide()
	end

	multiselectButton:HookScript("OnEnter",showTooltip)
	--multiselectButtonCover:HookScript("OnEnter",showTooltip)
	multiselectButton:HookScript("OnLeave",hideTooltip)
	--multiselectButtonCover:HookScript("OnLeave",hideTooltip)
end

--[[
	Untoggles all the items in the pullout except the one that is selected.

	Also counts the string length and returns the longest one.
--]]

function Multiselect:UpdatePulloutSize()
	local items = self.pullout.items
	if not items then return end

	local maxlen = 0
	local totalheight = 0


	for i,item in ipairs(items) do
		-- Get the max length
		totalheight = item.frame:GetHeight() + totalheight
		local len = item.text:GetStringWidth()
		if len > maxlen then maxlen = len end

		if item.SetValue then
			item:SetValue(item.checked)
		end
	end
	
	-- Change the size of the frames inside of the pullout to make less space above and below items
	self.pullout.itemFrame:SetHeight(totalheight)
	self.pullout.frame:SetHeight(totalheight + 5)	-- + 5 to make sure it is bigger than scrollstuff
	self.pullout.scrollFrame:SetPoint("TOPLEFT", self.pullout.frame, "TOPLEFT", 6, -1)
	self.pullout.scrollFrame:SetPoint("BOTTOMRIGHT", self.pullout.frame, "BOTTOMRIGHT", -6, 1)

	return maxlen
end

--[[
	Returns the item of that is currently selected. Can get it's text and value from .text:GetText and .value
--]]

function Multiselect:GetCurrentSelectedItem()
	return self.pullout.curItemSelected
end

function Multiselect:GetCurrentSelectedItemValue()
	return self.pullout.curItemSelected.userdata.value
end

function Multiselect:SetCurrentSelectedItem(item)
	assert(item and item.type=="Dropdown-Item-Toggle-Z", "Invalid item")

	if item.disabled then return end

	self.pullout.curItemSelected = item

	-- Set the text of the multiselect to the text of the item
	-- self:SetText(item.text:GetText())
end

function Multiselect:SetCurrentSelectedByValue(value)
	local pullout = self.pullout
	local items = pullout.items

	for i,item in ipairs(items) do
		if item.userdata.value == value then
			self:SetCurrentSelectedItem(item)
			break
		end
	end
end

function Multiselect:Show()
	self.frame:Show()
end

function Multiselect:Hide()
	self.frame:Hide()
end

function Multiselect:SetSize(width,height)
	self:SetWidth(width)
	self:SetHeight(height)
end

-- If something custom needs done on Width set can use this. No need atm
--[[
function Multiselect:OnWidthSet(width)
	
end
--]]

--[[
	Called on SetHeight by AceGui. Need to adjust the button height when this is called.
--]]
function Multiselect:OnHeightSet(height)
	local button = self.button
	button:SetSize(height,height)
end

function Multiselect:SetName(text)
	self:SetText(text)
end


function private.Multiselect_Click(self,button)
	if not self.obj.open then return end

	local multiselectObj = self.obj
	local maxItemLen = multiselectObj:UpdatePulloutSize()
	
	-- Set the width of the pullout frame. Either the width of the multiselect, or the width of the longest time. 45 is just extra needed room found from testing it
	multiselectObj.pullout.frame:SetWidth(max(maxItemLen + 45,multiselectObj.frame:GetWidth()))
end

--[[
	Overwrites the default Pullout Item OnClick. Copies some code from AceGuiWidget-Dropdown-Item
--]]

function private.PulloutItem_Click(this)
	local self = this.obj					-- This is the item.
	local pullout = self.pullout
	local multiselectObj = pullout.parent.obj

	multiselectObj:SetCurrentSelectedItem(self)

	-- Close the multiselect box if it is open. If it is closed then don't open because it was a click from code.
	--if multiselectObj.open then
	--	multiselectObj.button:Click()
	--end
	
	-- Call any callbacks that were set. It is assumed there is only 1 per item.
	if self.callback then self:callback() end
	multiselectObj:UpdatePulloutSize()
end