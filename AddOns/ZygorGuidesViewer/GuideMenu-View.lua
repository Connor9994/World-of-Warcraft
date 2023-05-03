local name,ZGV = ...

-- GLOBAL ZygorGuidesViewer,ZGW
-- GLOBAL ZGV_Override_BD,ZGV_Override_BG

local GuideMenu = ZGV.GuideMenu

local L = ZGV.L
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall
local ui = ZGV.UI
local SkinData = ui.SkinData

local MAINFRAME_WIDTH=825
local MAINFRAME_HEIGHT=630
local MAINFRAME_HEADER_HEIGHT=40
local MAINFRAME_FOOTER_HEIGHT=24

local HEADER_FONT_SIZE = 16

local FEATURED_COLUMN_WIDTH = 263

GuideMenu.BUTTONS_NORMAL_COLOR = {0.7,0.7,0.7,1}
GuideMenu.BUTTONS_HIGHLIGHT_COLOR = {1,1,1,1}
GuideMenu.BUTTONS_HIGHLIGHT_BG = {0.27,0.27,0.27,1}

local ICON_SIZE=15

local SCROLLTABLE_DATA = {
	ROW_COUNT = 20,
	LIST_WIDTH = 383,
	LIST_HEIGHT = 504,
	POSX = 1,
	POSY = -34,
	STRATA = "DIALOG",
	BORDER = {0,0,0,0},
	BACKGROUND = {0,0,0,0},
	ROWBACKGROUND = false,
	ROW_HEADER = 1,
	HIDESCROLLBAR = true
}
local SCROLLTABLE_COLUMNS = {
	{ title="", width=ICON_SIZE, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon",
		texture=function() return ZGV.IconSets.GuideIconsSmall.file end,
		textureoffset=function() return ZGV.IconSets.GuideIconsSmall['FOLDER'].texcoord end,
		texturecolor={1,1,1,1},
	},
	{ title="", width=300, titlej="LEFT", textj="LEFT", name="title", padding=5 },
	{ title="", width=14, titlej="RIGHT", textj="RIGHT", name="favourite", type="button", iconheight=20, iconwidth=20,padding=0,
		texture=function() return ZGV.IconSets.GuideIconsSmall.file end,
		textureoffset=function() return ZGV.IconSets.GuideIconsSmall['STAR'].texcoord end,
		tooltip=L['guidemenu_guidetooltips_favourite'],
	},
	{ title="", width=14, titlej="RIGHT", textj="RIGHT", name="loadbutton", type="button", iconheight=14, iconwidth=14,padding=0,
		texture=function() return ZGV.ButtonSets.TitleButtons.file end,
		textureoffset=function() return ZGV.ButtonSets.TitleButtons['LOADGUIDE'].texcoords[1] end,
		tooltip=L['guidemenu_guidetooltips_loadguide'],
	}
}

GuideMenu.Sections = {
	All={		MenuColumn=true,MenuGuides=true,CenterColumn=true,RightColumn=true,MenuOptions=true,WideColumn=true,WideColumnHome=true,WideColumnOptions=true,FullColumn=true},
	Home={		MenuColumn=true,MenuGuides=true,                                                    WideColumn=true,WideColumnHome=true },
	Featured={	                                                                                                                                               FullColumn=true},		                                   
	Favourites={	MenuColumn=true,MenuGuides=true,CenterColumn=true,RightColumn=true},
	Recent={	MenuColumn=true,MenuGuides=true,CenterColumn=true,RightColumn=true},
	Suggested={	MenuColumn=true,MenuGuides=true,CenterColumn=true,RightColumn=true},
	Search={	MenuColumn=true,MenuGuides=true,CenterColumn=true,RightColumn=true},
	Options={	MenuColumn=true,                                                   MenuOptions=true,WideColumn=true,			WideColumnOptions=true},
	Default={	MenuColumn=true,MenuGuides=true,CenterColumn=true,RightColumn=true},
}
setmetatable(GuideMenu.Sections,{__index=function(self,name) return GuideMenu.Sections.Default end})

local RightColumnSubmenus = {
	General = {
		{"gmcolorcode","toggle"},
		{"gmusecheck","toggle"},
		{"gmhidecompleted","toggle"},
		{"gmstarsuggested","toggle"}
	},
	Suggested = {
		{'gmsuggesttypes',"description"},
		{'gmsuggestleveling',"toggle"},
		{'gmsuggestdungeons',"toggle"},
		{'gmsuggestdailies',"toggle"},
		{'gmsuggestevents',"toggle"},
		{'gmsuggestprofessions',"toggle"},
		{'gmsuggestpets',"toggle"},
		{'gmsuggestreputations',"toggle"},
		{'gmsuggesttitles',"toggle"},
		{'gmsuggestachievements',"toggle"},
		callback=function() GuideMenu:ShowSuggested() GuideMenu:Update() end
	},
	Recent = {
		{"gmnumrecent","select",{5,10,30}},
		callback=function() GuideMenu:ShowRecent() GuideMenu:Update() end
	},
}

for cat,catdata in pairs(RightColumnSubmenus) do
	for _,fielddata in ipairs(catdata) do
		if fielddata[2]=="toggle" then
			local name = fielddata[1]
			fielddata.text = L['opt_'..name]
			fielddata.checked=function() return ZGV.db.profile[name] end
			fielddata.func=function() ZGV.db.profile[name] = not ZGV.db.profile[name] if catdata.callback then catdata.callback() end end
			fielddata.isNotRadio=1
			fielddata.keepShownOnClick=1
		end
		if fielddata[2]=="description" then
			local name = fielddata[1]
			fielddata.text = L['opt_'..name]
			fielddata.notCheckable=1
			fielddata.keepShownOnClick=1
		end
		if fielddata[2]=="select" then
			local name = fielddata[1]
			fielddata.text = L['opt_'..name]
			fielddata.notCheckable=1
			fielddata.keepShownOnClick=1
			for _,value in ipairs(fielddata[3]) do
				table.insert(catdata,{
					text=value, 
					checked=function() return ZGV.db.profile[name]==value end,
					func=function() ZGV.db.profile[name]=value UIDropDownFork_Refresh(ZGV.Frame.Controls.MenuHostGuides) end,
					isNotRadio=1,
					keepShownOnClick=1,
				})
			end
			fielddata.menuList=menuList
		end
	end
end

local faction=UnitFactionGroup("player"):sub(1,1)

function GuideMenu:Open(path,iscurrent,...)
	if path=="Search" and #GuideMenu.MainFrame.MenuGuides.SearchEdit:GetText() <3  then
		path=GuideMenu.PreviousSection
	end

	local target=GuideMenu.Sections[path]
	local MainFrame=GuideMenu.MainFrame

	if path~="Search" and path~="QuestSearch" then
		GuideMenu.PreviousSection=path
	end
	GuideMenu.CurrentSection=path

	if iscurrent then 
		ZGV.db.profile.gmlastsection="Current"
	elseif path~="Options" and path~="Search" and path~="QuestSearch" then 
		ZGV.db.profile.gmlastsection=path
	end

	-- Clear focus when switching tabs
	GuideMenu.FocusedGuide=nil
	GuideMenu:HideRowMouseOver()

	-- Handle special cases, where we do something else than just showing the guides
	if path:sub(1,4)=="GOLD" then
		ZGV.Goldguide:Initialise()
		if not iscurrent then
			GuideMenu:Hide()
		end
		return
	end

	-- Show and hide proper frames
	for i,v in pairs(GuideMenu.Sections.All) do
		if target[i] then
			MainFrame[i]:Show()
		else
			MainFrame[i]:Hide()
		end
	end

	-- Close all open menus
	CloseDropDownForks()

	-- Highlight proper element in top menu
	for key,v in pairs(MainFrame.Header.Tabs) do
		if path==key or (iscurrent and key=="Current") then
			v:SetFont(FONTBOLD,HEADER_FONT_SIZE)
			v:SetTextColor(1,1,1,1)
			v.LeftDecor:Show()
			v:SetLockHighlight(true)  
		else
			v:SetFont(FONT,HEADER_FONT_SIZE)
			v:SetTextColor(0.7,0.7,0.7,1)
			v.LeftDecor:Hide()
			v:SetLockHighlight(false)  
		end
	end

	GuideMenu.CurrentPath=path

	-- Prepare the data
	if path=="Recent" then
		GuideMenu:ShowRecent()
	elseif path=="Suggested" or path=="SUGGESTED" then
		GuideMenu:ShowSuggested()
	elseif path=="Current" then
		GuideMenu:ShowCurrent()
	elseif path=="Home" then
		GuideMenu:ShowHome()
	elseif path=="Featured" then
		GuideMenu:ShowFeatured()
	elseif path=="Options" then
		GuideMenu:ShowOptions(...)
	elseif path=="Search" then
		GuideMenu:Search()
	elseif path=="QuestSearch" then
		GuideMenu:SearchQuest(...)
	elseif path=="Favourites" then
		GuideMenu:ShowFavourites()
	else
		GuideMenu:ShowGuides(path,iscurrent)
	end

	ZGV.Widgets:HideAllPopups()
	GuideMenu:Update()
end

function GuideMenu:SetSectionHeader(text,arrow)
	local section = GuideMenu.MainFrame.CenterColumn.SectionInfo
	section.Name:SetText(text)
	if arrow then
		section.Texture:SetWidth(12)
		section.Texture:SetTexture(SkinData("TitleButtons"))
		section.Name:SetPoint("TOPLEFT",section.Texture,"TOPRIGHT",5,0)
	else
		section.Texture:SetWidth(1)
		section.Texture:SetTexture(nil)
		section.Name:SetPoint("TOPLEFT",section.Texture,"TOPRIGHT",-1,0)
		section:SetScript("OnClick", nil)
	end
end

function GuideMenu:SetWideSectionHeader(text)
	GuideMenu.MainFrame.WideColumn.Name:Show()
	GuideMenu.MainFrame.WideColumn.Decor:Show()
	GuideMenu.MainFrame.WideColumn.Name:SetText(text)
end

local function UpdateHandler(self, event)
	if not GuideMenu.MainFrame then return end
	if not GuideMenu.MainFrame:IsVisible() then return end

	if GuideMenu.MainFrame.WideColumnHome:IsMouseOver() then
		ZGV.Widgets:HoverBarShow()
	else
		ZGV.Widgets:HoverBarHide()
	end

	if not GuideMenu.needToUpdate then return end
	GuideMenu.needToUpdate=false
	GuideMenu:Update()
end

function GuideMenu:ApplySkin()
	local MF = GuideMenu.MainFrame
	if not MF then return end

	local TINYMARGIN = SkinData("GuideMenuTinyMargin")
	local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
	local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacitymenu or  1

	CHAIN(MF)
		:SetBackdrop(SkinData("GuideMenuBackdrop"))
		:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("GuideMenuBackdropColor"))))
		:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("GuideMenuBackdropBorderColor"))))
		:SetWidth(MAINFRAME_WIDTH+SkinData("GuideMenuMargin")*2)

	CHAIN(MF.Header)
		:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("GuideMenuHeaderFooterBackground"))))
		:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("GuideMenuHeaderFooterBorder"))))
		:SetPoint("TOPLEFT",TINYMARGIN,-TINYMARGIN)
		:SetPoint("TOPRIGHT",-TINYMARGIN,TINYMARGIN)

	for i,v in pairs(MF.Header.Tabs) do
		v:SetBackdropColor(0,0,0,0)
		v:SetBackdropBorderColor(0,0,0,0)
		v:SetNormalBackdropColor(0,0,0,0)
		v:SetHighlightBackdropColor(0,0,0,0)
	end
	
	CHAIN(MF.CenterColumn)
		:SetPoint("TOPLEFT",MF.MenuColumn,"TOPRIGHT",-TINYMARGIN,0)
		:SetPoint("BOTTOMLEFT",MF.MenuColumn,"BOTTOMRIGHT",-TINYMARGIN,0)
		:SetWidth(386-(2*TINYMARGIN))
		:SetBackdropColor(unpack(SkinData("GuideMenuContentBackground")))
		:SetBackdropBorderColor(unpack(SkinData("GuideMenuSectionBorder")))

	CHAIN(MF.WideColumn)
		:SetPoint("TOPLEFT",MF.MenuColumn,"TOPRIGHT",-TINYMARGIN,0)
		:SetPoint("BOTTOMLEFT",MF.MenuColumn,"BOTTOMRIGHT",-TINYMARGIN,0)
		--:SetWidth(603-(2*TINYMARGIN))
		:SetWidth(603)
		:SetBackdrop(SkinData("GuideMenuContentBackdrop"))
		:SetBackdropColor(unpack(SkinData("GuideMenuContentBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("GuideMenuContentBackdropBorderColor")))
		:SquareCorners(true,true,true,false)

	CHAIN(MF.MenuColumn)
		:SetPoint("TOPLEFT",MF.Header,"BOTTOMLEFT",SkinData("GuideMenuMargin"),0)
		:SetBackdrop(SkinData("GuideMenuMenuBackground"))
		:SetBackdropColor(unpack(SkinData("GuideMenuMenuBackgroundColor")))
		:SetBackdropBorderColor(unpack(SkinData("GuideMenuMenuBackdropBorderColor")))
		:SquareCorners(true,true,false,true)

	CHAIN(MF.RightColumn)
		:SetPoint("TOPRIGHT",MF.Header,"BOTTOMRIGHT",-SkinData("GuideMenuMargin"),0)
		:SetPoint("BOTTOMRIGHT",MF,"BOTTOMRIGHT",-SkinData("GuideMenuMargin"),0)
		:SetBackdrop(SkinData("GuideMenuDetailsBackdrop"))
		:SetBackdropColor(unpack(SkinData("GuideMenuDetailsBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("GuideMenuDetailsBackdropBorderColor")))
		:SquareCorners(true,true,true,false)

	CHAIN(MF.RightColumn.GuideMascot)
		:SetPoint("BOTTOM",0,TINYMARGIN) 
		:SetPoint("LEFT",TINYMARGIN,0) 
		:SetPoint("RIGHT",-TINYMARGIN,0) 

	CHAIN(MF.RightColumn.GuideImage)
		:SetPoint("TOP",0,-TINYMARGIN) 
		:SetPoint("LEFT",TINYMARGIN,0) 
		:SetPoint("RIGHT",-TINYMARGIN,0) 
	
	MF.MenuGuides.SearchEdit:SetTextColor(unpack(SkinData("SearchEditTextColor")))
	MF.MenuGuides.SearchEdit.SearchGlass:SetVertexColor(unpack(SkinData("SearchEditTextColor")))

	CHAIN(MF.MenuGuides.SearchEdit.back)
		:SetBackdrop(SkinData("SearchBackdrop"))
		:SetBackdropColor(unpack(SkinData("SearchEditBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("SearchEditBorderColor")))
		:SetPoint("LEFT",MF.MenuGuides.SearchEdit,"LEFT",-6,1)

	CHAIN(MF.FullColumn)
		:SetBackdrop(SkinData("GuideMenuContentBackdrop"))
		:SetBackdropColor(unpack(SkinData("GuideMenuMenuBackgroundColor")))
		:SetBackdropBorderColor(unpack(SkinData("GuideMenuMenuBackdropBorderColor")))
		:SquareCorners(true,true,false,false)

	CHAIN(MF.FullColumnFeatured.Dropdown.frame)
		:SetBackdrop(SkinData("DropDownBackdrop1"))
		:SetBackdropColor(ZGV.F.HTMLColor("#0d0d0dff"))
		:SetBackdropBorderColor(ZGV.F.HTMLColor("#0d0d0dff"))

	CHAIN(MF.RightColumn.GuideProgress)
		:SetTexture(SkinData("ProgressBarTextureFile"))
		:SetDecor(SkinData("ProgressBarDecorUse"))
	MF.RightColumn.GuideProgress.Texture:SetVertexColor(unpack(SkinData("ProgressBarTextureColor")))

	CHAIN(GuideMenu.MissingPopup)
		:SetBackdrop(ZGV.UI.SkinData("GuideMenuBackdrop"))
		:SetBackdropColor(0.1,0.1,0.1,0.7)
		:SetBackdropBorderColor(0.1,0.1,0.1,0.7)

	CHAIN(GuideMenu.MissingPopup.Frame)
		:SetBackdropColor(0,0,0,1)
		:SetBackdropBorderColor(0,0,0,1)

end

function GuideMenu:CreateFrames()
	-- Main Container
	local MF = CHAIN(ui:Create("Frame", UIParent, "ZygorGuidesViewer_GuideMenu"))
		:SetSize(MAINFRAME_WIDTH,MAINFRAME_HEIGHT)
		:SetPoint("CENTER",UIParent)
		:SetFrameStrata("DIALOG")
		:CanDrag(true)
		:SetScript("OnUpdate",UpdateHandler)
		:SetScript("OnHide",function() 
			GuideMenu.UseTab=nil  -- reset tab behaviour to 'add new tab'
			ZGV.Widgets:DisableConfig()
		end)
		:Hide()
	.__END
	GuideMenu.MainFrame= MF
	tinsert(UISpecialFrames, "ZygorGuidesViewer_GuideMenu") -- allows the frame to be closable with ESC keypress

	-- Top menu
	MF.Header = CHAIN(ui:Create("Frame", MF))
		:SetPoint("TOPLEFT")
		:SetPoint("TOPRIGHT")
		:SetHeight(MAINFRAME_HEADER_HEIGHT)
		:SetBackdropBorderColor(0,0,0,0)
		.__END

		MF.Header.CloseButton = CHAIN(CreateFrame("Button", nil, MF.Header, nil))
			:SetPoint("TOPRIGHT",MF.Header,"TOPRIGHT",-5,-5) 
			:SetSize(15,15)
			:SetScript("OnClick",function() GuideMenu:Hide() end)
		.__END
		ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(MF.Header.CloseButton)

		MF.Header.Tabs={}
		local Home = CHAIN(ui:Create("Button",MF.Header))
			:SetSize(70,24)
			:SetPoint("TOPLEFT",MF.Header,"TOPLEFT", 3, -8)
			:SetFont(FONT,HEADER_FONT_SIZE)
			:SetText("Home")
			:SetScript("OnClick", function() GuideMenu:Open("Home") end)
		.__END
		MF.Header.Tabs.Home=Home

		local Featured = CHAIN(ui:Create("Button",MF.Header))
			:SetSize(70,24)
			:SetPoint("LEFT",Home,"RIGHT", 30, 0)
			:SetFont(FONT,HEADER_FONT_SIZE)
			:SetText("Featured")
			:SetScript("OnClick", function() GuideMenu:Open("Featured") end)
		.__END
		MF.Header.Tabs.Featured=Featured
		
		local Current = CHAIN(ui:Create("Button",MF.Header))
			:SetSize(80,24)
			:SetPoint("LEFT",Featured,"RIGHT", 30, 0)
			:SetFont(FONT,HEADER_FONT_SIZE)
			:SetText("Current")
			:SetScript("OnClick", function() GuideMenu:Open("Current") end)
		.__END
		MF.Header.Tabs.Current=Current

		local Recent = CHAIN(ui:Create("Button",MF.Header))
			:SetSize(80,24)
			:SetPoint("LEFT",Current,"RIGHT", 30, 0)
			:SetFont(FONT,HEADER_FONT_SIZE)
			:SetText("Recent")
			:SetScript("OnClick", function() GuideMenu:Open("Recent") end)
		.__END
		MF.Header.Tabs.Recent=Recent

		--[[
		local Suggested = CHAIN(ui:Create("Button",MF.Header))
			:SetSize(90,24)
			:SetPoint("LEFT",Recent,"RIGHT", 30, 0)
			:SetFont(FONT,HEADER_FONT_SIZE)
			:SetText("Suggested")
			:SetScript("OnClick", function() GuideMenu:Open("Suggested") end)
		.__END
		MF.Header.Tabs.Suggested=Suggested
		--]]
		local Options = CHAIN(ui:Create("Button",MF.Header))
			:SetSize(80,24)
			--:SetPoint("LEFT",Suggested,"RIGHT", 30, 0)
			:SetPoint("LEFT",Current,"RIGHT", 30, 0)
			:SetFont(FONT,HEADER_FONT_SIZE)
			:SetText("Options")
			:SetScript("OnClick", function() GuideMenu:Open("Options") end)
		.__END
 		MF.Header.Tabs.Options=Options

		local function HeaderButton_SetHighlight(button,tf,force)
			if not force and button.isHighlightLocked then return end
			button:SetTextColor(unpack(tf and button.HighlightTextColor or button.NormalTextColor))
		end

		local function HeaderButton_SetNormalTextColor(button,r,g,b,a)
			button.NormalTextColor={r,g,b,a}
			button:SetTextColor(r,g,b,a)
		end

		local function HeaderButton_SetHighlightTextColor(button,r,g,b,a)
			button.HighlightTextColor={r,g,b,a}
		end

		local function HeaderButton_SetLockHighlight(button,tf)
			button:SetHighlight(tf,true)
			button.isHighlightLocked = tf
		end

		for i,button in pairs(MF.Header.Tabs) do
			button.SetHighlight = HeaderButton_SetHighlight
			button.SetNormalTextColor = HeaderButton_SetNormalTextColor
			button.SetHighlightTextColor = HeaderButton_SetHighlightTextColor
			button.SetLockHighlight = HeaderButton_SetLockHighlight
			CHAIN(button)
				:SetNormalTextColor(unpack(GuideMenu.BUTTONS_NORMAL_COLOR))
				:SetHighlightTextColor(unpack(GuideMenu.BUTTONS_HIGHLIGHT_COLOR))
				:SetScript("OnEnter",function(button) button:SetHighlight(true) end)
				:SetScript("OnLeave",function(button) button:SetHighlight(false) end)
			
			button.LeftDecor = CHAIN(button:CreateTexture(nil,"ARTWORK")) 
				:SetHeight(2) 
				:SetWidth(button:GetStringWidth()+6)
				:SetPoint("TOP",button,"BOTTOM",0,0) 
				:SetColorTexture(unpack(SkinData("GuideMenuGuideButtonDecorColor")))
				--:Hide()
			.__END

		end

		if not ZGV.db.profile.gmshowoptions then Options:Hide() end

	--[[
	MF.Footer = CHAIN(ui:Create("Frame",MF))
		:SetPoint("TOPLEFT",MF,"BOTTOMLEFT",0,MAINFRAME_FOOTER_HEIGHT)
		:SetPoint("TOPRIGHT",MF,"BOTTOMRIGHT",0,MAINFRAME_FOOTER_HEIGHT)
		:SetHeight(MAINFRAME_FOOTER_HEIGHT)
		:SetFrameLevel(MF:GetFrameLevel()+1)
		:SetToplevel(true)
		.__END
		MF.FooterVersion = CHAIN(MF.Footer:CreateFontString())
			:SetFont(FONTBOLD,12)
			:SetText("VER:")
		.__END

		MF.FooterVersionVal = CHAIN(MF.Footer:CreateFontString())
			:SetPoint("LEFT",MF.FooterVersion ,"RIGHT",5,0)
			:SetFont(FONT,12)
			:SetText(ZGV.version)
		.__END
		
		--MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF.Footer))
		--	:SetSize(15,15)
		--	:SetScript("OnClick",function() GuideMenu:Open("Options") end)
		--.__END
		--ZGV.F.AssignButtonTexture(MF.FooterSettingsButton,(SkinData("TitleButtons")),5,32)
	--]]

	MF.MenuColumn = CHAIN(ui:Create("Frame", MF))
		:SetPoint("TOPLEFT",MF.Header,"BOTTOMLEFT")
		:SetPoint("BOTTOMLEFT",MF)
		:SetWidth(222)
		.__END

		MF.MenuGuides = CHAIN(CreateFrame("Frame", nil, MF.MenuColumn))
			:SetPoint("TOPLEFT")
			:SetPoint("BOTTOMRIGHT")
			.__END
			local function set_empty(self)
				if self:GetText():lower()=="" then self:SetText("Search") end 
				self:SetTextColor(unpack(SkinData("SearchEditTextColor")))
			end
			local function set_not_empty(self)
				if self:GetText():lower()=="search" then self:SetText("") end 
				self:SetTextColor(unpack(SkinData("SearchEditTextColorActive")))
			end

			MF.MenuGuides.SearchEdit = CHAIN(ui:Create("EditBox",MF.MenuGuides))
				:SetPoint("TOPLEFT",MF.MenuGuides,"TOPLEFT",16,-10)
				:SetSize(190,18)
				:SetFont(ZGV.Font,15,"")
				:SetScript("OnEnterPressed",function() MF.MenuGuides.SearchEdit:ClearFocus() GuideMenu:Open("Search") end)
				:HookScript("OnEscapePressed",function(self) set_empty(self) GuideMenu:Open("Home") end)
				:SetScript("OnTextChanged",function(edit,user) if user then GuideMenu:Open("Search") end end)
				:SetScript("OnEditFocusGained",function(self) set_not_empty(self) end)
				:SetScript("OnEditFocusLost",function(self) set_empty(self) end)
				:SetText("Search")
			.__END

			MF.MenuGuides.SearchEdit.SearchGlass = CHAIN(MF.MenuGuides.SearchEdit:CreateTexture())
				:SetPoint("RIGHT",MF.MenuGuides.SearchEdit.back,-6,0):SetSize(12,12)
				:SetTexture(ZGV.DIR.."\\Skins\\search")
			.__END
			
			GuideMenu:PrepareGuidesMenuButtons()

			MF.MenuGuides.Options = GuideMenu:MakeMenuButton("ButtonOptions","Options",SkinData("TitleButtons"),5,64,1,4)
			MF.MenuGuides.Options:SetPoint("BOTTOMLEFT",MF.MenuGuides,"BOTTOMLEFT",0,10)
			MF.MenuGuides.Options:SetScript("OnClick", function() GuideMenu:Open("Options") end)

			MF.MenuGuides.OptionsDecor = CHAIN(MF.MenuGuides:CreateTexture())
				:SetTexture(ZGV.DIR.."\\Skins\\white")
				:SetPoint("BOTTOMLEFT",MF.MenuGuides.Options,"TOPLEFT",0,10)
				:SetSize(222,1)
				:SetVertexColor(0.3,0.3,0.3,1)
			.__END
			--if not ZGV.db.profile.gmshowoptionsleft then MF.MenuGuides.Options:Hide() MF.MenuGuides.OptionsDecor:Hide() end

		MF.MenuOptions = CHAIN(CreateFrame("Frame", "ZGV_Menu_OptionsList", MF.MenuColumn))
			:SetPoint("TOPLEFT")
			:SetPoint("BOTTOMRIGHT")
			:Hide()
			.__END



	MF.CenterColumn = CHAIN(ui:Create("Frame", MF))
		:SetPoint("TOPLEFT",MF.MenuColumn,"TOPRIGHT",-1,0)
		:SetPoint("BOTTOMLEFT",MF.MenuColumn,"BOTTOMRIGHT",-1,0)
		:SetWidth(382)
		:SetBackdropBorderColor(0,0,0,0)
		.__END

		MF.CenterColumn.SectionInfo = CHAIN(CreateFrame("Button",nil))
			:SetHeight(22)
			:SetParent(MF.CenterColumn)
			:SetPoint("TOP")
			:SetPoint("LEFT")
			:SetPoint("RIGHT")
			.__END
			local SectionInfo=MF.CenterColumn.SectionInfo
			SectionInfo.Texture = CHAIN(SectionInfo:CreateTexture(nil,"ARTWORK")) 
				:SetSize(12,12) 
				:SetTexture(ZGV.ButtonSets.TitleButtons.file)
				:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons['STEP_PREV'].texcoords[1]))
				:SetPoint("TOPLEFT",SectionInfo,"TOPLEFT",10,-10)
				.__END

			SectionInfo.Name = CHAIN(SectionInfo:CreateFontString())
				:SetFont(FONTBOLD,15)
				:SetJustifyH("LEFT")
				:SetPoint("TOPLEFT",SectionInfo.Texture,"TOPRIGHT",5,2)
				:SetWidth(379)
				:SetWordWrap(false)
				:SetText("No section selected")
				.__END

			SectionInfo.Decor = CHAIN(ui:Create("Frame",SectionInfo,nil))
				:SetPoint("TOPLEFT",SectionInfo,"BOTTOMLEFT",0,-10)
				:SetSize(379,1)
				:SetFrameLevel(SectionInfo:GetFrameLevel()+3)
				:SetBackdropColor(0.3,0.3,0.3,1)
				:SetBackdropBorderColor(0,0,0,0)
			.__END

		SectionInfo.SettingsButton = CHAIN(CreateFrame("Button",nil,SectionInfo,"ZGV_DefaultSkin_TitleButton_Template"))
			:SetScript("OnClick",function() GuideMenu:ToggleSectionMenu() end)
			:SetPoint("RIGHT",-5,-6)
			.__END
		SectionInfo.SettingsButton.buttonkey = "DOTS"
		SectionInfo.SettingsButton:ApplySkin()

		SectionInfo.SettingsButton:GetNormalTexture():SetRotation(1.57079633) -- 90 degree in radians
		SectionInfo.SettingsButton:GetPushedTexture():SetRotation(1.57079633) -- 90 degree in radians
		SectionInfo.SettingsButton:GetHighlightTexture():SetRotation(1.57079633) -- 90 degree in radians
		SectionInfo.SettingsButton:GetDisabledTexture():SetRotation(1.57079633) -- 90 degree in radians

		MF.GuideListScrollFrame= ui:Create("ScrollTable",MF.CenterColumn,"ZGV_GuideScrollTable",SCROLLTABLE_COLUMNS,SCROLLTABLE_DATA)
		MF.GuideListScrollFrame:SetScript("OnMouseWheel", function(self,delta)
			GuideMenu.GuideListOffset=GuideMenu.GuideListOffset-delta
			GuideMenu.needToUpdate=true
		end)
		MF.GuideListScrollFrame.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
			GuideMenu.GuideListOffset=math.round(offset)
			GuideMenu.needToUpdate=true
		end)


		local function load_button_onclick(row)
			if not row then return end
			if row.guide then
				GuideMenu:ActivateGuide(row.guide)
			elseif row.quest then
				GuideMenu:Open("QuestSearch",false,row.quest.questid)
			end
		end
		
		for _,row in pairs(MF.GuideListScrollFrame.rows) do
			-- adjust elements positions
			row.icon:ClearAllPoints()
			row.icon:SetPoint("BOTTOMLEFT",row,"BOTTOMLEFT",9,4)
			row.title:SetPoint("BOTTOMLEFT",row.icon,"BOTTOMRIGHT",0,1) 
			row.loadbutton:ClearAllPoints()
			row.loadbutton:SetPoint("BOTTOMRIGHT",row,"BOTTOMRIGHT",-5,5)
			row.favourite:ClearAllPoints()
			row.favourite:SetPoint("RIGHT",row.loadbutton,"LEFT",-5,0)

			-- add mouseover scripts
			row:SetScript("OnEnter",function() GuideMenu:ShowRowMouseOver(row) GuideMenu.CurrentRow=row end)
			row:SetScript("OnLeave",function() GuideMenu:HideRowMouseOver(row) GuideMenu.CurrentRow=nil end)

			local load_button_onenter=row.loadbutton:GetScript("OnEnter")
			local load_button_onleave=row.loadbutton:GetScript("OnLeave")
			row.loadbutton:SetScript("OnEnter",function(but) row:GetScript("OnEnter")(row) load_button_onenter(but) end)
			row.loadbutton:SetScript("OnLeave",function(but) row:GetScript("OnLeave")(row) load_button_onleave(but) end)
			row.loadbutton:SetScript("OnClick",function(but) load_button_onclick(row) end)
			row.loadbutton:Hide()

			local favourite_button_onenter=row.favourite:GetScript("OnEnter")
			local favourite_button_onleave=row.favourite:GetScript("OnLeave")
			row.favourite:SetScript("OnEnter",function(but) row:GetScript("OnEnter")(row) favourite_button_onenter(but) end)
			row.favourite:SetScript("OnLeave",function(but) row:GetScript("OnLeave")(row) favourite_button_onleave(but) end)
			row.favourite:SetScript("OnClick",function(but) if row.guide then row.guide:ToggleFavourite() GuideMenu:Update() end end)
			row.favourite:Hide()

			row:SetHighlightBackdropColor(unpack(SkinData("ButtonHighlightColor1")))

			-- add suggested icon overlay and animation
			row.iconover = CHAIN(row:CreateTexture()) 
				:SetPoint("CENTER",row.icon,"CENTER",3,-3) 
				:SetSize(17,17) 
				:SetDrawLayer("ARTWORK",1)
				:SetTexture(ZGV.IconSets.GuideIconsSmall.file)
				:SetTexCoord(unpack(ZGV.IconSets.GuideIconsSmall['STAR'].texcoord))
			 .__END
			row.iconover.anim = CHAIN(row.iconover:CreateAnimationGroup()) 
				:SetLooping("REPEAT") .__END
			CHAIN(row.iconover.anim:CreateAnimation("SCALE")) 
				:SetScale(1.4,1.4) 
				:SetDuration(0.5) 
				:SetSmoothing("OUT")
			CHAIN(row.iconover.anim:CreateAnimation("SCALE")) 
				:SetScale(0.7143,0.7143) 
				:SetDuration(0.5) 
				:SetSmoothing("IN")
		end

	MF.WideColumn = CHAIN(ui:Create("Frame", MF))
		:SetPoint("TOPLEFT",MF.MenuColumn,"TOPRIGHT",-1,0)
		:SetPoint("BOTTOMLEFT",MF.MenuColumn,"BOTTOMRIGHT",-1,0)
		:SetWidth(602)
		:SetBackdropBorderColor(0,0,0,0)
		:Hide()
		.__END

		MF.WideColumn.Name = CHAIN(MF.WideColumn:CreateFontString())
			:SetFont(FONTBOLD,15)
			:SetJustifyH("LEFT")
			:SetPoint("TOPLEFT",MF.WideColumn,"TOPLEFT",10,-9)
			:SetWidth(600)
			:SetWordWrap(false)
			:SetText("No section selected")
			.__END

		MF.WideColumn.Decor = CHAIN(ui:Create("Frame",MF.WideColumn,nil))
			:SetPoint("TOPLEFT",MF.WideColumn.Name,"BOTTOMLEFT",-10,-10)
			:SetSize(600,1)
			:SetFrameLevel(MF.WideColumn:GetFrameLevel()+3)
			:SetBackdropColor(0.3,0.3,0.3,1)
			:SetBackdropBorderColor(0,0,0,0)
		.__END

		MF.WideColumnHomeInner = CHAIN(CreateFrame("Frame", nil, MF.WideColumn))
			:SetPoint("TOPLEFT")
			:SetPoint("BOTTOMRIGHT")
			:SetWidth(600)
			:SetHeight(100)
		.__END

		MF.WideColumnHome = CHAIN(ui:Create("ScrollChild",MF.WideColumn, nil, MF.WideColumnHomeInner))
			:SetPoint("TOPLEFT")
			:SetPoint("BOTTOMRIGHT",-16,1)
			:Hide()
			.__END
		MF.WideColumnHome:SetHideWhenUseless(true)

		MF.WideColumnOptions = CHAIN(CreateFrame("Frame", "ZGV_Menu_OptionsDetails", MF.WideColumn))
			:SetPoint("TOPLEFT",MF.WideColumn.Decor,"BOTTOMLEFT")
			:SetPoint("BOTTOMRIGHT")
			:Hide()
			.__END

		MF.WideColumnOptions.AceContainer = LibStub("AceGUI-3.0-Z"):Create("ScrollFrame-Z")
		MF.WideColumnOptions.AceContainer.type="SimpleGroup-Z"  -- I hate myself. AceConfigDialog would make a new ScrollFrame inside our perfectly good ScrollFrame, breaking it to hell, because it's not a *Group. So... this ScrollFrame has to masquerade as a SimpleGroup.
		MF.WideColumnOptions.AceContainer.frame:SetParent(MF.WideColumnOptions)
		MF.WideColumnOptions.AceContainer.frame:SetPoint("TOPLEFT",MF.WideColumnOptions,"TOPLEFT",10,0)
		MF.WideColumnOptions.AceContainer.frame:SetPoint("BOTTOMRIGHT")

	MF.FullColumn = CHAIN(ui:Create("Frame", MF))
		:SetPoint("TOP",MF.Header,"BOTTOM")
		:SetPoint("BOTTOM",MF)
		:SetPoint("LEFT",MF,SkinData("GuideMenuMargin"),0)
		:SetPoint("RIGHT",MF,-SkinData("GuideMenuMargin"),0)
		:SetBackdropBorderColor(0,0,0,0)
		:Hide()
		.__END
		MF.FullColumn.Name = CHAIN(MF.FullColumn:CreateFontString())
			:SetFont(FONTBOLD,15)
			:SetJustifyH("LEFT")
			:SetPoint("TOPLEFT",MF.FullColumn,"TOPLEFT",10,-9)
			:SetWidth(600)
			:SetWordWrap(false)
			:SetText("No section selected")
			.__END

		MF.FullColumn.Decor = CHAIN(ui:Create("Frame",MF.FullColumn,nil))
			:SetPoint("TOPLEFT",MF.FullColumn.Name,"BOTTOMLEFT",-8,-10)
			:SetSize(821,1)
			:SetFrameLevel(MF.FullColumn:GetFrameLevel()+3)
			:SetBackdropColor(0.3,0.3,0.3,1)
			:SetBackdropBorderColor(0,0,0,0)
		.__END

		MF.FullColumnFeaturedInner = CHAIN(ZGV.CreateFrameWithBG("Frame", "Featured_Content", MF))
			:SetPoint("TOPLEFT")
			:SetPoint("BOTTOMRIGHT")
			:SetWidth(825)
			:SetHeight(200)
			:SetBackdropColor(1,1,1,1)
		.__END

		MF.FullColumnFeatured = CHAIN(ui:Create("ScrollChild",MF.FullColumn, nil ,MF.FullColumnFeaturedInner))
			:SetPoint("TOPLEFT",MF.FullColumn.Decor,"BOTTOMLEFT",0,-1)
			:SetPoint("BOTTOMRIGHT",-16,1)
			:SetBackdropColor(1,1,0,1)
			:SetHeight(200)
			.__END
		MF.FullColumnFeatured:SetHideWhenUseless(true)

		MF.FullColumnFeatured.Dropdown = CHAIN(ui:Create("DropDown",MF.FullColumn,2,MF.FullColumn:GetFrameLevel()+2))
			:SetPoint("TOPRIGHT",MF.FullColumn,"TOPRIGHT",-12,-7)
			:SetSize(200,20)
		.__END

		for i,dataset in ipairs(GuideMenu.Featured) do
			local item = MF.FullColumnFeatured.Dropdown:AddItem(dataset.title,dataset.group,function(item)
				GuideMenu:ShowFeatured(item.userdata.value)
				ZGV.db.char.lastfeatured = item.userdata.value
			end)
		end
		if ZGV.db.char.lastfeatured then
			MF.FullColumnFeatured.Dropdown:SetCurrentSelectedByValue(ZGV.db.char.lastfeatured)
		else
			MF.FullColumnFeatured.Dropdown:SetCurrentSelectedByValue(GuideMenu.Featured[1].group)

		end
	
	MF.RightColumn = CHAIN(ui:Create("Frame", MF))
		:SetPoint("TOPRIGHT",MF.Header,"BOTTOMRIGHT")
		:SetPoint("BOTTOMRIGHT",MF)
		:SetWidth(219)
		.__END


		MF.RightColumn.GuideImage = CHAIN(MF.RightColumn:CreateTexture(nil,"ARTWORK")) 
			:SetHeight(139) 
			:SetPoint("TOP",0,-1) 
			:SetPoint("LEFT",1,0) 
			:SetPoint("RIGHT",-1,0) 
			:SetTexture(ZGV.DIR.."\\Skins\\menu_noguide")
			:SetTexCoord(0,220/256,0,139/256)
		.__END

		MF.RightColumn.GuideMascot = CHAIN(MF.RightColumn:CreateTexture(nil,"ARTWORK")) 
			:SetHeight(289) 
			:SetPoint("BOTTOM",0,1) 
			:SetPoint("LEFT",1,0) 
			:SetPoint("RIGHT",-1,0) 
			:SetTexture(ZGV.DIR.."\\Skins\\menu_mascot")
			:SetTexCoord(0,220/256,0,289/512)
		.__END

		MF.RightColumn.GuideModel = CHAIN(CreateFrame("PlayerModel",nil,MF.RightColumn,"ZygorGuidesViewerPlayerModel"))
			:SetHeight(139) 
			:SetPoint("TOP") 
			:SetPoint("LEFT",0,0) 
			:SetPoint("RIGHT",-1,0) 
			:SetAutoRotation(0.4)
		.__END

		MF.RightColumn.GuideTitle = CHAIN(MF.RightColumn:CreateFontString())
			:SetPoint("TOPLEFT",MF.RightColumn.GuideImage,"BOTTOMLEFT",5,-10)
			:SetFont(FONTBOLD,12)
			:SetText()
			:SetWidth(210)
			:SetJustifyH("left")
			:Hide()
		.__END

		MF.RightColumn.GuideDesc = CHAIN(MF.RightColumn:CreateFontString())
			:SetPoint("TOPLEFT",MF.RightColumn.GuideTitle,"BOTTOMLEFT",0,-10)
			:SetFont(FONT,12)
			:SetText()
			:SetWidth(210)
			:SetJustifyH("left")
			:Hide()
		.__END

		MF.RightColumn.GuideProgressLabel = CHAIN(MF.RightColumn:CreateFontString())
			:SetPoint("TOPLEFT",MF.RightColumn.GuideDesc,"BOTTOMLEFT",0,-10)
			:SetFont(FONT,12)
			:SetText("Progress:")
			:SetWidth(210)
			:SetJustifyH("left")
			:Hide()
		.__END
		MF.RightColumn.GuideProgress = CHAIN(ui:Create("ProgressBar",MF.RightColumn))
			:SetSize(210,7)
			:SetFrameLevel(MF.RightColumn:GetFrameLevel()+3)
			:SetPoint("TOPLEFT",MF.RightColumn.GuideProgressLabel,"BOTTOMLEFT",0,-12)
			:SetDecor(SkinData("ProgressBarDecorUse"))
			:SetAnim(false)
			:Hide()
		.__END

		MF.RightColumn.RightColumnMenu = CreateFrame("FRAME",MF,nil,"UIDropDownForkTemplate")

	if ZGV.DEV then
		MF.GuidePathExport = CHAIN(ui:Create("EditBox",MF))
			:SetPoint("BOTTOM",MF,"BOTTOM",0,3)
			:SetWidth(350)
			:SetTextColor(1,1,1,1)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0.3,0.3,0.3,1)
			:SetScript("OnEditFocusLost",function(self)
				self:HighlightText(0,0)
			end)
			:SetScript("OnEditFocusGained",function(self)
				self:HighlightText()
			end)
			:Hide()
		.__END
		if ZGV.db.profile.debug_display then
			MF.GuidePathExport:Show()
		end
	end

	GuideMenu.FeaturedTooltip = CHAIN(ui:Create("Frame", MF))
		:SetFrameStrata("DIALOG")
		:SetFrameLevel(20)
		:SetBackdropColor(0,0,0,1)
		:SetBackdropBorderColor(0.3,0.3,0.3,1)
		:SetWidth(260)
		.__END
	GuideMenu.FeaturedTooltip.GuideModel = CHAIN(CreateFrame("PlayerModel",nil,GuideMenu.FeaturedTooltip,"ZygorGuidesViewerPlayerModel"))
		:SetHeight(100) 
		:SetWidth(100) -- updated in parser.item.ontooltip
		:SetPoint("TOPLEFT",10,0) 
		:SetAutoRotation(0.4)
		:Hide()
	.__END
	GuideMenu.FeaturedTooltip.Text = CHAIN(GuideMenu.FeaturedTooltip:CreateFontString())
		:SetFont(FONT,12)
		:SetWordWrap(true)
		:SetWidth(260) -- updated in parser.item.ontooltip
		:SetPoint("RIGHT",-5,0)
		:SetJustifyH("LEFT")
		.__END

	GuideMenu.MissingPopup = CHAIN(ZGV.CreateFrameWithBG("Button", nil, GuideMenu.MainFrame))
		--:SetAllPoints()
		:SetPoint("LEFT",GuideMenu.MainFrame.MenuColumn,"RIGHT")
		:SetPoint("RIGHT")
		:SetPoint("BOTTOM")
		:SetPoint("TOP",GuideMenu.MainFrame.Header,"BOTTOM")
		:SetFrameLevel(10)
		:EnableMouse(true)
		:SetScript("OnMousewheel",function() return false end) -- have own handler, so the event does not get propagated
		:SetScript("OnShow",function() GuideMenu.MainFrame.MenuGuides.SearchEdit:ClearFocus() end)
		:SetScript("OnClick",function() GuideMenu.MissingPopup:Hide() end)
		:Hide()
	.__END
		GuideMenu.MissingPopup.Frame = CHAIN(ui:Create("Frame", GuideMenu.MissingPopup))
			:SetPoint("CENTER")
			:SetWidth(400)
			:SetHeight(200)
			.__END
			GuideMenu.MissingPopup.Text = CHAIN(GuideMenu.MissingPopup.Frame:CreateFontString())
				:SetFont(FONT,15)
				:SetJustifyH("CENTER")
				:SetPoint("CENTER")
				:SetWidth(380)
				:SetWordWrap(true)
				:SetText(L["guidemenu_missing_popup"])
				.__END

	ZGV:AddMessageHandler("SKIN_UPDATED",GuideMenu.ApplySkin)
	GuideMenu:ApplySkin()
end

function GuideMenu:ExportPath(row)
	if row.guide then
		GuideMenu.MainFrame.GuidePathExport:SetText(row.guide.title:gsub("\\","\\\\"))
	elseif row.group then
		GuideMenu.MainFrame.GuidePathExport:SetText(row.group.fullpath:gsub("\\","\\\\"))
	end

	if ZGW.MainFrame.Subframes_whatsnew then
		ZGW.MainFrame.Subframes_whatsnew.edit_GuideSearch:SetText(GuideMenu.MainFrame.GuidePathExport:GetText())
	else
		GuideMenu.MainFrame.GuidePathExport:SetFocus()
		GuideMenu.MainFrame.GuidePathExport:HighlightText()
	end
end

local function MenuButton_SetHighlight(button,tf,force)
	if not force and button.isHighlightLocked then return end
	button.caption:SetTextColor(unpack(tf and button.caption.HighlightTextColor or button.caption.NormalTextColor))
	ZGV.F.SetSpriteTexCoord(button.texture,unpack(tf and button.spritecoords_hilite or button.spritecoords))
end

local function MenuButton_SetHighlightSprite(button,x,w,y,h)
	button.spritecoords_hilite = {x,w,y,h}
end

local function MenuButton_SetLockHighlight(button,tf)
	button:SetHighlight(tf,true)
	button.isHighlightLocked = tf
	button.LeftDecor:SetShown(tf)
end

local function MenuButton_SetNormalTextColor(button,r,g,b,a)
	button.caption.NormalTextColor={r,g,b,a}
	button.caption:SetTextColor(r,g,b,a)
end

local function MenuButton_SetHighlightTextColor(button,r,g,b,a)
	button.caption.HighlightTextColor={r,g,b,a}
end

function GuideMenu:MakeMenuButton(name,caption,texture,x,w,y,h)
	local parent = GuideMenu.MainFrame.MenuGuides
	local but = CHAIN(CreateFrame("Button"))
		:SetSize(222,24)
		:SetFrameLevel(4)
		:SetParent(parent)
	.__END
	
	if texture then
		but.texture = CHAIN(but:CreateTexture(nil,"ARTWORK")) 
			:SetSize(16,16) 
			:SetPoint("LEFT",but,"LEFT",11,0) 
			:SetTexture(texture)
		.__END

		but.spritecoords={x,w,y,h}
		ZGV.F.SetSpriteTexCoord(but.texture,x,w,y,h)
	end

	but.LeftDecor = CHAIN(but:CreateTexture(nil,"ARTWORK")) 
		:SetWidth(2) 
		:SetPoint("TOPLEFT",but,0,0) 
		:SetPoint("BOTTOMLEFT",but,0,0) 
		:SetColorTexture(unpack(SkinData("GuideMenuGuideButtonDecorColor")))
		:Hide()
	.__END

	but.caption = CHAIN(but:CreateFontString(name.."_c","ARTWORK")) 
		:SetPoint("LEFT",but.texture,"RIGHT",7,0) 
		:SetFont(FONT,14) 
		:SetText(caption)
	.__END

	but.SetHighlight = MenuButton_SetHighlight
	but.SetHighlightSprite = MenuButton_SetHighlightSprite
	but.SetLockHighlight = MenuButton_SetLockHighlight
	but.SetNormalTextColor = MenuButton_SetNormalTextColor
	but.SetHighlightTextColor = MenuButton_SetHighlightTextColor

	but:SetNormalTextColor(unpack(GuideMenu.BUTTONS_NORMAL_COLOR))
	but:SetHighlightTextColor(unpack(GuideMenu.BUTTONS_HIGHLIGHT_COLOR))

	but:SetHighlightTexture("dummy") -- we need to set it, so it gets created. 
	but:GetHighlightTexture():SetColorTexture(unpack(SkinData("ButtonHighlight")))

	but:SetScript("OnEnter",function(but) but:SetHighlight(true) end)
	but:SetScript("OnLeave",function(but) but:SetHighlight(false) end)

	return but
end

function GuideMenu:PrepareGuidesMenuButtons()
	GuideMenu.MainFrame.MenuColumn.GuideButtons = GuideMenu.MainFrame.MenuColumn.GuideButtons or {}
	local buttons = GuideMenu.MainFrame.MenuColumn.GuideButtons

	local iconset = ZGV.IconSets.TabsIcons

	local icon = iconset['FAVOURITES']
	local previous

	for i,group in pairs(ZGV.registered_groups.groups) do
		if group and not (group.name == "SUGGESTED" or (group.name=="TEST" and not ZGV.db.profile.debug_display)) then
			local icon = iconset[group.name]
			buttons[group.name] = buttons[group.name] or GuideMenu:MakeMenuButton("Button"..group.name,icon.label,iconset.file,icon[1],iconset.cols,icon[2],iconset.rows)
			if previous then
				buttons[group.name]:SetPoint("TOPLEFT",previous,"BOTTOMLEFT",0,-6)
			else
				--buttons[group.name]:SetPoint("TOPLEFT",GuideMenu.MainFrame.MenuGuides.SearchEdit,"BOTTOMLEFT",0,-10)
				buttons[group.name]:SetPoint("TOP",GuideMenu.MainFrame.MenuGuides.SearchEdit,"BOTTOM",0,-10)
				buttons[group.name]:SetPoint("LEFT",GuideMenu.MainFrame.MenuGuides)
			end
			previous=buttons[group.name]

			buttons[group.name]:SetScript("OnClick",function() GuideMenu:Open(group.fullpath) end)
		end
	end
	
	buttons.FAVOURITES = buttons.FAVOURITES or GuideMenu:MakeMenuButton("ButtonFAVOURITES",icon.label,iconset.file,icon[1],iconset.cols,icon[2],iconset.rows)
	buttons.FAVOURITES:SetPoint("TOPLEFT",previous,"BOTTOMLEFT",0,-6)
	buttons.FAVOURITES:SetScript("OnClick",function() GuideMenu:Open("Favourites") end)
end

function ZGV:ZGV_LOADING_TOPLEVEL_GROUPS_UPDATED()
	if GuideMenu and GuideMenu.MainFrame then
		GuideMenu:PrepareGuidesMenuButtons()
	end
end

local firstpages = {['1_home']="Home",['2_current']="Current",['3_recent']="Recent",['4_suggested']="Suggested"}
function GuideMenu:Show(path,...)
	if not GuideMenu.MainFrame then
		GuideMenu:CreateFrames()
	end
	ZGV.LOADGUIDES_INTENSITY=100
	ZGV:AddMessageHandler("ZGV_GUIDES_PARSED",function() GuideMenu:Update() end)


	GuideMenu.GuideListOffset=0
	GuideMenu.MainFrame:DoFadeIn()

	if path~="Options" and path~="QuestSearch" then
		if ZGV.db.profile.gmlasthomeversion~=GuideMenu.HomeVersion then path="Home" end
		ZGV.db.profile.gmlasthomeversion = GuideMenu.HomeVersion
	end

	if not path then
		if ZGV.db.profile.gmfirstpage=="5_last" then
			path = ZGV.db.profile.gmlastsection
		else
			path = firstpages[ZGV.db.profile.gmfirstpage]
		end
		GuideMenu.MainFrame.MenuGuides.SearchEdit:SetText("")	
		GuideMenu.MainFrame.MenuGuides.SearchEdit:SetFocus()	
	end

	GuideMenu:Open(path or "Home",nil,...)
end

function GuideMenu:Hide()
	GuideMenu.MainFrame:DoFadeOut()
	for i,v in pairs(ZGV.registeredguides) do
		if v~=ZGV.CurrentGuide and v.fully_parsed and not v.poi then
			v:Unload()
		end
	end
end

-- group header: 16px bold			=> 15px
-- type header: 18px normal			=> 17
-- section: 15px bold
-- text: 15px normal
-- guide list: 15px normal, zygor orange

local function featured_colourise(str,gray,dev)
	if not (gray or dev) then
		str = str:gsub("[**]+([^\*]+)[**]+","|cfffe6100%1|r")
		str = str:gsub("[==]+([^\=]+)[==]+","|cffbbbbbb%1|r")
	elseif dev then
		str = str:gsub("[**]+([^\*]+)[**]+","|cffff9a5c%1|r")
		str = str:gsub("[==]+([^\=]+)[==]+","|cffbbbbbb%1|r")
		if not str:find("(DEV)") then str=str .. " (DEV)" end
	else
		str = str:gsub("[**]+([^\*]+)[**]+","|cffaaaaaa%1|r")
		str = str:gsub("[==]+([^\=]+)[==]+","|cffaaaaaa%1|r")
	end
	return str
end

GuideMenu.Parsers = {}
GuideMenu.Parsers.WIDTH = 552
GuideMenu.Parsers.ICONS = false
	GuideMenu.Parsers.generic = function(parent,e)
		if coroutine.running() then
			local now = debugprofilestop()
			if now>GuideMenu.Parsers.lasttick+100 then
				GuideMenu.Parsers.lasttick = now
				coroutine.yield()
			end
		end

		local object = CHAIN(ui:Create("Button",parent))
			:SetNormalBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)
			:RegisterForClicks("AnyUp")
			:SetPoint("LEFT")
			:SetScript("OnEnter",function(self) 
				if self.cursor then SetCursor(self.cursor) end
				if self.onenterfunc then
					self:onenterfunc()
				elseif self.tooltip then 
					local text = type(self.tooltip)=="function" and self.tooltip() or self.tooltip
					GameTooltip:SetOwner(self, "ANCHOR_CURSOR")
					GameTooltip:AddLine(text)
					GameTooltip:Show()
				end
			end)
			:SetScript("OnLeave",function(self) 
				if self.cursor then SetCursor(nil) end 
				if self.onleavefunc then
					 self:onleavefunc()
				else
					GameTooltip:Hide()
				end
			end)
		.__END
		object.text = CHAIN(object:GetFontString())
			:SetFont(FONT,13)
			:ClearAllPoints()
			:SetPoint("LEFT")
			:SetPoint("RIGHT")
			:SetJustifyH("LEFT")
		.__END
		
		object.tooltip = e.tooltip

		if e.onclick then
			object:SetScript("OnClick", function() e.onclick() end)
		elseif e.guide then
			if not e.text then
				local guide = ZGV:GetGuideByTitle(e.guide)
				if guide and not guide.missing then 
					e.text = "**"..(guide.title_short or e.guide).."**"
				else
					local folder,title = e.guide:match("^(.+)\\(.-)$")
					e.text = "**"..(title).."**"
				end
			end

			if e.action=="select" then
				object:SetScript("OnClick", function() 
					local folder,_ = e.guide:match("^(.+)\\(.-)$")
					GuideMenu:Show(folder)
					GuideMenu.FocusedGuide = ZGV:GetGuideByTitle(e.guide)
					GuideMenu:ShowGuideDetails(GuideMenu.FocusedGuide)
					GuideMenu:Update()
				end)
			else
				local guide = ZGV:GetGuideByTitle(e.guide)
				if guide and not guide.missing then
					object:SetScript("OnClick", function() -- maybe OnDoubleClick?
						GuideMenu:ActivateGuide(ZGV:GetGuideByTitle(e.guide))
					end)
				end
			end
		elseif e.folder then
			e.folder = e.folder:gsub("\\$","")
			if not e.text then
				local path,tit = e.folder:match("^(.*)\\+(.-)$")
				e.text = tit
			end

			object:SetScript("OnClick", function() GuideMenu:Show(e.folder) end)
		else
			object:SetPushedTextOffset(0,0)
		end
		return object
	end

	GuideMenu.Parsers.title = function(parent,e,width)
		local space = e.space or 30
		width = width or e.width or 552
		local object = CHAIN(GuideMenu.Parsers.generic(parent,e))
			:SetWidth(width)
			:SetText(featured_colourise(e.text))
			:SetFont(FONT,18)
		.__END
		object.text:SetWordWrap(false)
		local text_height = object.text:GetStringHeight()
		object:SetHeight(text_height)

		object.ztype = "title"
		object.space = space
		return object,text_height,space
	end

	GuideMenu.Parsers.banner = function(parent,e,width)
		local space = e.space or 16
		width = width or e.width or GuideMenu.Parsers.WIDTH
		local object = CHAIN(GuideMenu.Parsers.generic(parent,e))
			:SetSize(width,e.height or 109)
		.__END

		object:SetTexture(e.image)
		--object.cursor = "Interface\\CURSOR\\vehichleCursor"

		if e.top then object:SetTexCoord(e.top, e.bottom, e.left, e.right) end

		if e.onclick then
			object:SetHighlightTexture(ZGV.DIR.."\\Skins\\white")
			--object:GetHighlightTexture()
			CHAIN(object:GetHighlightTexture())
				:SetBlendMode("ADD")
				:SetAlpha(0.1)
		end


		object.ztype = "banner"
		object.space = space
		return object,e.height or 109,space
	end

	GuideMenu.Parsers.text = function(parent,e,width)
		local space = e.space or 5
		width = width or e.width or GuideMenu.Parsers.WIDTH

		local object = CHAIN(GuideMenu.Parsers.generic(parent,e))
			:SetFont(FONT,13)
			:SetWidth(width)
			:SetText(featured_colourise(e.text))
			
		.__END
		CHAIN(object.text)
			:SetJustifyH("LEFT")
			:SetWordWrap(true)
			:SetWidth(width)
			:SetSpacing(6)
			:ClearAllPoints()
			:SetPoint("LEFT",2,0)

		local text_height = object.text:GetStringHeight()
		object:SetHeight(text_height)

		object.ztype = "text"
		object.space = space
		return object,text_height,space
	end

	GuideMenu.Parsers.section = function(parent,e,width)
		local space = e.space or 10
		width = width or e.width or GuideMenu.Parsers.WIDTH
		local object = CHAIN(GuideMenu.Parsers.generic(parent,e))
			:SetWidth(width)
			:SetText(featured_colourise(e.text))
			:SetFont(FONTBOLD,14)
		.__END

		local text_height = object.text:GetStringHeight()
		object:SetHeight(text_height)

		object.ztype = "section"
		object.space = space
		return object,text_height,space
	end

	GuideMenu.Parsers.item = function(parent,e,width,mode)
		local space = e.space or 5
		mode = mode or e.mode
		width = width or e.width or GuideMenu.Parsers.WIDTH
		local object = CHAIN(GuideMenu.Parsers.generic(parent,e))
			:SetWidth(width)
			:SetFont(FONT,13)
			:SetTexture(ZGV.IconSets.StepLineIcons.file)
			:SetTexCoord(unpack(ZGV.IconSets.StepLineIcons['BIGDOT'].texcoord))
		.__END
	
		
		local guide = (object.guide or e.guide) and ZGV:GetGuideByTitle(object.guide or e.guide)
		local folder = (object.folder or e.folder) and ZGV:FindOrCreateGroup(ZGV.registered_groups,object.folder or e.folder,"onlyfind")
		
		if (guide and not guide.missing) or folder then
			object:SetText(featured_colourise(e.text,false,guide and guide.devonly))
		else
			object:SetText(featured_colourise(e.text,(object.guide or e.guide or object.folder or e.folder)))
		end
		
		if not mode or mode=="overview" then -- if non standard call (list, home page) don't show background and don't set tooltip functions
			CHAIN(object)
				:SetBackdrop(SkinData("MainBackdrop"))
				:SetBackdropColor(ZGV.F.HTMLColor("#222222"))
				:SetBackdropBorderColor(0,0,0,0)

			function object:onenterfunc()
				local guide = ZGV:GetGuideByTitle(e.guide)
				local tooltip = GuideMenu.FeaturedTooltip

				if guide and not guide.missing then 
					if not guide.description or guide.description=="" then return end
					tooltip.Text:SetText(object.tooltip or guide.description)

					if guide.headerdata.model then
						tooltip.GuideModel:SetModels(guide.headerdata.model)
						tooltip.GuideModel:Show()
						tooltip.Text:SetWidth(150)
						tooltip:SetHeight(max(GuideMenu.FeaturedTooltip.Text:GetStringHeight()+10,100))
					else
						tooltip.GuideModel:Hide()
						tooltip.Text:SetWidth(250)
						tooltip:SetHeight(GuideMenu.FeaturedTooltip.Text:GetStringHeight()+10)
					end
				else
					tooltip.GuideModel:Hide()
					tooltip.Text:SetText(L["guidemenu_missing_guide"])
					tooltip.Text:SetWidth(250)
					tooltip:SetHeight(GuideMenu.FeaturedTooltip.Text:GetStringHeight()+10)
				end
				
				tooltip:SetPoint("BOTTOMLEFT",object,"TOPLEFT")
				--tooltip:SetParent(object)
				tooltip:Show()
			end

			function object:onleavefunc()
				GuideMenu.FeaturedTooltip:Hide()
			end
		end


		CHAIN(object.tex)
			:ClearAllPoints()
			:SetPoint("TOPLEFT",3,1)
			:SetSize(16,16)
			:SetVertexColor(ZGV.F.HTMLColor("#fe6100ff"))

		CHAIN(object.text)
			--:SetPoint("TOP")
			:SetPoint("LEFT",object.tex,"RIGHT",7,0)
			:SetWidth(width-15)
			:SetWordWrap(mode~="overview")
			:SetSpacing(4)

		if GuideMenu.Parsers.ICONS and mode~="home" then
			CHAIN(object.tex)
				:ClearAllPoints()
				:SetSize(14,14)
				:SetVertexColor(1,1,1,1)
				:SetPoint("LEFT",3,0)
				:SetTexture(ZGV.IconSets.GuideIconsSmall.file)
			object.text:SetPoint("LEFT",object.tex,"RIGHT",4,-1)
			function object:updatefunc()
				if e.guide then
					local guide = ZGV:GetGuideByTitle(e.guide)
					local status=guide and guide.GetStatus and guide:GetStatus("detailed")
					local complete=(status=="COMPLETE")

					if complete then
						self.tex:SetTexture(ZGV.IconSets.StepLineIcons.file)
						self.tex:SetTexCoord(unpack(ZGV.IconSets.StepLineIcons['CHECK'].texcoord))
						if not mode then
							CHAIN(self)
								:SetBackdropColor(ZGV.F.HTMLColor(ZGV_Override_BG or "#003300"))
								:SetBackdropBorderColor(ZGV.F.HTMLColor(ZGV_Override_BD or "#004400"))
						end
					else
						self.tex:SetTexCoord(unpack(ZGV.IconSets.GuideIconsSmall['GUIDE'].texcoord))
						if not mode then
							CHAIN(self)
								:SetBackdropColor(ZGV.F.HTMLColor("#222222"))
								:SetBackdropBorderColor(0,0,0,0)
						end
					end
				elseif e.folder then
					self.tex:SetTexCoord(unpack(ZGV.IconSets.GuideIconsSmall['FOLDER'].texcoord))
				end
			end

			object:updatefunc()
		end

		local text_height = object.text:GetStringHeight()+5
		if not mode then
			text_height = text_height+10
			space = 0
		end

		object:SetHeight(text_height)

		object.ztype = "item"
		object.space = space
		return object,text_height,space
	end

	GuideMenu.Parsers.list = function(parent,e,width)
		-- item, but without icon and wordwrapped 
		local object,height,space = GuideMenu.Parsers.item(parent,e,width,"home")

		local text_height = object.text:GetStringHeight()
		object:SetHeight(text_height)
		
		object.ztype = "list"
		return object,text_height,space
	end

	GuideMenu.Parsers.separator = function(parent,e,width)
		local space = e and e.space or 15
		width = width or (e and e.width) or GuideMenu.Parsers.WIDTH
		local object = CHAIN(parent:CreateTexture())
			:SetTexture(ZGV.DIR.."\\Skins\\white")
			:SetSize(width,1)
			:SetVertexColor(ZGV.F.HTMLColor("#363636ff"))
		.__END

		object.ztype = "separator"
		object.space = space
		return object,1,space
	end

	GuideMenu.Parsers.columns = function(parent,e,width)
		width = width or e.width or GuideMenu.Parsers.WIDTH
		local space = 5
	
		local object = CHAIN(CreateFrame("Frame", nil, parent))
			:SetWidth(width)
			:SetHeight(20)
		.__END
		object.Columns = {}

		local count = 0
		for i=2,#e do
			if e[i][1]=="column" then count=count+1 end
		end

		local c_width = math.floor((width - 5*(count-1)) / max(1,count))

		local current_column
		local height = 0
		local max_height = 0
		local prev

		local padding = 5


		if count>0 then
			for i=2,#e do -- from 2, since 1 is the "columns" keyword
				local element = e[i]
				if element[1]=="column" then
					local column = CHAIN(CreateFrame("Frame", nil, object)):SetWidth(c_width).__END
					current_column = column
					height = 0
					prev = nil
					column.Elements = {}
					table.insert(object.Columns,column)
					if #object.Columns==1 then
						column:SetPoint("TOPLEFT",object,"TOPLEFT",0,0)
					else
						column:SetPoint("TOPLEFT",object.Columns[#object.Columns-1],"TOPRIGHT",5,0)
					end

				else
					if (not element.faction or (element.faction==faction)) then	
						local subobject, s_height, s_space
						if GuideMenu.Parsers[element[1]] then
							subobject,s_height,s_space = GuideMenu.Parsers[element[1]](current_column,element,c_width)
						else
							print("Unknown column element at",i,element[1])
							return false
						end

						table.insert(current_column.Elements,subobject)

						element.object = subobject


						if prev then
							subobject:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-padding)
						else
							subobject:SetPoint("TOPLEFT",current_column,"TOPLEFT",0,-padding)
						end
						height=height+s_height+padding
						prev=subobject
					end
				end
				max_height = math.max(max_height,height)
			end
		else -- no columns defined, auto assign two column layout
			for i=2,#e do -- from 2, since 1 is the "columns" keyword
				local element = e[i]
				if (not element.faction or (element.faction==faction)) then
					count = count + 1
				end
			end

			if count==0 then count = 1 end

			count = math.min((e.count or 2),count)
			c_width = math.floor((width - 5*(count-1)) / count)
			for i=1,count do
				local column = CHAIN(CreateFrame("Frame", nil, object)):SetWidth(c_width).__END
				height = 0
				column.Elements = {}
				table.insert(object.Columns,column)
				if #object.Columns==1 then
					column:SetPoint("TOPLEFT",object,"TOPLEFT",-3,0)
				else
					column:SetPoint("TOPLEFT",object.Columns[#object.Columns-1],"TOPRIGHT",5,0)
				end
			end

			local prev = {}

			local validcount = 1
			for i=2,#e do -- from 2, since 1 is the "columns" keyword
				local element = e[i]
				if (not element.faction or (element.faction==faction)) then
					validcount = validcount + 1
					local subobject, s_height, s_space

					local position = (validcount-2)%count+1

					if GuideMenu.Parsers[element[1]] then
						subobject,s_height,s_space = GuideMenu.Parsers[element[1]](object.Columns[position],element,c_width)
					else
						print("Unknown subcolumn element at",i,element[1])
						return false
					end

					table.insert(object.Columns[position].Elements,subobject)
					element.object = subobject


					if prev[position] then
						subobject:SetPoint("TOPLEFT",prev[position],"BOTTOMLEFT",0,-padding)
					else
						subobject:SetPoint("TOPLEFT",object.Columns[position],"TOPLEFT",0,-padding)
					end
					
					if position==1 then height=height+s_height+padding end
					prev[position]=subobject

					max_height = math.max(max_height,height)
				end
			end
		end

		max_height = max_height + padding


		for i,column in ipairs(object.Columns) do
			column:SetHeight(max_height)
		end

		object:SetHeight(max_height+space)


		object.ztype = "columns"
		object.space = space
	
		return object,max_height,space
	end

	GuideMenu.Parsers.content = function(parent,e,width)
		local space = e.space or 10
		width = width or e.width or GuideMenu.Parsers.WIDTH
	
		local object = CHAIN(GuideMenu.Parsers.generic(parent,e))
			:SetWidth(width)
			:SetText(featured_colourise(e.text))
			:SetFont(FONTBOLD,16)
		.__END
		object.text:SetWordWrap(false)

		object.Toggle = CHAIN(parent:CreateTexture())
			:SetTexture(ZGV.ButtonSets.TitleButtons.file)
			:SetSize(14,14)
			:SetVertexColor(1,1,1,1)
			:SetPoint("RIGHT",object,"RIGHT",0,0)
		.__END

		object:SetScript("OnClick",function(self) 
			self.displayed = not self.displayed
			self:UpdateText()

			GuideMenu.ActiveFeatured[3][self.zident] = not self.displayed
			GuideMenu:ShowFeatured(unpack(GuideMenu.ActiveFeatured))
		end) 

		function object:UpdateText() -- after loading of clicking
			if self.displayed then
				object.Toggle:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons['MINUS'].texcoords[1]))
			else
				object.Toggle:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons['PLUS'].texcoords[1]))
			end
		end

		object.Decor = CHAIN(parent:CreateTexture())
			:SetTexture(ZGV.DIR.."\\Skins\\white")
			:SetSize(width,1)
			:SetVertexColor(ZGV.F.HTMLColor("#363636ff"))
			:SetPoint("TOP",object,"BOTTOM",0,5)
		.__END

		object.Elements = {}

		local text_height = object.text:GetStringHeight() + 30 -- added space for decor
		object:SetHeight(text_height)

		object.ztype = "content"
		object.space = space
		return object,text_height,space
	end

	local function value_find(haystack,needle)
		needle = needle:lower()
		if type(haystack)=="table" then
			for _,straw in pairs(haystack) do
				if straw:lower()==needle then
					return true
				end
			end
			return false
		else
			return haystack:lower()==needle
		end
	end

	GuideMenu.Parsers.guideslist = function(parent,e,width,prepare)
		local space = e and e.space or 15
		width = width or (e and e.width) or GuideMenu.Parsers.WIDTH

		e.text = e.text or e.content

		local results = {}

		-- get all guides with properties matching given filters
		for _,guide in ipairs(ZGV.registeredguides) do
			local valid = true
			for key,value in pairs(e.filters) do
				if guide[key] then
					if value~="*" then
						if type(value)=="table" then
							local mode_and = value[1]=="AND"
							local lvalid = mode_and
							for _,subvalue in pairs(value) do
								if mode_and then
									if subvalue~="AND" then
										lvalid = lvalid and value_find(guide[key],subvalue)
									end
								else
									lvalid = lvalid or value_find(guide[key],subvalue)
								end
							end
							valid = valid and lvalid
						else
							valid = valid and value_find(guide[key],value)
						end
					end
					-- value=="*" is always true
				else
					valid=false
				end
			end
			if valid then table.insert(results,{guide.title,guide.title_short}) end
		end
		e.columns = e.columns or 2

		table.sort(results,function(a,b) return a[2]<b[2] end)

		local guideslist_content
		if e.text and not prepare then
			guideslist_content = GuideMenu.Parsers.content(parent,e,width)
		end

		if #results==0 and e.text then
			if guideslist_content then 
				guideslist_content.force_hidden=true 
				guideslist_content.displayed=false 
				guideslist_content:Hide()
				guideslist_content.Toggle:Hide()
				guideslist_content.Decor:Hide()
			end
			return false,0,0,guideslist_content
		end
		
		-- create placeholder to be fed to columns parser later
		local creator = {count=e.columns}

		-- add guides to columns, spreading evenly
		local counter = 0
		for i,v in ipairs(results) do
			counter = counter + 1
			table.insert(creator,{"item",guide=v[1]})
			if e.limit and counter == e.limit then break end
		end

		-- set creator to be columns
		table.insert(creator,1,"columns")

		if prepare then
			return creator
		end		

		-- make columns
		local object, height, space = GuideMenu.Parsers.columns(parent,creator,width)

		object.ztype = "guideslist"
		return object,1,space,guideslist_content
	end

	GuideMenu.Parsers.showcase_container = function(parent,e,width) -- not used by hand, creates container for guide type in showcase mode (icon, title, frame)
		local space = e.space or 10
		width = width or e.width or GuideMenu.Parsers.WIDTH
		local object = CHAIN(GuideMenu.Parsers.generic(parent,e))
			:SetWidth(width)
			:SetText(featured_colourise(e.text))
			:SetFont(FONTBOLD,14)
		.__END

		if ZGV.IconSets.TabsIcons[e.type] then
			object:SetTexture(ZGV.IconSets.TabsIcons.file)
			CHAIN(object.tex)
				:ClearAllPoints()
				:SetPoint("LEFT")
				:SetSize(18,18)
				:Show()
			object.text:SetPoint("LEFT",20,0)

			object.tex:SetTexCoord(unpack(ZGV.IconSets.TabsIcons[e.type].texcoord))
		end
		
		local text_height = object.text:GetStringHeight()
		object:SetHeight(text_height)
		--object:SetBackdropBorderColor(1,1,1,1)

		object.ztype = "section"
		object.space = space
		return object,text_height,space
	end

	GuideMenu.Parsers.expanded_container = function(parent,e,width) -- not used by hand, creates container for guide type in expanded mode (back arrow, title, frame)
		local object = CHAIN(ui:Create("Frame",parent))  -- main frame of showcase display for given section
			:SetPoint("TOP",0,-5)
			:SetPoint("LEFT",5,0)
			:SetWidth(GuideMenu.Parsers.WIDTH)
			:SetHeight(100)
			:Hide()
			:SetClampedToScreen(false)
		.__END
		local header,h_height,hspace = GuideMenu.Parsers.section(object,e)
		header:SetPoint("TOPLEFT",10,-10)
		object.header = header
		if e.title then header:SetText(featured_colourise(e.title)) end

		header.backicon = CHAIN(header:CreateTexture())
			:SetSize(12,12)
			:SetPoint("LEFT")
			:SetTexture(ZGV.ButtonSets.TitleButtons.file)
			:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons['STEP_PREV'].texcoords[1]))
		.__END
		CHAIN(header.text)
			:ClearAllPoints()
			:SetPoint("LEFT",header.backicon,"RIGHT",5,0)
			:SetFont(FONTBOLD,15)

		object.ztype = "expanded_container"
		object.space = hspace+10
		object.storedheight = h_height+10
		return object, h_height+10, hspace+10
	end


function GuideMenu:CreateHome()
	GuideMenu.Parsers.WIDTH = 552
	GuideMenu.Parsers.ICONS = false
	
	ZGV.Widgets.Config = CHAIN(ZGV.CreateFrameWithBG("Frame", nil, GuideMenu.MainFrame.WideColumnHomeInner))
		:SetBackdropColor(0,0,0,0)
		:SetMovable(true)
		:SetPoint("TOPLEFT")
		:SetWidth(600)
		:Hide()
		.__END

	ZGV.Widgets.Parent = CHAIN(ZGV.CreateFrameWithBG("Frame", nil, GuideMenu.MainFrame.WideColumnHomeInner, nil))
		:SetPoint("TOPLEFT")
		:SetWidth(600)
		--:SetScript("OnEnter",ZGV.Widgets.HoverBarShow)
		--:SetScript("OnLeave",ZGV.Widgets.HoverBarHide)
	.__END
		ZGV.Widgets.Parent.ConfigHoverBar = CHAIN(ZGV.CreateFrameWithBG("Button","HoverBar",GuideMenu.MainFrame.WideColumnHome))
			:SetPoint("BOTTOMRIGHT",-5,5)
			:SetSize(48,48)
			:SetAlpha(0.75)
			:Show()
			:SetFrameLevel(10)
		.__END

		ZGV.Widgets.Parent.ConfigButton = CHAIN(ZGV.CreateFrameWithBG("Button",nil,ZGV.Widgets.Parent.ConfigHoverBar))
			:SetPoint("BOTTOMRIGHT",-6,6)
			:SetSize(32,32)
			:SetScript("OnClick",ZGV.Widgets.ToggleConfig)
			:SetScript("OnEnter",ZGV.Widgets.ConfigButtonTooltip)
			:SetScript("OnLeave",function() GameTooltip:Hide() end)
			:Hide()
		.__END
		ZGV.ButtonSets.FloatingIcons.WIDGETS:AssignToButton(ZGV.Widgets.Parent.ConfigButton)

		ZGV.Widgets.Parent.ClearButton = CHAIN(ZGV.CreateFrameWithBG("Button",nil,ZGV.Widgets.Parent.ConfigHoverBar))
			:SetPoint("RIGHT",ZGV.Widgets.Parent.ConfigButton,"LEFT",-6,0)
			:SetSize(32,32)
			:SetScript("OnClick",ZGV.Widgets.ClearWidgets)
			:SetScript("OnEnter",ZGV.Widgets.ClearButtonTooltip)
			:SetScript("OnLeave",function() GameTooltip:Hide() end)
			:Hide()
		.__END
		ZGV.ButtonSets.FloatingIcons.BROOM:AssignToButton(ZGV.Widgets.Parent.ClearButton)

		ZGV.Widgets.Parent.ExitAddButton = CHAIN(ZGV.CreateFrameWithBG("Button",nil,ZGV.Widgets.Parent.ConfigHoverBar))
			:SetPoint("RIGHT",ZGV.Widgets.Parent.ConfigButton,"LEFT",-6,0)
			:SetSize(32,32)
			:SetScript("OnClick",ZGV.Widgets.ExitAddMode)
			:SetScript("OnEnter",ZGV.Widgets.ExitAddButtonTooltip)
			:SetScript("OnLeave",function() GameTooltip:Hide() end)
			:Hide()
		.__END
		ZGV.ButtonSets.FloatingIcons.CLOSE:AssignToButton(ZGV.Widgets.Parent.ExitAddButton)

	ZGV.Widgets.Fader = CHAIN(ZGV.CreateFrameWithBG("Button", nil, ZGV.GuideMenu.MainFrame))
		--:SetAllPoints()
		:SetPoint("LEFT",GuideMenu.MainFrame.MenuColumn,"RIGHT")
		:SetPoint("RIGHT")
		:SetPoint("BOTTOM")
		:SetPoint("TOP",GuideMenu.MainFrame.Header,"BOTTOM",0,1)
		:SetFrameLevel(10)
		:EnableMouse(true)
		:SetScript("OnMousewheel",function() return false end) -- have own handler, so the event does not get propagated
		:SetScript("OnShow",function() GuideMenu.MainFrame.MenuGuides.SearchEdit:ClearFocus() end)
		:Hide()
	.__END


	ZGV.Widgets:SetupWidgets()
	GuideMenu:UpdateHomeWidgets()

	GuideMenu.HomeReady=true
end

function GuideMenu:UpdateHomeWidgets()
	ZGV.Widgets:ApplyLayout()

	local height = ZGV.Widgets.Parent:IsVisible() and ZGV.Widgets.Parent:GetHeight() or ZGV.Widgets.Config:GetHeight() 

	GuideMenu.MainFrame.WideColumnHomeInner:SetHeight(height)
	GuideMenu.MainFrame.WideColumnHome:TotalValue(height)

	if ZGV.Widgets.Config:IsVisible() or not ZGV.Widgets.ConfigMode then 
		GuideMenu.MainFrame.WideColumnHome:SetValue(0)
		GuideMenu.MainFrame.WideColumnHome:SetVerticalScroll(0)
	end
end

local function grab_featured(element,array,hash)
	if (element[1]=="item") and (element.guide or element.folder) and (not element.faction or (element.faction==faction)) and (not element.beta or ZGV.BETA) and (not element.roadmaponly) then
		if not hash[element.guide or element.folder] then 
			if element.guide then
				table.insert(array,{"item",guide=element.guide,text=element.text})
			else
				table.insert(array,{"item",folder=element.folder,text=element.text})
			end
			hash[element.guide or element.folder] = true
			return 1
		end
	end
	return 0
end


GuideMenu.ActiveFeatured = {}
local function CreateFeatured(index,section,featuredhide)
	local MF = GuideMenu.MainFrame
	local data = GuideMenu.Featured[index]

	local auto_featured_limit = 10

	MF.FullColumnFeatured.Dropdown:SetCurrentSelectedByValue(index)
	GuideMenu.Parsers.lasttick = debugprofilestop()

	-- hide previous set
	for _,dataset in ipairs(GuideMenu.Featured) do
		for i,e in ipairs(dataset) do if e.object then e.object:Hide() end end
		if dataset.Blocks then for _,block in ipairs(dataset.Blocks) do block:Hide() end end
		if dataset.Expanded then for _,block in ipairs(dataset.Expanded) do block:Hide() end end
		if dataset.Showcase then for _,block in ipairs(dataset.Showcase) do block:Hide() end end
	end

	if not data.Blocks then
		--------------------------- preparation
		local parent = MF.FullColumnFeaturedInner
		local prev

		GuideMenu.Parsers.WIDTH = FEATURED_COLUMN_WIDTH
		GuideMenu.Parsers.ICONS = true
		
		-- prepare proper structer
		local section

		local content_block_faction
		for ei,element in ipairs(data) do
			-- inherit faction filters from sections
			if element[1]=="content" or (element[1]=="guideslist" and element[1].text) then 
				content_block_faction=element.faction
			elseif element[1]=="columns" then
				for si,subelement in ipairs(element) do if type(subelement)=="table" then
					subelement.faction = subelement.faction or content_block_faction
				end end
			else
				element.faction = element.faction or content_block_faction
			end



			
			if element[1]=="section" then
				if element.text~="SHOWCASE" then
					data[element.text]={}
					section=element.text
				end
			elseif section then
				if element[1]=="featured" then
					if element.featured_filters then
						data[section].featured_filters = element.featured_filters
					else
						data[section].featured = element
						table.remove(data[section].featured,1)
					end
				else
					table.insert(data[section],element)
				end
				if element[1]=="banner" and element.showcaseonly then
					data[section].featuredbanner = element
				end
				data[ei]=nil
			end			
		end

		-- cleanup, add guide names
		local cname,category
		for cname,category in pairs(data) do if type(category)=="table" then
			if category.featured_filters then
				category.featured = {}

				-- get all guides with properties matching given filters
				local results = {}
				for _,guide in ipairs(ZGV.registeredguides) do
					local valid = true
					for key,value in pairs(category.featured_filters) do
						valid = valid and guide[key]==value
					end
					if valid then table.insert(results,{guide.title,guide.title_short}) end
				end

				table.sort(results,function(a,b) return a[2]<b[2] end)
				for i=1,auto_featured_limit do if results[i] then
					table.insert(category.featured,{"item",guide=results[i][1]}) 
				end end

			end

			if not category.featured then -- build showcase featured from existing expanded elements
				category.featured = {}
				local hash = {}
				local count=0
				category.force_showcase = false
				for ci,element in ipairs(category) do
					if element[1]=="columns" then
						for si,subelement in ipairs(element) do
							if count<auto_featured_limit then
								count = count + grab_featured(subelement,category.featured,hash)
							end
							if element.roadmaponly then category.force_showcase=true end
						end
					elseif element[1]=="guideslist" then
						if element.filters then element.filters.type=element.filters.type or cname end
						local res = GuideMenu.Parsers.guideslist(parent,element,0,"prepare")
						if res then
							for si,subelement in ipairs(res) do
								if count<auto_featured_limit then
									count = count + grab_featured(subelement,category.featured,hash)
								end
							end
						end
					else
						if count<auto_featured_limit then
							count = count + grab_featured(element,category.featured,hash)
						end
					end

				end
			end

			for i=#category.featured,1,-1 do
				local e=category.featured[i]
				if not ((not e.faction or (e.faction==faction)) and (not e.beta or ZGV.BETA)) then
					table.remove(category.featured,i)
				end
			end
		end end

		--------------------------- showcase
		-- add elements to overview page
		for i,e in ipairs(data) do
			if (not e.faction or (e.faction==faction)) and (not e.beta or ZGV.BETA) then
				local object, e_height, space
				if GuideMenu.Parsers[e[1]] then
					if e[1]~="section" then
						object,e_height,space= GuideMenu.Parsers[e[1]](parent,e,785)
					end
				else
					print("Unknown showcase element at",i,e[1])
					return false
				end

				if object then
					e.object = object
					object:Hide()

					if prev then
						object:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-space)
					else
						object:SetPoint("TOPLEFT",parent,"TOPLEFT",12,-7)
					end
					prev = object
				end
			end
		end

		-- build containers
		local blockindex = 1
		data.Blocks = {}
		data.Showcase = {}
		for i,group in pairs(ZGV.registered_groups.groups) do
			if group and data[group.name] and (data[group.name].force_showcase or data[group.name].featured and #data[group.name].featured>0) then
				local parentindex = (blockindex-1)%3+1
				local block = CHAIN(ui:Create("Frame",MF.FullColumnFeaturedInner,nil))
					:SetPoint("TOP",0,-5)
					:SetPoint("LEFT",FEATURED_COLUMN_WIDTH*(parentindex-1)+5+(5*parentindex-5),0)
					:SetWidth(FEATURED_COLUMN_WIDTH)
					:SetClampedToScreen(false)
					:SetBackdropColor(ZGV.F.HTMLColor("#222222"))
					:SetBackdropBorderColor(0,0,0,0)
					:Hide()
				.__END
				block.footer = CHAIN(CreateFrame("Button", nil, block, nil))
					:SetPoint("BOTTOMLEFT",5,0)
					:SetPoint("BOTTOMRIGHT",-5,0)
					:SetHeight(20)
				.__END

				block.footer.intext = CHAIN(block.footer:CreateFontString())
					:SetAllPoints()
					:SetHeight(20)
					:SetFont(ZGV.Font,10)
					:SetJustifyH("LEFT")
					:SetTextColor(1,1,1,1)
					:SetText("See more")
					:SetIgnoreParentAlpha(true)
				.__END
				block.footer.decor = CHAIN(block.footer:CreateTexture())
					:SetVertexColor(0.2,0.2,0.2,1)
					:SetPoint("TOPLEFT",block.footer.intext,0,2)
					:SetPoint("TOPRIGHT",block.footer.intext,0,2)
					:SetHeight(1)
					:SetTexture(ZGV.SKINSDIR.."white")
				.__END
				block.footer.arrow = CHAIN(block.footer:CreateTexture())
					:SetPoint("RIGHT",block.footer.intext)
					:SetVertexColor(0.9,0.9,0.9,1)
					:SetSize(12,12)
				.__END
				ZGV.ButtonSets.TitleButtons.STEP_NEXT:AssignToTexture(block.footer.arrow)
				
				data.Blocks[blockindex] = block
				if prev then
					block:SetPoint("TOP",prev,"BOTTOM",0,-5)
				end

				block.type=group.name
				block.text=ZGV.IconSets.TabsIcons[group.name].label
				block.title=data[group.name].title

				blockindex = blockindex + 1
			end
		end

		-- fill containers
		local prev,object,e_height
		local prev_row = 0
		data.Separators = {}
		for i,block in ipairs(data.Blocks) do
			GuideMenu.Parsers.WIDTH = FEATURED_COLUMN_WIDTH

			-- make header
			block.Objects = {}

			local object,e_height,space = GuideMenu.Parsers.showcase_container(block,block,252)
			object:SetScript("OnClick",function() GuideMenu:ShowFeatured(index,i) end)
			block.footer:SetScript("OnClick",function() GuideMenu:ShowFeatured(index,i) end)
			
			object:SetPoint("TOPLEFT",block,"TOPLEFT",5,-7)
			prev = object


			-- make entries
			local height = e_height + 14 + 20 -- start with header and space, plus see more footer

			if data[block.type].featuredbanner then
				data[block.type].featuredbanner.onclick = function() ZGV.GuideMenu:ShowFeatured(index,block.type) end
				local object, e_height, space = GuideMenu.Parsers.banner(block,data[block.type].featuredbanner,252)

				height = height + e_height + space
				
				object:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-space)
				prev=object

				table.insert(block.Objects,object)
			end

			for j,e in ipairs(data[block.type].featured) do
				local object, e_height, space = GuideMenu.Parsers.item(block,e,252,"overview")

				height = height + e_height + space

				object:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-space)
				prev=object

				table.insert(block.Objects,object)
			
			end

			-- resize, position and display category
			local row = math.floor((i-1)/3)+1

			if i%3==1 then -- first block of row, make separator, we will attach next rows to it. 
				local object,e_height,space = GuideMenu.Parsers.separator(block)

				data.Separators[row] = object
				data.Separators[row]:SetVertexColor(0,0,0,0)
				data.Separators[row]:SetPoint("TOP",block,"BOTTOM",0,0)
			end

			-- store the height the row has, expanding to tallest element
			data.Separators[row].rowheight = math.max(data.Separators[row].rowheight or 0,height)

			if row>1 then
				block:SetPoint("TOP",data.Separators[row-1],"BOTTOM",0,-5)
			end
		end
	end

	MF.FullColumn.Name:SetText("Featured: "..data.title)
	GuideMenu.GuideCategory=nil

	local total_height = 0
	if not section then -- overview mode, set this up now, so we can work on expanded in background
		-- set all overview mode blocks in a row to a single height
		for i,block in ipairs(data.Blocks) do 
			local row = math.floor((i-1)/3)+1
			block:SetHeight(data.Separators[row].rowheight)
		end			

		-- get height of all elements
		for i,e in ipairs(data) do
			if e.object then 
				e.object:Show()
				total_height = total_height + e.object:GetHeight() + e.object.space
			end
		end

		-- and rows
		for i,separator in ipairs(data.Separators) do
			total_height = total_height + separator.rowheight + 5
		end


		for _,block in ipairs(data.Blocks) do
			block:Show()
		end

		MF.FullColumnFeaturedInner:SetHeight(total_height)
		MF.FullColumnFeatured:TotalValue(total_height)
		MF.FullColumnFeatured:SetValue(0)
		MF.FullColumnFeatured:SetVerticalScroll(0)
	end

	--------------------------- expanded
	data.Expanded = data.Expanded or {}

	local function show_section(section)
		-- all elements are ready, get total size, show what is needed
		-- reanchor, since visibility of secions may have been changed
		-- make expanded mode container
		GuideMenu.Parsers.WIDTH = MAINFRAME_WIDTH
		
		local expanded_frame = data.Expanded[section]
		if not expanded_frame then return end
		
		local expanded_height = expanded_frame.storedheight + expanded_frame.space

		local prev = expanded_frame.header
		for ci,element in ipairs(expanded_frame.Elements) do
			if not element.parentblock or element.parentblock.displayed then
				element:Show()
				if element.ztype=="list" and (expanded_frame.Elements[ci-1] and expanded_frame.Elements[ci-1].ztype~="list") then
					element.space = element.space + 5 -- additional margin before first list element
				end

				expanded_height = expanded_height + element:GetHeight() + element.space
				element:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-element.space-(ci==1 and 5 or 0))

				if element.updatefunc then element:updatefunc() end -- update guide status markers

				if element.Columns then
					for _,column in ipairs(element.Columns) do
						for _,celement in ipairs(column.Elements) do
							if celement.updatefunc then celement:updatefunc() end -- update guide status markers
						end
					end
				end

				prev = element
			else
				element:Hide()
			end
		end

		CHAIN(expanded_frame)
			:SetHeight(expanded_height)
			:SetBackdrop(SkinData("GuideMenuExpandedBackdrop"))
			:SetBackdropColor(unpack(SkinData("GuideMenuExpandedBackdropColor")))
			:SetBackdropBorderColor(unpack(SkinData("GuideMenuExpandedBackdropBorderColor")))

		data.Expanded[section]:Show()
		total_height = data.Expanded[section]:GetHeight()
		
		MF.FullColumnFeaturedInner:SetHeight(total_height)
		MF.FullColumnFeatured:TotalValue(total_height)
		MF.FullColumnFeatured:SetValue(0)
		MF.FullColumnFeatured:SetVerticalScroll(0)


	end

	local function make_section(i,block)
		if data.Expanded[i] and data.Expanded[i].ready then return end

		-- make expanded mode container
		GuideMenu.Parsers.WIDTH = MAINFRAME_WIDTH

		local expanded_frame, expanded_height, espace = GuideMenu.Parsers.expanded_container(MF.FullColumnFeaturedInner,block,805)
		expanded_frame.header:SetScript("OnClick",function() GuideMenu:ShowFeatured(index) end)
		data.Expanded[i] = expanded_frame
		expanded_frame.blocktype = block.type

		expanded_height = expanded_height + espace

		expanded_frame.Elements = {}

		local current_content_block = nil
		for ci,element in ipairs(data[block.type]) do
			if element[1]=="guideslist" and element.filters then element.filters.type=element.filters.type or block.type end

			if (not element.faction or (element.faction==faction)) and (not element.beta or ZGV.BETA) and (not element.showcaseonly) then
				local object,guideslist_content

				if GuideMenu.Parsers[element[1]] then
					object, _, _, guideslist_content = GuideMenu.Parsers[element[1]](expanded_frame,element,785)
				else
					print("Unknown section element at",ci,element[1])
					return false
				end

				if guideslist_content then
					current_content_block = guideslist_content 
					guideslist_content.zident = ("%s_%s_%d"):format(data.group,block.type,ci)
					guideslist_content.displayed = (not guideslist_content.force_hidden) and not (element.collapsed or featuredhide[guideslist_content.zident])
					guideslist_content:UpdateText()
					if object then table.insert(expanded_frame.Elements,guideslist_content) end
				end

				if object then
					element.object = object

					-- store contents elements, we will need that for hiding/showing blocks
					if current_content_block and element[1]~="content" and not (element[1]=="guideslist" and element[1].header) then
						table.insert(current_content_block.Elements,object) 
						object.parentblock = current_content_block
					end

					table.insert(expanded_frame.Elements,object)

					-- move pointer to new content storage
					if element[1]=="content" or (element[1]=="guideslist" and element[1].header) then 
						current_content_block = object 
						object.zident = ("%s_%s_%d"):format(data.group,block.type,ci)
						object.displayed = not (element.collapsed or featuredhide[object.zident])
						object:UpdateText()
					end
				end
			end
		end
		expanded_frame.ready = true
	end

	-- if we are to show section, make it if it is not ready, then show it. 
	if section then
		make_section(section,data.Blocks[section])
		show_section(section) 
	end

	-- make everything else in background
	for i,block in ipairs(data.Blocks) do
		if not (data.Expanded[i] and data.Expanded[i].ready) then
			make_section(i,block)
		end
	end
end

function GuideMenu:ShowFeatured(index,section)
	index = index or ZGV.db.char.lastfeatured or 1

	
	if type(index)=="string" then
		for i,dataset in ipairs(GuideMenu.Featured) do
			if dataset.group == index then 
				index = i 
				break
			end
		end
	end
	if type(index)=="string" then index = 1 end

	local data = GuideMenu.Featured[index]
	if not data then return end

	if type(section)=="string" then
		for i,dataset in ipairs(data.Expanded) do
			if dataset.blocktype == section then 
				section = i 
				break
			end
		end
	end
	if type(section)=="string" then section = 1 end


	ZGV.db.profile.featuredhide = ZGV.db.profile.featuredhide or {}

	local featuredhide = ZGV.db.profile.featuredhide

	GuideMenu.ActiveFeatured[1] = index
	GuideMenu.ActiveFeatured[2] = section
	GuideMenu.ActiveFeatured[3] = featuredhide

	GuideMenu.FeaturedThread = nil
	GuideMenu.FeaturedThread = coroutine.create(CreateFeatured)
	if GuideMenu.FeaturedThreadTimer then
			ZGV:CancelTimer(GuideMenu.FeaturedThreadTimer)
			GuideMenu.FeaturedThreadTimer = nil
			collectgarbage() -- we orphaned old thread, so let's clean up a little

	end
	
	GuideMenu.FeaturedThreadTimer = GuideMenu.FeaturedThreadTimer or ZGV:ScheduleRepeatingTimer(function()
		local ok,ret = coroutine.resume(GuideMenu.FeaturedThread,index,section,featuredhide)
		if not ok then print(ok,ret) end

		if coroutine.status(GuideMenu.FeaturedThread )=="dead" then
			ZGV:CancelTimer(GuideMenu.FeaturedThreadTimer)
			GuideMenu.FeaturedThreadTimer = nil
		end
	end, 0.01)
end

function GuideMenu:GetSectionMenu()
	if GuideMenu.CurrentPath=="Recent" then return "Recent" end
	if GuideMenu.CurrentPath=="Suggested" then return "Suggested" end

	return "General"
end

function GuideMenu:ToggleSectionMenu()
	local MF = GuideMenu.MainFrame

	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==ZGV.Frame.Controls.MenuHostGuides then CloseDropDownForks() return end

	local menu = GuideMenu:GetSectionMenu()

	UIDropDownFork_SetAnchor(ZGV.Frame.Controls.MenuHostGuides, 0, 0, "TOP",MF.CenterColumn.SectionInfo.SettingsButton,"BOTTOM")
	EasyFork(RightColumnSubmenus[menu],ZGV.Frame.Controls.MenuHostGuides,nil,0,0,"MENU",10)
	DropDownForkList1:SetPoint("RIGHT",MF.RightColumn)
	UIDropDownFork_SetWidth(ZGV.Frame.Controls.MenuHostGuides,210,10)
end



local function OptionButton_OnClick(button)
	GuideMenu.current_option = button.optiongroupblizname
	GuideMenu.MainFrame.WideColumnOptions.AceContainer.optiontable = button.optiontable
	GuideMenu.MainFrame.WideColumnOptions.AceContainer.groupname = button.optiongroupblizname
	GuideMenu:SetWideSectionHeader(button.optiontable.name)
	ZGV:ScheduleTimer(function()
		LibStub("AceConfigDialog-3.0-Z"):Open(button.optiongroupblizname,GuideMenu.MainFrame.WideColumnOptions.AceContainer)
	end,0)
	GuideMenu:HighlightOptionButton(button.optiongroupblizname)
end

function GuideMenu:ShowOptions(opt)
	opt = opt or "ZygorGuidesViewer-Display"
	self:ShowOptionButtons()
	for i,but in pairs(self.MainFrame.MenuOptions.buttons) do  if but.optiongroupblizname==opt or but.optiongroupname==opt then OptionButton_OnClick(but) return end end
end

local option_icons = { "general","stepdisplay","display","travelsystem","poi","notification","gear","itemscore","gold","extras","profile","about","share" }
local option_icons_rev = {}
for k,v in ipairs(option_icons) do option_icons_rev[v]=k end

function GuideMenu:ShowOptionButtons()
	GuideMenu.MainFrame.MenuOptions.buttons = GuideMenu.MainFrame.MenuOptions.buttons or {}
	local previous_button

	local iconset = ZGV.IconSets.OptionsIcons

	for i,opttableord in ipairs(ZGV.optiontables_ordered) do  repeat
		local opttable = ZGV.optiontables[opttableord.name]
		if opttable.guiHidden then break end --continue
		if opttable._onlybliz then break end --continue
		if not GuideMenu.MainFrame.MenuOptions.buttons[i] then
			local icon = iconset[opttableord.name]
			local button = GuideMenu:MakeMenuButton("ButtonOptions_"..opttableord.name,icon.label,iconset.file,icon[1],iconset.cols,icon[2],iconset.rows)
			--button:SetHighlightSprite(1,2,i,16)
			button:SetParent(GuideMenu.MainFrame.MenuOptions)
			if previous_button then
				button:SetPoint("TOPLEFT",previous_button,"BOTTOMLEFT",0,-6)
			else
				button:SetPoint("TOPLEFT",GuideMenu.MainFrame.MenuOptions,"TOPLEFT",0,-10)
			end
			button.optiongroupblizname = opttableord.blizname
			button.optiongroupname = opttableord.name
			button.optiontable = opttable
			button:SetScript("OnClick",OptionButton_OnClick)
			button:Show()
			previous_button = button
			GuideMenu.MainFrame.MenuOptions.buttons[i] = button
		end
	until true  end
	GuideMenu.MainFrame.MenuOptions:Show()
end

function GuideMenu:CreateOptions()
end

function GuideMenu:HighlightOptionButton(blizname)
	for i,button in pairs(self.MainFrame.MenuOptions.buttons) do  -- not ipairs, since array does not start at 1
		button:SetLockHighlight(button.optiongroupblizname==blizname)  
		button.LeftDecor:SetShown(button.optiongroupblizname==blizname)
	end
end

function GuideMenu:RefreshOptions(blizname)
	blizname = blizname or self.current_option
	if self.MainFrame and self.MainFrame.MenuOptions:IsShown() and self.current_option == blizname then ZGV:OpenOptions(blizname) end
end