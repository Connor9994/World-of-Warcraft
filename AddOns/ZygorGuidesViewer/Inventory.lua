-- Interaction with merchants, handling items in bags

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local CHAIN = ZGV.ChainCall
local L = ZGV.L

ZGV.Inventory = {}
local Inventory = ZGV.Inventory
Inventory.Items = {}

local C_Container = ZGV.Retrofit.C_Container
local Enum = ZGV.Retrofit.Enum


local PlayerName = UnitName("player")

-- Move viewer next to vendor frame if covered by it.
-- Called from vendor goaltype
function Inventory:AttachViewerVendor()
	if not ZGV.db.profile.repositionviewer then return end

	local frame = ZGV.Frame:GetParent()

	if (frame:GetLeft() < MerchantFrame:GetRight()) and (frame:GetTop()<MerchantFrame:GetTop() and frame:GetTop()>MerchantFrame:GetBottom()) then
		ZGV.F.SaveFrameAnchor(ZGV.Frame:GetParent(),"frame_anchor_prevendor")
	end
end

-- Move viewer back to original position
function Inventory:DetachViewerVendor()
	if not ZGV.db.profile.repositionviewer then return end

	if ZGV.db.profile.frame_anchor_prevendor then
		ZGV.F.SetFrameAnchor(ZGV.Frame:GetParent(),ZGV.db.profile.frame_anchor_prevendor)
	end
end

function Inventory:GetGrayTrashDetails()
	local itemList = {}
	local cheapest
	for bagID=0, NUM_BAG_SLOTS do
		for bagSlotID=1,C_Container.GetContainerNumSlots(bagID) do
			local itemLink = C_Container.GetContainerItemLink(bagID,bagSlotID)
			if itemLink then
				local itemID = ZGV.ItemLink.GetItemID(itemLink)
				local itemName, _, itemRarity, _, _, _, _, _, _, itemTexture, itemSellPrice = ZGV:GetItemInfo(itemLink)
				local info = C_Container.GetContainerItemInfo(bagID, bagSlotID)
				if itemRarity==0 and not ZGV.db.char.keptItems[itemID] then
					table.insert(itemList, {bagID, bagSlotID, itemName, itemID, info.stackCount, info.stackCount*itemSellPrice, itemTexture})
				end
			end
		end
	end

	table.sort(itemList, function(a,b) return a[6]<b[6] end)

	return itemList
end

function Inventory:HandleTrashMacro()
	local items = ZGV.Inventory:GetGrayTrashDetails()
	local item = items and items[1]
	if not item then return end

	local mousebutton = GetMouseButtonClicked()
	if mousebutton=="LeftButton" and IsShiftKeyDown() then
		ZGV.Inventory:DestroyItem(item) 
	elseif mousebutton=="RightButton" then
		ZGV.Inventory:addKeptItem(item[4],object)
	end
end

function Inventory:DestroyItem(object)
	local bagID, bagSlotID, itemName, itemID, count, price, zygor_texture = unpack(object)
	if not (bagID and bagSlotID) then return end
	local itemLink = C_Container.GetContainerItemLink(bagID,bagSlotID)
	if itemLink then
		local BagitemID = ZGV.ItemLink.GetItemID(itemLink)
		if BagitemID==itemID then
			C_Container.PickupContainerItem(bagID, bagSlotID)
			DeleteCursorItem()

			GameTooltip:Hide()
			ZGV.ActionBar.TrashButton.tooltip = L["actionbar_trash_destroying"]
		end
	end
end


function Inventory:IsTravelItem(itemid)
	if not LibRover and LibRover.data and LibRover.data.portkeys then return false end
	
	for _,item in ipairs(LibRover.data.portkeys) do
		if item.item==itemid then return true end
	end
	return false
end

local blacklist = {
	[2901] = true,  -- mining pick
	[1819] = true,  -- gouging pick
	[5956] = true,  -- blacksmith hammer
	[6367] = true,  -- big iron fishing pole
	[19970] = true, -- arcanite fishing pole
	[6365] = true,  -- strong fishing pole
	[6256] = true,  -- fishing pole
	[6366] = true,  -- darkwood fishing pole
	[12225] = true, -- blump family fishing pole
	[7005] = true,  -- skinning knife
	[2709] = true,  -- pips skinner
	[9901] = true,  -- zulian slicer
}

-- Returns items deemed to be unusable.
function Inventory:GetUnusableItems()
	local Upgrades = ZGV.ItemScore.Upgrades
	local itemsList = {}
	local onlyscan
	Upgrades:ScanBagsForUpgrades(onlyscan)
	Upgrades:ScanBagsForUpgradesForAlts()

	for bagID=0, NUM_BAG_SLOTS do
		for bagSlotID=1,C_Container.GetContainerNumSlots(bagID) do repeat
			if not (C_Container and C_Container.GetContainerItemEquipmentSetInfo and C_Container.GetContainerItemEquipmentSetInfo(bagID,bagSlotID)) then -- don't sell equipment sets
				local itemLink = C_Container.GetContainerItemLink(bagID,bagSlotID)
				if itemLink then
					local itemdetails = ZGV.ItemScore:GetItemDetails(itemLink)
					if not itemdetails then break end  --continue
					local stripped_itemlink = ZGV.ItemScore.strip_link(itemLink)
					local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = ZGV:GetItemInfo(itemLink)

					local isSoulbound = ZGV.IsItemBound(bagID, bagSlotID)
					local id = ZGV.ItemLink.GetItemID(itemLink)

					local isUpgrade,_,_,_,rejectedUpgrade = Upgrades:IsUpgrade(stripped_itemlink)
					isUpgrade = isUpgrade or Upgrades:IsUpgradeForAlt(stripped_itemlink)
					isUpgrade = isUpgrade or Upgrades:IsUpgradeForOffspec(stripped_itemlink)

					local fam,fmax=0,0
					if id then fam,fmax = GetItemUniqueness(id) end
					
					if id	and ((isSoulbound  and not (isUpgrade or rejectedUpgrade=="rejected")) or (itemRarity==1 and not isUpgrade))		-- sell non-upgrades that are bound or white
						and (itemSellPrice or 0) > 0								-- that have sell price
						and (itemdetails.class==Enum.ItemClass.Weapon or itemdetails.class==Enum.ItemClass.Armor) -- are weapon/armor
						and ((not ZGV.db.char.keptItems) or ZGV.db.char.keptItems[id]==nil)			-- not blacklisted by user
						and (not blacklist[id])									-- nor by us
						and itemRarity<5									-- and don't even look at legendaries
						and fam~=473										-- or their precursors
						and not Inventory:IsTravelItem(id)							-- or item used by travel system
					then
						local item = {}
						item.ID=id
						item.bagID=bagID
						item.bagSlotID=bagSlotID
						item.itemName=itemName
						item.itemLink=itemLink
						item.itemQuality=itemRarity
						table.insert(itemsList, item)
					end
				end
			end
		until true  end
	end
	table.sort(itemsList,function(a,b) return a.itemName<b.itemName end)
	
	return itemsList
end

local loot_sellgreyitems_blacklist = { -- some items are breaking auto sell for some reason. blacklist them
	[158178]=true, -- mangled-tortollan-scroll
	[167873]=true, -- remnant-of-the-void
}

local function loot_sellgreyitems_thread() --Auto Sell Grey Items
	local attempt = 0
	while true do
		if not MerchantFrame:IsVisible() then ZGV:Print("Selling of grey items interrupted. Results may not be accurate.") break end
		local grays = 0
		for bag=0, NUM_BAG_SLOTS do
			for slot=1, C_Container.GetContainerNumSlots(bag) do
				if not MerchantFrame:IsVisible() then break end
				local itemID=C_Container.GetContainerItemID(bag,slot)
				if itemID  then
					local itemInfo = C_Container.GetContainerItemInfo(bag,slot)
					if not loot_sellgreyitems_blacklist[itemID] then
						local price=select(11,ZGV:GetItemInfo(itemID))
						local classID=select(12,ZGV:GetItemInfo(itemID))
						if itemInfo.quality==0 and classID~=Enum.ItemClass.Questitem then
							grays = grays + 1
							if price > 0 then
								C_Container.UseContainerItem(bag,slot) -- Will use an item and since vendor is open, will sell the item.
								coroutine.yield()
							end
						end
					end
				end
			end
			coroutine.yield()
		end
		attempt = attempt + 1
		if grays == 0 then break end
		if attempt == 50 then break end
	end
	
	-- report and exit
	if not MerchantFrame:IsVisible() then ZGV:Print("Selling of grey items interrupted. Results may not be accurate.") end
	if Inventory.SellingGreyTotal>0 then
		for i,v in pairs(Inventory.SellingGreyStatus) do
			ZGV:Print(v)
		end
		ZGV:Print(L['loot_sellgreys_total']:format(GetMoneyString(Inventory.SellingGreyTotal)))
	end
end

Inventory.SellingGreyStatus = {}
function Inventory:SellGreyItems() --Auto Sell Grey Items
	table.wipe(Inventory.SellingGreyStatus)
	Inventory.SellingGreyTotal=0

	-- gather info
	for bag=0, NUM_BAG_SLOTS do
		for slot=1, C_Container.GetContainerNumSlots(bag) do
			local item=C_Container.GetContainerItemID(bag,slot)
			if item  then
				local itemInfo = C_Container.GetContainerItemInfo(bag,slot)
				if itemInfo.quality==0 and not noValue then
					local price=select(11,ZGV:GetItemInfo(item))
					local classID=select(12,ZGV:GetItemInfo(item))
					if itemInfo.quality==0 and classID~=Enum.ItemClass.Questitem and price > 0 then
						table.insert(Inventory.SellingGreyStatus,L['loot_sellgreys_sold']:format(itemInfo.hyperlink,itemInfo.stackCount,GetMoneyString(price*itemInfo.stackCount)))
						Inventory.SellingGreyTotal = Inventory.SellingGreyTotal + price*itemInfo.stackCount
					end
				end
			end
		end
	end

	-- work
	Inventory.SellingGreyThread = coroutine.create(loot_sellgreyitems_thread)
	Inventory.SellingGreyTimer = ZGV:ScheduleRepeatingTimer(function()
		local ok,ret = coroutine.resume(Inventory.SellingGreyThread)
		if coroutine.status(Inventory.SellingGreyThread)=="dead" then 
			ZGV:CancelTimer(Inventory.SellingGreyTimer) 
		end
	end,
	0.1)
end

-- Items to keep, at user's request.
function Inventory:addKeptItem(itemID, itemData)
	ZGV.db.char.keptItems[itemID]=itemData
	ZGV.ActionBar:SetActionButtons() -- to refresh 
end

function Inventory:SellUnusableItems()
	if not ZGV.db.profile.enable_vendor_tools then return end -- Checks for IM are depreciated, removed them. 
	Inventory.SellItemsPopup:SetItems()
end

--Buying items from steps in guide

function Inventory:ShowBuyConfirm(cost,hack) --hack used for testing
	ZGV:Debug("Showing/Creating Auto Buy Frame")
	local items=Inventory.ItemsToBuy
	
	if not self.popup then 
		self.popup = ZGV.PopupHandler:NewPopup("ZygorLootPopup","loot")
		
		if not hack then
			self.popup.OnAccept = function(self) Inventory:BuyItems() end
		end
		self.popup.OnSettings = function(self) ZGV:OpenOptions("automation") end
		self.popup.noMinimize = 1
	end
	
	local itemtext = ""

	for name,item in pairs(items) do itemtext = itemtext..item.link.." x |cffff0000"..item.amount.."|r\n" end

	self.popup:SetText(L['loot_autobuyframetext']:format(itemtext,GetMoneyString(cost)))

	self.popup.LayoutFull = function(self) end
	self.popup.LayoutFloaty = function(self) end

	self.popup:Show()
end

function Inventory:BuyItems()
	local items=Inventory.ItemsToBuy

	for name,item in pairs(items) do
		while item.amount > 0 do
			local buyAmount = item.amount

			if item.amount > item.maxStack then
				buyAmount = item.maxStack
			end
			if buyAmount<=0 then return end
			BuyMerchantItem(item.index,buyAmount)
			item.amount=item.amount-buyAmount
		end
	end
	wipe(self.ItemsToBuy) -- wipe table after we are done
end

function Inventory:FindItemsToBuy()
	if not ZGV.CurrentStep then return end
	local goals=ZGV.CurrentStep.goals
	local totalCost,neededSlots = 0,0
	local id

	if not self.ItemsToBuy then self.ItemsToBuy = {} else wipe(self.ItemsToBuy) end

	ZGV:Debug("Trying to find items to buy")

	for i=1, #goals do while(1) do
		if goals[i].action~="buy" or goals[i].status=="complete" or (goals[i].condition_visible and not goals[i].condition_visible()) then break end	
		local name=goals[i].target
		local number=tonumber(goals[i]:GetText():match("%s%d+"))
		local found = false

		id=goals[i].targetid

		if not id or not number then return end -- no item id in guide or we couldn't find out how many.

		for index=1,GetMerchantNumItems() do while(1) do 
			local merchItemName,_,costForOne,merchantStack,numAvail = GetMerchantItemInfo(index)
			if not merchItemName then Inventory.FindItemsToBuyMissedNames=true break end
			if merchItemName ~= name then break end

			local maxStack=GetMerchantItemMaxStack(index)

			if number%maxStack == 0 then neededSlots = neededSlots + floor(number/maxStack)
			else neededSlots = neededSlots + floor(number/maxStack) + 1 end

			for k=1, floor((index-1)/10) do MerchantNextPageButton:Click() end -- send them to the correct page

			if costForOne==0 then ZGV:Print(L['loot_autobuynotmoney']:format(name)) return end
			if numAvail~=-1 and numAvail < number then ZGV:Print(L['loot_autobuynostock']:format(name,number)) return end
			
			totalCost = totalCost + number*(costForOne/merchantStack)

			self.ItemsToBuy[name]={["amount"]=number, ["index"]=index, ["maxStack"]=maxStack, ["link"]=(select(2,ZGV:GetItemInfo(id)))}
			
			found = true

		break end if found then break end end
		if not found and not Inventory.FindItemsToBuyMissedNames then
			local link=(select(2,ZGV:GetItemInfo(id)))
			 ZGV:Print(L['loot_autobuynotavail']:format(link))
		end
	break end end

	if totalCost <= 0 then return end -- items dont exist in this step or are of a different type than gold
	
	ZGV:Debug("Found items")

	local playerMoney = GetMoney()
	local totalAvailSlots=0

	local function CanGoInBag(item, bag) --Test the item family of available bags with the item
		   local itemFamily = GetItemFamily(item)
		   local bagFamily = select(2, C_Container.GetContainerNumFreeSlots(bag))
		   if not itemFamily or not bagFamily then return false end
		   return bagFamily == 0 or bit.band(itemFamily, bagFamily) > 0
	end

	for bag=1,4 do --All items of one type can go in the same bags. So just check the last item.
		if CanGoInBag(id,bag) then
			totalAvailSlots=totalAvailSlots+C_Container.GetContainerNumFreeSlots(bag)
		end
	end

	--if neededSlots > totalAvailSlots then ZGV:Print(L['loot_autobuynoroom']:format(neededSlots)) return end

	if playerMoney >= totalCost then
		ZGV:Debug("Trying to buy items")
		if ZGV.db.profile.autobuyframe and ZGV.db.profile.enable_vendor_tools then
			Inventory:ShowBuyConfirm(totalCost)--BuyItems(Inventory.ItemsToBuy)
		else
			Inventory:BuyItems()
		end
	elseif playerMoney < totalCost then
		ZGV:Print(L['loot_autobuypoor']:format(GetMoneyString(totalCost)))
	end
end

function Inventory:SetUpGreySellButton()
	if self.greysellbutton then return end
	self.greysellbutton = CHAIN(CreateFrame("Button", "ZygorGuidesViewerSellButton", MerchantFrame, "UIPanelButtonTemplate"))
		:SetPoint("TOPLEFT", 60, -30)
		:SetWidth(100)
		:SetText(L['loot_sellgreybutton'])
		:SetScript("OnClick",Inventory.SellGreyItems)
	.__END
end

function Inventory:SetUpBagspaceText()
	Inventory.BagSpaceText = CHAIN(MainMenuBarBackpackButton:CreateFontString(nil,"OVERLAY"))
		:SetPoint("BOTTOMRIGHT",-1,3)
		:SetHeight(13)
		:SetFont("Fonts\\ARIALN.TTF",14,"OUTLINE")
		:SetText("")
	.__END
	Inventory.BagSpaceTextBG = CHAIN(MainMenuBarBackpackButton:CreateTexture(nil,"OVERLAY"))
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetPoint("BOTTOM",0,3)
		:SetHeight(12)
		:SetTexture(ZGV.SKINSDIR.."white")
		:SetVertexColor(0,0,0,0.5)
	.__END

end

function Inventory:UpdateBagspaceText()
	if not ZGV.db.profile.showbagspace then
		Inventory.BagSpaceText:Hide()
		Inventory.BagSpaceTextBG:Hide()
		return
	end

	Inventory.BagSpaceText:Show()
	Inventory.BagSpaceTextBG:Show()

	local total,free = 0,0
	for bag=0,NUM_BAG_SLOTS do
		total = total + C_Container.GetContainerNumSlots(bag)
		free = free + C_Container.GetContainerNumFreeSlots(bag)
	end

	if free>10 then
		Inventory.BagSpaceText:SetFont("Fonts\\ARIALN.TTF",14,"OUTLINE")
	else
		Inventory.BagSpaceText:SetFont("Fonts\\ARIALN.TTF",16,"OUTLINE")
	end

	Inventory.BagSpaceText:SetText(free)
end

Inventory.SellItemsPopup = {}
local SIP = Inventory.SellItemsPopup
local ui = ZGV.UI
local SkinData = ui.SkinData

SIP.textSize = 12

SIP.rows={}
SIP.rowSpace = 5
SIP.headerHeight = 60
SIP.footerHeight = 20
SIP.CurrentList = {}


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

	SIP.Popup.text1=CHAIN(SIP.Popup:CreateFontString(nil,"ARTWORK"))
		:SetPoint("TOP",SIP.Popup,"TOP", 0, -4)
		:SetFont(ZGV.FontBold,16)
		:SetText("Zygor Inventory Manager")
	.__END		
	
	SIP.Popup.text2=CHAIN(SIP.Popup:CreateFontString(nil,"ARTWORK"))
		:SetPoint("TOP",SIP.Popup,"TOP", 0, -26)
		:SetFont(ZGV.Font,12)
		:SetText("The following items can be sold:")
	.__END

	-- frame that keeps sip specific stuff
	SIP.ScrollInner = CHAIN(CreateFrame("Frame", nil, SIP.Popup ))
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:Show()
		:SetClampedToScreen(false)
	.__END

	SIP.ScrollContainer = CHAIN(ZGV.UI:Create("ScrollChild",SIP.Popup , nil, SIP.ScrollInner))
		:SetPoint("TOPLEFT",SIP.Popup,"TOPLEFT",0,-37)
		:SetPoint("BOTTOMRIGHT",SIP.Popup,"BOTTOMRIGHT",10,35)
		:Show()
		.__END

	SIP.ScrollContainer:SetFrameStrata(SIP.Popup:GetFrameStrata())
	SIP.ScrollContainer:SetFrameLevel(SIP.Popup:GetFrameLevel()+1)
end

local function create_row()
	local row = CHAIN(ui:Create("Frame",SIP.ScrollInner))
		:SetFrameLevel(SIP.ScrollInner:GetFrameLevel()+1)
		:SetBackdropColor(0,0,0,0)
		:SetBackdropBorderColor(0,0,0,0)
		:SetHeight(SIP.textSize)
		:SetClampedToScreen(false)
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
			Inventory:addKeptItem(row.item.ID,row.item) 
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
	local data = Inventory:GetUnusableItems()
	SIP.Popup:Hide()

	SIP.Popup:SetWidth(1000) -- we need to have enough space to show full names, will resize everything when we know how much real estate we need

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
			row:SetPoint("TOP",SIP.ScrollInner,"TOP",0,-SIP.rowSpace * 2)
		else
			row:SetPoint("TOP",prev,"BOTTOM",0,-SIP.rowSpace)
		end
		row:SetPoint("LEFT",SIP.ScrollInner,"LEFT",SIP.rowSpace,0)
		row:SetPoint("RIGHT",SIP.ScrollInner,"RIGHT",-SIP.rowSpace,0)

		width = max(width,row.itemString:GetStringWidth()+12)
		height = height + row:GetHeight() + SIP.rowSpace

		row:Show()
		prev=row

	end

	
	SIP.Popup.LayoutFull = function(self) end
	SIP.Popup.LayoutFloaty = function(self)	end

	SIP.CurrentList = data

	height = height + 10

	SIP.Popup:Show()
	SIP.Popup:SetWidth(width)
	SIP.Popup:SetHeight(200)
	SIP.ScrollInner:SetHeight(height)
	SIP.ScrollContainer:TotalValue(height)
	SIP.ScrollContainer:SetValue(0)
	SIP.ScrollContainer:SetVerticalScroll(0)
end


local function OnEvent(self, event)
	if event=="BAG_UPDATE_DELAYED" then
		if Inventory.SellItemsPopup and Inventory.SellItemsPopup.Popup and Inventory.SellItemsPopup.Popup:IsVisible() then 
			-- refresh sell list when something changed in players bags
			Inventory.SellItemsPopup:SetItems() 
		end 
		Inventory:UpdateBagspaceText()
	elseif event=="MERCHANT_SHOW" then
		Inventory:SetUpGreySellButton()
		Inventory.greysellbutton:SetShown(ZGV.db.profile.showgreysellbutton)

		if ZGV.db.profile.autosell and ZGV.db.profile.enable_vendor_tools then Inventory:SellGreyItems() end
		if ZGV.db.profile.autosellother and ZGV.db.profile.enable_vendor_tools then Inventory:SellUnusableItems() end
		if ZGV.db.profile.autobuy and ZGV.db.profile.enable_vendor_tools then  
			Inventory.FindItemsToBuyMissedNames = false
			Inventory:FindItemsToBuy() 
		end
		Inventory:AutoRepair()
	elseif event=="MERCHANT_UPDATE" then
		if ZGV.db.profile.autobuy and ZGV.db.profile.enable_vendor_tools then  
			ZGV:ScheduleTimer(function() Inventory:FindItemsToBuy() end,1)		
		end
	elseif event=="MERCHANT_CLOSED" then
		Inventory:DetachViewerVendor()

		if Inventory.popup then Inventory.popup:Hide() end 
		if Inventory.SellItemsPopup and Inventory.SellItemsPopup.Popup then Inventory.SellItemsPopup.Popup:Hide() end 
		Inventory.FindItemsToBuyMissedNames = false
	elseif event=="BANKFRAME_OPENED" then
		Inventory:RecordBank()
	elseif event=="BAG_UPDATE" then
		if BankFrame and BankFrame:IsVisible() then
			Inventory:RecordBank()
		end
	elseif event=="MAIL_SHOW" then
		Inventory:ShowAltGearPopup()
	end


end


local function recordbankbag(bagnum)
	local savedinventory = Inventory.Bankdata[PlayerName]
	for i=1,C_Container.GetContainerNumSlots(bagnum) do
		local link = C_Container.GetContainerItemLink(bagnum,i)
		local itemInfo = C_Container.GetContainerItemInfo(bagnum, i)
		if link then
			local _, _, _, _, _, classID, subclassID = GetItemInfoInstant(link)

			link = ZGV.ItemLink.StripBlizzExtras(link,true)
			link = link:gsub("%[",""):gsub("%]","")
			table.insert(savedinventory,("item^%d^%d^%d^%d^%s^%d^%d"):format(bagnum,i,itemInfo.stackCount,itemInfo.iconFileID,link,classID,subclassID))
		end
	end
	local slots = C_Container.GetContainerNumSlots(bagnum)
	local free = C_Container.GetContainerNumFreeSlots(bagnum)

	return slots,free
end

Inventory.BankSlots = {-1,6,7,8,9,10,11,12}
if not ZGV.IsRetail then Inventory.BankSlots = {-1,6,7,8,9,10,11} end

function Inventory:RecordBank()
	local savedinventory = Inventory.Bankdata[PlayerName]
	table.wipe(savedinventory)

	local total_free,total_slots = 0,0
	local NUM_BAG_SLOTS = ZGV.IsRetail and 5 or NUM_BAG_SLOTS -- retail NBS is not updated to understand reagent bank

	for index,bagnum in ipairs(Inventory.BankSlots) do
		local slot = C_Container.ContainerIDToInventoryID(NUM_BAG_SLOTS + index-1)
		local bagtexture = GetInventoryItemTexture("player",slot)
		local baglink = GetInventoryItemLink("player",slot)
		local slots,free = recordbankbag(bagnum)

		total_free = total_free + free
		total_slots = total_slots + slots

		if bagnum == -1 then -- bank does not have a default icon for main frame, so lets put map tracking icon here
			bagtexture=136453
			baglink = "Bank"
		end
		if baglink then
			baglink = baglink:gsub("%[",""):gsub("%]","")
			table.insert(savedinventory,("bag^%d^%d^%d^%d^%s"):format(bagnum,bagtexture,slots,free,baglink))
		end
	end

	-- reagent bank
	if IsReagentBankUnlocked and IsReagentBankUnlocked() then
		local bagnum = -3
		local slots,free = recordbankbag(bagnum)
		local baglink = "Reagent Bank"
		table.insert(savedinventory,("bag^%d^%d^%d^%d^%s"):format(bagnum,136453,slots,free,baglink))
	end

	table.insert(savedinventory,("meta^%d^%d^%d"):format(time(),total_slots,total_free))
	ZGV:SendMessage("INVENTORY_BANK_UPDATED")
end

function Inventory:CharacterBankKnown()
	if Inventory.Bankdata[PlayerName] and Inventory.Bankdata[PlayerName][1] then return true end
	return false
end

local temp,names = {},{}
function Inventory:ParseBank(ident)
	table.wipe(temp)
	table.wipe(names)
	if not ident then return temp end
	if not Inventory.Bankdata then return temp end -- too soon, you called us too soon

	if ident=="*" then
		for n,_ in pairs(Inventory.Bankdata) do
			table.insert(names,n)
		end
	else
		table.insert(names,ident)
	end

	for _,character in ipairs(names) do
		local entries = Inventory.Bankdata[character]
		if not entries then return temp end

		temp[character] = {}
		
		for _,line in ipairs(entries) do
			local type,arg1,arg2,arg3,arg4,arg5,arg6,arg7 = strsplit("^",line)
			if type=="item" then
				local bag=tonumber(arg1)
				local slot=tonumber(arg2)
				local name = arg5:match(".*%|h(.*)%|h.*")
				temp[character][bag] = temp[character][bag] or {}
				temp[character][bag][slot] = {type="item", link=arg5, name=name, icon=tonumber(arg4), count=tonumber(arg3), class=tonumber(arg6), subclass=tonumber(arg7), bag=bag, slot=slot, owner=character}
			elseif type=="bag" then
				local bag = tonumber(arg1)
				temp[character][bag] = temp[character][bag] or {}
				temp[character][bag].bag = {type="bag", link=arg5, name=name, texture=tonumber(arg2), slots=tonumber(arg3), free=tonumber(arg4), bag=bag, owner=character}
			elseif type=="meta" then
				local timestamp = tonumber(arg1)
				local total_slots = tonumber(arg2)
				local total_free = tonumber(arg3)
				local timeobj = C_DateAndTime.GetCalendarTimeFromEpoch(timestamp*1000000)  -- seconds to microseconds
				local timestamp = FormatShortDate(timeobj.monthDay, timeobj.month, timeobj.year) .. " " .. GameTime_GetFormattedTime(timeobj.hour, timeobj.minute, true)

				temp[character].timestamp = timestamp
				temp[character].total_slots = total_slots
				temp[character].total_free = total_free	
			end
		end
		temp[character].character = name
	end
	return temp
end

function Inventory:AutoRepair()
	if CanMerchantRepair() then
		local zgvgoldneeded = GetRepairAllCost()
		local zgvmoneyheld = GetMoney()
		local zgvcangbrepair = CanGuildBankRepair()
		local zgvgbankamount = GetGuildBankWithdrawMoney()

		if zgvgoldneeded==0 or ZGV.db.profile.autorepair==1 then return end
		if ZGV.db.profile.autorepair==2 or (not IsInGuild() and ZGV.db.profile.autorepair>2) then
			if (zgvgoldneeded <=zgvmoneyheld) then								---Use own money: has money
				RepairAllItems()
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..".")
			else																---Use own money: no money
				ZGV:Print(L['im_ar_cannotar'])
			end
		elseif ZGV.db.profile.autorepair==3 then
			if zgvcangbrepair and (zgvgbankamount >= zgvgoldneeded) then			---Use guild money, then own: can guild repair
				RepairAllItems(1)
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..L['im_ar_guild'])
			elseif zgvgoldneeded <=zgvmoneyheld then								---Use guild money, then own: cannot guild repair but has money
				RepairAllItems()
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..".")
			elseif not zgvcangbrepair then ZGV:Print(L['im_ar_noguildrepairs'])		---Use guild money, then own: no money, guild not allowed
			else																---Use guild money, then own: no guild, no money
				ZGV:Print(L['im_ar_cannotar2'])
			end
		elseif ZGV.db.profile.autorepair==4 then
			if zgvgoldneeded <=zgvmoneyheld then									---Use own money, then guild: has money
				RepairAllItems()
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..".")
			elseif zgvcangbrepair and (zgvgbankamount >= zgvgoldneeded) then		---Use own money, then guild: no money but has guild
				RepairAllItems(1)
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..L['im_ar_guild'])
			elseif not zgvcangbrepair then ZGV:Print(L['im_ar_noguildrepairs'])		---Use own money, then guild: no money, guild not allowed
			else																---Use own money, then guild: no money, no guild
				ZGV:Print(L['im_ar_cannotar2'])
			end
		end
	end
end

function Inventory:ShowAltGearPopup()
	if not (ZGV.db.profile.n_popup_enable and ZGV.db.profile.n_popup_gear and ZGV.db.profile.n_popup_gear_alt) then return end
	if not next(ZGV.ItemScore.Upgrades.AltsQueue) then return end
	
	if not Inventory.AltGearPopup then
		Inventory.AltGearPopup = ZGV.PopupHandler:NewPopup("ZygorSellPopup","loot")
		Inventory.AltGearPopup.noMinimize = 1
		Inventory.AltGearPopup.logo:Hide() -- no default logo
		Inventory.AltGearPopup.text:SetText("You have upgrades for your alts\n\n")
		Inventory.AltGearPopup.text:SetFont(ZGV.Font,ZGV.db.profile.fontsize+2)
		Inventory.AltGearPopup.text2:SetFont(ZGV.Font,ZGV.db.profile.fontsecsize) 
		Inventory.AltGearPopup.declinebutton:Hide()
		Inventory.AltGearPopup.acceptbutton:SetText("OK")
		Inventory.AltGearPopup.acceptbutton:ClearAllPoints()
		Inventory.AltGearPopup.acceptbutton:SetPoint("BOTTOM",0,5)
		Inventory.AltGearPopup:Hide()
		Inventory.AltGearPopup.LayoutFull = function(self) end
		Inventory.AltGearPopup.LayoutFloaty = function(self) end
	end

	local itemlist = ""
	local temp = {}
	for item,data in pairs(ZGV.ItemScore.Upgrades.AltsQueue) do
		if data.confirmed == 1 then
			table.wipe(temp)
			itemlist = itemlist .. item .. " - "
			for alt,_ in pairs(data.characters) do
				table.insert(temp,alt)
			end
			itemlist = itemlist .. table.concat(temp,", ") .. "\n"
		end
	end

	Inventory.AltGearPopup.text2:SetText(itemlist)

	Inventory.AltGearPopup:Show()

	--Spoo(ZGV.ItemScore.Upgrades.AltsQueue)
end

tinsert(ZGV.startups,{"InventoryManager setup",function(self)
	ZGV.db.char.keptItems = ZGV.db.char.keptItems or {}
	if ZGV.IsRetail then
		Inventory.Bankdata = ZGV.db.realm.bankdata
	else
		Inventory.Bankdata = ZGV.db.factionrealm.bankdata
	end

	Inventory.Bankdata[PlayerName] = Inventory.Bankdata[PlayerName] or {}

	ZGV:AddEventHandler("MERCHANT_SHOW",OnEvent)
	ZGV:AddEventHandler("MERCHANT_CLOSED",OnEvent)
	ZGV:AddEventHandler("MERCHANT_UPDATE",OnEvent)
	ZGV:AddEventHandler("BANKFRAME_OPENED",OnEvent)
	ZGV:AddEventHandler("BAG_UPDATE",OnEvent)
	ZGV:AddEventHandler("BAG_UPDATE_DELAYED",OnEvent)
	ZGV:AddEventHandler("PLAYERBANKSLOTS_CHANGED",OnEvent)
	ZGV:AddEventHandler("MAIL_SHOW",OnEvent)

	Inventory:SetUpBagspaceText()
	Inventory:UpdateBagspaceText()

	SIP:CreateFrame()

	ZGV:SendMessage("INVENTORY_STARTUP_DONE")
end})
