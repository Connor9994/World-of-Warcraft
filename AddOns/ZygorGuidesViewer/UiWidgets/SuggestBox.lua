local name,ZGV = ...
local ui = ZGV.UI
local SkinData = ui.SkinData
local CHAIN = ZGV.ChainCall
local SuggestBox = {}
ZGV.UI:RegisterWidget("SuggestBox",SuggestBox)

--[[
	Creates editbox with dropdown next to it. Values selected from dropdown will get pasted into
	edit box. 
	Values in dropdown are filtered based on value of edit box.

	SuggestBox:New(parent,name,autoshow,callback)
	* create new suggestbox
	- parent frame
	- name to use
	- should dropdown be automaticaly shown when user starts typing in editbox - default no
	- custom callback function to use when value is selected from dropdown, defaul is to paste value in edit box

	SuggestBox:AddSuggestItem(display,value)
	* add new option to suggest dropdown
	- display text
	- value

	SuggestBox:SetPoint(...)
	* sets point to edit box. dropdown is attached top topright of editbox

	SuggestBox:ClearAllPoints()
	* clears all points of editbox

	SuggestBox:SetAllTrigger(...)
	* sets a keyword (in addition to empty string) that will display full list 

	internal SuggestBox:ShowSuggestList(mode)
	* displays dropdown list with items filtered based on editbox
--]]

function SuggestBox:New(parent,name,autoshow,callback)
	local frame = CreateFrame("Frame", name.."_frame", parent)
	self.frame = frame

	frame.itemList = {}
	frame.lastIndex = 1
	frame.alltrigger = false

	frame.EditBox = CHAIN(ui:Create("EditBox",parent))
		:SetSize(50,17)
		:SetBackdropColor(0,0,0,1)
		:SetBackdropBorderColor(0.5,0.5,0.5,1)
		:SetTextColor(1,1,1,1)
		.__END

	frame.EditBox:SetScript("OnEditFocusGained",function() frame.EditBox:HighlightText() end)

	frame.Dropdown = CHAIN(ui:Create("DropDown",parent,2))
		:SetPoint("BOTTOMLEFT",frame.EditBox,"BOTTOMRIGHT",2,0)
		:SetSize(17,17)
	.__END

	frame.Dropdown.AceGUI_OnClick = frame.Dropdown.button:GetScript("OnClick")

	frame.Dropdown.button:SetScript("OnClick",function() SuggestBox:ShowSuggestList() end)

	if callback then
		frame.Dropdown:SetCallback("OnValueChanged", function(obj,event,value) callback(value) end )
	else
		frame.Dropdown:SetCallback("OnValueChanged", function(obj,event,value) frame.EditBox:SetText(frame.itemList[value]) end )
	end

	frame.EditBox:SetScript("OnTextChanged", function(obj,user) 
		if autoshow or frame.Dropdown.dropdown.obj.open then
			if not user then return end
			if frame.Dropdown.dropdown.obj.open then
				frame.Dropdown.AceGUI_OnClick(frame.Dropdown.dropdown) -- hide it, so it can be redrawn
			end
			SuggestBox:ShowSuggestList()
		end
	end)

	

	for k, v in pairs(self) do frame[k]=v end
	
	return frame
end

function SuggestBox:GetText()		return self.frame.EditBox:GetText()	end
function SuggestBox:SetPoint(...)	self.frame.EditBox:SetPoint(...)	end
function SuggestBox:ClearAllPoints()	self.frame.EditBox:ClearAllPoints()	end
function SuggestBox:SetFocus()		self.frame.EditBox:SetFocus()		end
function SuggestBox:HighlightText(...)	self.frame.EditBox:HighlightText(...)	end
function SuggestBox:SetText(text)	self.frame.EditBox:SetText(text)	end

function SuggestBox:SetSize(width,height)
	self.frame.EditBox:SetSize(width-height,height)
	self.frame.Dropdown:SetSize(height,height)
end

function SuggestBox:AddSuggestItem(display,value)
	self.frame.itemList[value] = display
end

function SuggestBox:SetAllTrigger(value)
	self.frame.alltrigger = value or ""
end



function SuggestBox:ShowSuggestList(mode)
	local currentList = {}
	local currentKeyword = (self.frame.EditBox:GetText()):lower():gsub("%%","%%%%")
	local forceshow = (self.frame.alltrigger:lower()==currentKeyword)

	for value,display in pairs(self.frame.itemList) do
		if forceshow or (display:lower()):find(currentKeyword) then
			currentList[value] = display
		end
	end

	self.frame.Dropdown:SetList(currentList)

	local maxItemLen = self.frame.Dropdown:UpdatePulloutSize()

	self.frame.Dropdown.AceGUI_OnClick(self.frame.Dropdown.dropdown)

	self.frame.Dropdown.pullout.frame:SetPoint("TOPLEFT",self.frame.EditBox,"BOTTOMLEFT",-4,1)
	self.frame.Dropdown.pullout.frame:SetPoint("TOPRIGHT",self.frame.EditBox,"BOTTOMRIGHT",self.frame.EditBox:GetHeight()+2,1)
end

ZGV.SuggestBox = SuggestBox
