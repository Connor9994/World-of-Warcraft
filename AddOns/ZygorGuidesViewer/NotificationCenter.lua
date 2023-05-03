local name,ZGV = ...

local tinsert,tremove,print,ipairs,pairs,wipe,floor,ceil=tinsert,tremove,print,ipairs,pairs,wipe,floor,ceil

local Notification = {}

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local ui = ZGV.UI
local SkinData = ui.SkinData

ZGV.NotificationCenter=Notification

function Notification.OnUpdate()
	local now = time()
	local changed = false

	-- remove notifications that are now outdated
	for i=#Notification.Entries,1,-1 do
		local entry = Notification.Entries[i]
		if entry.removetime and entry.removetime<now then
			table.remove(Notification.Entries)
			changed = true
		end
	end

	if changed then
		Notification:HideNotifications()
		if ZGV.Frame.Controls.Notifications.Counter:IsVisible() then
			Notification:UpdateCounter()
		end
	end

	if not ZGV.Frame.Controls.MenuHostNotifications:IsVisible() then return end

	Notification.HideTiming = Notification.HideTiming or 0

	if ZGV.Frame.Controls.Notifications:IsMouseOver() then
		Notification.HideTiming = 0
		return
	end

	for _,button in ipairs(Notification.Buttons) do
		if button:IsMouseOver() then
			Notification.HideTiming = 0
			return
		end
	end

	Notification.HideTiming = Notification.HideTiming + 1

	if Notification.HideTiming>100 then
		Notification:HideNotifications()
	end

end

function Notification.OnEvent(self,event,payload)
	Notification:SaveNotifications()
end

function Notification:DoStartup()
	ZGV:AddEventHandler("PLAYER_LOGOUT",Notification.OnEvent)
	ZGV.UpdateCentral:AddHandler(Notification.OnUpdate)

	Notification.Entries = {}
	Notification.Buttons = {}

	Notification:AddedSavedNotifications()

	Notification.Empty ={
		title=L["notifcenter_no_entries"],
		text=L["notifcenter_no_entries"],
		notCheckable=1,
	}

	Notification.Reset ={
		title=L["notifcenter_reset"],
		text=L["notifcenter_reset"],
		notCheckable=1,
		func = Notification.RemoveAllEntries
	}

	ZGV:AddMessageHandler("SKIN_UPDATED",Notification.ApplySkin)
	Notification:ApplySkin()
end

function Notification:AddEntry(ident, title, text, texture, texcoords, onClick, tooltip, priority, poptime, removetime, quiet, onOpen, notiftype, data, nocounter )
	local flashText = text
	data = data or {}
	onClick = onClick or function() end
	assert(type(ident)=="string", "ident must be a string")
	assert(type(texture)=="string", "Texture must be a string")
	if type(text)=="table" then flashText = text[2] text = text[1] end
	assert(type(title)=="string", "Text must be a string")
	assert(type(text)=="string", "Text must be a string")

	if onClick then assert(type(onClick)=="function", "OnClick must be a function") end
	if data then assert(type(data)=="table", "Data must be a table if it is there.") end

	Notification:RemoveEntry(ident)

	local entry = {
		ident=ident,
		title=title,
		text=text,
		texture=texture,
		texcoords=texcoords,
		tooltip=tooltip,
		priority=priority,
		poptime=poptime,
		removetime=removetime and (time()+removetime),
		quiet=quiet,
		notiftype=notiftype,
		data=data,

		onClick=onClick,
		onOpen=onOpen,
	}


	table.insert(Notification.Entries,1,entry)

	if not quiet then
		Notification:ShowOneNotification(ident)
	end

	if not (data.guide and data.dontdelete) then
		entry.dontSave = true
	end

	if not nocounter then
		ZGV.db.char.NotificationsCounterHidden = false
		Notification:UpdateCounter()
	end

	return button
end

function Notification:UpdateCounter()
	local counter = #Notification.Entries
	if counter>0 then
		ZGV.Frame.Controls.Notifications.Counter:Show()
		ZGV.Frame.Controls.Notifications.Counter.Text:SetText(counter)
	else
		ZGV.Frame.Controls.Notifications.Counter:Hide()
	end
end

function Notification:FloatFontSize()
	local toastfontsize = ZGV.db.profile.toastfontsize
	if Notification.FloatingToast then
		local frame = Notification.FloatingToast
		frame.frameFS:SetFont(ZGV.FontBold,toastfontsize)
		frame.centerbtnFS:SetFont(ZGV.Font,toastfontsize)
		frame.leftbtnFS:SetFont(ZGV.Font,toastfontsize)
		frame.rightbtnFS:SetFont(ZGV.Font,toastfontsize)
		frame.dungeon1FS:SetFont(ZGV.Font,toastfontsize)
		frame.dungeon2FS:SetFont(ZGV.Font,toastfontsize)

		frame:SetWidth(frame.frameFS:GetWidth() + 30)
		frame.centerbtn:SetWidth(frame.centerbtnFS:GetWidth() + 36)
		frame.leftbtn:SetWidth(frame.leftbtnFS:GetWidth() + 36)
		frame.rightbtn:SetWidth(frame.rightbtnFS:GetWidth() + 36)
	else
		Notification:CreateFloatingFrame()
		Notification:HideFloatingToast()
	end
end

function Notification:CreateFloatingFrame(notiftype, guide, param,param1,param2,popup)

--	if not ZGV.Frame:IsVisible() then return end
	if notiftype == "creature" and not ZGV.db.profile.n_popup_toast then return end

	--Frame already created - show it, schedule hide and call the layout function
	Notification.FadeTimerOn = true
	if Notification.FloatingToast then
		local frame = Notification.FloatingToast
		if ZGV.db.profile.n_popup_candrag == 1 then
			frame:CanDrag(false)
		else
			frame:CanDrag(true)
		end

		if not ZGV.db.profile.toastframe_anchor or ZGV.db.profile.n_popup_candrag == 1 then
			frame:ClearAllPoints()
			frame:SetPoint("TOP",0,-50)
		else
			ZGV.F.SetFrameAnchor(Notification.FloatingToast,ZGV.db.profile.toastframe_anchor)
		end

		frame:SetScript("OnDragStop", function(self)
				self:StopMovingOrSizing()
				ZGV.F.SaveFrameAnchor(Notification.FloatingToast,"toastframe_anchor")
			end)

		if (notiftype == "creature" or notiftype == "custom") and ZGV.Frame:IsVisible() then
			Notification:FloatingToastLayout(notiftype,guide,param,param1,param2) 
		end
		if ZGV.Frame:IsVisible() then Notification:ScheduleToastHide(notiftype,guide,popup) end
	else

--	local toastfontsize = 11
	local toastfontsize = ZGV.db.profile.toastfontsize

	--Container frame
		local frame
		local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
		local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacity or  1

		frame = CHAIN(ZGV.UI:Create("Frame", nil, "ZGVToastFrame",nil))
			:SetBackdrop(SkinData("NotificationPopupHeaderBackdrop"))
			:SetBackdropColor(set_alpha(OPACITY,34/255,34/255,34/255,1))
			:SetBackdropBorderColor(set_alpha(OPACITY,34/255,34/255,34/255,1))
			:SetFrameStrata("MEDIUM")
			:Hide()
		.__END

		Notification.FloatingToast = frame

		if ZGV.db.profile.n_popup_candrag == 1 then
			frame:CanDrag(false)
		else
			frame:CanDrag(true)
		end

		if not ZGV.db.profile.toastframe_anchor or ZGV.db.profile.n_popup_candrag == 1 then
			frame:SetPoint("TOP",0,-50)
		else
			ZGV.F.SetFrameAnchor(Notification.FloatingToast,ZGV.db.profile.toastframe_anchor)
		end

		frame:SetScript("OnDragStop", function(self)
				self:StopMovingOrSizing()
				ZGV.F.SaveFrameAnchor(Notification.FloatingToast,"toastframe_anchor")
			end)

		frame.frameFS = CHAIN(frame:CreateFontString())
			:SetFont(ZGV.FontBold,toastfontsize)
			:SetTextColor(1,1,1,1)
			:SetPoint("CENTER",frame)
			:SetPoint("TOP",frame, -10)
			:SetHeight(35)
			:SetText("")
		.__END

		frame.frameFSNormal = CHAIN(frame:CreateFontString())
			:SetFont(ZGV.Font,toastfontsize)
			:SetTextColor(1,1,1,1)
			:SetHeight(35)
			:SetText("")
		.__END

	--Screenshot for multiple guide dungeons, riding and monk daily
		frame.img = frame:CreateTexture()
		frame.img:SetPoint("TOP",frame.frameFS, "BOTTOM", -5)
	
	--Central 'Load guide' button for the riding skill, monk daily, creature detector and single guide dungeon toast
		frame.centerbtn = CHAIN(ZGV.UI:Create("Button",frame,"ToastCenterButton",3))
			:SetPoint("CENTER",frame)
			:SetPoint("BOTTOM",frame, "BOTTOM", 0,3)
			:SetSize(90,16)
		.__END

		frame.centerbtnFS = CHAIN(frame.centerbtn:CreateFontString())
			:SetFont(ZGV.Font,toastfontsize)
			:SetTextColor(1,1,1,1)
			:SetPoint("CENTER",frame.centerbtn)
			:SetHeight(35)
			:SetText("")
		.__END

	--Container frame for the left and right buttons
		frame.leftrightcontainer = CHAIN(ZGV.UI:Create("Frame", nil))
			:SetBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)
			:CanDrag(false)
			:SetPoint("CENTER",frame)
			:SetPoint("BOTTOM",frame, "BOTTOM", 0,3)
			:SetSize(190,16)
		.__END

	--Left side 'See spells/See upgrades' button for spells and gear
		frame.leftbtn = CHAIN(ZGV.UI:Create("Button",frame,"ToastLeftButton",3))
			:SetPoint("TOPLEFT",frame.leftrightcontainer)
			:SetSize(90,16)
		.__END

		frame.leftbtnFS = CHAIN(frame.leftbtn:CreateFontString())
			:SetFont(ZGV.Font,toastfontsize)
			:SetTextColor(1,1,1,1)
			:SetPoint("CENTER",frame.leftbtn)
			:SetHeight(35)
			:SetText("")
		.__END

	--Right side 'See spells/See upgrades' button for spells and gear
		frame.rightbtn = CHAIN(ZGV.UI:Create("Button",frame,"ToastRightButton",3))
			:SetPoint("TOPRIGHT",frame.leftrightcontainer)
			:SetSize(90,16)
		.__END

		frame.rightbtnFS = CHAIN(frame.rightbtn:CreateFontString())
			:SetFont(ZGV.Font,toastfontsize)
			:SetTextColor(1,1,1,1)
			:SetPoint("CENTER",frame.rightbtn)
			:SetHeight(35)
			:SetText("")
		.__END
	
	--Icons for the gear toast
		frame.icon1 = CHAIN(ZGV.UI:Create("Button",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END


		frame.icon2 = CHAIN(ZGV.UI:Create("Button",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END

		frame.icon3 = CHAIN(ZGV.UI:Create("Button",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END

		frame.icon4 = CHAIN(ZGV.UI:Create("Button",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END

		frame.icon5 = CHAIN(ZGV.UI:Create("Button",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END

		frame.iconcontainer = CHAIN(ZGV.UI:Create("Frame", nil))
			:SetBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)
			:CanDrag(false)
			:SetPoint("CENTER",frame)
			:SetHeight(20)
		.__END

	--Icons for the compact skill toast
		frame.skill1 = CHAIN(CreateFrame("Button","SkillIcon01",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END


		frame.skill2 = CHAIN(CreateFrame("Button","SkillIcon02",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END

		frame.skill3 = CHAIN(CreateFrame("Button","SkillIcon03",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END

		frame.skill4 = CHAIN(CreateFrame("Button","SkillIcon04",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END

		frame.skill5 = CHAIN(CreateFrame("Button","SkillIcon05",frame))
			:SetSize(20,20)
			:SetPoint("TOP",frame.frameFS,"BOTTOM",10,0)
		.__END

		frame.skillcontainer = CHAIN(ZGV.UI:Create("Frame", nil))
			:SetBackdropColor(0,0,0,0)
			:SetBackdropBorderColor(0,0,0,0)
			:CanDrag(false)
			:SetPoint("CENTER",frame)
			:SetHeight(20)
		.__END

	--Two transparent default buttons for the dungeon double guide toasts
		frame.dungeon1 = CHAIN(CreateFrame("Button","ToastDungeonLink",frame))
			:SetPoint("LEFT",frame,"LEFT")
			:SetPoint("TOP",frame.frameFS,"BOTTOM")
			:SetSize(150,10)
		.__END
		frame.dungeon2 = CHAIN(CreateFrame("Button","ToastQuestsLink",frame))
			:SetPoint("LEFT",frame,"LEFT")
			:SetPoint("TOP",frame.frameFS,"BOTTOM",0,-20)
			:SetSize(150,10)
		.__END
		frame.dungeon1FS = CHAIN(frame.dungeon1:CreateFontString())
			:SetPoint("TOP",frame.dungeon1,"TOP")
			:SetPoint("LEFT",frame, "LEFT", 15)
			:SetFont(ZGV.Font,toastfontsize)
			:SetTextColor(1,1,1,1)
			:SetSize(150,10)
			:SetJustifyH("LEFT")
		.__END
		frame.dungeon2FS = CHAIN(frame.dungeon2:CreateFontString())
			:SetPoint("TOP",frame.dungeon2,"TOP")
			:SetPoint("LEFT",frame, "LEFT")
			:SetFont(ZGV.Font,toastfontsize)
			:SetTextColor(1,1,1,1)
			:SetSize(150,10)
			:SetJustifyH("LEFT")
		.__END

		frame.message = CHAIN(CreateFrame("Button","ToastDungeonLink",frame))
			:SetPoint("CENTER",frame)
		.__END
		frame.message:Hide()
		frame.messageFS = CHAIN(frame.message:CreateFontString())
			:SetPoint("CENTER",frame.message)
			:SetFont(ZGV.Font,toastfontsize)
			:SetTextColor(1,1,1,1)
			:SetSize(150,10)
			:SetJustifyH("LEFT")
		.__END

		frame.icon1:Hide()
		frame.icon2:Hide()
		frame.icon3:Hide()
		frame.icon4:Hide()
		frame.icon5:Hide()

	--Call the layout function and schedule hide
		if (notiftype == "creature" or notiftype == "custom") and ZGV.Frame:IsVisible() then Notification:FloatingToastLayout(notiftype,guide,param,param1,param2) end
		if ZGV.Frame:IsVisible() then Notification:ScheduleToastHide(notiftype,guide,popup) end
	end

end

function Notification:ScheduleToastHide(notiftype,guide,popup)
	local t = ZGV.db.profile.nctoastduration * 5
	Notification.ToastHideTimer = ZGV:ScheduleTimer(function()
		local isOver = MouseIsOver(Notification.FloatingToast)
		if not isOver then
			Notification:HideFloatingToast(notiftype,guide,popup)
		else
			Notification:ScheduleToastHide(notiftype,guide,popup)
		end
	end,t)
end

function Notification:HideFloatingToast(notiftype,guide,popup)

--Hide the main frame elements (because the layout may change the next time the toast is summoned)
	local frame = Notification.FloatingToast
	
	if frame:IsVisible() and frame:GetAlpha() == 1 then
		ZGV.UIFrameFade.UIFrameFadeOut(frame, ZGV.db.profile.toastfadetimer, 1, 0)
		ZGV:ScheduleTimer(function()
			frame.img:Hide()
			frame.centerbtn:Hide()
			frame.leftbtn:Hide()
			frame.rightbtn:Hide()
			frame.dungeon1:Hide()
			frame.dungeon2:Hide()
			frame.message:Hide()
			frame.frameFSNormal:SetText("")
			Notification:HideIcons()
		end,ZGV.db.profile.toastfadetimer)
		Notification.FadeTimerOn = false
	end

--Send to NC if nothing was clicked
	if popup and (popup.type ~= "gear" or (ZGV.ItemScore.Upgrades.UpgradeQueueCount > 0 and not ZGV.ItemScore.Upgrades.forcefull)) then
		popup.private:Minimize(popup)
	elseif popup and popup.type == "gear" and (ZGV.ItemScore.Upgrades.UpgradeQueueCount == 0 or ZGV.ItemScore.Upgrades.forcefull) then
		ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
	end
end

function Notification:HideIcons()
	if not ZGV.IsRetail and ZGV.Skills.ToastSkillCompactArray then
		for i,icon in ipairs(ZGV.Skills.ToastSkillCompactArray) do
			icon:Hide()
		end
	end
	if not ZGV.IsRetail and ZGV.Skills.ToastSkillIconArray then
		for i,icon in ipairs(ZGV.Skills.ToastSkillIconArray) do
			icon:Hide()
		end
	end
	if not ZGV.IsRetail and ZGV.Skills.ToastIconTextArray then
		for i,icontxt in ipairs(ZGV.Skills.ToastIconTextArray) do
			icontxt:Hide()
		end
	end

	if ZGV.ItemScore.Upgrades.ToastIconArray then
		for i,icon in ipairs(ZGV.ItemScore.Upgrades.ToastIconArray) do
			icon:Hide()
		end
	end
end

function Notification:FloatingToastLayout(notiftype,guide,param,param1,param2)

	local frame = Notification.FloatingToast

	if notiftype == "custom" then
		Notification:HideIcons()
		frame.leftbtn:Hide()
		frame.rightbtn:Hide()
		frame.img:Hide()
		frame.centerbtn:Hide()
		frame.frameFS:SetText("Zygor Messages:")

		frame.frameFSNormal:SetPoint("CENTER",frame)
		frame.frameFSNormal:SetPoint("TOP",frame, "TOP",0,-25)
		frame.frameFSNormal:SetText(param)

		frame:SetWidth(frame.frameFSNormal:GetWidth() + 30)
		frame:SetHeight(58)
		frame:Show()
		ZGV.UIFrameFade.UIFrameFadeIn(frame, ZGV.db.profile.toastfadetimer, 0, 1)
	else
		if param then
			Notification:HideIcons()
			frame.leftbtn:Hide()
			frame.rightbtn:Hide()
			frame:Show()
			frame.centerbtn:Show()
			local name, id
			if param == "pet" then
				name, id = C_PetJournal.GetPetInfoBySpeciesID(param2)
			elseif param == "mount" then
				name,_, id = GetSpellInfo(param2)
			else
				name = "A new "
			end
			frame.img:SetTexture(id)
			frame.img:SetSize(25,25)
			frame.img:Show()
			if not param1 then
				frame.frameFS:SetText(ZGV.L['toasts_creature_new']:format("ff00e9ff",name, "ffffffff",param))
			else
				frame.frameFS:SetText(ZGV.L['toasts_creature_owned']:format("ff00e9ff",name,"ffffffff",param,"ffc4c4c4",param)) 
			end
			frame.centerbtnFS:SetText("Load guide")
			frame.centerbtn:SetScript("OnClick", function()
				ZGV.Tabs:LoadGuideToTab(guide.title)
				frame:Hide()
			end)
			ZGV.UIFrameFade.UIFrameFadeIn(frame, ZGV.db.profile.toastfadetimer, 0, 1)
			frame:SetWidth(frame.frameFS:GetWidth() + 60)
			frame:SetHeight(85)
		end
	end

end

Notification.MenuItems = {}
function Notification:ShowNotifications()
	table.wipe(Notification.MenuItems)

	for index,entry in ipairs(Notification.Entries) do
		local data = {
			text = entry.text,
			icon = entry.texture,
			func = entry.onClick,
			notCheckable=1,
			spacing = 5,
		}

		if entry.texcoords then
			data.tCoordLeft = entry.texcoords[1]
			data.tCoordRight = entry.texcoords[2]
			data.tCoordTop = entry.texcoords[3]
			data.tCoordBottom = entry.texcoords[4]
		end

		table.insert(Notification.MenuItems,data)
		if index<#Notification.Entries then table.insert(Notification.MenuItems,UIDropDownFork_separatorInfo) end
	end


	if #Notification.Entries==0 then
		table.insert(Notification.MenuItems,Notification.Empty)
	else
		table.insert(Notification.MenuItems,UIDropDownFork_separatorInfo)
		table.insert(Notification.MenuItems,Notification.Reset)
	end

	UIDropDownFork_SetAnchor(ZGV.Frame.Controls.MenuHostNotifications, 0, 0, "TOP", ZGV.Frame.Controls.Notifications, "BOTTOM")
	EasyFork(Notification.MenuItems,ZGV.Frame.Controls.MenuHostNotifications,nil,0,0,"MENU",10)
	DropDownForkList1:SetPoint("RIGHT",ZGV.Frame,"RIGHT")

	ZGV.db.char.NotificationsCounterHidden = true
	ZGV.Frame.Controls.Notifications.Counter:Hide()
end

function Notification:ShowOneNotification(ident)
	local entry
	for index,notification in ipairs(Notification.Entries) do
		if notification.ident==ident then
			entry = notification
			break
		end
	end

	if not entry then return end

	table.wipe(Notification.MenuItems)

	local data = {
		text = entry.text,
		icon = entry.texture,
		func = entry.onClick,
		notCheckable=1,
		spacing = 5,
	}

	if entry.texcoords then
		data.tCoordLeft = entry.texcoords[1]
		data.tCoordRight = entry.texcoords[2]
		data.tCoordTop = entry.texcoords[3]
		data.tCoordBottom = entry.texcoords[4]
	end

	table.insert(Notification.MenuItems,data)

	UIDropDownFork_SetAnchor(ZGV.Frame.Controls.MenuHostNotifications, 0, 0, "TOPRIGHT", ZGV.Frame.Controls.Notifications, "BOTTOMRIGHT")
	EasyFork(Notification.MenuItems,ZGV.Frame.Controls.MenuHostNotifications,nil,0,0,"MENU",10)

	ZGV:ScheduleTimer(Notification.HideNotifications, 2.0)

end

function Notification:HideNotifications()
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==ZGV.Frame.Controls.MenuHostNotifications then CloseDropDownForks() return end
end

function Notification:AddedSavedNotifications()
	if not ZGV.db.char.notifications then return end

	local hide_counter = ZGV.db.char.NotificationsCounterHidden

	for id,info in pairs(ZGV.db.char.notifications) do
		local myId,title,text,texture,texCoord,OnClick,OnEnter,priority,poptime,removetime,quiet,OnOpen,myType,addtime,guideData,data

		local guide = ZGV:GetGuideByTitle(id)

		myId = id
		myType = info[1]
		title = info[2]
		text = info[3]
		addtime = info[4]
		texture = info[5] or ""
		texCoord = info[6]
		data = info[7] or {}
		quiet = true -- don't pop saved notifies

		if info[1] == "pet" then
			ZGV.CreatureDetector:AddGuideToDetectedGuides(guide)
			if data.owned then
				OnClick = function(self)
					ZGV.CreatureDetector.OnClick_owned(guide) end
			else
				OnClick = function(self)
					ZGV.CreatureDetector.OnClick(guide) end
			end

			OnEnter = function(self) local position,x,y = Notification:GetTooltipPosition() ZGV.CreatureDetector:ShowTooltip(guide,self,position,x,y) end
			guide.is_hunter_pet = data.is_hunter_pet
			guideData = guide
		elseif info[1] == "sis" or info[1] == "mount" or info[1] == "monk" then
			guideData = guide
			OnClick = function(self) ZGV.Tabs:LoadGuideToTab(guide) Notification:RemoveEntry(myId) Notification:UpdateCounter() end
		elseif info[1] == "legion" then
			guideData = guide
			OnClick = function(self) ZGV:PLAYER_LEVEL_UP(nil,data.level) Notification:RemoveEntry(myId) Notification:UpdateCounter() end
		end

		data.time = addtime
		data.guide = guideData

		Notification:AddEntry(
			myId,
			title,
			text,
			texture,
			texCoord,
			OnClick,
			OnEnter,
			priority,
			poptime,
			removetime,
			quiet,
			OnOpen,
			myType,
			data)
	end

	if hide_counter then
		ZGV.db.char.NotificationsCounterHidden = true -- need to set it back, since AddEntry defaults to showing the counter
		ZGV.Frame.Controls.Notifications.Counter:Hide()
	end

	--Notification:UpdateCounter()
end

function Notification:SaveNotifications()
	ZGV.db.char.notifications  = ZGV.db.char.notifications or {}
	wipe(ZGV.db.char.notifications)

	local saved = ZGV.db.char.notifications

	for i,notif in ipairs(Notification.Entries) do
		-- Loop through all current notifcations
		if notif.dontSave then
			-- noop
			-- entry is shown, but not stored in saved vars
		elseif notif.notiftype == "pet" then
			saved[notif.ident] = {
				notif.notiftype,
				notif.title,
				notif.text,
				notif.addtime,
				notif.texture,
				notif.texcoords,
				notif.data,
			}
		elseif notif.notiftype == "sis" or notif.notiftype == "mount" or notif.notiftype == "monk" or notif.notiftype == "legion" then
			local guideTitle = notif.data.guide.title
			saved[guideTitle] = {
				notif.notiftype,
				notif.title,
				notif.text,
				notif.addtime,
				notif.texture,
				notif.texcoords,
				notif.data,
			}
		end
	end
end


function Notification:ApplySkin()
	ZGV.Frame.Controls.Notifications.Counter.BG:SetVertexColor(unpack(SkinData("NotificationBubbleColor")))
	if ZGV.Frame.Controls.MenuHostNotifications then
		CHAIN(ZGV.Frame.Controls.MenuHostNotifications)
			:SetBackdrop(SkinData("NotificationBackdrop"))
			:SetBackdropColor(unpack(SkinData("NotificationBackdropColor")))
			:SetBackdropBorderColor(unpack(SkinData("NotificationBackdropBorderColor")))
	end
end

function Notification:RemoveEntry(ident)
	for index,entry in ipairs(Notification.Entries) do
		if entry.ident==ident then
			table.remove(Notification.Entries,index)
			Notification:HideNotifications()
			return
		end
	end
end

function Notification:RemoveAllEntries()
	table.wipe(Notification.Entries)
	Notification:HideNotifications()
	Notification:UpdateCounter()
end


function Notification:EntryExists(ident)
	for index,entry in ipairs(Notification.Entries) do
		if entry.ident==ident then
		--	Spoo(entry)
			return true
		end
	end
	return false
end

function Notification:UpdateEnable()

end

function Notification:GetButton()
	for _,button in ipairs(Notification.Buttons) do
		if not button.Used then return button end
	end

	local button = CreateFrame("BUTTON",nil,ZGV.Frame,"ZGV_Notification_Button_Template")
	table.insert(Notification.Buttons,button)

	return button
end

function Notification:CreateStaticToastFrame()

    Notification.StaticToast=CHAIN(CreateFrame("Frame",nil,UIParent))
        :SetSize(100,100)
        :SetPoint("CENTER")
        :Show()
    .__END

    Notification.StaticToast.Text = CHAIN(Notification.StaticToast:CreateFontString())
        :SetFont(FONT,16,"OUTLINE")
        :SetPoint("CENTER")
        :SetJustifyH("CENTER")
        :SetJustifyV("TOP")
        :SetText()
        :SetTextColor(unpack(SkinData("Accent")))
        :SetWidth(300)
        :SetHeight(300)
        :SetWordWrap(true)
        :Show()
    .__END

    Notification.StaticToast.ShowAnim = CHAIN(Notification.StaticToast:CreateAnimationGroup())
        :SetLooping("NONE")
        :SetScript("OnPlay", function() 
		Notification.StaticToast:Show()
        end)
      .__END

      Notification.StaticToast.HideAnim = CHAIN(Notification.StaticToast:CreateAnimationGroup())
        :SetLooping("NONE")
        :SetScript("OnFinished", function() 
		Notification.StaticToast:Hide()
        end)
	 :SetScript("OnStop", function() 
	 	Notification.StaticToast:Hide()
        end)
      .__END

    Notification.StaticToast.HideAnim.anim = CHAIN(Notification.StaticToast.HideAnim:CreateAnimation("Alpha"))
        :SetDuration(0.5)
	:SetFromAlpha(1)
        :SetToAlpha(0)
    .__END

    Notification.StaticToast.ShowAnim.anim = CHAIN(Notification.StaticToast.ShowAnim:CreateAnimation("Alpha"))
        :SetDuration(0.5)
        :SetToAlpha(1)
    .__END

end

function Notification:DisplayStaticToast(text)
	Notification.StaticToast.Text:SetText(text)
	Notification.StaticToast.ShowAnim:Play()
	if Notification.StaticHideTimer then ZGV:CancelTimer(Notification.StaticHideTimer) end
	Notification.StaticHideTimer = ZGV:ScheduleTimer(function() 
		Notification.StaticToast.HideAnim:Play()
    end,3)
end

tinsert(ZGV.startups,{"NC startup",function(self)
	Notification:DoStartup()
	Notification:AddedSavedNotifications()
	Notification:CreateStaticToastFrame()
end})

ZGV_Notification_Button_Mixin = {}
function ZGV_Notification_Button_Mixin:SetButton(data)
	self.Underline:SetColorTexture(unpack(SkinData("NotificationDecorColor")))
	self.Underline:Show()

	 self.hilitex = self.hilitex or CHAIN(self:CreateTexture())
		:SetPoint("TOPLEFT",0,-5)
		:SetPoint("BOTTOMRIGHT",0,5)
		:SetColorTexture(unpack(SkinData("ButtonHighlight")))
	.__END

	self:SetHighlightTexture(self.hilitex)

	self.Text:SetText(data.text)
	self.Text:SetTextColor(unpack(SkinData("NotificationTextColor")))
	self.Icon:SetTexture(data.texture)
	if data.texcoords then
		self.Icon:SetTexCoord(unpack(data.texcoords))
	end
	if data.onClick then
		self:SetScript("OnClick",function()
			data.onClick()
			Notification:RemoveEntry(data.ident)
		end)
	end
	if data.onOpen then
		data.onOpen()
	end

	self.Used = true
	self:Show()
end

function ZGV_Notification_Button_Mixin:OnEnter()
	--self.Text:SetTextColor(unpack(SkinData("NotificationTextColorOver")))
end

function ZGV_Notification_Button_Mixin:OnLeave()
	--self.Text:SetTextColor(unpack(SkinData("NotificationTextColor")))
end

function ZGV_Notification_Button_Mixin:OnHide()
	self:ClearAllPoints()
	self.Text:SetText("")
	self.Icon:SetTexture(nil)
	self:SetScript("OnClick",nil)
	self.Used = false
end