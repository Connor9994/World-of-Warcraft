local name,ZGV = ...

local tinsert,tremove,ipairs,pairs,wipe=tinsert,tremove,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ActionButton = {}
ZGV.UI:RegisterWidget("ActionButton",ActionButton)

local SkinData = ZGV.UI.SkinData

local DEFAULTWIDTH = 30
local DEFAULTHEIGHT = 30

local function ShowTooltip(self)
	if self.tooltipDisabled then return end
	GameTooltip:SetOwner(self,"ANCHOR_BOTTOM")

	if self:GetAttribute("itemid") then
		local itemid = self:GetAttribute("itemid")
		local link = "item:"..itemid
		if not link then return end
		GameTooltip:SetHyperlink(link)
	elseif self:GetAttribute("spellid") then
		GameTooltip:SetSpellByID(self:GetAttribute("spellid"))
	elseif self:GetAttribute("petid") then
		GameTooltip:SetPetAction(self:GetAttribute("petid"))
	elseif self.tooltip then
		GameTooltip:SetText(self.tooltip)
	end

	GameTooltip:Show()
end

local function ShowPetTooltip(self)
	if self.tooltipDisabled then return end
	if self:GetID() then
		GameTooltip:SetOwner(self,"ANCHOR_BOTTOM")
		GameTooltip:SetPetAction(self:GetID())
		GameTooltip:Show()
	end
end

local function HideTooltip(self)
	if (GameTooltip:GetOwner()==self) then
		GameTooltip:Hide()
	end
end

local function DragStart(self)
	if not self.draggable then return false end
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

function ActionButton:New(parent,name)
	if InCombatLockdown() then return end
	if not name then error("Actionbutton requires name") return end

	local action = CHAIN(CreateFrame("CheckButton", name, parent, "SecureActionButtonTemplate,SecureHandlerStateTemplate"))	
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
		:SetScript("OnEnter", ShowTooltip)
		:SetScript("OnLeave", HideTooltip)
		:SetScript("OnEvent", ActionButton.EventHandler)
		:RegisterEvent("ACTIONBAR_UPDATE_COOLDOWN")
		:RegisterForDrag("LeftButton", "RightButton")
		:SetScript("OnDragStart", DragStart)
		:SetAttribute("_onstate-combathide", "if newstate == 'show' then self:Show(); else self:Hide(); end")

		:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	.__END

	if ZGV.IsRetail then
		action:RegisterForClicks("AnyUp","AnyDown")
	else
		action:RegisterForClicks("AnyUp")
	end


	action.tex = CHAIN(action:CreateTexture(nil,"OVERLAY"))
		:SetAllPoints(action)
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
	.__END

	action.PetAction = CHAIN(CreateFrame("CheckButton", nil, parent, "PetActionButtonTemplate,SecureHandlerStateTemplate"))
		:SetSize(DEFAULTWIDTH,DEFAULTHEIGHT)
		:SetAllPoints(action)
		:SetFrameStrata(action:GetFrameStrata())
		:SetFrameLevel(action:GetFrameLevel()+1)
		:SetScript("OnEnter", ShowPetTooltip)
		:SetScript("OnLeave", HideTooltip)
		:SetAttribute("_onstate-combathide", "if newstate == 'show' then self:Show(); else self:Hide(); end")
		:Hide()
	.__END

	action.cd = CHAIN(CreateFrame("Cooldown", nil, action, "CooldownFrameTemplate"))
		:SetPoint("CENTER", 0, -1)
		:SetAllPoints()
		:Hide()
	.__END

	action.text = CHAIN(action:CreateFontString(nil,"OVERLAY"))
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetPoint("BOTTOM",0,3)
		:SetHeight(12)
		:SetFont(FONT,9,"OUTLINE, MONOCHROME")
		:SetText("")
	.__END

	for f,fun in pairs(self) do
		action[f]=fun
	end

	return action
end

function ActionButton:SetAllSizes(width,height)
	self:SetSize(width,height)
	self.tex:SetSize(width,height)
	self.PetAction:SetSize(width,height)
end


function ActionButton.EventHandler(self, event)
	-- we only have one event registered
	if not self:IsVisible() then return end
	if self.cooldownDisabled then return end

	self:UpdateCooldown()
end

function ActionButton:UpdateCooldown()
	local starts,dur,ends = 0,0,0
	if self:GetAttribute("type")=="spell" then
		starts,dur,ends = GetSpellCooldown(self:GetAttribute("spell"))
	elseif self:GetAttribute("type")=="item" then
		starts,dur,ends = GetItemCooldown(self:GetAttribute("itemid"))
	elseif self:GetAttribute("type")=="petaction" then
		starts,dur,ends = GetPetActionCooldown(self:GetAttribute("petaction"))
	elseif self:GetAttribute("type")=="macro" then
		local macro_index = self:GetAttribute("macro")
		if self:GetAttribute("itemid") and tonumber(self:GetAttribute("itemid")) then
			starts,dur,ends = GetItemCooldown(self:GetAttribute("itemid"))
		elseif self:GetAttribute("spellid") and tonumber(self:GetAttribute("spellid")) then
			starts,dur,ends = GetSpellCooldown(self:GetAttribute("spellid"))
		elseif self:GetAttribute("petid") and tonumber(self:GetAttribute("petid")) then
			starts,dur,ends = GetPetActionCooldown(self:GetAttribute("petid"))
		end
	end

	CooldownFrame_Set(self.cd, starts,dur,ends)
	if starts>0 then self.cd:Show() else self.cd:Hide() end
end


function ActionButton:UpdateTexture()
	if InCombatLockdown() then return end

	local tex, found, _, needsglobal = nil, true
	if self:GetAttribute("type")=="spell" then
		tex = select(3, GetSpellInfo(self:GetAttribute("spell")))
		if not tex then 
			tex = 1121022
			found = false
		end
	elseif self:GetAttribute("type")=="item" then
		tex = select(10, ZGV:GetItemInfo(self:GetAttribute("item")))
		if not tex then 
			tex = 1121021
			found = false
		end
	elseif self:GetAttribute("type")=="macro" then
		tex = select(2,GetMacroInfo(self:GetAttribute("macro")))
		if not tex then 
			tex = 1121020
			found = false
		end
	elseif self:GetAttribute("type")=="petaction" then
		_,_,tex,needsglobal = GetPetActionInfo(self:GetAttribute("petaction"))
		if not tex then 
			tex = 1121022
			found = false
		end
		if needsglobal then
			self.PetAction.icon:SetTexture(_G[tex])
		else
			self.PetAction.icon:SetTexture(tex)
		end
		return
	end
	self.tex:SetTexture(tex)
	if not found then
		if self.timer then ZGV:CancelTimer(self.timer) end
		self.timer = ZGV:ScheduleTimer(function() 
			self:UpdateTexture()
		end, 0.5)
	end		
end

function ActionButton:SetSpell(spellid)
	if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
	if InCombatLockdown() then 
		if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
		self.actionTimer = ZGV:ScheduleTimer(function() 
			self:SetSpell(spellid)
		end, 0.5)
		return 
	end
	self:ClearData()

	self:SetAttribute("type","spell")
	self:SetAttribute("spell",spellid)
	self:Show()
	self:UpdateTexture()
end

function ActionButton:SetItem(itemid)
	if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
	if InCombatLockdown() then 
		if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
		self.actionTimer = ZGV:ScheduleTimer(function() 
			self:SetItem(itemid)
		end, 0.5)
		return 
	end
	self:ClearData()

	self:SetAttribute("type","item")
	self:SetAttribute("item","item:"..itemid)
	self:SetAttribute("itemid",tonumber(itemid))
	self:Show()
	self:UpdateTexture()
end

function ActionButton:SetMacro(macro)
	if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
	if InCombatLockdown() then 
		if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
		self.actionTimer = ZGV:ScheduleTimer(function() 
			self:SetMacro(macro)
		end, 0.5)
		return 
	end
	self:ClearData()

	self:SetAttribute("type","macro")
	self:SetAttribute("macro",macro)
	self:Show()
	self:UpdateTexture()
end

function ActionButton:SetPetAction(petaction)
	if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
	if InCombatLockdown() then 
		if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
		self.actionTimer = ZGV:ScheduleTimer(function() 
			self:SetPetAction(petaction)
		end, 0.5)
		return 
	end
	self:ClearData()

	local num,name,subtext,tex = ZGV.FindPetActionInfo(petaction)

	if name then
		self:SetAttribute("type","petaction")
		self:SetAttribute("petaction",num)
			
		self.PetAction:SetID(num)
		self.PetAction:Show()
		self:Show()
		self.PetAction:SetFrameLevel(self:GetFrameLevel()+2)
		self:UpdateTexture()

	else
		self:Hide()
		self.PetAction:Hide()
	end
end

function ActionButton:ClearData()
	if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
	if InCombatLockdown() then 
		if self.actionTimer then ZGV:CancelTimer(self.actionTimer) end
		self.actionTimer = ZGV:ScheduleTimer(function() 
			self:ClearData()
		end, 0.5)
		return 
	end

	self:SetAttribute("type",nil)
	self:SetAttribute("macro",nil)
	self:SetAttribute("item",nil)
	self:SetAttribute("itemid",nil)
	self:SetAttribute("spell",nil)
	self:SetAttribute("spellid",nil)
	self:SetAttribute("petaction",nil)
	self:SetAttribute("petid",nil)
	self:SetAttribute("zygor",nil)
	self:SetAttribute("rawobject",nil)
	self:SetAttribute("rawtype",nil)
	
	self.tex:SetTexture(nil)
	self:Hide()

	self.tooltip=nil

	self.PetAction.icon:SetTexture(nil)
	self.PetAction:Hide()
end

function ActionButton:EnableCooldown()
	self.cooldownDisabled = false
	self:UpdateCooldown()
end

function ActionButton:DisableCooldown()
	self.cooldownDisabled = true
	self.cd:Hide()
end

function ActionButton:EnableHighlight()
	self:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
end

function ActionButton:DisableHighlight()
	self:SetHighlightTexture(nil)
end

function ActionButton:EnableTooltip()
	self.tooltipDisabled = false
end

function ActionButton:DisableTooltip()
	self.tooltipDisabled = true
end

function ActionButton:EnableDrag()
	self.draggable = true
end

function ActionButton:DisableDrag()
	self.draggable = false
end

function ActionButton:SetCombatHiding(mode)
	if mode then
		RegisterAttributeDriver(self, "state-combathide", "[combat] hide; show");
		RegisterAttributeDriver(self.PetAction, "state-combathide", "[combat] hide; show");
	else
		UnregisterAttributeDriver(self, "state-combathide");
		UnregisterAttributeDriver(self.PetAction, "state-combathide");
	end
end
