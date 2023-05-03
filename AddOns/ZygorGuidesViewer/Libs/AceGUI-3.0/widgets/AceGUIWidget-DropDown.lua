--[[ $Id: AceGUIWidget-DropDown.lua 1116 2014-10-12 08:15:46Z nevcairiel $ ]]--
local AceGUI = LibStub("AceGUI-3.0-Z")

-- Lua APIs
local min, max, floor = math.min, math.max, math.floor
local select, pairs, ipairs, type = select, pairs, ipairs, type
local tsort = table.sort

-- WoW APIs
local PlaySound = PlaySound
local UIParent, CreateFrame = UIParent, CreateFrame
local _G = _G
local CreateFrame = AceGUI.CreateFrameWithBG

-- Global vars/functions that we don't upvalue since they might get hooked, or upgraded
-- List them here for Mikk's FindGlobals script
-- GLOBALS: CLOSE

local function fixlevels(parent,...)
	local i = 1
	local child = select(i, ...)
	while child do
		child:SetFrameLevel(parent:GetFrameLevel()+1)
		fixlevels(child, child:GetChildren())
		i = i + 1
		child = select(i, ...)
	end
end

local function fixstrata(strata, parent, ...)
	local i = 1
	local child = select(i, ...)
	parent:SetFrameStrata(strata)
	while child do
		fixstrata(strata, child, child:GetChildren())
		i = i + 1
		child = select(i, ...)
	end
end

do
	local widgetType = "Dropdown-Pullout-Z"
	local widgetVersion = 4
	
	--[[ Static data ]]--
	
	local backdrop = {
		bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
		edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
		edgeSize = 32,
		tileSize = 32,
		tile = true,
		insets = { left = 11, right = 12, top = 12, bottom = 11 },
	}
	local sliderBackdrop  = {
		bgFile = "Interface\\Buttons\\UI-SliderBar-Background",
		edgeFile = "Interface\\Buttons\\UI-SliderBar-Border",
		tile = true, tileSize = 8, edgeSize = 8,
		insets = { left = 3, right = 3, top = 3, bottom = 3 }
	}

	local defaultWidth = 200
	local defaultMaxHeight = 600
	
	--[[ UI Event Handlers ]]--
	
	-- HACK: This should be no part of the pullout, but there
	--       is no other 'clean' way to response to any item-OnEnter
	--       Used to close Submenus when an other item is entered
	local function OnEnter(item)
		local self = item.pullout
		for k, v in ipairs(self.items) do
			if v.CloseMenu and v ~= item then
				v:CloseMenu()
			end
		end
	end
	
	-- See the note in Constructor() for each scroll related function
	local function OnMouseWheel(this, value)
		this.obj:MoveScroll(value)
	end
	
	local function OnScrollValueChanged(this, value)
		this.obj:SetScroll(value)
	end
	
	local function OnSizeChanged(this)
		this.obj:FixScroll()
	end
	
	--[[ Exported methods ]]--
	
	-- exported
	local function SetScroll(self, value)
		local status = self.scrollStatus
		local frame, child = self.scrollFrame, self.itemFrame
		local height, viewheight = frame:GetHeight(), child:GetHeight()

		local offset
		if height > viewheight then
			offset = 0
		else
			offset = floor((viewheight - height) / 1000 * value)
		end
		child:ClearAllPoints()
		child:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, offset)
		child:SetPoint("TOPRIGHT", frame, "TOPRIGHT", self.slider:IsShown() and -12 or 0, offset)
		status.offset = offset
		status.scrollvalue = value		
	end
	
	-- exported
	local function MoveScroll(self, value)
		local status = self.scrollStatus
		local frame, child = self.scrollFrame, self.itemFrame
		local height, viewheight = frame:GetHeight(), child:GetHeight()

		if height > viewheight then
			self.slider:Hide()
		else
			self.slider:Show()
			local diff = height - viewheight
			local delta = 1
			if value < 0 then
				delta = -1
			end
			self.slider:SetValue(min(max(status.scrollvalue + delta*(1000/(diff/45)),0), 1000))
		end
	end
	
	-- exported
	local function FixScroll(self)
		local status = self.scrollStatus
		local frame, child = self.scrollFrame, self.itemFrame
		local height, viewheight = frame:GetHeight(), child:GetHeight()
		local offset = status.offset or 0

		if viewheight < height then
			self.slider:Hide()
			child:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, offset)
			self.slider:SetValue(0)
		else
			self.slider:Show()			
			local value = (offset / (viewheight - height) * 1000)
			if value > 1000 then value = 1000 end
			self.slider:SetValue(value)
			self:SetScroll(value)
			if value < 1000 then
				child:ClearAllPoints()
				child:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, offset)
				child:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -12, offset)
				status.offset = offset
			end
		end
	end

	local function ApplySkin(self)
		local SkinData = ZGV.UI.SkinData

		if not SkinData("StyleAceGUI") then 
			self.frame:SetBackdrop(backdrop)
			self.frame:SetBackdropColor(0, 0, 0)
			self.frame:SetBackdropBorderColor(1, 1, 1)
		else
			self.frame:SetBackdrop(SkinData("AceGUIDropDownBackdrop"))
			self.frame:SetBackdropColor(unpack(SkinData("AceGUIDropDownBackdropColor")))
			self.frame:SetBackdropBorderColor(unpack(SkinData("AceGUIDropDownBackdropBorderColor")))
		end
	end

	-- exported, AceGUI callback
	local function OnAcquire(self)
		self.frame:SetParent(UIParent)
		--self.itemFrame:SetToplevel(true)
		ApplySkin(self)
	end
	
	-- exported, AceGUI callback
	local function OnRelease(self)
		self:Clear()
		self.frame:ClearAllPoints()
		self.frame:Hide()
	end
	
	-- exported
	local function AddItem(self, item)
		self.items[#self.items + 1] = item
		
		local h = #self.items * 16
		self.itemFrame:SetHeight(h)
		self.frame:SetHeight(min(h + 34, self.maxHeight)) -- +34: 20 for scrollFrame placement (10 offset) and +14 for item placement
		
		item.frame:SetPoint("LEFT", self.itemFrame, "LEFT")
		item.frame:SetPoint("RIGHT", self.itemFrame, "RIGHT")

		item:SetPullout(self)
		item:SetOnEnter(OnEnter)

		if item.SetFontObject then
			item:SetFontObject(self.itemFontObject)
		end
	end

	-- exported
	local function SetItemFontObject(self, font)
		for k,item in pairs(self.items) do
			item:SetFontObject(font)
			item:SetTextColor(font:GetTextColor())
		end
	end
		
	-- exported
	local function Open(self, point, relFrame, relPoint, x, y)		
		local items = self.items
		local frame = self.frame
		local itemFrame = self.itemFrame
		
		frame:SetPoint(point, relFrame, relPoint, x, y)

				
		local height = 8
		for i, item in pairs(items) do
			if i == 1 then
				item:SetPoint("TOP", itemFrame, "TOP", 0, -2)
			else
				item:SetPoint("TOP", items[i-1].frame, "BOTTOM", 0, 1)
			end
			
			item:Show()
			
			height = height + 16
		end
		itemFrame:SetHeight(height)
		fixstrata("TOOLTIP", frame, frame:GetChildren())
		frame:Show()
		self:Fire("OnOpen")
	end	
	
	-- exported
	local function Close(self)
		self.frame:Hide()
		self:Fire("OnClose")
	end	
	
	-- exported
	local function Clear(self)
		local items = self.items
		for i, item in pairs(items) do
			AceGUI:Release(item)
			items[i] = nil
		end
	end	
	
	-- exported
	local function IterateItems(self)
		return ipairs(self.items)
	end
	
	-- exported
	local function SetHideOnLeave(self, val)
		self.hideOnLeave = val
	end
	
	-- exported
	local function SetMaxHeight(self, height)
		self.maxHeight = height or defaultMaxHeight
		if self.frame:GetHeight() > height then
			self.frame:SetHeight(height)
		elseif (self.itemFrame:GetHeight() + 34) < height then
			self.frame:SetHeight(self.itemFrame:GetHeight() + 34) -- see :AddItem
		end
	end
		
	-- exported
	local function GetRightBorderWidth(self)
		return 6 + (self.slider:IsShown() and 12 or 0)
	end
	
	-- exported
	local function GetLeftBorderWidth(self)
		return 6
	end
	
	--[[ Constructor ]]--
	
	local function Constructor()
		local count = AceGUI:GetNextWidgetNum(widgetType)
		local frame = CreateFrame("Frame", AceGUI.Prefix.."Pullout"..count)
		local self = {}
		self.count = count
		self.type = widgetType
		self.frame = frame
		frame.obj = self
		
		self.OnAcquire = OnAcquire
		self.OnRelease = OnRelease

		self.AddItem = AddItem
		self.Open    = Open
		self.Close   = Close
		self.Clear   = Clear
		self.IterateItems = IterateItems
		self.SetHideOnLeave = SetHideOnLeave

		self.SetScroll  = SetScroll
		self.MoveScroll = MoveScroll
		self.FixScroll  = FixScroll
		
		self.SetMaxHeight = SetMaxHeight
		self.GetRightBorderWidth = GetRightBorderWidth
		self.GetLeftBorderWidth = GetLeftBorderWidth

		self.SetItemFontObject = SetItemFontObject
		
		self.items = {}
		
		self.scrollStatus = {
			scrollvalue = 0,
		}
		
		self.maxHeight = defaultMaxHeight
			
		--frame:SetBackdrop(backdrop)
		--frame:SetBackdropColor(0, 0, 0)
		frame:SetFrameStrata("FULLSCREEN_DIALOG")
		frame:SetClampedToScreen(true)
		frame:SetWidth(defaultWidth)
		frame:SetHeight(self.maxHeight)	
		--frame:SetToplevel(true)

	

		-- NOTE: The whole scroll frame code is copied from the AceGUI-3.0 widget ScrollFrame
		local scrollFrame = CreateFrame("ScrollFrame", nil, frame)
		local itemFrame = CreateFrame("Frame", nil, scrollFrame)
		
		self.scrollFrame = scrollFrame
		self.itemFrame = itemFrame
		
		scrollFrame.obj = self
		itemFrame.obj = self
		
		local slider = CreateFrame("Slider", AceGUI.Prefix.."PulloutScrollbar"..count, scrollFrame)
		slider:SetOrientation("VERTICAL")
		slider:SetHitRectInsets(0, 0, -10, 0)
		slider:SetBackdrop(sliderBackdrop)
		slider:SetWidth(8)
		slider:SetThumbTexture("Interface\\Buttons\\UI-SliderBar-Button-Vertical")
		slider:SetFrameStrata("FULLSCREEN_DIALOG")
		self.slider = slider
		slider.obj = self
					
		scrollFrame:SetScrollChild(itemFrame)
		scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 6, -12)
		scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -6, 12)
		scrollFrame:EnableMouseWheel(true)
		scrollFrame:SetScript("OnMouseWheel", OnMouseWheel)
		scrollFrame:SetScript("OnSizeChanged", OnSizeChanged)
		scrollFrame:SetToplevel(true)
		scrollFrame:SetFrameStrata("FULLSCREEN_DIALOG")
		
		itemFrame:SetPoint("TOPLEFT", scrollFrame, "TOPLEFT", 0, 0)
		itemFrame:SetPoint("TOPRIGHT", scrollFrame, "TOPRIGHT", -12, 0)
		itemFrame:SetHeight(400)
		itemFrame:SetToplevel(true)
		itemFrame:SetFrameStrata("FULLSCREEN_DIALOG")
		
		slider:SetPoint("TOPLEFT", scrollFrame, "TOPRIGHT", -16, 0)
		slider:SetPoint("BOTTOMLEFT", scrollFrame, "BOTTOMRIGHT", -16, 0)
		slider:SetScript("OnValueChanged", OnScrollValueChanged)
		slider:SetMinMaxValues(0, 1000)
		slider:SetValueStep(1)
		slider:SetValue(0)
		
		scrollFrame:Show()
		itemFrame:Show()
		slider:Hide()
						
		self:FixScroll()
		
		AceGUI:RegisterAsWidget(self)
		return self
	end
	
	AceGUI:RegisterWidgetType(widgetType, Constructor, widgetVersion)
end

do
	local widgetType = "Dropdown-Z"
	local widgetVersion = 30
	
	--[[ Static data ]]--
	
	--[[ UI event handler ]]--
	
	local function Control_OnEnter(this)
		this.obj:Fire("OnEnter")
	end
	
	local function Control_OnLeave(this)
		this.obj:Fire("OnLeave")
	end

	local function Button_OnEnter(this)
		this.obj.button:LockHighlight()
		this.obj:Fire("OnEnter")
	end
	
	local function Button_OnLeave(this)
		this.obj.button:UnlockHighlight()
		this.obj:Fire("OnLeave")
	end

	local function Dropdown_OnHide(this)
		local self = this.obj
		if self.open then
			self.pullout:Close()
		end
	end
	
	local function Dropdown_TogglePullout(this)
		local self = this.obj
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON) -- missleading name, but the Blizzard code uses this sound
		if self.open then
			self.open = nil
			self.pullout:Close()
			AceGUI:ClearFocus()
		else
			self.open = true
			self.pullout:SetWidth(self.pulloutWidth or self.frame:GetWidth())
			self.pullout:Open("TOPLEFT", self.frame, "BOTTOMLEFT", 3, self.label:IsShown() and -2 or 0)
			AceGUI:SetFocus(self)
		end
	end
	
	local function OnPulloutOpen(this)
		local self = this.userdata.obj
		local value = self.value
		
		if not self.multiselect then
			for i, item in this:IterateItems() do
				item:SetValue(item.userdata.value == value)
			end
		end
		
		self.open = true
		self:Fire("OnOpened")
	end

	local function OnPulloutClose(this)
		local self = this.userdata.obj
		self.open = nil
		self:Fire("OnClosed")
	end
	
	local function ShowMultiText(self)
		local text
		for i, widget in self.pullout:IterateItems() do
			if widget.type == "Dropdown-Item-Toggle-Z" then
				if widget:GetValue() then
					if text then
						text = text..", "..widget:GetText()
					else
						text = widget:GetText()
					end
				end
			end
		end
		self:SetText(text)
	end
	
	local function OnItemValueChanged(this, event, checked)
		local self = this.userdata.obj
		
		if self.multiselect then
			self:Fire("OnValueChanged", this.userdata.value, checked)
			ShowMultiText(self)
		else
			if checked then
				self:SetValue(this.userdata.value)
				self:Fire("OnValueChanged", this.userdata.value)
			else
				this:SetValue(true)
			end
			if self.open then	
				self.pullout:Close()
			end
		end
	end
	
	--[[ Exported methods ]]--
	local function ApplySkin(self)

		local SkinData = ZGV.UI.SkinData
		local CHAIN=ZGV.ChainCall

		if not SkinData("StyleAceGUI") then 
			self.dropdown.Left:SetTexture("Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame")
			self.dropdown.Middle:SetTexture("Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame")
			self.dropdown.Right:SetTexture("Interface\\Glues\\CharacterCreate\\CharacterCreate-LabelFrame")
			
			return
		end

		local dropdownname = self.dropdown:GetName()
		local normal = _G[dropdownname .. "ButtonNormalTexture"]
		local pushed = _G[dropdownname .. "ButtonPushedTexture"]
		local disabled = _G[dropdownname .. "ButtonDisabledTexture"]
		local highlight = _G[dropdownname .. "ButtonHighlightTexture"]

		self.dropdown.Left:SetTexture(SkinData("AceGUIInputTexture"))
		self.dropdown.Middle:SetTexture(SkinData("AceGUIInputTexture"))
		self.dropdown.Right:SetTexture(SkinData("AceGUIInputTexture"))

		CHAIN(normal)
			:SetSize(14,14)
			:ClearAllPoints()
			:SetPoint("LEFT",5,0)
			:SetTexture(ZGV.ButtonSets.TitleButtons.file)
			:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons.DROPDOWN.texcoords[1]))

		CHAIN(pushed)
			:SetSize(14,14)
			:ClearAllPoints()
			:SetPoint("LEFT",5,0)
			:SetTexture(ZGV.ButtonSets.TitleButtons.file)
			:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons.DROPDOWN.texcoords[2]))

		CHAIN(highlight)
			:SetSize(14,14)
			:ClearAllPoints()
			:SetPoint("LEFT",5,0)
			:SetTexture(ZGV.ButtonSets.TitleButtons.file)
			:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons.DROPDOWN.texcoords[3]))

		CHAIN(disabled)
			:SetSize(14,14)
			:ClearAllPoints()
			:SetPoint("LEFT",5,0)
			:SetTexture(ZGV.ButtonSets.TitleButtons.file)
			:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons.DROPDOWN.texcoords[4]))


	end
	
	-- exported, AceGUI callback
	local function OnAcquire(self)
		local pullout = AceGUI:Create("Dropdown-Pullout-Z")
		self.pullout = pullout
		pullout.userdata.obj = self
		pullout:SetCallback("OnClose", OnPulloutClose)
		pullout:SetCallback("OnOpen", OnPulloutOpen)
		self.pullout.frame:SetFrameLevel(self.frame:GetFrameLevel() + 1)
		fixlevels(self.pullout.frame, self.pullout.frame:GetChildren())
		
		self:SetHeight(44)
		self:SetWidth(200)
		self:SetLabel()
		self:SetPulloutWidth(nil)
		self:SetLabelFontObject()
		self:SetValueFontObject()

		ApplySkin(self)
	end


	-- exported, AceGUI callback
	local function OnRelease(self)
		if self.open then
			self.pullout:Close()
		end
		AceGUI:Release(self.pullout)
		self.pullout = nil
		
		self:SetText("")
		self:SetDisabled(false)
		self:SetMultiselect(false)
		
		self.value = nil
		self.list = nil
		self.open = nil
		self.hasClose = nil
		
		self.frame:ClearAllPoints()
		self.frame:Hide()
	end
	
	-- exported
	local function SetDisabled(self, disabled)
		self.disabled = disabled
		if disabled then
			self.text:SetTextColor(0.5,0.5,0.5)
			self.button:Disable()
			self.button_cover:Disable()
			self.label:SetTextColor(0.5,0.5,0.5)
		else
			self.button:Enable()
			self.button_cover:Enable()
			self.label:SetTextColor(self.label:GetFontObject():GetTextColor())
			self.text:SetTextColor(1,1,1)
		end
	end
	
	-- exported
	local function ClearFocus(self)
		if self.open then
			self.pullout:Close()
		end
	end
	
	-- exported
	local function SetText(self, text)
		self.text:SetText((type(text)=="table" and text.name) or text or "")
	end
	
	-- exported
	local function SetLabel(self, text)
		if text and text ~= "" then
			self.label:SetText(text)
			self.label:Show()
			self.dropdown:SetPoint("TOPLEFT",self.frame,"TOPLEFT",-15,-19)
			self:SetHeight(45)
			self.alignoffset = 31
		else
			self.label:SetText("")
			self.label:Hide()
			self.dropdown:SetPoint("TOPLEFT",self.frame,"TOPLEFT",-15,0)
			self:SetHeight(26)
			self.alignoffset = 12
		end
	end
	
	-- exported
	local function SetValue(self, value)
		if self.list then
			self:SetText(self.list[value] or "")
		end
		self.value = value
	end
	
	-- exported
	local function GetValue(self)
		return self.value
	end
	
	-- exported
	local function SetItemValue(self, item, value)
		if not self.multiselect then return end
		for i, widget in self.pullout:IterateItems() do
			if widget.userdata.value == item then
				if widget.SetValue then
					widget:SetValue(value)
				end
			end
		end
		ShowMultiText(self)
	end
	
	-- exported
	local function SetItemDisabled(self, item, disabled)
		for i, widget in self.pullout:IterateItems() do
			if widget.userdata.value == item then
				widget:SetDisabled(disabled)
			end
		end
	end
	
	local function AddListItem(self, value, text, itemType)
		if not itemType then itemType = "Dropdown-Item-Toggle-Z" end
		local exists = AceGUI:GetWidgetVersion(itemType)
		if not exists then error(("The given item type, %q, does not exist within AceGUI-3.0"):format(tostring(itemType)), 2) end

		local item = AceGUI:Create(itemType)
		item:SetText((type(text)=="number" and text) or text.name or text)
		item.userdata.obj = self
		item.userdata.value = value
		item:SetCallback("OnValueChanged", OnItemValueChanged)
		if item.SetFontObject then
			item:SetFontObject(self.itemFontObject)
		end
		self.pullout:AddItem(item)
	end
	
	local function AddCloseButton(self)
		if not self.hasClose then
			local close = AceGUI:Create("Dropdown-Item-Execute-Z")
			close:SetText(CLOSE)
			self.pullout:AddItem(close)
			self.hasClose = true
		end
	end
	
	-- exported
	local sortlist = {}
	local function SetList(self, list, order, itemType)
		self.list = list
		self.pullout:Clear()
		self.hasClose = nil
		if not list then return end
		
		if type(order) ~= "table" then
			for v in pairs(list) do
				sortlist[#sortlist + 1] = v
			end
			tsort(sortlist)
			
			for i, key in ipairs(sortlist) do
				AddListItem(self, key, list[key], itemType)
				sortlist[i] = nil
			end
		else
			for i, key in ipairs(order) do
				AddListItem(self, key, list[key], itemType)
			end
		end
		if self.multiselect then
			ShowMultiText(self)
			AddCloseButton(self)
		end
	end
	
	-- exported
	local function AddItem(self, value, text, itemType)
		if self.list then
			self.list[value] = text
			AddListItem(self, value, text, itemType)
		end
	end
	
	-- exported
	local function SetMultiselect(self, multi)
		self.multiselect = multi
		if multi then
			ShowMultiText(self)
			AddCloseButton(self)
		end
	end
	
	-- exported
	local function GetMultiselect(self)
		return self.multiselect
	end
	
	local function SetPulloutWidth(self, width)
		self.pulloutWidth = width
		if not width then
			self.dropdown:SetPoint("BOTTOMRIGHT",self.frame,"BOTTOMRIGHT",21,0)
		else
			self.dropdown:SetPoint("BOTTOMRIGHT",self.frame,"BOTTOMLEFT",width+21,0)
		end
	end
	
	local function SetLabelFontObject(self, font)
		font = font or GameFontNormal
		self.label:SetFontObject(font)
		self.label:SetTextColor(font:GetTextColor())
	end
	
	local function SetValueFontObject(self, font)
		font = font or GameFontHighlightSmall
		self.text:SetFontObject(font)
		self.text:SetTextColor(font:GetTextColor())
		self.pullout.itemFontObject = font
		self.pullout:SetItemFontObject(font)
	end
	
	--[[ Constructor ]]--
	
	local function Constructor()
		local count = AceGUI:GetNextWidgetNum(widgetType)
		local frame = CreateFrame("Frame", AceGUI.Prefix.."DropDown"..count.."Frame", UIParent)
		local dropdown = CreateFrame("Frame", AceGUI.Prefix.."DropDown"..count, frame, "UIDropDownForkTemplate")
		
		local self = {}
		self.type = widgetType
		self.frame = frame
		self.dropdown = dropdown
		self.count = count
		frame.obj = self
		dropdown.obj = self
		
		self.OnRelease   = OnRelease
		self.OnAcquire   = OnAcquire
		
		self.ClearFocus  = ClearFocus

		self.SetText     = SetText
		self.SetValue    = SetValue
		self.GetValue    = GetValue
		self.SetList     = SetList
		self.SetLabel    = SetLabel
		self.SetDisabled = SetDisabled
		self.AddItem     = AddItem
		self.SetMultiselect = SetMultiselect
		self.GetMultiselect = GetMultiselect
		self.SetItemValue = SetItemValue
		self.SetItemDisabled = SetItemDisabled
		self.SetPulloutWidth = SetPulloutWidth

		self.SetLabelFontObject = SetLabelFontObject
		self.SetValueFontObject = SetValueFontObject

		
		self.alignoffset = 26
		
		frame:SetScript("OnHide",Dropdown_OnHide)
		frame:SetScript("OnEnter",Control_OnEnter)
		frame:SetScript("OnLeave",Control_OnLeave)

		dropdown:ClearAllPoints()
		dropdown:SetPoint("TOPLEFT",frame,"TOPLEFT",-15,0)
		dropdown:SetPoint("BOTTOMRIGHT",frame,"BOTTOMRIGHT",17,0)
		dropdown:SetScript("OnHide", nil)

		local left = _G[dropdown:GetName() .. "Left"]
		local middle = _G[dropdown:GetName() .. "Middle"]
		local right = _G[dropdown:GetName() .. "Right"]
		
		middle:ClearAllPoints()
		right:ClearAllPoints()
		
		middle:SetPoint("LEFT", left, "RIGHT", 0, 0)
		middle:SetPoint("RIGHT", right, "LEFT", 0, 0)
		right:SetPoint("TOPRIGHT", dropdown, "TOPRIGHT", 0, 17)

		local button = _G[dropdown:GetName() .. "Button"]

		self.button = button
		button.obj = self
		button:SetScript("OnEnter",Button_OnEnter)
		button:SetScript("OnLeave",Button_OnLeave)
		button:SetScript("OnClick",Dropdown_TogglePullout)
		
		local button_cover = CreateFrame("BUTTON",nil,self.frame)
		self.button_cover = button_cover
		button_cover.obj = self
		button_cover:SetPoint("TOPLEFT",self.frame,"BOTTOMLEFT",0,25)
		button_cover:SetPoint("BOTTOMRIGHT",self.frame,"BOTTOMRIGHT")
		button_cover:SetScript("OnEnter",Button_OnEnter)
		button_cover:SetScript("OnLeave",Button_OnLeave)
		button_cover:SetScript("OnClick",Dropdown_TogglePullout)
		
		local text = _G[dropdown:GetName() .. "Text"]
		self.text = text
		text.obj = self
		text:ClearAllPoints()
		text:SetPoint("RIGHT", right, "RIGHT" ,-43, 2)
		text:SetPoint("LEFT", left, "LEFT", 25, 2)
		text:SetJustifyH("LEFT")
		
		local label = frame:CreateFontString(nil,"OVERLAY","GameFontNormalSmall")
		label:SetPoint("TOPLEFT",frame,"TOPLEFT",3,0)
		label:SetPoint("TOPRIGHT",frame,"TOPRIGHT",0,0)
		label:SetJustifyH("LEFT")
		label:SetHeight(18)
		label:Hide()
		self.label = label

		AceGUI:RegisterAsWidget(self)
		return self
	end
	
	AceGUI:RegisterWidgetType(widgetType, Constructor, widgetVersion)
end	
