local name,ZGV = ...

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"

local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ScrollTable = {}
local ui = ZGV.UI
ui:RegisterWidget("ScrollTable",ScrollTable)

local SkinData = ZGV.UI.SkinData

local HTMLColor=ZGV.HTMLColor

local SCROLL_WIDTH=15		-- read only

local ARROW_SPACE="      " -- sorting spacer

local DEFAULT_DATA = {
	LIST_WIDTH = 200,
	LIST_HEIGHT = 300,
	ROW_COUNT = 5,
	ROW_HEADER = 20,
	ROW_ICONSIZE = 15,
	ROW_PADDING = 5,
	POSX = 0,
	POSY = 0,
	HEADERX = 0,
	HEADERY = 0,
	HEADER_FONTSIZE = 13,
	ROW_FONTSIZE = 12,
	FONT = FONT,
	FONTBOLD = FONTBOLD,
	STRATA = "MEDIUM",
	BACKGROUND = {ZGV.F.HTMLColor("#2f2f2fff")},
	BORDER = {0,0,0,1},
	ROWHIGHLIGHT = false,
	ROWBACKGROUND = false,
	HIDESCROLLBAR = false,
}

--[[
	Pretty static for now.
	Needs table with column details.
		local COLUMNS = {
			{ 
				name="icon", -- interal identifier, col_name for header, name for row
				title="", -- displayed in header
				width=15, 
				titlej="LEFT", -- text align for header
				textj="LEFT",  -- text align for row
				type="icon",   -- none/button/icon/toggle
				padding=5, -- amount of padding before the column
				titlepadding=5, -- amount of padding before the column header
				font=FONT, 
				texture="file" -- texture to use if type is button or icon
				textureskinname="name" -- texture name, used to get file name from skindata
				textureoffset={1,2,3,4} -- if texture, array to unpack for SetTexCoord
				texturecolor={1,2,3,4} -- if texture, array to unpack for SetVertexColor
				onentertooltip=function(row) --do something, GameTooltip is created and placed
				tooltipanchor="anchorpoint" --where the tooltip defined in onentertooltip is to be attached
			},
		}
	Can take optional custom starting options.	
		local DATA = {
			ROW_COUNT = 14,
			LIST_WIDTH = 360,
			LIST_HEIGHT = 340,
			POSX = 8,
			POSY = -8,
		}
	
	If column type is icon, texture will be created for each row.
	If column type is button, border and background-less button will be created for that column header, and for each row.
	If column has onentertooltip, it will have a frame overlayed for showing tooltips defined by onentertooltip function

	Number of rows cannot be changed after creation.

	Other enter/leave/click scripts need to be attached after scrolltable is generated, by referencing the objects.
	Example:
		for _,row in ipairs(scrolltable.rows) do
			row:SetScript("OnClick",function()
				Appraiser:InventoryClick(row)
			end)
		end


--]]

function ScrollTable:New(parent,name,COLUMNS,DATA,useparent)
	-- Fill in defaults
	for i,v in pairs(DEFAULT_DATA) do if not DATA[i] then DATA[i]=v end end 
	if not DATA.ROW_HEIGHT then DATA.ROW_HEIGHT = (DATA.LIST_HEIGHT-DATA.ROW_HEADER)/DATA.ROW_COUNT end
	if not DATA.ROW_WIDTH then DATA.ROW_WIDTH = DATA.LIST_WIDTH-DATA.ROW_PADDING end

	local frame, offset_from_parent
	
	if useparent then
		frame = parent
		offset_from_parent = true
	else
		frame = CHAIN(ui:Create("Frame",parent,name))
			:SetPoint("TOPLEFT",DATA.POSX,DATA.POSY)
			:SetSize(DATA.LIST_WIDTH,DATA.LIST_HEIGHT)
			:SetFrameLevel(parent:GetFrameLevel()+1)
			:SetBackdropColor(unpack(DATA.BACKGROUND))
			:SetBackdropBorderColor(unpack(DATA.BORDER))
		.__END
		offset_from_parent = false
	end

	frame.savedSetSize   = frame.SetSize
	frame.savedSetWidth  = frame.SetWidth
	frame.savedSetHeight = frame.SetHeight
	frame.DATA	     = DATA

	frame.scrollbar = CHAIN(ui:Create("ScrollItems",frame,name and (name.."Scroll")))
		:SetPoint("TOPLEFT",frame,"TOPRIGHT",-SCROLL_WIDTH-1+(offset_from_parent and DATA.POSX or 0),-DATA.ROW_HEADER+1+(offset_from_parent and DATA.POSY or 0))
		:SetPoint("BOTTOMRIGHT",frame,"BOTTOMRIGHT",-SCROLL_WIDTH-1,1)
		:MaxValueAtOnce(DATA.ROW_COUNT)
		:SetHideWhenUseless(DATA.HIDESCROLLBAR)
	.__END
	
	
	local prev = nil
	for k,col in ipairs(COLUMNS) do
		local widget
		local local_offset_x, local_offset_y = 0, 0
		if col.type=="button" or col.type=="headerbutton" or col.sortable then 
			widget = CHAIN(ui:Create("Button",parent))
				:SetSize(col.iconwidth or col.width,col.iconheight or DATA.ROW_HEADER)
				:SetFont(DATA.FONTBOLD,DATA.HEADER_FONTSIZE)
				:SetText(col.title..(col.sortable and col.titlej=="RIGHT" and ARROW_SPACE or ""))
				:RegisterForClicks("AnyUp")
				:SetBackdropColor(0,0,0,0)
				:SetBackdropBorderColor(0,0,0,0)
				:SetNormalBackdropColor(0,0,0,0)
				:SetHighlightBackdropColor(0,0,0,0)
			.__END
			local fs = widget:GetFontString()
			fs:SetWidth(col.iconwidth or col.width)
			fs:SetJustifyH(col.titlej or col.textj or "LEFT")
			if col.sortable then
				widget:SetScript("OnClick", function(self,button) 
					col.sortfunction(self,col.name)
					widget:GetScript("OnEnter")(widget)  -- update sorting tooltips, if needed.
					end)
				widget.texture = CHAIN(widget:CreateTexture("icon_"..col.name,"ARTWORK")) 
					:SetPoint("TOPRIGHT",widget,"TOPRIGHT",0,0)
					:SetPoint("BOTTOMLEFT",widget,"BOTTOMRIGHT",-20,0)
					:SetSize(20,20)
				.__END	
			end		
		elseif col.type=="toggle" then
			widget = CHAIN(ui:Create("ToggleButton",parent))
				:SetFont(DATA.FONT,DATA.HEADER_FONTSIZE)
				:SetText(col.title)
			.__END
			local_offset_x = 1
		else
			widget = CHAIN(frame:CreateFontString())
				:SetSize(col.headerwidth or col.width,DATA.ROW_HEADER)
				:SetJustifyV("CENTER")
				:SetJustifyH(col.titlej or "LEFT")
				:SetFont(DATA.FONTBOLD,DATA.HEADER_FONTSIZE)
				:SetText(col.title)
				.__END
		end

		if not prev 
			then widget:SetPoint("TOPLEFT",frame,"TOPLEFT",(col.titlepadding or col.padding or DATA.ROW_PADDING)+(offset_from_parent and DATA.POSX or DATA.HEADERX)+local_offset_x,0+(offset_from_parent and DATA.POSY or DATA.HEADERY)+local_offset_y)
		else
			widget:SetPoint("LEFT",prev,"RIGHT",(col.titlepadding or col.padding or DATA.ROW_PADDING),0)
		end
		frame["col_"..col.name] = widget
		prev=widget
	end

	-- Middle
	frame.rows={}
	for n=1,DATA.ROW_COUNT do
		frame.rows[n] = CHAIN(ui:Create("Button",frame,name and (name.."_ROW"..n)))
			:SetSize(DATA.ROW_WIDTH,DATA.ROW_HEIGHT)
			:SetPoint("RIGHT",frame.scrollbar.barframe,"LEFT")
			:SetFrameStrata(DATA.STRATA)
			:SetFrameLevel(frame:GetFrameLevel()+2)
			:SetNormalBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)
			:RegisterForClicks("AnyUp")
		.__END

		if n==1 then
			frame.rows[n]:SetPoint("TOPLEFT",frame,"TOPLEFT",1,-DATA.ROW_HEADER+1)
		else
			frame.rows[n]:SetPoint("TOPLEFT",frame.rows[n-1],"BOTTOMLEFT",0,0)
		end

		local row = frame.rows[n]

		row.num = n
		
		local prev = nil
		local hasicon = false
		for k,col in ipairs(COLUMNS) do
			local widget
			if col.type=="icon" then 
				widget = CHAIN(row:CreateTexture())
					:SetPoint("CENTER",row,"LEFT",col.width/2+DATA.ROW_PADDING,0) 
					:SetSize(DATA.ROW_ICONSIZE,DATA.ROW_ICONSIZE)
				.__END
			elseif col.type=="button" then 
				widget = CHAIN(ui:Create("Button",row))
					:SetSize(col.iconwidth or col.width,col.iconheight or DATA.ROW_FONTSIZE)
					:SetFont(col.font,col.fontsize or DATA.ROW_FONTSIZE)
					:SetText(col.title)
					:RegisterForClicks("AnyUp")
					:SetFrameLevel(row:GetFrameLevel()+3)
					:SetBackdropColor(0,0,0,0)
					:SetBackdropBorderColor(0,0,0,0)
					:SetNormalBackdropColor(0,0,0,0)
					:SetHighlightBackdropColor(0,0,0,0)
				.__END
				widget:GetFontString():SetSize(col.width,DATA.ROW_FONTSIZE)
				widget:GetFontString():SetJustifyV("TOP")
				widget:GetFontString():SetJustifyH(col.textj or "LEFT")
			elseif col.type=="toggle" then
				widget = CHAIN(ui:Create("ToggleButton",row))
					:SetSize(col.width,col.width)
					:SetFont(DATA.FONT,DATA.HEADER_FONTSIZE)
					:SetFrameLevel(row:GetFrameLevel()+1)
					:SetText(col.title)
				.__END
			else
				widget = CHAIN(row:CreateFontString())
				:SetSize(col.width,DATA.ROW_FONTSIZE)
				:SetJustifyV("TOP")
				:SetJustifyH(col.textj or "LEFT")
				:SetFont(col.font or DATA.FONT,DATA.ROW_FONTSIZE)
				:SetText(col.title)
				.__END
			end
			if col.onentertooltip then
				if not col.type or col.type=="icon" then
					widget.tooltipoverlay = CHAIN(ui:Create("Button",row,name and (name.."Row"..n.."Icon")))
						:SetPoint("TOPLEFT",widget) 
						:SetSize(col.width,DATA.ROW_FONTSIZE)
						:SetFrameLevel(row:GetFrameLevel()+1)
						:SetBackdropColor(0,0,0,0)
						:SetBackdropBorderColor(0,0,0,0)
						:SetScript("OnEnter",function()
							GameTooltip:SetOwner(widget.tooltipoverlay,col.tooltipanchor or "ANCHOR_RIGHT")
							col.onentertooltip(row)
							GameTooltip:Show()
						end)
						:SetScript("OnLeave",function()
							if BattlePetTooltip then BattlePetTooltip:Hide() end
							GameTooltip:Hide()
							if WorldMapTooltip then WorldMapTooltip:Hide() end
						end)
						:SetScript("OnClick",function()
							row:GetScript("OnClick")()
						end)
					.__END
				else
					widget:SetScript("OnEnter",function()
						GameTooltip:SetOwner(widget,col.tooltipanchor or "ANCHOR_RIGHT")
						col.onentertooltip(row)
						GameTooltip:Show()
					end)
					widget:SetScript("OnLeave",function()
						if BattlePetTooltip then BattlePetTooltip:Hide() end
						GameTooltip:Hide()
						if WorldMapTooltip then WorldMapTooltip:Hide() end
					end)
				end
			end
			if col.texture or col.textureskinname then
				if type(col.texture)=="function" then col.texture = col.texture() end
				if type(col.textureoffset)=="function" then col.textureoffset = col.textureoffset() end
				if type(col.texturecolor)=="function" then col.texturecolor = col.texturecolor() end

				if col.type=="button" then
					widget:SetNormalTexture(col.texture)
					if col.textureoffset then widget:GetNormalTexture():SetTexCoord(unpack(col.textureoffset)) end
					if col.texturecolor then widget:GetNormalTexture():SetVertexColor(unpack(col.texturecolor)) end
					if col.highlighttextureoffset or col.highlighttexture then widget:SetHighlightTexture(col.highlighttexture or col.texture)  if col.highlighttextureoffset then widget:GetHighlightTexture():SetTexCoord(unpack(col.highlighttextureoffset)) end  end
					if col.tooltip then widget:SetTooltip(col.tooltip) end
				elseif col.type=="icon" then
					widget:SetTexture(col.texture)
					if col.textureoffset then widget:SetTexCoord(unpack(col.textureoffset)) end
					if col.texturecolor then widget:SetVertexColor(unpack(col.texturecolor)) end
				end
			end
			if col.iconset and col.iconkey then
				if col.type=="button" then
					ZGV.ButtonSets[col.iconset][col.iconkey]:AssignToButton(widget)
				elseif col.type=="icon" then
					ZGV.IconSets[col.iconset][col.iconkey]:AssignToTexture(widget)
				end
			end

			if prev then 
				widget:SetPoint("LEFT",prev,"RIGHT",(col.padding or DATA.ROW_PADDING),0) 
			else
				widget:SetPoint("LEFT",row,"LEFT",(col.padding or DATA.ROW_PADDING),0) 
			end
			row[col.name] = widget
			prev=widget
		end

		row.hilite = CHAIN(row:CreateTexture(name and row:GetName().."Hilite","HIGHLIGHT")) :SetAllPoints() :SetColorTexture(1,1,1,DATA.ROWHIGHLIGHT and 0.15 or 0) .__END
		row.back = CHAIN(row:CreateTexture(name and row:GetName().."Back","ARTWORK")) :SetAllPoints() :SetColorTexture(1,1,1,DATA.ROWBACKGROUND and 1 or 0) .__END

		row:Hide()
	end

	for f,fun in pairs(self) do
		frame[f]=fun
	end

	return frame
end

function ScrollTable:SetSize(width,height)
	self:savedSetSize(width,height)
	self.DATA.LIST_WIDTH = width
	self.DATA.LIST_HEIGHT = height
	self:ResizeRows()
end

function ScrollTable:SetWidth(width)
	self:savedSetWidth(width)
	self.DATA.LIST_WIDTH = width
	self:ResizeRows()
end

function ScrollTable:SetHeight(height)
	self:savedSetHeight(height)
	self.DATA.LIST_HEIGHT = height
	self:ResizeRows()
end

function ScrollTable:ResizeRows()
	-- if columns are wider than row, they will still be visible
	local DATA = self.DATA
	DATA.ROW_WIDTH = DATA.LIST_WIDTH-SCROLL_WIDTH-DATA.ROW_PADDING
	DATA.ROW_HEIGHT = (DATA.LIST_HEIGHT-DATA.ROW_HEADER)/DATA.ROW_COUNT
	for n=1,DATA.ROW_COUNT do
		self.rows[n]:SetSize(DATA.ROW_WIDTH,DATA.ROW_HEIGHT)
	end
	self.rows[1]:SetPoint("TOPLEFT",self,"TOPLEFT",1,-DATA.ROW_HEADER+1)
end

function ScrollTable:SetColumnWidth(column,width)
	self["col_"..column]:SetWidth(width)
	for n=1,self.DATA.ROW_COUNT do
		self.rows[n][column]:SetWidth(width)
	end
end

function ScrollTable:CountRows()
	return self.DATA.ROW_COUNT
end

function ScrollTable:TotalValue(count)
	self.scrollbar:TotalValue(count)
	if count<=self.DATA.ROW_COUNT then
		for _,row in pairs(self.rows) do
			row:SetPoint("RIGHT",self)
		end
	else
		for _,row in pairs(self.rows) do
			row:SetPoint("RIGHT",self.scrollbar.barframe,"LEFT")
		end
	end
end

function ScrollTable:SetValue(count)
	self.scrollbar:SetValue(count)
end
