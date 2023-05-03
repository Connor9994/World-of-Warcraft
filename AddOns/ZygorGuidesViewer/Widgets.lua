ZGV.Widgets = {}
local Widgets = ZGV.Widgets
local CHAIN = ZGV.ChainCall
local L = ZGV.L

Widgets.Registered = {}
Widgets.RegisteredFloating = {}
Widgets.Events = {}
Widgets.Messages = {}

local grid = 6
local padding = 10

local GroupSorting = {
	general = {name="General", index=1},
	dungeons = {name="Dungeons", index=2},
	dailies = {name="Dailies / Events", index=3},
	covenant = {name="Covenants", index=4},
	pvp = {name="PVP", index=5},
}

function Widgets:RegisterWidget(object)
	if type(object.valid)~=nil then
		if type(object.valid)=="function" and not object.valid() then return false end
		if type(object.valid)=="boolean" and not object.valid then return false end
	end

	object.name = L["widget_"..object.ident.."_name"]
	object.description = L["widget_"..object.ident.."_description"]

	object.width = object.sizes[1].width
	object.height = object.sizes[1].height

	if not object.sizelimits then
		object.sizelimits = {
			minwidth = object.sizes[1].width, 
			minheight = object.sizes[1].height,
			maxwidth = object.sizes[1].width,
			maxheight = object.sizes[1].height,
		}
		for i,size in ipairs(object.sizes) do
			object.sizelimits.minwidth = math.min(object.sizelimits.minwidth,size.width)
			object.sizelimits.minheight = math.min(object.sizelimits.minheight,size.height)
			object.sizelimits.maxwidth = math.max(object.sizelimits.maxwidth,size.width)
			object.sizelimits.maxheight = math.max(object.sizelimits.maxheight,size.height)
		end
	end

	if object.width>grid then
		print("Widget",object.name,"cannot fit into grid")
		return
	end
	Widgets.Registered[object.ident]=object
	Widgets.RegisteredFloating[object.ident]=ZGV.F.DeepCopy(object)
end

function Widgets:SetupWidgets()
	local function pool_reseter(pool,frame)
		frame:Hide() 
		frame:ClearAllPoints() 
	end

	Widgets.UnusedPool=CreateFramePool("BUTTON",Widgets.Config,"ZGV_Widget_Unused",pool_reseter)
	Widgets.HeaderPool=CreateFramePool("BUTTON",Widgets.Config,"ZGV_Widget_Header",pool_reseter)

	Widgets.TileSize = math.floor((Widgets.Parent:GetWidth()-10)/grid)

	local tilesize = Widgets.TileSize

	ZGV.Widgets.FloatingPopup = CHAIN(ZGV.CreateFrameWithBG("Button", nil, UIParent))
		:SetPoint("CENTER")
		:SetSize(600,540)
		:Hide()
	.__END

	local types={
		[Widgets.Registered] = false,
		[Widgets.RegisteredFloating] = true,
	}

	for widgettype,floaty in pairs(types) do
		local order = 1
		for ident,object in pairs(widgettype) do
			object.active = false
			object.Floating = floaty
			object.width = object.sizes[1].width
			object.height = object.sizes[1].height
			object.widthpx = object.width * tilesize - padding
			object.heightpx = object.height * tilesize - padding
			if object.events then
				for e,_ in pairs(object.events) do
					Widgets.Events[e]=true
				end
			end
			if object.messages then
				for e,_ in pairs(object.messages) do
					Widgets.Messages[e]=true
				end
			end
			order = order + 3
			object.order = order
			object:Initialise()
			object:SystemInitialise()
			object:SystemApplySkin()
			object:SetInteractive(false)
			if object.system then
				object:Enable()
			end
		end
	end

	for event,_ in pairs(Widgets.Events) do
		ZGV:AddEventHandler(event,Widgets.EventDriver)
	end

	for message,_ in pairs(Widgets.Messages) do
		ZGV:AddMessageHandler(message,Widgets.EventDriver)
	end

	ZGV:AddMessageHandler("SKIN_UPDATED",Widgets.ApplySkin)
	ZGV:AddMessageHandler("ZGV_FRAME_VISIBILITY",Widgets.ToggleFloaters)
	ZGV.UpdateCentral:AddHandler(Widgets.UpdateDriver)

	-- the grid pattern in edit mode
	local scale = Widgets.Parent:GetEffectiveScale()
	Widgets.GridBG={
		bgFile = ZGV.SKINSDIR.."grid",
		--edgeFile = ZGV.SKINSDIR.."white",
		tile = true, 
		edgeSize = 0, 
		tileSize = Widgets.TileSize*scale, 
		insets = { 
			left =   0, 
			right =  0, 
			top =    0, 
			bottom = 0 
		}
	}

	Widgets:ApplySkin()
end

local function add_row(height)
	local temp = {}
	temp.height = height
	for i=0,grid-1 do temp[i]=0 end
	return temp
end


Widgets.CellObject = {} -- 2d array. stores which element occupies given cell
function Widgets:ApplyLayout()
	if not Widgets.Saved then return end
	table.wipe(Widgets.CellObject)
	local cellobject = Widgets.CellObject

	for ident,data in pairs(Widgets.Saved) do
		local object = Widgets.Registered[ident]
		if object then
			if not Widgets.ConfigMode then object:Enable() end

			object.width = data[3] or object.width
			object.height = data[4] or object.height
			object:Resize()
			object.row = data[1]
			object.column = data[2]
			object:Place()

			for i=object.row,object.row+object.height-1 do
				for j=object.column,object.column+object.width-1 do
					cellobject[i] = cellobject[i] or {}
					cellobject[i][j] = ident
				end
			end
		else
			ZGV:Debug("&widgets Missing widget "..ident)
		end
	end

	local total_rows=0
	for i,v in pairs(cellobject) do
		total_rows = max(total_rows,i)
	end
	for i=1,total_rows do cellobject[i]=cellobject[i] or {} end -- we need cellobject to be continous, for future checks, so add all rows that are not used

	if Widgets.ConfigMode then total_rows=total_rows+1 end -- if we are in config mode, add empty row for more gadgets

	Widgets.Parent:SetHeight((total_rows+1) * Widgets.TileSize)
end

function Widgets.UpdateDriver(elapsed)
	if not Widgets.Saved then return end

	if not Widgets.ConfigMode then
		for ident,object in pairs(Widgets.RegisteredFloating) do
			if object.active and object.OnTick and not object:Throttle(elapsed) then object:OnTick() end
		end
	end

	if not Widgets.ConfigMode then
		for ident,object in pairs(Widgets.Registered) do
			if (object.active or object.listeninactive) and object.OnTick and not object:Throttle(elapsed) then object:OnTick() end
		end
	end

	if not Widgets.Parent:IsVisible() then 
		Widgets.Registered.System:Disable()
		Widgets.AdderAfterStored = nil
		return 
	end


	if Widgets.ConfigMode then
		local scale = Widgets.Parent:GetEffectiveScale()
		local mx,my = GetCursorPosition()
		mx=(mx-(Widgets.Parent:GetLeft()*scale))
		my=-(my-(Widgets.Parent:GetTop()*scale))

		local row = floor(my/Widgets.TileSize/scale)
		local column = floor(mx/Widgets.TileSize/scale)

		if Widgets.Dragging then
			local w = Widgets.Dragging
			-- we are repositioning one of existing widgets
			if w:Fits(row,column) then
				w.row = row
				w.column = column
				Widgets.Saved[w.ident][1] = row
				Widgets.Saved[w.ident][2] = column
				ZGV.GuideMenu:UpdateHomeWidgets()
				w:WarnOff()
			else
				w:WarnOn()
			end

		elseif Widgets.Resizing then
			local w = Widgets.Resizing
			local newh = row - w.row + 1
			local neww = column - w.column + 1

			local limits = w.sizelimits
			
			local do_warn = false
			if (newh>limits.maxheight) or (neww>limits.maxwidth) or (newh<limits.minheight) or (neww<limits.minwidth) then do_warn = true end
			
			newh = math.min(newh,limits.maxheight)
			newh = math.max(newh,limits.minheight)
			neww = math.min(neww,limits.maxwidth)
			neww = math.max(neww,limits.minwidth)


			local old_h = w.height
			local old_w = w.width

			w.width = neww
			w.height = newh
			if w:Fits(w.row,w.column) then
				w:Resize()
				Widgets.Saved[w.ident][3] = w.width
				Widgets.Saved[w.ident][4] = w.height
				ZGV.GuideMenu:UpdateHomeWidgets()
			else
				w.width = old_w
				w.height = old_h
				do_warn = true
			end

			if do_warn then 
				w:WarnOn()
			else
				w:WarnOff()
			end


		elseif MouseIsOver(Widgets.Parent,-1,1,1,-1) then -- skip 1px margin, since it may not be used by widgets due to grid being math.floored
			-- we are hovering over widget parent, looking for free space to add more widgets
			local is_over_widget = false

			-- if we are over some existing widget, remember it
			for ident,object in pairs(Widgets.Registered) do
				if object.active and not object.system and MouseIsOver(object.frame,padding,-padding,-padding,padding) then 
					is_over_widget=true 
					break 
				end
			end

			-- same for config button
			if MouseIsOver(ZGV.Widgets.Parent.ConfigButton,padding,-padding,-padding,padding) then
				is_over_widget=true 
			end

			-- if we are not over anything important, show new widget placeholder
			if not is_over_widget  then
				if not (Widgets.Registered.System.row == row and Widgets.Registered.System.column==column) then
					Widgets.Registered.System.row = row 
					Widgets.Registered.System.column = column
					Widgets.Registered.System:Enable()
					Widgets.Registered.System:Place()
				end

				Widgets.AdderRow = row
				Widgets.AdderColumn = column
				return
			end
		end

		Widgets.Registered.System:Disable()
		Widgets.Registered.System.row = nil
		Widgets.Registered.System.column = nil
	end
end

function Widgets:ToggleFloaters(event,state)
	if not Widgets.FloatingLoaded then Widgets:LoadFloating() end
	for ident,data in pairs(Widgets.SavedHome) do
		local widget = Widgets.RegisteredFloating[ident]
		
		if state then
			widget.frame:Show()
		else
			widget.frame:Hide()
		end
	end
	Widgets:ApplySkin()
end

function Widgets:LoadFloating()
	for ident,data in pairs(Widgets.SavedHome) do
		local widget = Widgets.RegisteredFloating[ident]
		widget:Enable()
		ZGV.F.SetFrameAnchor(widget.frame,data)
		ZGV.F.SetFrameSizes(widget.frame,data)
	end
	Widgets.FloatingLoaded = true
end

function Widgets:EventDriver(event,...)
	local parentvisible = Widgets.Parent:IsVisible()

	for ident,object in pairs(Widgets.Registered) do
		if ((object.active and parentvisible) or object.listeninactive) and (object.events and object.events[event]) or (object.messages and object.messages[event]) then 
			object:OnEvent(event,...) 
		end
	end
	for ident,object in pairs(Widgets.RegisteredFloating) do
		if (object.active and parentvisible) and (object.events and object.events[event]) or (object.messages and object.messages[event]) then 
			object:OnEvent(event,...) 
		end
	end
end

function Widgets:ExitAddMode()
	Widgets.Parent.ExitAddButton:Hide()
	Widgets.Parent.ClearButton:Show()
	Widgets.AdderStoredRow = nil
	Widgets.Config:Hide()
	Widgets.Parent:Show()
end


function Widgets:ShowConfig()
	if not Widgets.AdderStoredRow then 
		Widgets.Parent.ClearButton:Show()
		return false 
	end

	Widgets.Config:Show()
	Widgets.Parent:Hide()
	Widgets.Parent.ClearButton:Hide()
	Widgets.Parent.ExitAddButton:Show()

	Widgets.UnusedPool:ReleaseAll()
	Widgets.HeaderPool:ReleaseAll()

	local index,widgetcount,height = 0,0,0
	local prev

	local sorted_widgets = {}
	for ident,object in pairs(Widgets.Registered) do
		if not object.system then
			table.insert(sorted_widgets,object)
		end
	end
	table.sort(sorted_widgets,function(a,b) 
		local a_index = GroupSorting[a.group] and GroupSorting[a.group].index or 99
		local b_index = GroupSorting[b.group] and GroupSorting[b.group].index or 99
		if a_index==b_index then
			return a.name<b.name 
		else
			return a_index<b_index
		end
	end)
		
	local tilesize = Widgets.TileSize

	local config_tile_width = (grid/2*tilesize) - (2*padding)
	local config_tile_height = tilesize - padding

	local grouplast,groupcount = "",0
	local previsheader = false
	local height = 0
	for _,object in pairs(sorted_widgets) do
		if not (object.system) then
			if grouplast ~= object.group then
				index = 0
				grouplast = object.group
				local headerframe,new = Widgets.HeaderPool:Acquire()
				headerframe.Name:SetText(GroupSorting[object.group] and GroupSorting[object.group].name or object.group)
				if prev then
					headerframe:SetPoint("TOP",prev,"BOTTOM",-padding,-padding)
				else
					headerframe:SetPoint("TOP",Widgets.Config,"TOP",padding,-padding)
				end
				headerframe:SetPoint("LEFT",Widgets.Config, 20,0)
				headerframe:SetPoint("RIGHT",Widgets.Config, -padding,0)
				headerframe:Show()
				prev=headerframe
				previsheader = true
				groupcount = groupcount + 1

				height = height + headerframe:GetHeight() + padding
			end

			local widgetframe,new = Widgets.UnusedPool:Acquire()
			if new then widgetframe:ApplySkin() end

			widgetframe:Assign(object)

			widgetframe.system_description:SetWidth(config_tile_width - 40)
			widgetframe:SetSize(config_tile_width,config_tile_height)
			
			widgetframe:ShowDescription()

			index = index + 1
			if prev then
				if previsheader then
					widgetframe:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",-padding,0)
					height = height + widgetframe:GetHeight()
				elseif (index%2)==0 then
					widgetframe:SetPoint("LEFT",prev,"RIGHT", padding,0)
				else
					widgetframe:SetPoint("TOPRIGHT",prev,"BOTTOMLEFT",-padding,-padding)
					height = height + widgetframe:GetHeight() + padding
				end
			else
				widgetframe:SetPoint("TOPLEFT",Widgets.Config,"TOPLEFT",padding,-padding)
				height = height + widgetframe:GetHeight() + padding
			end
			previsheader = false
			prev = widgetframe
			widgetcount = widgetcount + 1

			widgetframe:SetDimmed(object.active)			
			widgetframe:SetPinned(Widgets.SavedHome[object.ident])
		end
	end

	Widgets.Config:SetHeight(height + padding)

	ZGV.GuideMenu:UpdateHomeWidgets()
end

function Widgets:DisableConfig()
	if not Widgets.Config then return end
	Widgets.Config:Hide()
	Widgets.Parent:Show()
	for ident,object in pairs(Widgets.Registered) do
		object:SetInteractive(false)
	end
	for ident,object in pairs(Widgets.RegisteredFloating) do
		object:SetInteractive(false)
	end
	Widgets.ConfigMode = false
	Widgets.AdderStoredRow = nil
	Widgets.AdderStoredColumn = nil
	
	Widgets.Parent:SetBackdrop(nil)
	Widgets.Parent.ClearButton:Hide()
	Widgets.Parent.ExitAddButton:Hide()
end

function Widgets:EnableConfig()
	if not Widgets.Config then return end
	Widgets:ShowConfig()
	for ident,object in pairs(Widgets.Registered) do
		object:SetInteractive(true)
	end
	for ident,object in pairs(Widgets.RegisteredFloating) do
		object:SetInteractive(true)
	end
	Widgets.ConfigMode = true

	Widgets.Parent:SetBackdrop(Widgets.GridBG)
	Widgets.Parent:SetBackdropColor(1,1,1,0.1)
	Widgets.Parent.ClearButton:Show()
	Widgets.Parent.ExitAddButton:Hide()
end

function Widgets:ToggleConfigMenu()
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==ZGV.Frame.Menu then CloseDropDownForks() return end

	local setting_menu = {}
	if not Widgets.ConfigMode then
		table.insert(setting_menu,{
			text=L["widgets_menu_configon"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="LIST",
			func=function() Widgets:ToggleConfig() end,
			notCheckable=1,
			paddingbottom=8,
		})
	else
		table.insert(setting_menu,{
			text=L["widgets_menu_configoff"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="LIST",
			func=function() Widgets:ToggleConfig() end,
			notCheckable=1,
			paddingbottom=8,
		})
	end
	table.insert(setting_menu,{
		text=L["widgets_menu_remove"],
		iconset=ZGV.ButtonSets.TitleButtons,
		iconkey="LIST",
		func=function() Widgets:ClearWidgets() end,
		notCheckable=1,
		paddingbottom=8,
	})
	table.insert(setting_menu,{
		text=L["widgets_menu_removefree"],
		iconset=ZGV.ButtonSets.TitleButtons,
		iconkey="LIST",
		func=function() Widgets:ClearWidgets() end,
		notCheckable=1,
		paddingbottom=8,
	})
	if not ZGV.db.profile.widgetslocked then
		table.insert(setting_menu,{
			text=L["widgets_menu_lockfree"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="LIST",
			func=function() Widgets:ClearWidgets() end,
			notCheckable=1,
			paddingbottom=8,
		})
	else
		table.insert(setting_menu,{
			text=L["widgets_menu_lockfree"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="LIST",
			func=function() Widgets:ClearWidgets() end,
			notCheckable=1,
			paddingbottom=8,
		})
	end

	for i,v in ipairs(setting_menu) do
		if v.iconset then
			v.icon = v.iconset.file
			local texcoord=v.iconset[v.iconkey].texcoords
			v.tCoordLeft = texcoord[1][1]
			v.tCoordRight = texcoord[1][2]
			v.tCoordTop = texcoord[1][3]
			v.tCoordBottom = texcoord[1][4]
		end
	end

	UIDropDownFork_SetAnchor(ZGV.Frame.Menu, 0, 0, "TOP", ZGV.Widgets.Parent.ConfigButton, "BOTTOM")
	EasyFork(setting_menu,ZGV.Frame.Menu,nil,0,0,"MENU",10)
	ZGV.Frame.Menu:SetPoint("BOTTOMRIGHT",ZGV.Widgets.Parent.ConfigButton,"TOPRIGHT")
end

function Widgets:ToggleConfig()
	if Widgets.ConfigMode then
		Widgets:DisableConfig()
		ZGV.Widgets.Parent.ConfigHoverBar:SetWidth(40)
	else
		ZGV.Widgets.Parent.ConfigHoverBar:SetWidth(72)
		Widgets:EnableConfig()
	end
	GameTooltip:Hide()
	ZGV.GuideMenu:UpdateHomeWidgets()
end

function Widgets:HoverBarShow()
	ZGV.Widgets.Parent.ConfigButton:Show()
	--[[
	if Widgets.ConfigMode then 
		ZGV.Widgets.Parent.ClearButton:Show()
		Widgets.Parent.ExitAddButton:Show()

	end
	--]]
end

function Widgets:HoverBarHide()
	if Widgets.ConfigMode then return end -- always visible in config mode
	if ZGV.Widgets.Parent.ConfigHoverBar:IsMouseOver() then return end -- keep visible while mousing over children
	ZGV.Widgets.Parent.ConfigButton:Hide()
	ZGV.Widgets.Parent.ClearButton:Hide()
end

function Widgets:ConfigButtonTooltip()
	GameTooltip:SetOwner(Widgets.Parent.ConfigButton, "ANCHOR_TOP",0,10)
	if Widgets.ConfigMode then
		GameTooltip:AddLine(L["widgets_menu_configoff"])
	else
		GameTooltip:AddLine(L["widgets_menu_configon"])
	end
	GameTooltip:Show()
end

function Widgets:ClearButtonTooltip()
	GameTooltip:SetOwner(Widgets.Parent.ClearButton, "ANCHOR_TOP",0,10)
	GameTooltip:AddLine(L["widgets_menu_remove"])
	GameTooltip:Show()
end

function Widgets:ExitAddButtonTooltip()
	GameTooltip:SetOwner(Widgets.Parent.ExitAddButton, "ANCHOR_TOP",0,10)
	GameTooltip:AddLine(L["widgets_menu_exitadd"])
	GameTooltip:Show()
end



function Widgets:ClearWidgets()
	for ident,data in pairs(Widgets.Saved) do
		local object = Widgets.Registered[ident]
		if object then
			object:Disable()
		else
			Widgets.Saved[ident] = nil
		end
	end
end

function Widgets:RecordAddWidget()
	Widgets.AdderStoredRow=Widgets.AdderRow
	Widgets.AdderStoredColumn=Widgets.AdderColumn
	Widgets:ShowConfig()
end

function Widgets:AddWidget(object)
	local found_space = false
	if not object:Fits(Widgets.AdderStoredRow,Widgets.AdderStoredColumn) then
		-- if it doesn't fit where we wanted it, find first space after this coord where it will
		for i=Widgets.AdderStoredRow,#Widgets.CellObject+1 do
			for j=0,grid do
				if (i~=AdderStoredRow or j>Widgets.AdderStoredColumn) and object:Fits(i,j) then
					Widgets.AdderStoredRow = i
					Widgets.AdderStoredColumn = j
					found_space = true
					break
				end
			end
			if found_space then break end
		end
	else 
		found_space = true
	end

	if found_space then
		Widgets.Saved[object.ident] = {Widgets.AdderStoredRow,Widgets.AdderStoredColumn,object.width,object.height}
		object:Enable()
		object:SetInteractive(true)

		Widgets.AdderStoredRow=nil
		Widgets.AdderStoredColumn=nil
		Widgets.Config:Hide()
		Widgets.Parent:Show()
		ZGV.GuideMenu:UpdateHomeWidgets()
		Widgets.Parent.ClearButton:Show()
		Widgets.Parent.ExitAddButton:Hide()

		local scale = Widgets.Parent:GetEffectiveScale()
		local scrolltop = ZGV.Widgets.Parent:GetTop() - object.frame:GetTop() - padding
		scrolltop = max(0,min(scrolltop, max(0,ZGV.GuideMenu.MainFrame.WideColumnHomeInner:GetHeight()-ZGV.GuideMenu.MainFrame.WideColumnHome:GetHeight())))

		ZGV.GuideMenu.MainFrame.WideColumnHome:SetValue(scrolltop)
		ZGV.GuideMenu.MainFrame.WideColumnHome:SetVerticalScroll(scrolltop)
	end
end

function Widgets:ApplySkin()
	CHAIN(Widgets.Fader)
		:SetBackdrop(ZGV.UI.SkinData("WidgetsBackdrop"))
		:SetBackdropColor(0.1,0.1,0.1,0.7)
		:SetBackdropBorderColor(0.1,0.1,0.1,0.7)

	for ident,object in pairs(Widgets.Registered) do
		--if object.active then
			object:SystemApplySkin()
		--end
	end
	for ident,object in pairs(Widgets.RegisteredFloating) do
		--if object.active then
			object:SystemApplySkin()
		--end
	end
end

do -- system "Add widget" widget
	local widget={
		name = "System",
		ident = "System",
		group = "System",
		sizes = {{width = 1,height = 1}},
		system = true,
	}

	function widget:Initialise()
		self.frame = CHAIN(ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template"))
			:SetWidth(self.widthpx)
			:SetHeight(self.heightpx)
			:SetFont(FONT,64) 
			:SetTextColor(1,1,1,1)
			:SetText("+")
			:EnableMouse(true)
			:SetScript("OnClick", function() Widgets:RecordAddWidget() end)
			.__END
		Mixin(self,ZGV_Widget_Object_Mixin)
	end

	ZGV.Widgets:RegisterWidget(widget)
end

function Widgets:HideAllPopups()
	for ident,object in pairs(Widgets.Registered) do
		if object.popup then
			object:HidePopup()
		end
	end
	for ident,object in pairs(Widgets.RegisteredFloating) do
		if object.popup then
			object:HidePopup()
		end
	end
end

function Widgets:Backup()
	local out = "{{"
	local frm = "%s={%s},"
	for ident,data in pairs(Widgets.Saved) do
		out = out .. frm:format(ident,table.concat(data,","))
	end
	out = out .. "},{"
	local frm = "%s={%d,%d,%s%s},"
	for ident,data in pairs(Widgets.SavedHome) do
		out = out .. frm:format(ident,math.floor(data[4]),math.floor(data[5]),(data.width and math.floor(data.width)).."," or "",(data.height and math.floor(data.height)).."," or "")
	end
	out = out .. "},{"

	for ident,widget in pairs(Widgets.Registered) do
		if widget.Backup then 
			out = out .. ident.."="..widget:Backup()..","
		end
	end
	out = out .. "}}"

	ZGV.Widgets.lastExportString = out
end

function Widgets:Import(data)
	if not data or data=="" then return end
	local import = "ZGV.Widgets.ImportStr = "..data
	loadstring(import)()
	if not ZGV.Widgets.ImportStr then return end
	Widgets:HideAllPopups()

	-- clear, restore widgets states and apply
	local layout = ZGV.Widgets.ImportStr[1]
	for ident,data in pairs(Widgets.Saved) do
		local widget = Widgets.Registered[ident]
		if widget then widget:Disable() end
	end
	table.wipe(Widgets.Saved)
	for ident,data in pairs(layout) do
		Widgets.Saved[ident]=data
	end
	Widgets:ApplyLayout()
	
	-- clear, restore floating widgets states and apply
	local layoutfloat = ZGV.Widgets.ImportStr[2]
	for ident,data in pairs(Widgets.SavedHome) do 
		local widget = Widgets.RegisteredFloating[ident]
		if widget then widget:Disable() end
	end
	table.wipe(Widgets.SavedHome)
	for ident,data in pairs(layoutfloat) do
		Widgets.SavedHome[ident] = {"TOPLEFT",nil,"TOPLEFT",data[1],data[2],width=data[3],height=data[4]}
	end
	Widgets:LoadFloating()

	-- restore backed up data
	local data = ZGV.Widgets.ImportStr[3]
	for ident,savedvars in pairs(data) do
		local widget = Widgets.Registered[ident]
		if widget and widget.Import then
			widget:Import(savedvars)
		end
	end
end

ZGV_Widget_Object_Mixin = {}
function ZGV_Widget_Object_Mixin:Enable()
	self.active = true
	self.frame:Show()
	self.frame:SetFrameLevel(self.order)
	if self.Update then self:Update() end
end

function ZGV_Widget_Object_Mixin:Disable()
	self.active = false
	self.frame:Hide()
	if self.Floating then
		Widgets.SavedHome[self.ident]=nil
	else
		Widgets.Saved[self.ident]=nil
	end
	self.width = self.sizes[1].width
	self.height = self.sizes[1].height
	if not self.system then
		ZGV.GuideMenu:UpdateHomeWidgets()
		Widgets:ShowConfig()
	end
end

function ZGV_Widget_Object_Mixin:Place()
	self.frame:SetPoint("TOPLEFT",self.column*Widgets.TileSize + padding/2,-self.row*Widgets.TileSize - padding/2)
end

function ZGV_Widget_Object_Mixin:Fits(row,col)
	if col<0 or (col+self.width)>grid then return false end
	if row<0 or row > #Widgets.CellObject+1 then return false end
	
	for i=row,row+self.height-1 do
		for j=col,col+self.width-1 do
			if Widgets.CellObject[i] and Widgets.CellObject[i][j] and Widgets.CellObject[i][j]~=self.ident then return false end
		end
	end
	return true
end

function ZGV_Widget_Object_Mixin:Throttle(elapsed)
	if not (self.active or self.listeninactive) then return true end -- do throttle

	if self.delay and self.tick then
		self.delay=self.delay+elapsed  
		if self.delay>self.tick then self.delay=0 else return true end -- do throttle
	else
		self.delay=0
	end
	return false -- don't throttle
end

function ZGV_Widget_Object_Mixin:Resize()
	local tilesize = Widgets.TileSize
	self.widthpx = self.width * tilesize - padding
	self.heightpx = self.height * tilesize - padding

	CHAIN(self.frame)
		:SetWidth(self.widthpx)
		:SetHeight(self.heightpx)
		:EnableMouse(true)
		:Show()

	if self.OnResize then self:OnResize() end
end

function ZGV_Widget_Object_Mixin:WarnOn()
	self.frame.warnshake:Play()
end

function ZGV_Widget_Object_Mixin:WarnOff()
	self.frame.warnshake:Stop()
end

function ZGV_Widget_Object_Mixin:SetInteractive(mode,force)
	if self.system then return end
	if self.Floating and force then
		if self.frame:IsMouseOver() and not mode then return end -- keep interactive when mousing over childen
		if self.interacting then return end -- keep interactive while dragging/resizing
	end
	if mode then
		self.frame.resizer.htx:Show()
		self.frame.resizer.ntx:Show()
		self.frame.resizer.ptx:Show()
		self.frame.overlay:Show() 
	else
		self.frame.resizer.htx:Hide()
		self.frame.resizer.ntx:Hide()
		self.frame.resizer.ptx:Hide()
		self.frame.overlay:Hide() 
	end
end

function ZGV_Widget_Object_Mixin:SystemApplySkin()
	local overlay = self.frame.overlay

	CHAIN(self.frame)
		:SetBackdrop(ZGV.UI.SkinData("WidgetsBackdrop"))
		:SetBackdropColor(unpack(ZGV.UI.SkinData("WidgetsBackdropColor")))
		:SetBackdropBorderColor(unpack(ZGV.UI.SkinData("WidgetsBackdropBorderColor")))
		:SetHighlightBackdropColor(unpack(ZGV.UI.SkinData("WidgetsBackdropColor")))
		:SetNormalBackdropColor(unpack(ZGV.UI.SkinData("WidgetsBackdropColor")))

	CHAIN(overlay)
		:SetBackdrop(ZGV.UI.SkinData("WidgetsBackdrop"))
		:SetBackdropColor(unpack(ZGV.UI.SkinData("WidgetsBackdropColor")))
		:SetBackdropBorderColor(unpack(ZGV.UI.SkinData("WidgetsBackdropBorderColor")))
		:SetAlpha(0.7)

	overlay.dragger:ApplySkin()
	self.frame.resizer:ApplySkin()
	self.frame.resizer:SetFrameLevel(overlay:GetFrameLevel()+1)
	overlay.close:ApplySkin()
	overlay.gameui:ApplySkin()

	if self.popup then
		CHAIN(self.popup)
			:SetBackdrop(ZGV.UI.SkinData("WidgetsBackdrop"))
			:SetBackdropColor(unpack(ZGV.UI.SkinData("WidgetsPopupBackdropColor")))
			:SetBackdropBorderColor(unpack(ZGV.UI.SkinData("WidgetsPopupBackdropBorderColor")))
			:SetFrameLevel(20)
	end

	if self.Floating then
		self.frame:SetScale(ZGV.db.profile.widgetfloatscale or 1)
		self.frame:SetAlpha(ZGV.db.profile.widgetfloatopacity or 1)
	end

	if self.ApplySkin then self:ApplySkin() end
end


function ZGV_Widget_Object_Mixin:SystemInitialise()
	local overlay = self.frame.overlay
	CHAIN(self.frame)
		:SetWidth(self.widthpx)
		:SetHeight(self.heightpx)
		:EnableMouse(true)
		:Show()

	CHAIN(overlay.dragger)
		:SetScript("OnDragStart",function() self:OnDragStart() end)
		:SetScript("OnDragStop",function() self:OnDragStop() end)
		:SetScript("OnMouseUp",function() self:OnDragStop() end)
		:RegisterForDrag("LeftButton")

	CHAIN(self.frame.resizer)
		:SetScript("OnDragStart",function() self:OnResizeStart() end)
		:SetScript("OnDragStop",function() self:OnResizeStop() end)
		:SetScript("OnMouseUp",function() self:OnResizeStop() end)
		:RegisterForDrag("LeftButton")

	if self.sizelimits.minwidth==self.sizelimits.maxwidth and self.sizelimits.minheight==self.sizelimits.maxheight then
		self.frame.resizer:Hide()
	end

	CHAIN(overlay.close)
		:SetScript("OnClick", function() self:Disable() end)

	CHAIN(overlay.gameui)
		:SetScript("OnClick", function() self:TogglePinned() end)

	CHAIN(overlay)
		:SetFrameLevel(self.frame:GetFrameLevel()+10)

	if self.popup then
		self.frame:SetScript("OnClick",function() self:ShowPopup() end)

		CHAIN(self.popup)
			:SetPoint("CENTER",ZGV.Widgets.Fader)
			:SetScript("OnClick",function() self:HidePopup() end)
			:Hide()

		if not self.intext then
			self.intext = CHAIN(self.frame:CreateFontString())
				:SetPoint("BOTTOMLEFT",5,3)
				:SetPoint("BOTTOMRIGHT",-5,-3)
				:SetHeight(20)
				:SetFont(ZGV.Font,10)
				:SetJustifyH("LEFT")
				:SetTextColor(1,1,1,1)
				:SetText("See more")
				:SetIgnoreParentAlpha(true)
			.__END
			self.intext.decor = CHAIN(self.frame:CreateTexture())
				:SetVertexColor(0.2,0.2,0.2,1)
				:SetPoint("TOPLEFT",self.intext,0,2)
				:SetPoint("TOPRIGHT",self.intext,0,2)
				:SetHeight(1)
				:SetTexture(ZGV.SKINSDIR.."white")
			.__END
			self.intext.arrow = CHAIN(self.frame:CreateTexture())
				:SetPoint("RIGHT",self.intext)
				:SetVertexColor(0.9,0.9,0.9,1)
				:SetSize(12,12)
			.__END
			ZGV.ButtonSets.TitleButtons.STEP_NEXT:AssignToTexture(self.intext.arrow)
			self.popup.outarrow = CHAIN(self.popup:CreateTexture())
				:SetSize(12,12)
				:SetPoint("TOPLEFT",10,-12)
				:SetTexture(ZGV.ButtonSets.TitleButtons.file)
				:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons['STEP_PREV'].texcoords[1]))
			.__END
		end	
	end

	if self.Floating then
		local limits = self.sizelimits
		CHAIN(self.frame)
			:SetScript("OnClick",function() self:TogglePopup() end)
			:SetScript("OnEnter",function() self:SetInteractive(true,true) end)
			:SetScript("OnLeave",function() self:SetInteractive(false,true) end)
			:SetScript("OnDragStart",function() self:OnDragStart() end)
			:SetScript("OnDragStop",function() self:OnDragStop() end)
			:SetScript("OnMouseUp",function() self:OnDragStop() end)
			:RegisterForDrag("LeftButton")
			:SetParent(UIParent)
			:SetMovable(true)
			:SetClampedToScreen(true)
			:SetResizable(true)
		if self.frame.SetResizeBounds then
			self.frame:SetResizeBounds(limits.minwidth* Widgets.TileSize - padding,limits.minheight* Widgets.TileSize - padding,limits.maxwidth* Widgets.TileSize - padding,limits.maxheight* Widgets.TileSize - padding)
		else
			self.frame:SetMinResize(limits.minwidth* Widgets.TileSize - padding,limits.minheight* Widgets.TileSize - padding)
			self.frame:SetMaxResize(limits.maxwidth* Widgets.TileSize - padding,limits.maxheight* Widgets.TileSize - padding)
		end
		CHAIN(self.frame.overlay)
			:ClearAllPoints()
			:SetPoint("TOPRIGHT")
			:SetPoint("BOTTOMRIGHT")
			:SetWidth(32)
			:SetScript("OnLeave",function() self:SetInteractive(false,true) end)
			:SetScript("OnDragStart",function() self:OnDragStart() end)
			:SetScript("OnDragStop",function() self:OnDragStop() end)
			:SetScript("OnMouseUp",function() self:OnDragStop() end)
			:RegisterForDrag("LeftButton")
			:SetMovable(true)

		if self.popup then
			self.popup:SetParent(ZGV.Widgets.FloatingPopup)
			self.popup:SetPoint("CENTER")
		end
		self.frame.overlay.dragger:Hide()
		self.frame.overlay.gameui:Hide()
	end
end

function ZGV_Widget_Object_Mixin:ShowPopup()
	Widgets:HideAllPopups()

	self:InitialisePopup()

	if self.Floating then
		Widgets.FloatingPopup:Show()
	else
		Widgets.Fader:Show()
		Widgets.Fader:SetScript("OnClick",function() self:HidePopup() end)
	end
	self.popup:Show()

	if self.OnPopup then self:OnPopup() end
end

function ZGV_Widget_Object_Mixin:HidePopup()
	Widgets.FloatingPopup:Hide()
	self.popup:Hide()
	Widgets.Fader:Hide()
	Widgets.Fader:SetScript("OnClick",nil)
	GameTooltip:Hide()

	Widgets.Fader.ActivePopup = nil
end

function ZGV_Widget_Object_Mixin:TogglePopup()
	if self.popup:IsVisible() then
		self:HidePopup()
	else
		Widgets:HideAllPopups()
		self:ShowPopup()
	end
end


function ZGV_Widget_Object_Mixin:OnDragStart()
	if self.Floating then
		self.frame:StartMoving()
		self.interacting = true
	else
		Widgets.Dragging = self
		CHAIN(self.frame.overlay)
			:SetBackdropColor(unpack(ZGV.UI.SkinData("WidgetsDragColor")))
			:SetBackdropBorderColor(unpack(ZGV.UI.SkinData("WidgetsDragColor")))
		self:WarnOff()
	end
end

function ZGV_Widget_Object_Mixin:OnDragStop()
	if self.Floating then
		self.frame:StopMovingOrSizing()
		ZGV.F.SaveFrameAnchor(self.frame,self.ident,Widgets.SavedHome)
		ZGV.F.SaveFrameSizes(self.frame,self.ident,Widgets.SavedHome)
		self.interacting = false
	else
		Widgets.Dragging = nil
		CHAIN(self.frame.overlay)
			:SetBackdropColor(unpack(ZGV.UI.SkinData("WidgetsBackdropColor")))
			:SetBackdropBorderColor(unpack(ZGV.UI.SkinData("WidgetsBackdropBorderColor")))
		self:WarnOff()
	end
end

function ZGV_Widget_Object_Mixin:OnResizeStart()
	if self.Floating then
		self.interacting = true
		self.frame:StartSizing("BOTTOMRIGHT")
	else
		Widgets.Resizing = self
	end
	self:WarnOff()
end

function ZGV_Widget_Object_Mixin:OnResizeStop()
	if self.Floating then
		self.interacting = false
		self.frame:StopMovingOrSizing()
		self:SetInteractive(false,true)
		ZGV.F.SaveFrameAnchor(self.frame,self.ident,Widgets.SavedHome)
		ZGV.F.SaveFrameSizes(self.frame,self.ident,Widgets.SavedHome)
		if self.OnResize then self:OnResize() end
	else
		Widgets.Resizing = nil
	end
	self:WarnOff()
end

function ZGV_Widget_Object_Mixin:TogglePinned()
	local widget = Widgets.RegisteredFloating[self.ident]
	if Widgets.SavedHome[widget.ident] then
		Widgets.SavedHome[widget.ident]=nil
		if ZGV.db.profile.widgetshomelast == widget.ident then
			ZGV.db.profile.widgetshomelast = nil
		end
		widget.frame:Hide()
		ZGV.ButtonSets.TitleButtons.VISIBLE:AssignToButton(self.frame.overlay.gameui)
		return false
	else
		local prevident = ZGV.db.profile.widgetshomelast
		local prev = prevident and Widgets.RegisteredFloating[prevident]
		if prev and prev.active then
			local point, relativeTo, relativePoint, xOfs, yOfs  = prev.frame:GetPointByName("TOPLEFT")
			local pheight = prev.frame:GetHeight()
			yOfs = (yOfs and -yOfs) or 0
			widget.frame:SetPoint("TOPLEFT",(xOfs or 0),-(yOfs + pheight + 10)) 
			widget.frame:Show() 
			widget:OnDragStop()
		else
			widget.frame:SetPoint("TOPLEFT") 
			widget.frame:Show() 
			widget:OnDragStop()
		end
		ZGV.db.profile.widgetshomelast = widget.ident

		widget:Enable()
		ZGV.ButtonSets.TitleButtons.INVISIBLE:AssignToButton(self.frame.overlay.gameui)
		return true
	end
end

ZGV_Widget_Unused_Mixin = {}
function ZGV_Widget_Unused_Mixin:ApplySkin()
	CHAIN(self)
		:SetBackdrop(ZGV.UI.SkinData("WidgetsBackdrop"))
		:SetBackdropColor(unpack(ZGV.UI.SkinData("WidgetsBackdropColor")))
		:SetBackdropBorderColor(unpack(ZGV.UI.SkinData("WidgetsBackdropBorderColor")))
		:Show()

	CHAIN(self.system_title)
		:SetFont(ZGV.Font,16)
		:SetTextColor(1,1,1,1)
		:SetPoint("TOPLEFT",padding,-padding)

	CHAIN(self.system_description)
		:SetPoint("TOPLEFT",self.system_title,"BOTTOMLEFT")
		:SetFont(ZGV.Font,12)
		:SetWordWrap(true)
		:SetTextColor(1,1,1,1)

	for i=1,4 do
		CHAIN(self["system_size"..i].tex)
			:SetTexture(ZGV.DIR.."\\Skins\\white")
			:SetVertexColor(1,1,1,0.8)
			:Show()
	end

	self.pin:ApplySkin()
end

function ZGV_Widget_Unused_Mixin:Assign(object)
	self.object = object

	self.system_title:SetText(object.name)
	self.system_description:SetText(object.description)

	for i=1,4 do self["system_size"..i]:Hide() end

	self:SetScript("OnClick",self.ShowSizes)
end

function ZGV_Widget_Unused_Mixin:ShowSizes()
	if self.object.active then return end

	self.system_title:Hide()
	self.system_description:Hide()
	self:SetScript("OnClick",self.ShowDescription)

	local sizerwidth = math.floor(self:GetWidth()/4)

	if #self.object.sizes == 1 then
		Widgets:AddWidget(self.object) 
	else
		for i=1,4 do
			if self.object.sizes[i] then
				local button = self["system_size"..i]
				button.tex:SetSize(self.object.sizes[i].width*10,self.object.sizes[i].height*10)
				button:SetSize(sizerwidth,self:GetHeight())
				button:SetScript("OnClick",function() 
					self.object.width = self.object.sizes[i].width
					self.object.height = self.object.sizes[i].height
					Widgets:AddWidget(self.object) 
				end)
				button:Show()
			end
		end
		self:Show()
	end
end

function ZGV_Widget_Unused_Mixin:ShowDescription()
	self.system_title:Show()
	self.system_description:Show()
	self:SetScript("OnClick",self.ShowSizes)

	for i=1,4 do self["system_size"..i]:Hide() end

	self:Show()
end

function ZGV_Widget_Unused_Mixin:SetDimmed(mode)
	if self.system then return end

	if mode then
		self:SetAlpha(0.5) 
	else
		self:SetAlpha(1) 
	end
end

function ZGV_Widget_Unused_Mixin:SetPinned(mode)
	if mode then
		ZGV.ButtonSets.TitleButtons.INVISIBLE:AssignToButton(self.pin)
	else
		ZGV.ButtonSets.TitleButtons.VISIBLE:AssignToButton(self.pin)
	end
end

function ZGV_Widget_Unused_Mixin:TogglePinned()
	local ident = (self:GetParent()).object.ident
	local widget = Widgets.RegisteredFloating[ident]
	local pinned = widget:TogglePinned()
	self:GetParent():SetPinned(pinned)
end



tinsert(ZGV.startups,{"Widgets",function(self)
	if not ZGV.db.profile.widgets_first_run_done then
		ZGV.db.profile.widgets = {
			guidehistory = {0,0,3,2},
			guidesuggest = {0,3,3,2},
			timeplayed = {2,0,2,2},
			gold = {2,2,2,2},
		}
		ZGV.db.profile.widgets_first_run_done = true
	end

	ZGV.db.profile.widgets = ZGV.db.profile.widgets or {}
	ZGV.db.profile.widgetshome = ZGV.db.profile.widgetshome or {}
	ZGV.db.profile.widgetshomelast = ZGV.db.profile.widgetshomelast or {}
	Widgets.Saved = ZGV.db.profile.widgets
	Widgets.SavedHome = ZGV.db.profile.widgetshome
	-- widgets are set up and initialised in GuideMenu:CreateHome
end})