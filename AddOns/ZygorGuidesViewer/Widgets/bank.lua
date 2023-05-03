local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local SkinData = ZGV.UI.SkinData

local widget={
	ident = "bank",
	group = "general",
	sizes = {
		{width = 2, height = 1},
	},
	sizelimits = {
		minwidth = 2, 
		minheight = 1,
		maxwidth = 2,
		maxheight = 1,
	},
	messages = { 
		INVENTORY_BANK_UPDATED=true,
		INVENTORY_STARTUP_DONE=true,
	},
}

local modes = {
	{"Bank","BAGMANY"},
	{"Overview","BAGONE"},
	{"Groups","BAGLIST"}
}


local SCROLLTABLE_DATA = {
	ROW_COUNT = 25,
	LIST_WIDTH = 600,
	LIST_HEIGHT = 550,
	POSX = 0,
	POSY = -34,
	BORDER = {0,0,0,0},
	BACKGROUND = {0,0,0,0},
	ROWBACKGROUND = false,
	ROW_HEADER = 0,
	HIDESCROLLBAR = true,
	STRATA = "DIALOG",
}
local SCROLLTABLE_COLUMNS = {
	{ title="", width=20, headerwidth=20, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) widget:ShowTooltip(row) end},
	{ title="", width=370, titlej="LEFT", textj="LEFT", name="name", padding=5 },
	{ title="", width=270, titlej="LEFT", textj="LEFT", name="class", padding=5 },
}

function widget:Initialise()
	self.currentname = UnitName("player")
	self.currentfaction = UnitFactionGroup("player")
	self.currentrealm = GetRealmName()

	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")

	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14,"") 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_bank_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.text = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOP",0,-26)
		:SetFont(FONT,18,"") 
		:SetTextColor(1,1,1,1)
		:SetText("")
		:SetIgnoreParentAlpha(true)
	.__END
	self.frame.text2 = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOP",self.frame.text,"BOTTOM",0,-5)
		:SetFont(FONT,12,"") 
		:SetTextColor(1,1,1,1)
		:SetText("")
		:SetIgnoreParentAlpha(true)
	.__END


	self.popup = CHAIN(ZGV.CreateFrameWithBG("Button",nil,ZGV.Widgets.Fader))
		:SetSize(ZGV.Widgets.Fader:GetWidth(),ZGV.Widgets.Fader:GetHeight())
		:SetScript("OnShow",function() self:PrepareResults() end)
	.__END


	self.display = {}
	self.mode = ZGV.db.profile.widget_bank_mode or modes[1][1]

	Mixin(self,ZGV_Widget_Object_Mixin)

	self:PrepareResults()
end

function widget:InitialisePopup()
	if self.popupready then return end

	self.popup.header = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",30,-10)
		:SetFont(FONT,18,"") 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_bank_header"])
	.__END

	self.popup.characterbutton = CHAIN(CreateFrame("Button",nil,self.popup,"ZGV_DefaultSkin_TitleButton_Template"))
		:SetSize(20,20)
		:SetScript("OnClick",function() self:ShowCharacters() end)
		:SetPoint("LEFT",self.popup.header,"RIGHT",0,0)
		:Show()
	.__END
	self.popup.characterbutton.buttonkey = "DROPDOWN"
	self.popup.characterbutton:ApplySkin()
	self.popup.dropdown = CreateFrame("Frame", nil, self.popup, "UIDropDownForkTemplate")

	self.popup.modesbutton = CHAIN(CreateFrame("Button",nil,self.popup,"ZGV_DefaultSkin_TitleButton_Template"))
		:SetSize(20,20)
		:SetScript("OnClick",function() self:ShowModes() end)
		:SetPoint("TOPRIGHT",self.popup,"TOPRIGHT",-10,-10)
		:Show()
	.__END
	self.popup.modesbutton.buttonkey = ZGV.db.profile.widget_bank_icon or modes[1][2]
	self.popup.modesbutton:ApplySkin()

	self.popup.SearchEdit = CHAIN(ZGV.UI:Create("EditBox",self.popup))
		:SetPoint("RIGHT",self.popup.modesbutton,"LEFT",-10,0)
		:SetSize(100,18)
		:SetFont(ZGV.Font,15,"")
		:HookScript("OnEscapePressed",function() self:PrepareResults() end)
		:SetScript("OnTextChanged",function(edit,user) if user then self:PrepareResults() end end)
		:SetText("")
	.__END

	self.popup.SearchEdit.SearchGlass = CHAIN(self.popup.SearchEdit:CreateTexture())
		:SetPoint("RIGHT",self.popup.SearchEdit.back,-6,0):SetSize(12,12)
		:SetTexture(ZGV.DIR.."\\Skins\\search")
	.__END

	self.popup.SearchEdit:SetTextColor(unpack(SkinData("SearchEditTextColor")))
	self.popup.SearchEdit.SearchGlass:SetVertexColor(unpack(SkinData("SearchEditTextColor")))

	CHAIN(self.popup.SearchEdit.back)
		:SetBackdrop(SkinData("SearchBackdrop"))
		:SetBackdropColor(unpack(SkinData("SearchEditBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("SearchEditBorderColor")))
		:SetPoint("LEFT",self.popup.SearchEdit,"LEFT",-6,1)




	self.popup.scrolltableoffset = 0

	self.popup.scrolltable = ZGV.UI:Create("ScrollTable",self.popup,nil,SCROLLTABLE_COLUMNS,SCROLLTABLE_DATA)
	self.popup.scrolltable:SetScript("OnMouseWheel", function(popup,delta)
		self.popup.scrolltableoffset = self.popup.scrolltableoffset-delta
		self:DisplayResults()
	end)
	self.popup.scrolltable.scrollbar:SetScript("OnVerticalScroll",function(popup,offset)
		self.popup.scrolltableoffset=math.round(offset)
		self:DisplayResults()
	end)
	--[[
	for _,row in ipairs(self.popup.scrolltable.rows) do
		row:SetScript("OnEnter", self.ShowTooltip)
		row:SetScript("OnLeave", self.HideTooltip)
	end
	--]]

	self.popupready = true
end


function widget:ShowTooltip(row)
	if not row.item then return end
	GameTooltip:SetOwner(row, "ANCHOR_CURSOR")
	if row.item.link:find("battlepet") then
		BattlePetToolTip_ShowLink(row.item.link)
	else
		GameTooltip:SetHyperlink(row.item.link)
		GameTooltip:Show()
	end
end

function widget.HideTooltip(row)
	GameTooltip:FadeOut()
	BattlePetTooltip:Hide()
end

function widget:ShowModes()
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==self.popup.dropdown then CloseDropDownForks() return end
	local modes_list = {}

	for _,data in ipairs(modes) do
		table.insert(modes_list,{
			text=data[1],
			func=function() 
				self:SwitchMode(data)
			end,
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey=data[2],
			checked=function() return self.mode==data[1] end,
		})
	end

	for i,v in ipairs(modes_list) do
		if v.iconset then
			v.icon = v.iconset.file
			local texcoord=v.iconset[v.iconkey].texcoords
			v.tCoordLeft = texcoord[1][1]
			v.tCoordRight = texcoord[1][2]
			v.tCoordTop = texcoord[1][3]
			v.tCoordBottom = texcoord[1][4]
		end
	end

	UIDropDownFork_SetAnchor(self.popup.dropdown, 0, 0, "TOPRIGHT", self.popup.modesbutton, "BOTTOMRIGHT")
	EasyFork(modes_list,self.popup.dropdown,nil,0,0,"MENU",10)
end


function widget:SwitchMode(mode)
	self.mode = mode[1]
	self.popup.modesbutton.buttonkey = mode[2]
	self.popup.modesbutton:ApplySkin()
	ZGV.db.profile.widget_bank_mode = self.mode
	ZGV.db.profile.widget_bank_icon = self.popup.modesbutton.buttonkey

	self:PrepareResults()
end

function widget:ShowCharacters()
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==self.popup.dropdown then CloseDropDownForks() return end

	local character_list = {}
	-- current character first
	table.insert(character_list, {
		text = UnitName("player"),
		func=function() 
			self.currentname = UnitName("player")
			self:PrepareResults()
		end,
		checked=function() return self.currentname == UnitName("player") end,
	})

	-- same faction+realm alts follow
	for character,data in pairs(ZGV.Inventory.Bankdata) do
		if character~=UnitName("player") then
			table.insert(character_list,{
				text=character,
				func=function() 
					self.currentname = character
					self:PrepareResults()
				end,
				checked=function() return self.currentname == character end,
			})
		end
	end

	local allchars = {
		text=L["widget_bank_allcharsfaction"]:format(self.currentfaction,self.currentrealm),
		func=function() 
			self.currentname = "*"
			self:PrepareResults()
		end,
		checked=function() return self.currentname == character end,
	}

	if ZGV.IsRetail then
		allchars.text=L["widget_bank_allchars"]:format(self.currentrealm)
	end

	table.insert(character_list,allchars)

	UIDropDownFork_SetAnchor(self.popup.dropdown, 0, 0, "TOPRIGHT", self.popup.characterbutton, "BOTTOMRIGHT")
	EasyFork(character_list,self.popup.dropdown,nil,0,0,"MENU",10)
end

local class_order = {
	 [0] = 1,  -- Consumable 
	 [1] = 2,  -- Container 
	 [2] = 3,  -- Weapon 
	 [3] = 4,  -- Gem 
	 [4] = 5,  -- Armor 
	 [5] = 6,  -- Reagent (obsolete)
	 [6] = 7,  -- Projectile (obsolete)
	 [7] = 8,  -- Tradeskill 
	 [8] = 9,  -- Item Enhancement 
	 [9] = 10, -- Recipe
	[10] = 11, -- Money (obsolete)
	[11] = 12, -- Quiver (obsolete)
	[12] = 13, -- Quest 
	[13] = 14, -- Key  (obsolete)
	[14] = 15, -- Permanent  (obsolete) 
	[15] = 16, -- Miscellaneous 
	[16] = 17, -- Glyph 
	[17] = 18, -- Battle Pets 
	[18] = 19, -- WoW Token
}

function widget:PrepareResults()
	local results = ZGV.Inventory:ParseBank(self.currentname)
	if not results[self.currentname] and self.currentname~="*" then return end

	table.wipe(self.display)

	local search = self.popup.SearchEdit and self.popup.SearchEdit:GetText():lower() or ""

	-- prepare
	local temp = {}
	for name,inventory in pairs(results) do
		for bi,bag in pairs(inventory) do
			if type(bag)=="table" then
				for ii,item in pairs(bag) do
					if type(ii)=="number" then
						if search=="" or item.name:lower():find(search) then
							if self.mode=="groups" then item.subclassname = GetItemSubClassInfo(item.class,item.subclass) end

							if self.mode=="Bank" then -- carbon copy
								table.insert(temp,item)
							else -- stack em
								if not temp[item.link] then
									temp[item.link] = item
									temp[item.link].owners = {[item.owner]=item.count}
								else
									temp[item.link].count = temp[item.link].count + item.count
									temp[item.link].owners[item.owner] = (temp[item.link].owners[item.owner] or 0) + item.count
								end
							end
						end
					end
				end
			end
		end
	end

	-- copy to ordered table
	for _,item in pairs(temp) do
		table.insert(self.display,item)
	end

	-- sort and add extras
	if self.mode=="Overview" then
		-- just sort by name
		table.sort(self.display,function(a,b) 
			if a.name==b.name then
				return a.owner<b.owner
			else
				return a.name<b.name
			end
		end)
	elseif self.mode=="Groups" then
		-- sort by class, subclass, name
		table.sort(self.display,function(a,b) 
			local aclass = class_order[a.class]
			local bclass = class_order[b.class]
			if aclass==bclass then 
				if a.subclass==b.subclass then
					if a.name==b.name then
						return a.owner<b.owner
					else
						return a.name<b.name
					end
				else
					return a.subclass<b.subclass
				end
			else
				return aclass<bclass
			end
		end)

		-- add class headers
		local lastclass
		for i,item in ipairs(self.display) do
			local itemclass = GetItemClassInfo(item.class)
			if lastclass~=itemclass then
				table.insert(self.display,i,{type="header", name=itemclass})
				lastclass=itemclass
			end
		end
	elseif self.mode=="Bank" then
		-- sort by bag owner, then by position in bank
		table.sort(self.display,function(a,b) 
			if a.owner==b.owner then
				if a.bag==b.bag then 
					return a.slot<b.slot
				else
					local abag = a.bag==-3 and 99 or a.bag -- push reagent bank to the end of the list
					local bbag = b.bag==-3 and 99 or b.bag
					return abag<bbag
				end
			else
				return a.owner<b.owner
			end
		end)

		-- add bag headers
		local lastclass,lastowner
		for i,item in ipairs(self.display) do
			local itembag = item.bag
			local itemowner = item.owner
			if lastbag~=itembag or lastowner~=itemowner then
				table.insert(self.display,i,results[item.owner][item.bag].bag)
				lastbag = item.bag
				lastowner = item.owner
			end
		end
	end

	if self.currentname == UnitName("player") then
		self.timestamp = results[self.currentname].timestamp
		self.total_slots = results[self.currentname].total_slots
		self.total_free = results[self.currentname].total_free
	end

	self:DisplayResults()
end

function widget:DisplayResults()
	if self.timestamp then
		self.frame.text:SetText(L["widget_bank_space"]:format(self.total_slots,self.total_free))
		self.frame.text2:SetText(self.timestamp)
	else
		self.frame.text2:SetText(L["widget_bank_nodata"])
	end
	if self.popup:IsVisible() then
		self:OnPopup()
	end
end

function widget:OnPopup()
	if self.currentname == "*" then
		if ZGV.IsRetail then
			self.popup.header:SetText(L["widget_bank_allchars"]:format(self.currentrealm))
		else
			self.popup.header:SetText(L["widget_bank_allcharsfaction"]:format(self.currentfaction,self.currentrealm))
		end
	else
		self.popup.header:SetText(L["widget_bank_header_detailed"]:format(self.currentname))
	end

	local rownum=0
	local ROW_COUNT = self.popup.scrolltable:CountRows()
	local results=#self.display

	self.popup.scrolltableoffset = max(0,min(self.popup.scrolltableoffset,results-ROW_COUNT))
	local rowoff=self.popup.scrolltableoffset

	local itemindex = 1
	for ii,object in ipairs(self.display) do
		rownum = itemindex-rowoff
		if rownum>0 and rownum<ROW_COUNT+1 then 
			local row = self.popup.scrolltable.rows[rownum]
			if object.type=="bag" then
				--row.icon:SetTexture(object[2])
				row.icon:SetTexture(nil)
				if self.currentname == "*" then
					row.name:SetText(L["widget_bank_bankbag_owner"]:format(object.owner,object.slots,object.link,object.free))
				else
					row.name:SetText(L["widget_bank_bankbag"]:format(object.slots,object.link,object.free))
				end
				row.class:SetText("")
				row.name:SetJustifyH("CENTER")
				row.item = nil
			elseif object.type=="header" then
				--row.icon:SetTexture(object[2])
				row.icon:SetTexture(nil)
				row.name:SetText(object.name)
				row.name:SetJustifyH("CENTER")
				row.class:SetText("")
				row.item = nil
			else
				row.item = object
				row.icon:SetTexture(object.icon)
				row.name:SetText(L["widget_bank_bankitem"]:format(object.count,object.link))
				row.name:SetJustifyH("LEFT")
				row.class:SetText(object.subclassname or "")
				if self.currentname == "*" and object.owners then
					local text = ""
					for i,v in pairs(object.owners) do
						text = text .. i.." "..v..", "
					end
					row.class:SetText(text)
				end
			end
			row:Show()
		end
		itemindex=itemindex+1 
	end
	
	self.popup.scrolltable:TotalValue(results)
	self.popup.scrolltable:SetValue(rowoff)
	for r=rownum+1,ROW_COUNT do 
		self.popup.scrolltable.rows[r]:Hide() 
		self.popup.scrolltable.rows[r].item = nil
	end
end

function widget:OnEvent()
	self:PrepareResults()
end

function widget:Update()
	self:PrepareResults()
end

ZGV.Widgets:RegisterWidget(widget)