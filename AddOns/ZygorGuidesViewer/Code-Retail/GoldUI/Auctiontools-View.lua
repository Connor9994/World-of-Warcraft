local name,ZGV = ...

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ZGVG=ZGV.Gold
local TRENDS_OLD = 24 * 4 --h

ZGV.Gold.Appraiser = ZGV.Gold.Appraiser or {}
local Appraiser = ZGV.Gold.Appraiser

local ui = ZGV.UI
local SkinData = ui.SkinData

local Scan = ZGV.Gold.Scan

local GameTooltip=GameTooltip

local HEADER_HEIGHT = 30		-- exported to GoldHelp.lua
local FOOTER_HEIGHT = 25
local SCROLL_WIDTH=15		-- read only

local TAB_NAVIGATION_INVENTORY = {"stacksize", "stackcount", "bidgold", "bidsilver", "bidcopper", "buyoutgold", "buyoutsilver", "buyoutcopper"}
local TAB_NAVIGATION_SEARCH = {"searchname", "pricegold", "pricesilver", "pricecopper", "maxcount"}

local SELL_INVENTORY_COLUMS = {
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="ITEM", width=190, titlej="LEFT", textj="LEFT", name="name" },
	{ title="PRICE", width=100, titlej="RIGHT", textj="RIGHT", name="price" },
	{ title="", width=15, titlej="CENTER", textj="CENTER", name="status", type="icon", onentertooltip=function(row) GameTooltip:AddLine( row.item.statusText ) end },
}

local SELL_INVENTORY_DATA = {
	ROW_COUNT = 19,
	LIST_WIDTH = 380,
	LIST_HEIGHT = 440,
	POSX = 8,
	POSY = -8,
	STRATA = "HIGH",
	HIDESCROLLBAR = false,
}


local BUY_INVENTORY_COLUMS = {
	{ title="", width=15, headerwidth=15, titlej="LEFT", textj="LEFT", name="icon", type="icon", onentertooltip=function(row) Appraiser:ShowItemTooltip(row.item) end},
	{ title="ITEM", width=190, titlej="LEFT", textj="LEFT", name="name" },
	{ title="MAX PRICE", width=100, titlej="RIGHT", textj="RIGHT", name="price" },
	{ title="", width=15, titlej="CENTER", textj="CENTER", name="status", type="icon", onentertooltip=function(row) if not row.item then return end GameTooltip:AddLine( row.item.statusText ) end },
}

local BUY_INVENTORY_DATA = {
	ROW_COUNT = 19,
	LIST_WIDTH = 380,
	LIST_HEIGHT = 440,
	POSX = 8,
	POSY = -8,
	STRATA = "HIGH",
	HIDESCROLLBAR = false,
}


local DROPDOWN_STYLE=2

function Appraiser:ApplySkin()
	local MF = self.MainFrame 
	if not MF then return end

	local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
	local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacity or  1

	MF:SetBackdrop(SkinData("AuctionToolsBackdrop"))
	MF:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("AuctionToolsBackdropColor"))))
	MF:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("AuctionToolsBackdropBorderColor"))))

	MF.HeaderFrame:SetBackdropColor(unpack(SkinData("AuctionToolsHeaderFooterBackground")))
	MF.HeaderFrame:SetBackdropBorderColor(unpack(SkinData("AuctionToolsHeaderFooterBorder")))

	MF.FooterFrame:SetBackdropColor(unpack(SkinData("AuctionToolsHeaderFooterBackground")))
	MF.FooterFrame:SetBackdropBorderColor(unpack(SkinData("AuctionToolsHeaderFooterBorder")))

	MF.ContentFrame:SetBackdropColor(ZGV.F.HTMLColor("#222222ff"))
	MF.ContentFrame:SetPoint("LEFT",MF,"LEFT",SkinData("AuctionToolsMargin"),0)
	MF.ContentFrame:SetPoint("RIGHT",MF,"RIGHT",-SkinData("AuctionToolsMargin"),0)

	MF.ProgressFrame:SetTexture(SkinData("ProgressBarTextureFile"))
	MF.ProgressFrame:SetDecor(SkinData("ProgressBarDecorUse"))
	MF.ProgressFrame.Texture:SetVertexColor(unpack(SkinData("ProgressBarTextureColor")))

end

function Appraiser:CreateMainFrame()
	if not AuctionHouseFrame then return end -- starter accounts
	if self.MainFrame then return end

	self.MainFrame = CHAIN(ui:Create("Frame",AuctionHouseFrame,"ZygorAppraiser"))
		:SetFrameStrata("HIGH")
		:SetFrameLevel(AuctionHouseFrame:GetFrameLevel()+1)
		:SetWidth(398)
		:EnableMouse(true)
		.__END

	local MF = self.MainFrame 
	MF:ClearAllPoints()
	MF:SetPoint("TOPLEFT",AuctionHouseFrame,"TOPRIGHT",1,1)
	MF:SetPoint("BOTTOMLEFT",AuctionHouseFrame,"BOTTOMRIGHT",1,1)

	-- Header
	MF.HeaderFrame = CHAIN(ui:Create("Frame",MF))
		:SetPoint("TOPLEFT",1,-1)
		:SetPoint("TOPRIGHT",-1,-1)
		:SetHeight(HEADER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+2)
		.__END

		MF.HeaderFrame.Logo = CHAIN(MF.HeaderFrame:CreateTexture())
			:SetPoint("TOP",MF.HeaderFrame,"TOP",0,-3) 
			:SetSize(100,25)
			:SetTexture(SkinData("TitleLogo"))
		.__END

		MF.HeaderFrame.Title = CHAIN(MF.HeaderFrame:CreateFontString())
			:SetPoint("TOPLEFT",8,-8)
			:SetFont(FONT,14) 
			:SetTextColor(unpack(SkinData("ActiveSectionColor")))
			:SetText("Zygor Inventory")
		 .__END

		MF.HeaderFrame.close = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",-5,-5)
			:SetSize(17,17)
			:SetScript("OnClick", function() ZGV.db.profile.auction_enable=false Appraiser:HideWindow() end)
			.__END
		ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(MF.HeaderFrame.close)

		--[[
		MF.HeaderFrame.info = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
			:SetPoint("TOPRIGHT",MF.HeaderFrame.close,"TOPLEFT",-5,0)
			:SetSize(17,17)
			:SetScript("OnClick", function() Appraiser:ToggleHelpPage() end)
			.__END
		ZGV.ButtonSets.TitleButtons.INFO:AssignToButton(MF.HeaderFrame.info)
		--]]

		MF.HeaderFrame.goldguide = CHAIN(CreateFrame("Button", "ZA_Menu_GoldGuide" , MF.HeaderFrame))
			:SetSize(17,17)
			--:SetPoint("TOPRIGHT",MF.HeaderFrame.info,"TOPLEFT",-5,0)
			:SetPoint("TOPRIGHT",MF.HeaderFrame.close,"TOPLEFT",-5,0)
			:SetScript("OnClick", function() ZGV.Goldguide:Initialise() end)
			:SetScript("OnEnter",function()
				GameTooltip:SetOwner(MF.HeaderFrame.goldguide, "ANCHOR_CURSOR")
				GameTooltip:AddLine("Open Gold Guide")
				GameTooltip:Show()
			end)
			:SetScript("OnLeave",function()
				GameTooltip:FadeOut()
			end)
			:Show()
		.__END
		ZGV.ButtonSets.TitleButtons.GOLDGUIDE:AssignToButton(MF.HeaderFrame.goldguide)


	MF.ContentFrame = CHAIN(ui:Create("Frame", MF))
		:SetPoint("LEFT",MF,"LEFT")
		:SetPoint("RIGHT",MF,"RIGHT")
		:SetHeight(480)
		:Show()
	.__END

	MF.CoverFrame = CHAIN(ui:Create("Frame", MF.ContentFrame))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT",0,FOOTER_HEIGHT)
		:SetFrameLevel(10)
		:SetMouseClickEnabled(true)
		:SetAlpha(0.4)
		:Hide()
	.__END
	MF.CoverFrame.Spinner = CHAIN(MF.CoverFrame:CreateTexture())
		:SetPoint("CENTER")
		:SetSize(100,100)
		:SetAtlas("auctionhouse-ui-loadingspinner")
		:__CALL(function(spinner)
			spinner.anim = CHAIN(spinner:CreateAnimationGroup())
				:SetLooping("REPEAT")
				:__CALL(function(anim)
					anim.a = CHAIN(anim:CreateAnimation("ROTATION"))
						:SetDegrees(-360)
						:SetDuration(1)
					.__END
				end)
				:Play()
			.__END
		end)
	.__END -- am I taking chains too far..?
		
	-- Footer
	MF.FooterFrame = CHAIN(ui:Create("Frame",MF,"ZygorAppraiserFooter"))
		:SetPoint("TOPLEFT",MF.ContentFrame,"BOTTOMLEFT")
		:SetPoint("TOPRIGHT",MF.ContentFrame,"BOTTOMRIGHT")
		:SetHeight(FOOTER_HEIGHT)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(MF:GetFrameLevel()+1)
		.__END
		MF.FooterUpdated = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("BOTTOMLEFT",5,5)
			:SetFont(FONTBOLD,12)
			:SetText("LAST UPDATED:")
		.__END

		MF.FooterUpdatedTime = CHAIN(MF.FooterFrame:CreateFontString())
			:SetPoint("LEFT",MF.FooterUpdated ,"RIGHT",5,0)
			:SetFont(FONT,12)
			:SetText("no time")
		.__END

		MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF.FooterFrame))
			:SetPoint("BOTTOMRIGHT",-5,5)
			:SetSize(15,15)
			:SetScript("OnClick",function() ZGV:OpenOptions("gold") end)
		.__END
		ZGV.ButtonSets.TitleButtons.SETTINGS:AssignToButton(MF.FooterSettingsButton)

	MF.ScanButton = CHAIN(ui:Create("Button",MF.FooterFrame ))
		:SetSize(95,20)
		:SetPoint("BOTTOMRIGHT",MF.FooterFrame ,"TOPRIGHT", -10, 7)
		:SetFont(FONT,12)
		:SetText("Full Scan")
		:SetScript("OnClick", function(self,button) Appraiser:ScanAll() end)
		:RegisterForClicks("LeftButtonUp")
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
			 :SetText(MF.ScanButton.Tooltip)
			 --|n|n|cffff4400NOTE:|r |cffffaa00The scan feature is currently being reworked and may fail.|nTrend data downloaded by the Zygor Client should suffice|nfor Gold Guide usage, with the exception of Auctions for sniping.|r") 
			 :Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:SetPushedBackdropColor(unpack(SkinData("ButtonHighlightColor1")))
	.__END
	MF.ScanButton.Tooltip = "Scan the whole Auction House. May take some time."

	MF.AppraiseButton = CHAIN(ui:Create("Button",MF.FooterFrame ))
		:SetSize(95,20)
		:__SET("width",95)
		:SetPoint("RIGHT",MF.ScanButton ,"LEFT", -7, 0)
		:SetFont(FONT,12)
		:SetText("Appraise")
		:SetScript("OnClick", function(self,button) Appraiser:StartManualScan() end)
		:RegisterForClicks("LeftButtonUp")
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
			 :SetText("Check current prices of items listed.")
			 :Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:SetPushedBackdropColor(unpack(SkinData("Accent")))
	.__END

	MF.AbortButton = CHAIN(ui:Create("Button",MF.FooterFrame))
		:SetSize(20,20)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(self.MainFrame:GetFrameLevel()+3)
		:ClearAllPoints()
		:SetPoint("RIGHT",MF.AppraiseButton,"LEFT",-7,0)
		:SetFont(FONT,12)
		:SetText("X")
		:SetScript("OnClick",function(self,button) Appraiser:Abort() end)
		:RegisterForClicks("LeftButtonUp","RightButtonUp")
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			 :SetText("Abort")
			 :Show()
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		end)
	.__END

	MF.ProgressFrame = CHAIN(ui:Create("ProgressBar",MF.FooterFrame))
		:SetSize(MF:GetWidth()-20,7)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(self.MainFrame:GetFrameLevel()+3)
		:ClearAllPoints()
		:SetPoint("BOTTOMLEFT",MF.FooterFrame,"TOPLEFT",7,13)
		:SetPoint("RIGHT",MF.AbortButton,"LEFT",-7,0)
		:SetDecor(SkinData("ProgressBarDecorUse"))
		:SetAnim(true)
	.__END

	self.Inventory_Frame = self:MakeInventoryTable()
	self.Buy_Frame = self:MakeBuyTable()
	
	MF:Hide()
	ZGV:AddMessageHandler("SKIN_UPDATED",self.ApplySkin)
	self:ApplySkin()
end

function Appraiser:MakeOptionsButton()
	if ZGV.AuctionButtonFrame then return end
	local AuctionButtonsize=20
	local AuctionButtonradius=AuctionButtonsize/2

	self:Debug("Creating ZGV.AuctionButton")

	ZGV.db.profile.auctionhouseframe_offset = ZGV.db.profile.auctionhouseframe_offset or {770,515}
	ZGV.AuctionButtonFrame = ZGV.ChainCall(ZGV.CreateFrameWithBG("FRAME","ZygorWorldMapMenu",AuctionHouseFrame))
		:SetPoint("CENTER",AuctionHouseFrame,"BOTTOMLEFT",unpack(ZGV.db.profile.auctionhouseframe_offset))
		:SetSize(50,50)
		:SetBackdrop({bgFile="Interface\\Minimap\\MiniMap-TrackingBorder"})--,tile=true, tileSize=50})
		:SetFrameLevel(610)
		:SetScript("OnUpdate",function(self)
			if (ZGV.AuctionButton:IsDragging()) then  -- yes, it's the inside button that's dragging the parent.
				local parent = self:GetParent()
				local scale = self:GetEffectiveScale()
				local mx,my = GetCursorPosition()
				mx=mx/scale my=my/scale
				local px,py = parent:GetRect()
				self:ClearAllPoints()
				local dx,dy=min(max(mx-px+10,AuctionButtonradius),parent:GetWidth()+AuctionButtonradius),min(max(my-py-10,-AuctionButtonradius),parent:GetHeight()-AuctionButtonradius)
				self:SetPoint("CENTER",parent,"BOTTOMLEFT",dx,dy)
				ZGV.db.profile.auctionhouseframe_offset={dx,dy}
			end
		end)
		:Show()
	.__END

	ZGV.AuctionButton = ZGV.ChainCall(ZGV.CreateFrameWithBG("Button", "ZygorAuctionButton" , ZGV.AuctionButtonFrame))
		:SetSize(AuctionButtonsize,AuctionButtonsize)
		:SetPoint("TOPLEFT", ZGV.AuctionButtonFrame, "TOPLEFT", 5, -5)
		:SetBackdrop({bgFile=ZGV.SKINSDIR.."zglogo-back"})
		:SetNormalTexture(ZGV.SKINSDIR.."zglogo")
		:SetFrameLevel(611)
		:SetScript("OnClick", function() 
			ZGV.db.profile.auction_enable = not ZGV.db.profile.auction_enable
			if ZGV.db.profile.auction_enable then
				Appraiser:ShowWindow()
			else
				Appraiser:HideWindow()
			end		
		end)
		:SetScript("OnDragStart", function(self) self:GetParent():SetMovable(true) self:GetParent():StartMoving() end)  -- yes, this frame's drag initiates its parent's drag.
		:SetScript("OnDragStop", function(self) self:GetParent():StopMovingOrSizing() end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText("Toggle Auction Tools") 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:RegisterForDrag("LeftButton")
		:Show()
	.__END
	ZGV.AuctionButton:GetNormalTexture():SetTexCoord(0,0,0,1/4 , 1,0,1,1/4)
end

function Appraiser:SetAuctionButtonDisabled(disabled)
	ZGV.AuctionButtonFrame.Center:SetDesaturated(disabled)
	ZGV.AuctionButton:SetEnabled(not disabled)
end

function Appraiser:MakeInventoryTable()
	local container = CHAIN(CreateFrame("Frame", "ZA_Sell_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	--------- Inventory list ---------
	container.InventoryList = ui:Create("ScrollTable",container,"ZA_Sell_Inventory",SELL_INVENTORY_COLUMS,SELL_INVENTORY_DATA)

	container.InventoryList:SetScript("OnMouseWheel", function(frame,delta)
		self.InventoryOffset=self.InventoryOffset-delta
		ZGV:Debug("&gold appraiser update from mousescroll")
		self.needToUpdate=true
		self.MainFrame.hideTooltip=true
	end)
	container.InventoryList.scrollbar:SetScript("OnVerticalScroll",function(frame,offset)
		self.InventoryOffset=math.round(offset)
		ZGV:Debug("&gold appraiser update from scroll")
		self.needToUpdate=true
	end)

	for _,row in pairs(container.InventoryList.rows) do
		row.status:SetTexture(ZGV.IconSets.AuctionToolsPriceIcons.file)
		row:SetScript("OnClick",function(frame,button)
			if button == "LeftButton" and row.item then
				self:ActivateSellItem(row.item)
			elseif button == "RightButton" then
				self:InventoryRowMenu(row)
			end
		end)
	end

	return container
end

function Appraiser:MakeBuyTable()
	local container = CHAIN(CreateFrame("Frame", "ZA_Buy_Frame", self.MainFrame.ContentFrame ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END

	--------- Inventory list ---------
	container.ShoppingList = ui:Create("ScrollTable",container,"ZA_Shopping_Inventory",BUY_INVENTORY_COLUMS,BUY_INVENTORY_DATA)

	container.ShoppingList:SetScript("OnMouseWheel", function(self,delta)
		Appraiser.ShoppingOffset=Appraiser.ShoppingOffset-delta
		ZGV:Debug("&gold appraiser update from mousescroll")
		Appraiser.needToUpdate=true
		Appraiser.MainFrame.hideTooltip=true
	end)
	container.ShoppingList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		Appraiser.ShoppingOffset=math.round(offset)
		ZGV:Debug("&gold appraiser update from scroll")
		Appraiser.needToUpdate=true
	end)

	for _,row in pairs(container.ShoppingList.rows) do
		row.status:SetTexture(ZGV.IconSets.AuctionToolsPriceIcons.file)
		row:SetScript("OnClick",function(frame,button)
			if row.item then
				if button == "LeftButton" then
					self:ActivateBuyItem(row.item)
				elseif button == "RightButton" then
					self:ShoppingRowMenu(row)
				end
			end
		end)
	end

	local containerDetails = CHAIN(CreateFrame("Frame", nil, container ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetHeight(100)
	.__END
	container.containerDetails=containerDetails


	return container
end

function Appraiser:ShowItemTooltip(item)
	if not item then return end

	local link = item.link or item.itemlink
	local BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName

	if link then 
		_,_,_,BattlePetId,BattlePetLevel,BattlePetRarity,BattlePetHP,BattlePetAtt,BattlePetSpeed,_,BattlePetName = string.find(link,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")
	end

	if BattlePetId then -- battle pet
		BattlePetToolTip_Show(tonumber(BattlePetId), tonumber(BattlePetLevel), tonumber(BattlePetRarity), tonumber(BattlePetHP), tonumber(BattlePetAtt), tonumber(BattlePetSpeed), BattlePetName) 
		return 
	else
		if item.bag then 
			GameTooltip:SetBagItem(item.bag,item.slot) 
		elseif link then
			GameTooltip:SetHyperlink(link)
		else
			GameTooltip:SetItemByID(item.itemid) 
		end
	end
end

function Appraiser:SetCurrentTab(tabname,force)
	self:Debug("Switching from %s to %s (%sforce)",self.ActiveTab,tabname,force and "" or "not ")
	Appraiser:SetAuctionButtonDisabled(not tabname)
	if not force and self.ActiveTab == tabname then return end
	if not tabname then
		self.ActiveTab=nil
		if self.MainFrame then self.MainFrame:Hide() end
		self:Abort()
		return
	else
		self:CreateMainFrame()
		self.MainFrame:Show()
	end

	ZGV.ChainCall(self.MainFrame.AppraiseButton)
		:SetShown(tabname=="Inventory")
		:SetWidth(tabname=="Inventory" and self.MainFrame.AppraiseButton.width or 1)

	local windows = {Buy="Buy",Inventory="Sell"}
	for framename,framedispname in pairs(windows) do
		self[framename.."_Frame"]:Hide()
	end
	self[tabname.."_Frame"]:Show()

	self.MainFrame.HeaderFrame.Title:SetText(windows[tabname])

	self.ActiveTab = tabname

	self:Abort()
	self:Update("force")
end

function Appraiser:ShowWindow()
	if not ZGV.db.profile.auction_enable then return end
	if not AuctionHouseFrame then return end -- starter accounts
	
	if not self.MainFrame then self:CreateMainFrame() end

	ZGV.db.profile.IsWidgetCollapsed = ZGV.db.profile.IsWidgetCollapsed or {}
	if not ZGV.db.profile.IsWidgetCollapsed["Appraiser"] then
		ZGV.db.profile.IsWidgetCollapsed["Appraiser"] = false
	end

	self.TryingToFastScan = false
	self.InventoryOffset=0
	self.InventoryAuctionOffset=0
	self.ShoppingOffset=0
	self.SearchResultsOffset=0
	self.ShoppingAuctionOffset=0
	self.MainFrame:Show()
	self:SetCurrentTab(AuctionHouseFrame.BrowseResultsFrame:IsVisible() and "Buy" or "Inventory",true)
end

function Appraiser:HideWindow()
	if self.MainFrame then
		self.MainFrame:Hide()
	end
end

local function OldColor(timestamp,red,yellow)
	local age=time()-timestamp
	if age>red then
		return "ffff0000"
	elseif age>yellow then
		return "ffffee00"
	else
		return "ffffffff"
	end
end

function Appraiser:UpdateButtonStates()
	if not ZGV.db.char.TimeTillScan then return end
	local MF = self.MainFrame 

	if ZGV.db.char.TimeTillScan>time() then
		--MF.ScanButton.Tooltip = "Full scan will be available in "..ZGV.F.GetTimeFromSeconds(ZGV.db.char.TimeTillScan-time())
		MF.ScanButton.Tooltip = "Full scan is on cooldown. This could take 10-40 minutes but you can try again sooner."
	else
		MF.ScanButton.Tooltip = "Scan the whole Auction House. May take some time."
		ZGV.db.char.TimeTillScan = nil
	end
	if GameTooltip:IsVisible() and GameTooltip:GetOwner()==MF.ScanButton then
		GameTooltip:SetText(MF.ScanButton.Tooltip)
	end
end

local locale_hourly_intervals = {
	enUS = 2,
	esMX = 2,
	ptBR = 2,
	enGB = 1,
	frFR = 1,
	deDE = 1,
	ruRU = 1,
	itIT = 1,
	esES = 1,
	koKR = 0.5,
	zhTW = 0.5,
	zhCN = 0.5
}

local message_type_labels = {success="|cff00ff00SUCCESS:|r",error="|cffff0000ERROR:|r",alert="|cffff8800ALERT:|r",scanning1="|cffbbaa00SCANNING:|r",scanning2="|cff00aa00SCANNING:|r"}

function Appraiser:UpdateStatusBar()
	if not self.MainFrame then return end
	if not self.lastScanTime then self.lastScanTime = time() end
	if not ZGVG.Scan.db then return end

	local timestamptext,updateTitletext,lastScanStr


	if ZGVG.Scan.db.realm.LastScan then
		updateTitletext = "LAST UPDATED:"
		local hourly_interval = locale_hourly_intervals[GetLocale()] or 1
		if ZGV.do_hourly_intervals then
			timestamptext = ("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,hourly_interval*3600*2,hourly_interval*3600), ui.GetTimeStamp(ZGV.db.realm.LastScan))
		else
			timestamptext = ("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,3600*2,60*10), ui.GetTimeStamp(ZGV.db.realm.LastScan))
		end
		if time()-ZGV.db.realm.LastScan > 3600*2 then
			timestamptext = timestamptext .. "|r - " .. L["gold_app_old_scan_data_short"]
		end
	else
		updateTitletext = message_type_labels.alert
		timestamptext = L["gold_app_no_scan_data_short"]
	end

	if not ZGV.Gold.guides_loaded then
		updateTitletext = message_type_labels.alert
		timestamptext = L["gold_app_no_goldguide_short"]
	elseif not (ZGV.Gold.servertrends and ZGV.Gold.servertrends.date) then
		updateTitletext = message_type_labels.alert
		timestamptext = L["gold_app_no_servertrends_short"]
	elseif ZGV.Gold.servertrends.date then
		local timeSinceLast = time() -  ZGV.Gold.servertrends.date

		if timeSinceLast > TRENDS_OLD * 3600 then	-- Data is old
			updateTitletext = message_type_labels.alert
			timestamptext = L["gold_app_old_servertrends_short"]:format(ui.GetTimeStamp(tonumber(ZGV.Gold.servertrends.date)))
		end
	end

	local Scan = ZGV.Gold.Scan


	local page_text = ""
	
	local data_text = "All auctions"
	if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		data_text = (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) or ""
	elseif self.manualScanning then
		data_text = self.manualScanningName or ""
	elseif self.UpdateScanRunningName then
		data_text = self.UpdateScanRunningName
	elseif self.BuyOutSearchName then
		data_text = self.BuyOutSearchName
	end


	local progress_dots = math.floor((debugprofilestop()-Scan.last_scan_start_time)%2000 / 500)+1  -- 1..4
	local progress = string.rep(".",progress_dots)
	local preprogress = ""

	if self.manualScanning then
		preprogress = ("%d/%d (%s)"):format(self.manualScanningDone,self.manualScanningTotal,self.manualScanningName)
	elseif self.manualBuyScanning then
		preprogress = ("%d/%d: "):format(self.manualBuyScanningDone,self.manualBuyScanningTotal)
	elseif not (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
		-- long scan, provide progress %
		if Scan.state =="SS_SCANNING" or Scan.state =="SS_SCANSINGLE" then
			progress = (" %d%%"):format((Scan.scan_progress or 0)*100)
		elseif Scan.state =="SS_ANALYZING" then
			progress = (" %d%%"):format((Scan.analysis_progress or 0)*100)
		end
	end


	if Scan.state == "SS_QUERYING" then
		updateTitletext = message_type_labels.scanning1
		if (Scan.queried_by_name or Scan.queried_by_partial_name or Scan.queried_by_link) then
			timestamptext = preprogress .. data_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or "") .. progress
		else
			-- full scan - show dots for query timeout
			timestamptext = preprogress .. data_text .. (ZGV.db.profile.debug_display and " [stage 1/3: querying]" or " - initiating...")
		end
	
	elseif Scan.state =="SS_RECEIVING" then
		updateTitletext = message_type_labels.scanning2
		local replicate_count = C_AuctionHouse.GetNumReplicateItems()
		local last_replicate = ZGVG.Scan:GetLastReplicateCount()
		local count = last_replicate and ("%d%%"):format(max(0,min(100,(replicate_count/last_replicate)*100)))
									or ("%d k"):format(replicate_count/1000)
		timestamptext = preprogress .. data_text .. (ZGV.db.profile.debug_display and " [stage 1b/3: receiving]" or (" - receiving: %s..."):format(count))
	
	elseif Scan.state =="SS_SCANNING" or Scan.state =="SS_SCANSINGLE" then
		updateTitletext = message_type_labels.scanning2
		timestamptext = preprogress .. data_text .. (ZGV.db.profile.debug_display and " [stage 2/3: scanning %s]" or " - processing: %s..."):format(progress)
	
	elseif Scan.state =="SS_ANALYZING" then
		updateTitletext = message_type_labels.scanning2
		timestamptext = preprogress .. data_text .. (ZGV.db.profile.debug_display and " [stage 3/3: analyzing %s]" or " - analyzing: %s..."):format(progress)
	--[[
	elseif Appraiser.ScanIsRunning or Appraiser.ActiveShoppingAddItem or (Appraiser.ScanItemsQueue and next(Appraiser.ScanItemsQueue)) then
		-- show Analyzing to avoid idle flashes
		updateTitletext = "|cffff0000SCANNING:|r"
		timestamptext = preprogress .. data_text .. " (awaiting next item)" .. progress
	--]]
	elseif Scan.state == "SS_MESSAGE" then
		updateTitletext = message_type_labels[(Scan.message_data and Scan.message_data.kind) or "error"]
		timestamptext = Scan.message_data and Scan.message_data.msg

	elseif Scan.state =="SS_IDLE" then
		if self.manualScanning or self.manualBuyScanning then
			updateTitletext = message_type_labels.scanning1
			timestamptext = preprogress
		end
	end

	if ZGV.db.profile.debug_display then  updateTitletext = updateTitletext .. " [" .. Scan.state .. ", " .. (self.manualScanning and "manual " or "") .. (self.manualBuyScanning and "manualbuy " or "") .. "]"  end

	self.MainFrame.FooterUpdated:SetText(updateTitletext)
	self.MainFrame.FooterUpdatedTime:SetText(timestamptext)
end

function Appraiser:UpdateProgressBar()
	local pf = self.MainFrame.ProgressFrame

	pf:SetShown((Scan.state~="SS_IDLE" and Scan.state~="SS_MESSAGE") or self.manualBuyScanning or self.manualScanning)
	self.MainFrame.AbortButton:SetShown(pf:IsShown())

	local scanprogress,bluetint
	local Scan = ZGV.Gold.Scan
	if Scan.state=="SS_QUERYING" then
		-- progress unknown, and may even time out - show a dying progress bar!
		scanprogress=0.1 - min(0.1,(GetTime() - Scan.last_scan_start_time) / Scan.QUERY_TIMEOUT * 0.1)
	elseif Scan.state=="SS_NEEDTOQUERY" then
		scanprogress=0.1
	elseif Scan.state=="SS_RECEIVING" then
		-- progress unknown, can only show a "pulsing" progress bar
		local last_replicate = ZGVG.Scan:GetLastReplicateCount()
		if last_replicate then
			local replicate_count = C_AuctionHouse.GetNumReplicateItems()
			scanprogress=0.0 + 0.70--*min(1,max(0,replicate_count/last_replicate)) -- 0 to70
		else
			local replicate_count = C_AuctionHouse.GetNumReplicateItems()
			last_replicate = 300000
			bluetint = true
			scanprogress=0.0 + 0.70--*min(1,max(0,replicate_count/last_replicate)) -- 0 to 70
		end

	elseif Scan.state=="SS_SCANNING" or Scan.state=="SS_SCANSINGLE" then
		scanprogress=0.70+0.20*(Scan.scan_progress or 0) -- 70 to 90
		--[[
		local total_pages = math.ceil((Scan.total_count or 0)/50)
		if total_pages and total_pages>0 then
			local current_page = Scan.scan_page or 0
			pf:SetPercent(current_page/total_pages*100)
		else
			pf:SetPercent(0)
		end
		--]]
	elseif Scan.state =="SS_ANALYZING" then
		scanprogress=0.9+0.1*(Scan.analysis_progress or 0) -- 90 to 100
	else
		scanprogress=0
	end

	--print(("msd=%d mst=%d mbsd=%d mbst=%d  %s + scanprogress %.1f"):format(self.manualScanningDone or -1,self.manualScanningTotal or -1, self.manualBuyScanningDone or -1,self.manualBuyScanningTotal or -1,Scan.state,scanprogress))

	local page=1
	local pages=1

	if bluetint then
		pf:SetColor(0.3,0.3,1,1)
	else
		pf:SetColor(unpack(SkinData("ProgressBarTextureColor")))
	end

	--if self.ActiveTab == "Inventory" then
		if self.manualScanning then
			if Scan.state=="SS_IDLE" then scanprogress=0.9 end  -- SS_IDLE happens AFTER a scan, not before
			scanprogress = self.manualScanningDone/self.manualScanningTotal
			pf:SetPercent(scanprogress*100,"nozero")
		elseif self.manualBuyScanning then
			if Scan.state=="SS_IDLE" then scanprogress=0.9 end
			if pages>1 and pages<1000 then scanprogress = (((page-2)/pages) + (1/pages))*scanprogress end
			pf:SetPercent(((self.manualBuyScanningDone-1+scanprogress)/self.manualBuyScanningTotal) * 100,"nozero")
		elseif pages>1 and pages<1000 and (Scan.state=="SS_QUERYING" or Scan.state=="SS_NEEDTOQUERY" or Scan.state=="SS_RECEIVING" or Scan.state=="SS_SCANNING" or Scan.state=="SS_ANALYZING") then
			scanprogress = (((page-2)/pages) + (1/pages))
			pf:SetPercent(scanprogress*100,"nozero")
		else
			pf:SetPercent(scanprogress*100,"nozero")
		end
	--else
--		pf:SetPercent(0)
--	end
end

function Appraiser:ShowDisabledTooltip(object)
	GameTooltip:SetOwner(object,"ANCHOR_RIGHT") 
	GameTooltip:SetText("Due to a bug in Blizzard's in Auction House functionality,\npets and equipment can only be posted one by one.") 
	GameTooltip:Show()
end



function Appraiser:TabKeyNavigation(parent,orderarray,field)
	-- Get current index
	local orderindex,nextindex,previndex
	for oi,orderfield in pairs(orderarray) do if orderfield==field then orderindex=oi break end end

	nextindex,previndex = orderindex+1, orderindex-1
	if orderindex == #orderarray then nextindex=1 end
	if orderindex == 1 then previndex=#orderarray end

	parent[orderarray[orderindex]]:HighlightText(0,0)

	if ( IsShiftKeyDown() ) then
		parent[orderarray[previndex]]:SetFocus()
		parent[orderarray[previndex]]:HighlightText()
	else
		parent[orderarray[nextindex]]:SetFocus()
		parent[orderarray[nextindex]]:HighlightText()
	end
end


function Appraiser:ApplyDebugDisplay()
end

function Appraiser:ScrollToSellingItem()
	for ri,row in ipairs(self.Inventory_Frame.InventoryList.rows) do
		if row.item==self.ActiveSellingItem then return end  -- it's visible, never mind
	end
	-- scroll to show index'th row
	local index = self:GetSellingItemIndex(self.ActiveSellingItem)
	if not index then return end
	local count=#self.InventoryItems
	local halfrows=floor(self.Inventory_Frame.InventoryList:CountRows()/2)
	self.InventoryOffset=min(max(index,halfrows),count-halfrows)-halfrows
	ZGV:Debug("&gold appraise update from ScrollToSellingItem")
	self.needToUpdate=true
end

function Appraiser:GetSellingItemIndex(curitem)
	for ri,item in ipairs(self.InventoryItems) do
		if item==curitem then return ri end
	end
end