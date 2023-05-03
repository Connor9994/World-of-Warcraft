local name,ZGV = ...

local Popup = { ["private"] = {} }
local PopupHandler = { ["Popup"] = Popup }
local L = ZGV.L
local CHAIN = ZGV.ChainCall

ZGV.PopupHandler = PopupHandler
ZGV.Poup = ZGV.PopupHandler
PopupHandler.Queue = {}
PopupHandler.IsPopupVisible = false
PopupHandler.popups = {}

local table,string,tonumber,tostring,ipairs,pairs,setmetatable = table,string,tonumber,tostring,ipairs,pairs,setmetatable

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local MAXWIDTH=350

local round = math.round

--[[
	Once a popup is created, you can modifiy the apperance as it however you see fit.

	Functions that can be overwritten:
		Popup:OnAccept()
		Popup:OnDecline()
		Popup:OnEscape()
		Popup:OnMinimize()
		Popup:AdjustSize()
		Popup:OnSettings()
		Popup:OnClose() --should not be needed most of the time
		Popup:SetText(text,text2) --Shouldn't be needed

	If none of these are overwritten then it will be just a very generic popup that hides itself when anything is done.

]]

local popupTypes = {
	["sis"] = 0,
	["monk"] = 1,
	["dungeon"] = 2,
	["mount"] = 3,
	["gear"] = 4,
	["panda"] = 5,
	["loot"] = 6,
	["default"] = 7,
	["legion"] = 8,
	["skills"] = 0,
}

function PopupHandler:NewPopup(name,ptype,skin)
	assert(name, "All popups must have a name")
	assert(popupTypes[ptype], "All popups must have a type. Use default if it doesn't matter.")

	local popup = PopupHandler:CreatePopup(name,skin)

	for f,fun in pairs(Popup) do
		popup[f]=fun
	end

	popup.type = ptype

	PopupHandler.popups[name]=popup

	return popup
end

--Functions that can and should be overwritten when a popup is made.

function Popup:OnAccept()
	self:Debug("No custom Accept Function was given")
end

function Popup:OnDecline()
	self:Debug("No custom Decline Function was given")
end

function Popup:OnEscape()
	self:Debug("No custom Escape Function was given")
end

-- text,tooltipText,priority,poptime,removetime,quiet

-- notifcationText is what is displayed next to the icon in the NC --required
-- Title is title text displayed above notificationText --required
-- tooltipText can also be a function or a string or nil to use notifcationText
-- priority handles the order of icons in NC
-- poptime is how long it should toast
-- removetime will remove the icon after a set time. Seconds or nil
-- quiet will make it not toast
function Popup:returnMinimizeSettings()
	self:Debug("No custom Minimize Function was given")

	local notifcationText = "Generic Popup Notification"
	local title = L['notifcenter_generic_title']
	local tooltipText = "Click to show the generic popup again"
	local priority = 100
	local removetime = nil
	local poptime = 0.5
	local quiet = nil
	--local onShow = function...

	return notifcationText,title,tooltipText,priority,poptime,removetime,quiet --,onShow
end

function Popup:OnClose()
	self:Debug("No custom Close Function was given")
end

function Popup:AdjustSize()
	local offsets = 10 + 10 + 5 --Logo and top + text and buttons + buttons and bottom
	local height = offsets + self.text:GetStringHeight() + self.text2:GetStringHeight() + self.text3checkbox:GetStringHeight() + self.morebutton:GetHeight() + (self.logo:IsVisible() and self.logo:GetHeight() or 5) + self.acceptbutton:GetHeight()
	local minWidth = self.acceptbutton:GetWidth() + self.declinebutton:GetWidth() + self.settings:GetWidth()
	local width = min(max(minWidth,max(self.text:GetStringWidth(),self.text2:GetStringWidth())) + 50 , MAXWIDTH)

	self:Debug("No custom AdjustSize Function was given x:%d y:%d",width,height)

	self:SetSize(width,height)
end

function Popup:OnSettings()
	self:Debug("No custom Settings Function was given")
	ZGV:OpenOptions("notification") --Opens to notifications where popups are handled.
end

function Popup:SetText(text,text2,text3)
	self.text:SetText(text)
	self.text2:SetText(text2)
	self.text3checkbox:SetText(text3)
	self:AdjustSize()
end

function Popup:Show(unique) --Overwrite show... !!!! Real show is saved in SavedShow
	if unique and ZGV.PopupHandler:IsInNC(self:GetName()) then return end
	ZGV.PopupHandler:QueuePush(self)
end

--These should not be touched by anything else.

function Popup.private:Accept(popup)
	popup:Debug("Accept pressed")

	popup:OnAccept()

	popup.private:Hide(popup)
end

function Popup.private:Decline(popup)
	popup:Debug("Decline pressed")

	popup:OnDecline()

	popup.private:Hide(popup)
end

function Popup.private:Escape(popup)
	if not popup:IsShown() then return end

	popup:Debug("Escape pressed")

	popup:OnEscape()

	popup.private:Hide(popup)
end

function Popup.private:More(popup)
	popup:Debug("More pressed")

	popup:OnMore()

	popup.private:Hide(popup)
end

function Popup.private:Hide(popup)
	popup:Debug("Hiding")
	--Popup:OnHide is still hooked so that we don't have to prehook it like we do Show
	popup:Hide() --simple just hide it. Functioned incase we want to do anything else later.
end

--  time = amount of time to fade out popups in.
--  hideDelay = time between automatically hiding popups
function Popup.private:Minimize(popup,time,hideDelay)
	time = time or 0.5

	-- Alpha to 0 to make it appear to disappear. Then hide it a moment later. Hiding it causes another popup to show up.
	--popup:SetAlpha(0.0)
	popup:Hide()
	--ZGV:ScheduleTimer(function() popup:Hide() end, hideDelay or 1.0)

	if popup.noMinimizeToNC then return end

	local onClick = function()
		popup.shownFromNC=true
		if popup:GetName() == "ZygorItemPopup" then
			ZGV.ItemScore.Upgrades.forcefull = true
		elseif popup:GetName() == "ZGVSkillsTraining" then
			ZGV.Skills.forcefull = true
		elseif popup:GetName() == "ZygorMountPopup" or popup:GetName() == "ZygorMonkPopup" or popup:GetName() == "ZygorDungeonPopup" then
			ZGV.GuideProto.forcefull = true
		end
		popup:Show()
	end

	local texture,texcoords = PopupHandler:GetNCTextureInfo(popup.type)

	local text,title,tooltipText,priority,poptime,removetime,quiet,OnOpen,data,ncname,onclickdef = popup:returnMinimizeSettings()
	--function Notification:AddEntry(id, title, text, texture, texcoords, onClick, tooltip,  priority, poptime, removetime, quiet,onShow )

	ZGV.NotificationCenter:AddEntry(
		ncname or popup:GetName(),
		title,
		text,
		texture,
		texcoords,
		onclickdef or onClick,
		tooltipText,
		priority or 10,
		poptime,
		removetime,
		quiet,
		OnOpen,
		popup.type,
		data,
		"nocounter")

	popup:Debug("Popup Minimized. Getting sent to NC")
end

function Popup.private:Close(popup)
	popup:Debug("Popup Closed")

	popup:OnClose()

	StaticPopup_DisplayedFrames[6]=nil

	popup.shownFromNC = nil
	ZGV.PopupHandler.IsPopupVisible = false --Update this here because  Popup:Hide gets covered by
	ZGV.PopupHandler.CurrentPopup = nil
	ZGV:ScheduleTimer(function() ZGV.PopupHandler:QueuePop() end,2) --pop the next popup in the queue.
end

function Popup.private:Settings(popup)
	popup:Debug("Default settings pressed. Going to Notifications")

	popup:OnSettings()
end

--Creating the popup and handling of the queue and some utility functions for popups.

function PopupHandler:CreatePopup(name,skin)
	ZGV.PopupHandler:Debug("Creating a Popup: %s",name)
	local ui = ZGV.UI

	local SkinData = ui.SkinData

	--This is the object we will be returning
	local popup = CHAIN(ui:Create("Frame",UIParent,name))
		:SetSize(375,150) -- The height can change later.
		:CanDrag(1)
		:SetAlpha(ZGV.db.profile.opacitymain) --This only gets set once per popup. --TODO it should be able to change dynamically.
		:SetPoint("TOP",0,-50)
		:SetFrameStrata("MEDIUM")
		:Hide() -- Done before script is set. After self.private is not intialized yet.
		:SetScript("OnShow", function(self)
			self:AdjustSize()

			-- Makes esc get rid of the popup without bringing up interface window
			self.holder:Show()
			StaticPopup_DisplayedFrames[6]=self.holder

			ZGV.PopupHandler.IsPopupVisible = true
			ZGV.PopupHandler.CurrentPopup = self
		end)
		:SetScript("OnHide", function(self)
			for i=1,#ZGV.PopupHandler.Queue do
				if ZGV.PopupHandler.Queue[i] == self then tremove(ZGV.PopupHandler.Queue,i) end
			end
			self.private:Close(self)
		end)
	.__END

	-- Place holder to make esc work properly without hiding the popup. We hide it outself.
	popup.holder = CreateFrame("Frame")
	popup.holder.hideOnEscape = true

	popup.logo = CHAIN(popup:CreateTexture()) :SetPoint("TOP",0,-10) :SetSize(unpack(SkinData("TitleLogoSize"))) :SetTexture(SkinData("TitleLogo")) .__END

	popup.logobackground = CHAIN(ui:Create("Frame",popup))
		:SetPoint("TOP")
		:SetPoint("LEFT",0,0)
		:SetPoint("RIGHT",0,0)
		:SetPoint("BOTTOM",popup.logo,"BOTTOM",0,0)
		:SetFrameLevel(2)
	.__END
	popup.logo:SetParent(popup.logobackground)

	popup.background = CHAIN(ui:Create("Frame",popup))
		:SetPoint("TOP",popup.logobackground,"BOTTOM",0,0)
		:SetPoint("LEFT",0,0)
		:SetPoint("RIGHT",0,0)
		:SetPoint("BOTTOM",0,0)
		:SetFrameLevel(1)
		:SetBackdropColor(0,0,0,0)
		:SetBackdropBorderColor(0,0,0,0)
	.__END

	popup.beta=CHAIN(popup:CreateFontString(nil,"ARTWORK"))
		:SetPoint("LEFT",popup.logo,"RIGHT",-3,3)
		:SetFont(FONT,ZGV.db.profile.fontsecsize) --text is set later --TODO make font size change dynamically
		:SetText("BETA")
		:Hide()
	.__END

	--Text can be at the longest 350 before wrapping, if it is shorter then width gets adjusted later

	popup.text=CHAIN(popup:CreateFontString(nil,"ARTWORK"))
		:SetPoint("TOP",popup.background,"TOP",0,-5)
		:SetPoint("LEFT",popup.background,"LEFT",5,0)
		:SetPoint("RIGHT",popup.background,"RIGHT",-5,0)
		:SetFont(FONT,ZGV.db.profile.fontsecsize) --text is set later --TODO make font size change dynamically
		:SetText("This is a Zygor Popup with no text...")
	.__END

	popup.text2=CHAIN(popup:CreateFontString(nil,"ARTWORK")) --Not needed in most popups, but is used in SIS
		:SetPoint("TOP",popup.text,"BOTTOM")
		:SetPoint("LEFT",popup.background,"LEFT",5,0)
		:SetPoint("RIGHT",popup.background,"RIGHT",-5,0)
		:SetFont(FONTBOLD,ZGV.db.profile.fontsize+2) --text is set later
	.__END

	popup.morebutton = CHAIN(ui:Create("Button",popup))
		:SetPoint("BOTTOM",popup,"BOTTOM",0,5)
		:SetSize(80,1)
		:SetShown(false)
		:SetText('more.......')
		:SetFont(FONTBOLD,ZGV.db.profile.fontsize)
		:SetScript("OnClick",function() popup.private:More(popup) end)
	.__END
	local morebutton_onenter = popup.morebutton:GetScript("OnEnter")
	local morebutton_onleave = popup.morebutton:GetScript("OnLeave")
	popup.morebutton:SetScript("OnEnter",function(self) morebutton_onenter(self) if popup.more_tooltip then CHAIN(GameTooltip):SetOwner(popup,"ANCHOR_BOTTOM") :SetText(popup.more_tooltip) :Show() end  end)
	popup.morebutton:SetScript("OnLeave",function(self) morebutton_onleave(self) GameTooltip:Hide() end)

	popup.acceptbutton = CHAIN(ui:Create("Button",popup))
		:SetPoint("BOTTOMRIGHT",popup.morebutton,"TOP",-5,5)
		:SetSize(80,20)
		:SetText(L['static_accept'])
		:SetFont(FONTBOLD,ZGV.db.profile.fontsize)
		:SetScript("OnClick",function() popup.private:Accept(popup) end)
	.__END
	local acceptbutton_onenter = popup.acceptbutton:GetScript("OnEnter")
	local acceptbutton_onleave = popup.acceptbutton:GetScript("OnLeave")
	popup.acceptbutton:SetScript("OnEnter",function(self) acceptbutton_onenter(self) if popup.accept_tooltip then CHAIN(GameTooltip):SetOwner(popup,"ANCHOR_BOTTOM") :SetText(popup.accept_tooltip) :Show() end  end)
	popup.acceptbutton:SetScript("OnLeave",function(self) acceptbutton_onleave(self) GameTooltip:Hide() end)

	popup.declinebutton = CHAIN(ui:Create("Button",popup))
		:SetPoint("BOTTOMLEFT",popup.morebutton,"TOP",5,5)
		:SetSize(80,20)
		:SetText(L['static_decline'])
		:SetFont(FONTBOLD,ZGV.db.profile.fontsize)
		:SetScript("OnClick",function() popup.private:Decline(popup) end)
	.__END
	local declinebutton_onenter = popup.declinebutton:GetScript("OnEnter")
	local declinebutton_onleave = popup.declinebutton:GetScript("OnLeave")
	popup.declinebutton:SetScript("OnEnter",function(self) declinebutton_onenter(self) if popup.decline_tooltip then CHAIN(GameTooltip):SetOwner(popup,"ANCHOR_BOTTOM") :SetText(popup.decline_tooltip) :Show() end  end)
	popup.declinebutton:SetScript("OnLeave",function(self) declinebutton_onleave(self) GameTooltip:Hide() end)

	popup.settings = CHAIN(CreateFrame("Button",nil,popup))
		:SetPoint("BOTTOMRIGHT",popup,"BOTTOMRIGHT",-10,5) :SetSize(15,15)
		:SetScript("OnClick",function() popup.private:Settings(popup) end) --Meaning to pass nothing into OpenOptions, want to see notifications tab.
		:SetScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(popup,"ANCHOR_BOTTOM") :SetText(L['static_settings_tip']) :Show() end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	ZGV.ButtonSets.TitleButtons.SETTINGS:AssignToButton(popup.settings)

	popup.text3checkbox = CHAIN(ui:Create("ToggleButton",popup,"Checkboxers"))
		:SetPoint("BOTTOMLEFT",popup,"BOTTOMLEFT",13,30)
		:SetSize(10,10)
		:Hide()
		:SetToggle(true)
		--:SetScript("OnClick",function(me) me:Toggle(not me.curToggle) ZGV.GuideProto:prepareGuideToTurnInsOnly(ZGV.CurrentGuide.title) end) --Not needed in most popups, but is used in SIS
	.__END
	--ZGV.F.AssignButtonTexture(popup.text3checkbox,(SkinData("TitleButtons")),11,32)
	
	popup.minimize = CHAIN(CreateFrame("Button",nil,popup))
			:SetPoint("TOPRIGHT",popup,"TOPRIGHT",-5,-5) :SetSize(15,15)
		--	:SetScript("OnClick",function() popup.private:Minimize(popup) end)
			:SetScript("OnEnter",function(self) if popup.noMinimizeToNC then return end CHAIN(GameTooltip):SetOwner(popup,"ANCHOR_BOTTOM") :SetText(L['static_minimize_tip']) :Show() end)
			:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END

	if ZGV.IsRetail then
		popup.minimize:SetScript("OnClick",function() popup.private:Minimize(popup) ZGV.GuideProto.forcefull = false ZGV.ItemScore.Upgrades.forcefull = false end)
	else
		popup.minimize:SetScript("OnClick",function() popup.private:Minimize(popup) ZGV.Skills.forcefull = false ZGV.GuideProto.forcefull = false ZGV.ItemScore.Upgrades.forcefull = false end)
	end

	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(popup.minimize)

	hooksecurefunc("StaticPopup_EscapePressed",function() popup.private:Escape(popup) end)

	popup.SavedShow = popup.Show --Save show... Good idea....

	function popup:ApplySkin()
		local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
		local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacity or  1

		CHAIN(popup)
			:SetBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)

		CHAIN(popup.logobackground)
			:SetBackdrop(SkinData("NotificationPopupHeaderBackdrop"))
			:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("NotificationPopupHeaderBackdropColor"))))
			:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("NotificationPopupHeaderBackdropBorderColor"))))
			:SquareCorners(false,false,true,true)

		CHAIN(popup.background)
			:SetBackdrop(SkinData("NotificationPopupContentBackdrop"))
			:SetBackdropColor(unpack(SkinData("NotificationPopupContentBackdropColor")))
			:SetBackdropBorderColor(unpack(SkinData("NotificationPopupContentBackdropBorderColor")))

		if SkinData("NotificationPopupShowHeader") then
			popup.logo:Show()
			popup.logobackground:Show()
			popup.background:SetPoint("TOP",popup.logobackground,"BOTTOM",0,0)
			popup.background:SquareCorners(true,true,false,false)
		else
			popup.logo:Hide()
			popup.logobackground:Hide()
			popup.background:SetPoint("TOP",popup,"TOP",0,0)
			popup.background:SquareCorners(false,false,false,false)
		end

		CHAIN(popup.morebutton)
			:SetBackdrop(SkinData("ButtonBackdrop1"))
			:SetBackdropColor(unpack(SkinData("ButtonColor1")))
			:SetBackdropBorderColor(unpack(SkinData("ButtonBorderColor1")))
			:SetHighlightBackdropColor(unpack(SkinData("ButtonHighlightColor1")))
			:SetPushedBackdropColor(unpack(SkinData("Accent")))

		CHAIN(popup.acceptbutton)
			:SetBackdrop(SkinData("ButtonBackdrop1"))
			:SetBackdropColor(unpack(SkinData("ButtonColor1")))
			:SetBackdropBorderColor(unpack(SkinData("ButtonBorderColor1")))
			:SetHighlightBackdropColor(unpack(SkinData("ButtonHighlightColor1")))
			:SetPushedBackdropColor(unpack(SkinData("Accent")))

		CHAIN(popup.declinebutton)
			:SetBackdrop(SkinData("ButtonBackdrop1"))
			:SetBackdropColor(unpack(SkinData("ButtonColor1")))
			:SetBackdropBorderColor(unpack(SkinData("ButtonBorderColor1")))
			:SetHighlightBackdropColor(unpack(SkinData("ButtonHighlightColor1")))
			:SetPushedBackdropColor(unpack(SkinData("Accent")))

		popup.text:SetPoint("TOP",popup.background,"TOP",0,SkinData("NotificationPopupShowHeader") and -5 or -15)


		if popup.AdjustSize then popup:AdjustSize() end
	end

	ZGV:AddMessageHandler("SKIN_UPDATED",popup.ApplySkin)
	popup:ApplySkin()

	return popup
end

function PopupHandler:TestForPositionAdjustment(popup)
	do return end

	local nc = ZGV.NotificationCenter

	if not nc.frame:IsVisible() --disabled or not shown
	or nc.config.anchor~='top' then return end --NC is not on top.

	if popup:GetTop() > nc.frame:GetBottom()
	and popup:GetRight() > nc.frame:GetLeft()
	and popup:GetLeft() < nc.frame:GetRight() then

		local pos, _, pos2, x , y = popup:GetPoint(1)
		local diff = popup:GetTop() - nc.frame:GetBottom() + 10 -- difference and 10 extra

		popup:Debug("Shifting down %d units",diff)

		popup:ClearAllPoints()
		popup:SetPoint(pos,UIParent,pos,x,y - diff)
	end
end

--[[
	Skips using the Queue... DANGER

	Used by Gear System because it manages it's own queue.
--]]

function PopupHandler:ShowPopup(popup)
	if not popup then return end

	if not ZGV.IsRetail then
		if (popup.floaty and ZGV.db.profile.n_popup_toast) and (not ZGV.ItemScore.Upgrades.forcefull and not ZGV.Skills.forcefull and not ZGV.GuideProto.forcefull) then
			popup:LayoutFloaty()
		else
			popup:LayoutFull()
		end
	else
		if (popup.floaty and ZGV.db.profile.n_popup_toast) and (not ZGV.ItemScore.Upgrades.forcefull and not ZGV.GuideProto.forcefull) then
			popup:LayoutFloaty()
		else	
			popup:LayoutFull()
		end
	end

	popup:Debug("Showing this popup now.")

	-- Don't show minimize button if we not suppose to or no NC
--	popup.minimize:SetShown( not popup.noMinimize and ZGV.db.profile.n_nc_enabled )
--	popup.minimize:SetShown(not popup.noMinimize or (ZGV.NotificationCenter.FloatingToast and ZGV.NotificationCenter.FloatingToast:IsVisible()))
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		popup.minimize:SetShown(not popup.noMinimize and ZGV.db.profile.n_nc_enabled and (not ZGV.db.profile.n_popup_toast or ZGV.ItemScore.Upgrades.forcefull or ZGV.Skills.forcefull or ZGV.GuideProto.forcefull))
	else
		popup.minimize:SetShown(not popup.noMinimize and ZGV.db.profile.n_nc_enabled and (not ZGV.db.profile.n_popup_toast or ZGV.ItemScore.Upgrades.forcefull or ZGV.GuideProto.forcefull))
	end

	self:TestForPositionAdjustment(popup)

	popup:SavedShow() --Show was overwrote and saved here.
	popup:SetAlpha(ZGV.db.profile.opacitymain) -- alpha may have been changed.
end

function PopupHandler:QueuePop() --popups are shown here.
	if not self.Queue or #self.Queue < 1 or self.IsPopupVisible then return end
	local popup = tremove(self.Queue,1)

	popup:Debug("popped.")

	self:ShowPopup(popup)

	if not popup.shownFromNC and	-- If shown from NC then don't put it back there.
	( ZGV.NotificationCenter:EntryExists(popup:GetName()) or --popup is already on the NC bar, so just update it with a toast
	(ZGV.db.profile.n_nc_no_popups and popup.minimize:IsShown()) ) then --We don't want to see any popups, just send everything to the NC center. Unless you are not allowed.
		popup:Debug("Getting automatically sent to Notification Center")
		popup.private:Minimize(popup,0,3) -- Send to NC with instantly fading it. But wait 3 seconds to show/minimize the next popup.
	elseif ZGV.db.profile.n_popup_enable and ZGV.db.profile.n_popup_hideall and not ZGV.Frame:IsVisible() then
		-- Will suppress all popups if suppose to. BUT if they are still allowing us to send them to the NC then do that first.
		popup:Debug("Suppressed. ZGVF Hidden")
		popup.private:Hide(popup)
	end
end

function PopupHandler:IsInNC(name)
	for i,popup in ipairs(self.Queue) do if popup:GetName()==name then return true end end
	if self.CurrentPopup and self.CurrentPopup:GetName()==name then return true end
end

function PopupHandler:QueuePush(popup)
	if not popup then return end
	popup:Debug("pushed to be shown later")
	tinsert(self.Queue,popup)
	if not self.IsPopupVisible then self:QueuePop() end
end

function PopupHandler:GetNCTextureInfo(popupType)
	if not popupType then self:Debug("No Popup type given. going to use default") popupType = "default" end

	local texture,texcoords

	--if popupType == "default" then
	--	texture = ZGV.DIR.."\\Skins\\Default\\Stealth\\zglogo_circ.tga"
	--	texcoords = {0,1,0,.25}
	--else

	texture = ZGV.SKINSDIR.."icons-notificationcenter"

	local typeNum = popupTypes[popupType]
	if not typeNum then assert("No popup type for "..popupType) end

	texcoords = {.125*(typeNum),.125*(typeNum+1),0,1}
	--end

	return texture,texcoords
end

function Popup:Debug(msg,...)
	PopupHandler:Debug(self:GetName(),msg,...)
end

function PopupHandler:Debug(name,msg,...)
	ZGV:Debug("&popup "..name..": "..msg,...) --little ugly..
end