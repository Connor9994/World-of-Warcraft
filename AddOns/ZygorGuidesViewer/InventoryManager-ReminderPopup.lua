local name,ZGV = ...

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local CHAIN = ZGV.ChainCall
local IM = ZGV.IM
local SkinData=IM.SkinData
--Spoo(nil, 0, SkinData)
local popupWidth = 200
local db = {} -- ZGV.db.profile not available yet

tinsert(ZGV.startups,{"InventoryManager db",function(self)
	db = ZGV.db.profile["Inventory Manager"]
end})

IM.Reminder={
	popupLine1="Blank reminder popup",
	popupLine2="Blank reminder popup",
	popupNotificationText="Blank reminder popup",
	popupNotificationTooltipText="Blank reminder popup",
	percent=0
}



function IM.Reminder:CreateReminderPopup()
	if not self.Popup then
		self.Popup = ZGV.PopupHandler:NewPopup("ZygorVendorSuggestPopup","default")
		self.Popup:SetWidth(popupWidth)
		IM.Reminder:CreateBar()
		--self.Popup.declinebutton:Hide()
		
		--popup.acceptbutton:ClearAllPoints()
		--popup.acceptbutton:SetPoint("Bottom",-5,0)
		--self.Popup.acceptbutton:ClearAllPoints()
		--self.Popup.acceptbutton:SetPoint("BOTTOM",self.Popup,"BOTTOM",0,5)
		--self.Popup.acceptbutton:SetText("Dismiss")
		--self.Popup.declinebutton:SetText("Go to vendor")
		
		self.Popup.OnAccept = function(self)
			if db.im_prefer_repair and ZGV.db.profile.enable_vendor_tools then
				ZGV.WhoWhere:FindNPC("R")
			else
				ZGV.WhoWhere:FindNPC("IVR")
			end
		end

	end
	
	self.Popup.returnMinimizeSettings = function(self)
		local notifcationText = IM.Reminder.popupNotificationText
		--local notifcationText = "Recommend "..returns.recommendedSpace.." slots open"
		local tooltipText = IM.Reminder.popupNotificationTooltipText
		local priority = 100
		local removetime = nil
		local poptime = 0.5
		local quiet = nil
		local onShow = nil--function...
	
		return notifcationText,ZGV.L["notifcenter_inventory_manager_title"],tooltipText,priority,poptime,removetime,quiet,onShow
	end

	return IM.Reminder
end

--[[
	text=string
	percent=number
]]--
function IM.Reminder:SetInformation(info)
	self.Popup:SetText(info.popupLine1,info.popupLine2)
	self.Popup.returnMinimizeSettings = function(self)
		local notifcationText = info.popupLine1
		--local notifcationText = "Recommend "..returns.recommendedSpace.." slots open"
		local tooltipText = info.popupLine2
		local priority = 100
		local removetime = nil
		local poptime = 0.5
		local quiet = nil
		local onShow = nil--function...
	
		return notifcationText,ZGV.L["notifcenter_inventory_manager_title"],tooltipText,priority,poptime,removetime,quiet,onShow
	end
	
end

function IM.Reminder:Show()
	self.Popup:Show()
	IM.Reminder.MeterFrame:Show()
	IM.Reminder:UpdateBar()
end

function IM.Reminder:CreateBar()
	IM.Reminder.MeterFrame = CHAIN(CreateFrame("Frame","Reminder.MeterFrame",self.Popup))
		:SetBackdrop(SkinData("ProgressBarBackdrop"))
		:SetBackdropColor(unpack(SkinData("ProgressBarBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("ProgressBarBackdropBorderColor")))
		:ClearAllPoints()
		:SetHeight(SkinData("ProgressBarHeight"))
		:SetWidth(popupWidth)
		:SetPoint("BOTTOM",self.Popup,"BOTTOM",0,27)
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(2)
		--:Show()
	.__END

	IM.Reminder.MeterBarFrame = CHAIN(CreateFrame("Frame","Reminder.MeterBarFrame",self.Popup))
		:SetSize(6,7)
		:SetHeight(SkinData("ProgressBarHeight"))
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(3)
		--:Show()
	.__END
	
	IM.Reminder.MeterBarFrame.tex = CHAIN(IM.Reminder.MeterBarFrame:CreateTexture())
		:SetHeight(SkinData("ProgressBarHeight")-2)
		:SetPoint("TOPLEFT",IM.Reminder.MeterFrame,"TOPLEFT",1,-1)
		:SetColorTexture(unpack(SkinData("ProgressBarTexture")))
		:SetVertexColor(unpack(ZGV.UI.SkinData("ProgressBarColor") or {0,1,0,1}))
	.__END 
end

function IM.Reminder:UpdateBar()
	local numItems, numSlots = IM:countItemsInBags()

	local barFraction = numItems / numSlots
	
	if barFraction < 0.5 then
		IM.Reminder.MeterBarFrame.tex:SetVertexColor(unpack(ZGV.UI.SkinData("ProgressBarColor") or {0,1,0,1}))
		--self:SetBackdropColor(0,0.8,0,1.0)
	elseif barFraction >= 0.5 and barFraction <= ZGV.db.profile.fullness_search then
		IM.Reminder.MeterBarFrame.tex:SetVertexColor(1,1,0,1)
		--self:SetBackdropColor(0.8,0.8,0,1.0)
	else
		IM.Reminder.MeterBarFrame.tex:SetVertexColor(1,0,0,1)
		--self:SetBackdropColor(0.8,0,0,1.0)
	end

	local barSize = barFraction * (popupWidth)

	IM.InventoryMeterFrame:SetWidth(barSize)
	IM.InventoryClickFrame:SetSize(barSize,12)
	

	-- Apparently a frame's dimensions can't be set to 0,
	-- so simply hide it if the player has nothing.
	if barSize == 0 then
		IM.Reminder.MeterBarFrame.tex:SetVertexColor(0,0,0,0)
		--self:SetBackdropColor(0,0,0,0.0)
	end
	IM.Reminder.MeterBarFrame.tex:SetSize(barSize,5)

end

--tinsert(ZGV.startups, IM.Reminder.CreateBar)

--[[
	-- Now for the progress bar.
	IM.InventoryMeterFrame = CHAIN(CreateFrame("Frame","InventoryMeterFrame",InventoryManagerFrame))
		:SetBackdrop(SkinData("ProgressBarBackdrop"))
		:SetBackdropColor(unpack(SkinData("ProgressBarBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("ProgressBarBackdropBorderColor")))
		:SetHeight(SkinData("ProgressBarHeight"))
		:SetWidth(IM.displayWidth - 65)
		:SetPoint("CENTER",InventoryManagerFrame,"CENTER",-10.5,0)
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(2)
		:Show()
	.__END
	
	IM.InventoryMeterBarFrame = CHAIN(CreateFrame("Frame","InventoryMeterBarFrame",InventoryManagerFrame))
		:SetSize(64,7)
		:SetHeight(SkinData("ProgressBarHeight"))
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(3)
		:Show()
	.__END
	
	IM.InventoryMeterBarFrame.tex = CHAIN(IM.InventoryMeterBarFrame:CreateTexture())
		:SetHeight(SkinData("ProgressBarHeight")-2)
		:SetPoint("TOPLEFT",InventoryMeterFrame,"TOPLEFT",1,-1)
		:SetColorTexture(unpack(SkinData("ProgressBarTexture")))
		:SetVertexColor(unpack(ZGV.CurrentSkinStyle:SkinData("ProgressBarColor") or {0,1,0,1}))
	.__END 
	
	IM.InventoryMeterText = InventoryManagerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	local InventoryMeterText = IM.InventoryMeterText
	InventoryMeterText:SetText("N/A")
	InventoryMeterText:SetPoint("CENTER", InventoryMeterFrame, "CENTER", 0, 0)
	InventoryMeterText:SetTextColor(1, 1, 1)
	InventoryMeterText:Hide()
	
	IM.InventoryClickFrame = CHAIN(CreateFrame("Button","InventoryClickFrame",InventoryManagerFrame))
		:SetSize(IM.displayWidth-65,12)
		:SetPoint("TOPLEFT",InventoryMeterFrame,"TOPLEFT",0,2)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(1,1,1,0.0)
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(4)
		
		-- Make the frame draggable from anywhere.
		:EnableMouse(true) :RegisterForDrag("LeftButton")
		:SetScript("OnMouseDown",function(self) InventoryManagerFrame:OnMouseDown() end)
		:SetScript("OnMouseUp",function(self) InventoryManagerFrame:OnMouseUp() end)
		:SetScript("OnDragStart",function(self) InventoryManagerFrame:OnDragStart() end)
		:SetScript("OnDragStop",function(self) InventoryManagerFrame:OnDragStop() end)
		
		:SetScript("OnClick",function(self)
			-- Swap bar and text
			if IM.InventoryMeterText:IsShown() then
				IM.InventoryMeterText:Hide()
				InventoryMeterFrame:Show()
				InventoryMeterBarFrame:Show()
				db.showText = false
			else
				InventoryMeterText:Show()
				InventoryMeterFrame:Hide()
				InventoryMeterBarFrame:Hide()
				db.showText = true
			end
			
		end)
		:SetScript("OnEnter", function(self)
			IM:OnEnter()
			IM:ShowTooltip("Inventory:  "..IM.InventoryMeterText:GetText())
		end)
		:SetScript("OnLeave", function(self)
			IM:OnLeave()
			GameTooltip:Hide()
		end)
		:Show()
	.__END

	IM:UpdateBar()
]]--
