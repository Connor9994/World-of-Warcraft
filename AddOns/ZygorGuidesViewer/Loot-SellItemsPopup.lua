--Loot-SellItemsPopup.lua
-- The amount of code in the popup was getting to be large, too large to be a
-- part of the normal Loot.lua.

local name,ZGV = ...
local Loot = ZGV.Loot 
local CHAIN = ZGV.ChainCall
local ui = ZGV.UI
local SkinData = ui.SkinData

Loot.SellItemsPopup = {}
local SIP = Loot.SellItemsPopup
SIP.textSize = 12

SIP.rows={}
SIP.rowSpace = 5
SIP.headerHeight = 60
SIP.footerHeight = 20
SIP.CurrentList = {}

local C_Container = ZGV.Retrofit.C_Container

function SIP:CreateFrame()
	-- make popup, we will attach frame to it
	SIP.Popup = ZGV.PopupHandler:NewPopup("ZygorSellPopup","loot")
	SIP.Popup.noMinimize = 1
	SIP.Popup.logo:Hide() -- no default logo
	SIP.Popup.text:Hide() -- no default text
	SIP.Popup:Hide()

	function SIP.Popup:OnDecline() SIP.Popup:Hide() end
	function SIP.Popup:OnAccept() 
		for i, v in pairs(SIP.CurrentList) do
			local item = C_Container.GetContainerItemID(v.bagID,v.bagSlotID)
			if item==v.ID then -- make sure it is what we think it is
				C_Container.UseContainerItem(v.bagID,v.bagSlotID) -- Will use an item and since vendor is open, will sell the item.
			end
		end
	end

	-- frame that keeps sip specific stuff
	SIP.Frame = CHAIN(ui:Create("Frame",SIP.Popup))
		:SetPoint("CENTER")
		:SetSize(300,300)
		:SetBackdropColor(0.1,0.1,0.1,1)
		:SetBackdropBorderColor(0.1,0.1,0.1,1)
	.__END

	SIP.Frame.text1=CHAIN(SIP.Frame:CreateFontString(nil,"ARTWORK"))
		:SetPoint("TOP",SIP.Frame,"TOP", 0, -4)
		:SetFont(ZGV.FontBold,16)
		:SetText("Zygor Inventory Manager")
	.__END		
	
	SIP.Frame.text2=CHAIN(SIP.Frame:CreateFontString(nil,"ARTWORK"))
		:SetPoint("TOP",SIP.Frame,"TOP", 0, -26)
		:SetFont(ZGV.Font,12)
		:SetText("The following items can be sold:")
	.__END

	SIP.Frame:SetPoint("TOPLEFT",SIP.Popup,1,-1)
	SIP.Frame:SetFrameStrata(SIP.Popup:GetFrameStrata())
	SIP.Frame:SetFrameLevel(SIP.Popup:GetFrameLevel()+1)
end

local function create_row()
	local row = CHAIN(ui:Create("Frame",SIP.Frame))
		:SetFrameLevel(SIP.Frame:GetFrameLevel()+1)
		:SetBackdropColor(0,0,0,0)
		:SetBackdropBorderColor(0,0,0,0)
		:SetHeight(SIP.textSize)
	.__END
	row:SetScript("OnEnter",function()
		GameTooltip:SetOwner(row, "ANCHOR_CURSOR")
		GameTooltip:SetHyperlink(row.item.itemLink)
		GameTooltip:Show()
	end)
	row:SetScript("OnLeave",function()
		GameTooltip:FadeOut()
	end)

	row.itemString = CHAIN(row:CreateFontString())
		:SetJustifyV("TOP")
		:SetJustifyH("LEFT")
		:SetFont(ZGV.Font,SIP.textSize)
		:SetText("item name")
		:SetPoint("TOPLEFT",row,"TOPLEFT",0,0)
		:SetPoint("BOTTOMRIGHT",row,"BOTTOMRIGHT",-12,0)
	.__END
	row.remove = CHAIN(ui:Create("Button",row))
		:SetSize(12,12)
		:RegisterForClicks("AnyUp")
		:SetNormalTexture(ZGV.DIR.."\\Skins\\ban")
		:SetPoint("TOPLEFT",row.itemString,"TOPRIGHT",0,0)
		:SetBackdropColor(0,0,0,0)
		:SetBackdropBorderColor(0,0,0,0)
		:SetScript("OnClick", function(self) 
			ZGV.IM:addKeptItem(row.item.ID,row.item) 
			SIP:SetItems()
		end)
		:SetScript("OnEnter",function()
			GameTooltip:SetOwner(row, "ANCHOR_CURSOR")
			GameTooltip:AddLine("Remove "..row.item.itemLink)
			GameTooltip:Show()
		end)
		:SetScript("OnLeave",function()
			GameTooltip:FadeOut()
		end)
	.__END

	return row
end


function SIP:SetItems()
	local data = ZGV.IM:GetUnusableItems()
	SIP.Popup:Hide()

	SIP.Frame:SetWidth(1000) -- we need to have enough space to show full names, will resize everything when we know how much real estate we need

	if not data then return end -- we did not get anything, most likely started before itemscore finished its task
	if #data==0 then return end -- empty array, nothing to show

	for _,row in pairs(SIP.rows) do row:Hide() end

	local prev = nil
	local height = 0
	local width = 300 -- minimum width for popup
	for i,item in ipairs(data) do
		if not SIP.rows[i] then SIP.rows[i] = create_row() end
		local row = SIP.rows[i]
		row.item = item
		row.itemString:SetText(item.itemLink)
		row:ClearAllPoints()
		if not prev then
			row:SetPoint("TOP",SIP.Frame.text2,"BOTTOM",0,-SIP.rowSpace * 2)
		else
			row:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-SIP.rowSpace)
		end
		row:SetPoint("LEFT",SIP.Frame,"LEFT",SIP.rowSpace,0)
		row:SetPoint("RIGHT",SIP.Frame,"RIGHT",-SIP.rowSpace,0)

		width = max(width,row.itemString:GetStringWidth()+12)
		height = height + row:GetHeight() + SIP.rowSpace

		row:Show()
		prev=row

	end

	SIP.CurrentList = data

	height = height + SIP.headerHeight + SIP.footerHeight

	SIP.Popup:Show()
	SIP.Frame:SetSize(width,height)
	SIP.Popup:SetSize(width+2,height+2)
end


tinsert(ZGV.startups,{"Loot sell popup startup",function(self)
	SIP:CreateFrame()
end})