local name,ZGV = ...

-- GLOBAL BINDING_HEADER_ZYGORGUIDESACTIONBAR

local ActionBar = {
	Buttons = {},
}

ZGV.ActionBar = ActionBar

local CHAIN = ZGV.ChainCall
local L = ZGV.L
local ui = ZGV.UI
local SkinData = ui.SkinData

local BUTTON_SIZE = 30
local BAR_HEIGHT = BUTTON_SIZE+10

local function OnEvent(self, event)
	if not ZGV.db.profile.enable_actionbuttons then return end -- disabled
	if not ZGV.ActionBar or not ZGV.ActionBar.Frame then return end -- we are too early
	if not ZGV.CurrentStep then return end -- we will retry on step focus
	if event=="BAG_UPDATE_DELAYED" and not ZGV.db.profile.actionbar_trash then return end -- trasher is disabled, we do not care about bag changes
		
	if event=="ZGV_STARTED_SKIPPING" then 
		ActionBar:ClearBar("forcehide")
		return
	end
	
	if event~="ZGV_STOPPED_SKIPPING" and ZGV.skipping then return end

	-- only events registered here are for updating action bar, so no need to handle them separately
	ActionBar:SetActionButtons()
end

local function DragStart(self)
	if InCombatLockdown() then return false end

	local objtype = self:GetAttribute("type")
	local object = self:GetAttribute(objtype)
	if objtype == 'item' then
		PickupItem(object)
	elseif objtype == 'macro' then
		PickupMacro(object)
	elseif objtype == 'petaction' then
		PickupPetAction(object)
	elseif objtype == 'spell' then
		PickupSpell(object)
	end
end

function ActionBar:Initialise()
	ActionBar:CreateFrame()

	-- create globals for blizzard keybind menu
	for i=1,5 do
		_G[("BINDING_NAME_CLICK ZygorAB%d:LeftButton"):format(i)] = ("Zygor ActionBar Button %d"):format(i)
	end
	BINDING_HEADER_ZYGORGUIDESACTIONBAR = "Zygor Guides Viewer Action Bar"
	ZGV:AddMessageHandler("ZGV_STEP_CHANGED",OnEvent)
	ZGV:AddMessageHandler("ZGV_STARTED_SKIPPING",OnEvent)
	ZGV:AddMessageHandler("ZGV_STOPPED_SKIPPING",OnEvent)

	ZGV:AddMessageHandler("ZGV_NPC_TRANSLATED",OnEvent)
	ZGV:AddEventHandler("PLAYER_REGEN_ENABLED",OnEvent)
	if ZGV.IsRetail then ZGV:AddEventHandler("UPDATE_VEHICLE_ACTIONBAR",OnEvent) end
	ZGV:AddEventHandler("BAG_UPDATE_DELAYED",OnEvent)

	local function poolinit(frame)
		frame:SetAttribute("_onstate-combathide", "if newstate == 'show' then self:Show(); else self:Hide(); end")
		frame:SetParent(ActionBar.Frame)
		frame:SetSize(BUTTON_SIZE,BUTTON_SIZE)
		frame:RegisterForClicks("AnyUp","AnyDown")
		frame:RegisterForDrag("LeftButton")
		frame:SetScript("OnDragStart", DragStart)
	end

	local function pooloverlayinit(frame)
		frame:SetAttribute("_onstate-combathide", "if newstate == 'show' then self:Show(); else self:Hide(); end")
		frame:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
		frame:SetParent(ActionBar.Frame)
		frame:SetSize(BUTTON_SIZE,BUTTON_SIZE)
		frame:SetMouseClickEnabled(false)
		frame:SetScript("OnEvent", frame.UpdateCooldown)
		frame:RegisterEvent("ACTIONBAR_UPDATE_COOLDOWN")
	end

	local function poolresetter(pool,frame)
		frame:SetAttribute("type",nil)
		frame:SetAttribute("macro",nil)
		frame:SetAttribute("item",nil)
		frame:SetAttribute("itemid",nil)
		frame:SetAttribute("spell",nil)
		frame:SetAttribute("spellid",nil)
		frame:SetAttribute("petaction",nil)
		frame:SetAttribute("petid",nil)
		frame:Hide()
		frame:ClearAllPoints()
	end

	local function pooloverlayresetter(pool,frame)
		frame.icon:SetTexture(nil)
		frame.button=nil
		frame.tooltip=nil
		frame:Hide()
		frame:ClearAllPoints()
	end
	
	ActionBar.ButtonPool = CreateFramePool("BUTTON",nil,"ZygorActionButton",poolresetter,nil,poolinit)
	ActionBar.ButtonOverlayPool = CreateFramePool("BUTTON",ActionBar.Frame,"ZygorActionButtonOverlay",pooloverlayresetter,nil,pooloverlayinit)

	ActionBar.KeyboundButtons = {}
	for i=1,5 do 
		local button = CreateFrame("BUTTON","ZygorAB"..i,nil,"ZygorActionButton")
		poolinit(button)
		ActionBar.KeyboundButtons[i] = button
	end
	
	ActionBar.PoolInit = poolinit
	ActionBar.PoolOverlayInit = pooloverlayinit
	ActionBar.PoolResetter = poolresetter
end

function ActionBar:SetActionButtons()
	if ActionBar.SetTimer then ZGV:CancelTimer(ActionBar.SetTimer) end
	if InCombatLockdown() then
		ActionBar.SetTimer = ZGV:ScheduleTimer(function() 
			ActionBar:SetActionButtons()
		end, 1)
		return
	end

	ZGV.ActionBar:ClearBar()

	if ActionBar.SetTimer then ZGV:CancelTimer(ActionBar.SetTimer) end
	ActionBar.SetTimer = ZGV:ScheduleTimer(function() 
		ActionBar:SetActionButtonsQueued()
	end, 0)
end

function ActionBar:SetActionButtonsQueued()
	if not ZGV.CurrentStep then 
		ZGV.ActionBar:ClearBar()
		ActionBar:ReanchorButtons() 
		return 
	end
	
	-- current step
	local actions = {}
	local actions_npc = {}

	local goals = {}
	
	for gi,goal in ipairs(ZGV.CurrentStep.goals) do tinsert(goals,goal) end
	for si,step in ipairs(ZGV:GetStickiesAt(ZGV.CurrentStep.num)) do
		if not step:IsComplete() then
			for gi,goal in ipairs(step.goals) do tinsert(goals,goal) end
		end
	end

	for gi,goal in ipairs(goals) do
		if goal:IsVisible() then
			if goal.castspell and goal.castspellid and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"spell",goal.castspellid})
			elseif goal.castspell and goal.extraaction  and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"extraaction",goal.extraaction})
			elseif goal.item or goal.itemid  and ZGV.db.profile.actionbar_item then
				table.insert(actions,{"item",goal.itemid  or  goal.item})
			elseif goal.script and goal.script:find("DoEmote")  and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"emote",goal.script})
			elseif goal.script and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"script",goal.script})
			elseif goal.macro and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"macro",goal.macro})
			elseif goal.petaction and ZGV.db.profile.actionbar_quest then
				local num,name,subtext,tex = ZGV.FindPetActionInfo(goal.petaction)
				if num then
					table.insert(actions,{"petaction",goal.numitem})
				end
			elseif goal.action=="equipped" and goal.targetid then
				table.insert(actions,{"equip",goal.targetid})
			elseif goal.action=="talk" and goal.npcid and ZGV.db.profile.actionbar_talk then
				table.insert(actions_npc,{"talk",goal.npcid,goal.npc})
			elseif goal.action=="clicknpc" and goal.npcid and ZGV.db.profile.actionbar_talk then
				table.insert(actions_npc,{"clicknpc",goal.npcid,goal.npc})
			elseif goal.action=="kill" and goal.targetid and ZGV.db.profile.actionbar_kill then
				table.insert(actions_npc,{"kill",goal.targetid,goal.target})
			elseif goal.action=="openskill" and goal.tradeskill then
				table.insert(actions,{"openskill",goal})
			end
		end -- if goal visible
	end -- for goal in step

	local counter = 0
	for _,data in ipairs(actions) do 
		counter = counter + 1
		ZGV.ActionBar:SetButton(data[1],data[2],data[3],counter) 
	end
	for _,data in ipairs(actions_npc) do 
		counter = counter + 1
		ZGV.ActionBar:SetButton(data[1],data[2],data[3],counter) 
	end


	ActionBar.TrashButton = nil
	if ZGV.db.profile.actionbar_trash then
		counter = counter + 1
		ActionBar.TrashButton = ZGV.ActionBar:SetButton("trash",{},nil,counter)
	end
	ActionBar:ReanchorButtons()
end


function ActionBar:ShowTooltip()
	if ActionBar.Active then return end

	GameTooltip:SetOwner(ActionBar.Frame,"ANCHOR_BOTTOMLEFT")
	GameTooltip:SetText("Zygor Action Bar")
	GameTooltip:Show()

end

function ActionBar:CreateFrame() 
	if not ActionBar.Frame then
		ActionBar.Frame = CHAIN(ui:Create("Frame", UIParent, "ZygorGuidesViewer_ActionBar","BackdropTemplate,SecureHandlerStateTemplate"))
			:SetSize(BAR_HEIGHT,BAR_HEIGHT)
			:SetFrameStrata("LOW")
			:SetFrameLevel(10)
			:CanDrag(true)
			:SetScript("OnEnter", function()
				ActionBar:ShowTooltip()
				end
			)
			:SetScript("OnLeave", function()
				GameTooltip:Hide()
				end
			)
			:SetScript("OnDragStop", function(self)
				self:StopMovingOrSizing()
				if self.snapped then
					self:ClearAllPoints()
					--self:SetPoint("BOTTOMLEFT",ZGV.Frame,"TOPLEFT",0,10)
				else
					ZGV.F.SaveFrameAnchor(self,"actionbar_anchor")
				end
			end)
			:SetScript("OnMouseDown", function(self)
				-- store mouse-on-frame location, to take over dragging position
				local ssc=self:GetEffectiveScale()
				local l,b=self:GetLeft()*ssc,self:GetBottom()*ssc
				local cx,cy = GetCursorPosition()
				self.drag_offset_x,self.drag_offset_y = cx-l,cy-b
			end)
			:SetScript("OnUpdate",ActionBar.Frame_OnUpdate)
			:SetScript("OnSizeChanged",function() if not ZGV.db.profile.actionbar_anchor then ActionBar:SnapToZGVFrame(true) end end)
			:SetAttribute("_onstate-combathide", "if newstate == 'show' then self:Show(); else self:Hide(); end")
			:Hide()
		.__END
		ActionBar.Frame.close = CHAIN(CreateFrame("Button",nil,ActionBar.Frame,"ZGV_DefaultSkin_TitleButton_Template"))
			:SetPoint("TOPRIGHT",ActionBar.Frame,"TOPRIGHT", -5, -4)
			:SetScript("OnClick", function() 
				ZGV.db.profile.enable_actionbar = false
				ActionBar:ToggleFrame()
			 end)
			.__END
		ActionBar.Frame.close.buttonkey = "CLOSE"
		ActionBar.Frame.close:ApplySkin()

		ActionBar.Frame.Overlay = CHAIN(ui:Create("Frame", ActionBar.Frame))
			:SetAllPoints()
			:SetAlpha(1)
			:SetFrameLevel(15)
			:EnableMouse(true)
			:Hide()
		.__END

		if ZGV.db.profile.actionbar_anchor then
			ZGV.F.SetFrameAnchor(ActionBar.Frame,ZGV.db.profile.actionbar_anchor)
		end
	end

	ZGV:AddMessageHandler("SKIN_UPDATED",ActionBar.ApplySkin)
	ActionBar:SetCombatHiding()
	if not InCombatLockdown() then ActionBar.Frame:Hide() end

	ActionBar:ApplySkin()
end

function ActionBar:ShowDisabledOverlay()
	ActionBar.Frame.Overlay:Show()
end

local SNAP_Y=5
function ActionBar.Frame_OnUpdate(self)
	if self:IsDragging() then
		local ssc=self:GetEffectiveScale()
		local x,y = GetCursorPosition()
		local l,b=x-self.drag_offset_x,y-self.drag_offset_y
		local zsc=ZGV.Frame:GetEffectiveScale()
		local zl,zt=ZGV.Frame:GetLeft()*zsc,ZGV.Frame:GetTop()*zsc
		if (math.abs(zl-l)<10 and math.abs((zt+SNAP_Y)-b)<10) then
			self.snapped=true
			ZGV.db.profile.actionbar_anchor=nil
			ActionBar:SnapToZGVFrame(true)
			--ZGV.Anchors:Save(self,"actionbar_anchor")
		else
			self.snapped=false
			self:ClearAllPoints()
			self:SetPoint("BOTTOMLEFT",self:GetParent(),"BOTTOMLEFT",l/ssc,b/ssc)
		end
		--[[
		local width = self:GetWidth()
		local x,y = minimap:GetCenter()
		local sc = minimap:GetEffectiveScale()
		local mx,my = GetCursorPosition() --self:GetCenter()
		mx=mx/sc  my=my/sc
		local dx,dy=mx-x,my-y
		local dist = (dx*dx+dy*dy)^0.5

		local radmin=radius
		local radsnap=radius+width*0.2
		local radpull=radius+width*0.7
		local radfre=radius+width

		local radclamp
		if dist<=radsnap then self.snapped=true radclamp=radmin
		elseif dist<radpull and self.snapped then radclamp=radmin
		elseif dist<radfre and self.snapped then radclamp=radmin+(dist-radpull)/2
		else self.snapped=false -- dobby is freeee
		end
		
		if radclamp then
			dx=dx/(dist/radclamp)
			dy=dy/(dist/radclamp)
		end
		--]]
	else
		-- position it where it needs to be, but without anchoring
		if not ZGV.db.profile.actionbar_anchor then
			ActionBar:SnapToZGVFrame()
		end
	end
end

local old_x,old_y
function ActionBar:SnapToZGVFrame(force)
	if ActionBar.SnapTimer then ZGV:CancelTimer(ActionBar.SnapTimer) end
	if InCombatLockdown() then
		ActionBar.SnapTimer = ZGV:ScheduleTimer(function() 
			ActionBar:SnapToZGVFrame(force)
		end, 1)
		return
	end

	local x,y = ZGV.Frame:GetLeft()*ZGV.Frame:GetEffectiveScale(),ZGV.Frame:GetTop()*ZGV.Frame:GetEffectiveScale()
	if force or x~=old_x or y~=old_y then
		old_x,old_y=x,y
		self.Frame:ClearAllPoints()
		self.Frame:SetPoint("BOTTOMLEFT",UIParent,"BOTTOMLEFT",(x/self.Frame:GetEffectiveScale()),(y+SNAP_Y)/self.Frame:GetEffectiveScale())
	end
end


function ActionBar:ApplySkin()
	local MF = ActionBar.Frame
	if not MF then return end

	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(MF.close)

	local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
	local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacity or  1

	MF:SetBackdrop(SkinData("ActionBarBackdrop"))
	MF:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("ActionBarBackdropColor"))))
	MF:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("ActionBarBackdropBorderColor"))))

	ActionBar:SetAlpha()
	ActionBar:SetScale() 
end

function ActionBar:ToggleFrame()
	if not ActionBar.Frame then
		ActionBar:CreateFrame()
	end

	if ActionBar.ToggleTimer then ZGV:CancelTimer(ActionBar.ToggleTimer) end
	if InCombatLockdown() then 
		ActionBar.ToggleTimer = ZGV:ScheduleTimer(function() 
			ActionBar:ToggleFrame()
		end, 1)
		return
	end
	
	if ZGV.db.profile.enable_actionbar and ZGV.db.profile.enable_actionbuttons and ZGV.db.profile.enable_viewer then
		ActionBar.Frame:Show()
		ActionBar:SetActionButtons()
	else
		ActionBar.Frame:Hide()
	end
		
end

function ActionBar:SetButton(btype,object,fallbackname,counter) 
	if not ZGV.db.profile.enable_actionbuttons then return end
	
	if btype and not object then ZGV:Debug("ActionButton must have data defined if type is set") return end

	local button,freshbutton
	if counter>5 then
		button,freshbutton = ActionBar.ButtonPool:Acquire()
		if not ZGV.IsRetail and freshbutton then ActionBar.PoolInit(button) end -- classic does not have custom creationFunc yet, need to call it by hand
	else
		button = ActionBar.KeyboundButtons[counter]
	end

	local macro_index = GetMacroIndexByName("ZygorAction"..counter)
	if macro_index==0 then
		local numAccountMacros, numCharacterMacros = GetNumMacros();
		if numAccountMacros==MAX_ACCOUNT_MACROS then
			if not ZGV.db.char.actionbarmacrowarning then
				ZGV:Print("Action Bar was unable to create needed macros, since you have exceeded maximum number of possible macros. You will need to remove some of your existing macros for Action Bar to be able to work properly.")
				ZGV.db.char.actionbarmacrowarning = true
			end
			return
		end
		macro_index = CreateMacro("ZygorAction"..counter, 134400, "") -- create empty macro
		ZGV.db.char.actionbarmacrowarning = false
	end

	local macro_text, macro_name,macro_tooltip = ""
	local zygor_texture_key,zygor_tooltip_func, zygor_texture, _

	local macro_texture = 134327

	-- set data based on type
	if btype=="item" then 
		macro_name,_,_,_,_,_,_,_,_,macro_texture = ZGV:GetItemInfo(object)
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/use item:"..object
		button:SetAttribute("itemid",object)
	elseif btype=="equip" then 
		macro_name,_,_,_,_,_,_,_,_,macro_texture = ZGV:GetItemInfo(object)
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/equip item:"..object
		button:SetAttribute("itemid",object)	
	elseif btype=="spell" then
		macro_name,_,macro_texture = GetSpellInfo(object)
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/cast "..macro_name
		button:SetAttribute("spellid",object)
	elseif btype=="extraaction" then
		macro_name,_,macro_texture = GetSpellInfo(object)
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/click ExtraActionButton1"
		button:SetAttribute("spellid",object)
	elseif btype=="petaction" then
		local num,needsglobal
		num,macro_name = ZGV.FindPetActionInfo(object)
		_,_,macro_texture,needsglobal = GetPetActionInfo(num)
		if not tonumber(macro_texture) then 
			macro_texture = 1121022 
		elseif needsglobal then 
			macro_texture = _G[macro_texture] 
		end
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/cast "..macro_name
		button:SetAttribute("petaction",object)
	elseif btype=="emote" then
		if type(object)=="number" then 
			macro_text = GetMacroBody(object)
			_,macro_texture = GetMacroInfo(object)
		else
			macro_text = "/run "..object
		end
		--_,macro_texture = GetMacroInfo(object)
		zygor_texture_key = "EMOTE"
		macro_tooltip = macro_text:match("\"(.*)\"") -- /run DoEmote("blah") -> blah
	elseif btype=="script" or btype=="macro" then
		macro_text = "/run "..object
		macro_tooltip = object
		zygor_texture_key = "SCRIPT"
	elseif btype=="zygor" then
		button:SetAttribute("zygor","zygor")
	elseif btype=="talk" then
		local name = ZGV.Localizers:GetTranslatedNPC(object,fallbackname)
		macro_name = L["stepgoal_talk to"]:format(name)
		macro_tooltip = macro_name
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/run ZGV:MCM(4)\n/cleartarget\n/target "..name.."\n/run ZGV:MRM()"
		zygor_texture_key = "TALK"
	elseif btype=="clicknpc" then
		local name = ZGV.Localizers:GetTranslatedNPC(object,fallbackname)
		macro_name = L["stepgoal_clicknpc"]:format(name)
		macro_tooltip = macro_name
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/run ZGV:MCM(4)\n/cleartarget\n/target "..name.."\n/run ZGV:MRM()"
		zygor_texture_key = "TALK"
	elseif btype=="kill" then
		local name = ZGV.Localizers:GetTranslatedNPC(object,fallbackname)
		macro_name = L["stepgoal_kill"]:format(name)
		macro_tooltip = macro_name
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/run ZGV:MCM(8)\n/cleartarget\n/target "..name.."\n/run ZGV:MRM()".."\n/cleartarget [dead]"
		zygor_texture_key = "KILL"
	elseif btype=="openskill" then
		local skilldata = ZGV.Professions:GetSkillDataByName(object.tradeskill)
		if skilldata.skill then
			local name = ZGV.Professions.LocaleSkills[object.tradeskill]
			macro_name = "Open "..name.." tradeskill"
			if ZGV.IsRetail then
				macro_texture = C_TradeSkillUI.GetTradeSkillTexture(skilldata.skill)
				macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/run C_TradeSkillUI.OpenTradeSkill("..skilldata.parent..")"
			else
				macro_texture = skilldata.icon
				macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/cast "..name

			end
		end
		macro_tooltip = macro_name

	elseif btype=="trash" then
		zygor_texture_key = "TRASH"
		local items = ZGV.Inventory:GetGrayTrashDetails()
		local item = items and items[1]
		if item then
			local _, _, itemName, _, count, price, _ = unpack(item)
			object = item -- store, so that we have data to pass to destroy function
			--macro_name = itemID
			macro_tooltip = L["actionbar_trash"]:format(count,itemName,ZGV.GetMoneyString(price))
			macro_name = macro_tooltip
			if #items>1 then
				macro_tooltip = macro_tooltip .. L["actionbar_trash_more_header"]
				for i=2,#items do
					macro_tooltip = macro_tooltip .. L["actionbar_trash_more"]:format(items[i][5],items[i][3],ZGV.GetMoneyString(items[i][6]))
				end
			end
			macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/run ZGV.Inventory:HandleTrashMacro()"
		else
			--macro_texture = 1505955
			macro_tooltip = L["actionbar_trash_nothing"]
		end
	end

	if macro_text~="" then
		EditMacro(macro_index,nil,macro_texture,macro_text)
	end

	button:SetAttribute("type","macro")
	button:SetAttribute("macro",macro_index)

	if btype=="item" then 
		local macro_name = macro_name or (tonumber(object) and "item:"..object) or object
		SetMacroItem(macro_index,macro_name)
	elseif btype=="spell" or btype=="petaction" then
		local macro_name = macro_name or (tonumber(object) and "spell:"..object) or object
		SetMacroSpell(macro_index,macro_name)
	end

	if btype=="item" then 
		button:SetAttribute("itemid",object)
	elseif btype=="spell" then
		button:SetAttribute("spellid",object)
	elseif btype=="petaction" then
		local num,needsglobal
		num,macro_name = ZGV.FindPetActionInfo(object)
		button:SetAttribute("petid",num)
	end

	local overlay,freshoverlay = ActionBar.ButtonOverlayPool:Acquire()
	if not ZGV.IsRetail and freshoverlay then ActionBar.PoolOverlayInit(overlay) end -- classic does not have creationFunc yet, need to call it by hand
	overlay:Setup(button,zygor_texture_key,macro_tooltip,btype,object)

	table.insert(ActionBar.Buttons,button)

	return button
end


function ActionBar:ClearBar(forcehide) 
	if not ActionBar.Frame then return end
	if ActionBar.ClearTimer then ZGV:CancelTimer(ActionBar.ClearTimer) end
	if InCombatLockdown() then
		ActionBar.ClearTimer = ZGV:ScheduleTimer(function() 
			ActionBar:ClearBar(forcehide)
		end, 1)
		return
	end

	
	ActionBar.Frame.Overlay:Show()

	table.wipe(ActionBar.Buttons)
	for _,button in ipairs(ActionBar.KeyboundButtons) do ActionBar.PoolResetter(nil,button) end
	ActionBar.ButtonPool:ReleaseAll()
	ActionBar.ButtonOverlayPool:ReleaseAll()

	for i=1,10 do
		local j = GetMacroIndexByName("ZygorAction"..i)
		if j>0 then
			EditMacro(j,nil,134400,"")
			SetMacroItem(j,"")
			SetMacroSpell(j,"")
		else
			break
		end
	end

	if forcehide then 
		ActionBar.Frame:Hide()
	end
end

function ActionBar:ReanchorButtons(force) 
	if not ActionBar.Frame then return end
	if not ZGV.db.profile.enable_viewer then ActionBar.Frame.Overlay:Hide() ActionBar.Frame:Hide() return end -- viewer is hidden, go away
	if not ZGV.db.profile.enable_actionbuttons and not force then return end -- everything is disabled, abort
	if not ZGV.db.profile.enable_actionbar and not force then return end -- we are not showing buttons, only updating macros. bail out

	local previous = false
	local space = 5
	local width = space
	local active = false
	ActionBar.Frame:Show()

	for _,button in ipairs(ActionBar.Buttons) do
		button:ClearAllPoints()
		if previous==button then return end
		if not previous then
			button:SetPoint("TOPLEFT",ActionBar.Frame,"TOPLEFT",space,-space)
		else
			button:SetPoint("TOPLEFT",previous,"TOPRIGHT",space,0)
		end
		width = width + button:GetWidth() + space
		previous = button
		active = true
		button:Show()
	end

	ActionBar.Active = active

	ActionBar.Frame:SetWidth(width+25)
	
	ActionBar.Frame.Overlay:Hide()

	if force=="off" then 
		ActionBar.Frame:Hide()
		return 
	elseif active or force=="on" then 
		ActionBar.Frame:Show()
	-- -- actionbar_hide_useless variant
	--elseif ZGV.db.profile.actionbar_hide_useless then
	--	ActionBar.Frame:Hide()
	--else 
	--	ActionBar.Frame:Show()
	else 
		ActionBar.Frame:Hide()
	end
end

function ActionBar:SetCombatHiding(mode)
	local mode = ZGV.db.profile.hideincombat and ZGV.db.profile.hidebarincombat

	for _,button in pairs(ActionBar.Buttons) do
		button:SetCombatHiding(mode)
	end

	if mode then
		RegisterAttributeDriver(self.Frame, "state-combathide", "[combat] hide; show");
	else
		UnregisterAttributeDriver(self.Frame, "state-combathide");
	end
end

function ActionBar:SetScale() 
	if ActionBar.ScaleTimer then ZGV:CancelTimer(ActionBar.ScaleTimer) end
	if InCombatLockdown() then 
		ActionBar.ScaleTimer = ZGV:ScheduleTimer(function() 
			ActionBar:SetScale()
		end, 1)
		return
	end
	ActionBar.Frame:SetScale(ZGV.db.profile.actionbar_scale)
end

function ActionBar:SetAlpha(value) 
	if ActionBar.OpacityTimer then ZGV:CancelTimer(ActionBar.OpacityTimer) end
	if InCombatLockdown() then 
		ActionBar.OpacityTimer = ZGV:ScheduleTimer(function() 
			ActionBar:SetAlpha()
		end, 1)
		return
	end
	ActionBar.Frame:SetAlpha(value or ZGV.db.profile.opacitymain)
end

function ActionBar:TutorialPreview(mode) 
	local button = ActionBar.Buttons[1]

	if ActionBar.Frame:IsVisible() and (button and not button:GetAttribute("zygor")) then return end -- there is a non-faked button visible, do not hide/show anything


	if mode=="on" then
		if not (button and button:GetAttribute("type")) then -- there is no button visible, make a fake one
			button = ActionBar:SetButton("macro","")
			button:SetAttribute("zygor","zygor")
		end
		ActionBar:ReanchorButtons("on")
	else
		if button then button:SetAttribute("type",nil) end -- clear whatever is visible
		ActionBar:ReanchorButtons(not ZGV.db.profile.enable_actionbar and "off")
	end
end

tinsert(ZGV.startups,{"ActionBar startup",function(self)
	ActionBar:Initialise()
end})

ZygorActionButtonOverlay_Mixin = {}
function ZygorActionButtonOverlay_Mixin:OnEnter()
	if self.tooltipDisabled then return end
	if not self.button then return end
	GameTooltip:SetOwner(self,"ANCHOR_BOTTOM")

	local button = self.button

	if button:GetAttribute("itemid") then
		local itemid = button:GetAttribute("itemid")
		local link = "item:"..itemid
		if not link then return end
		GameTooltip:SetHyperlink(link)
	elseif button:GetAttribute("spellid") then
		GameTooltip:SetSpellByID(button:GetAttribute("spellid"))
	elseif button:GetAttribute("petid") then
		GameTooltip:SetPetAction(button:GetAttribute("petid"))
	elseif self.tooltip then
		GameTooltip:SetText(self.tooltip)
	end

	GameTooltip:Show()
end
function ZygorActionButtonOverlay_Mixin:OnLeave()
	if (GameTooltip:GetOwner()==self) then
		GameTooltip:Hide()
	end
end

local fallback_textures = {
	spell=1121022,
	item=1121021,
	macro=1121020,
	petaction=1121022,
}
function ZygorActionButtonOverlay_Mixin:Setup(button,iconsetkey,tooltip,btype,object)
	self:SetAllPoints(button)
	self.tooltip = tooltip
	self.button = button

	if iconsetkey then
		ZGV.IconSets.ActionBarIcons[iconsetkey]:AssignToTexture(self.icon)
	else
		self.icon:SetTexCoord(0,1,0,1)

		local button_type = button:GetAttribute("type")
		local tex, needsglobal = nil, nil
		if button_type=="spell" then
			tex = select(3, GetSpellInfo(button:GetAttribute("spell")))
		elseif button_type=="item" then
			tex = select(10, ZGV:GetItemInfo(button:GetAttribute("item")))
		elseif button_type=="macro" then
			tex = select(2,GetMacroInfo(button:GetAttribute("macro")))
		elseif button_type=="petaction" then
			_,_,tex,needsglobal = GetPetActionInfo(button:GetAttribute("petaction"))
			if tex and needsglobal then tex = _G[tex] end
		end
		if not tex then tex = fallback_textures[button_type] end
		
		self.icon:SetTexture(tex)
	end
	self:Show()
end

function ZygorActionButtonOverlay_Mixin:UpdateCooldown()
	if not self.ParentButton then return end
	local button = self.ParentButton

	local starts,dur,ends = 0,0,0
	if button:GetAttribute("itemid") and tonumber(button:GetAttribute("itemid")) then
		starts,dur,ends = GetItemCooldown(button:GetAttribute("itemid"))
	elseif button:GetAttribute("spellid") and tonumber(button:GetAttribute("spellid")) then
		starts,dur,ends = GetSpellCooldown(button:GetAttribute("spellid"))
	elseif button:GetAttribute("petid") and tonumber(button:GetAttribute("petid")) then
		starts,dur,ends = GetPetActionCooldown(button:GetAttribute("petid"))
	end

	CooldownFrame_Set(self.cooldown, starts,dur,ends)
	if starts>0 then self.cooldown:Show() else self.cooldown:Hide() end
end

function ZygorActionButtonOverlay_Mixin:Reset()
	self.icon:SetTexture(nil)
	self.tooltip=nil
	self:Hide()
	self:ClearAllPoints()
end