local name,ZGV = ...

-- GLOBAL ZygorGreyFrame

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local Loot = {}
local L = ZGV.L
local CHAIN = ZGV.ChainCall
local UIFrameFadeOut,UIFrameFadeIn=ZGV.UIFrameFade.UIFrameFadeOut,ZGV.UIFrameFade.UIFrameFadeIn  -- prevent taint

local FONT=ZGV.Font

ZGV.Loot=Loot

local function SkinData(property)
	return ZGV.UI.SkinData(property)
end

local C_Container = ZGV.Retrofit.C_Container

-- Value of grey frame
function Loot:GetGreyBagValue()
	local totalValue=0
	local bag, slot
	local itemList= {}

	for bag=0, NUM_BAG_SLOTS do
		for slot=1, C_Container.GetContainerNumSlots(bag) do
			local itemid=C_Container.GetContainerItemID(bag,slot)
			if itemid  then
				local quality=select(3,ZGV:GetItemInfo(itemid))
				if quality==0 then
					local price=select(11,ZGV:GetItemInfo(itemid))
					local itemCount=GetItemCount(itemid)

					if itemList[itemid]==nil then --checks to make sure that there are not multiple stacks of the same item.
						itemList[itemid]=1
						totalValue=totalValue+price*itemCount
					end
				end
			end
		end
	end
	self.GreyFrame.Value:SetText("|cffffdd00"..GetMoneyString(totalValue).."|r") --value of all the greys! Super important
end

function Loot:CloseFrame()
	self.GreyFrame:Hide()
	ZGV.db.profile.showgreyvalue=false
end

function Loot:CreateFrame()

	self.GreyFrame = CHAIN(ZygorGreyFrame)
		--:SetParent(ZGV.Frame) --Parented to ZGV.Frame so that it hides at the same times.
		:SetBackdrop(SkinData("MoneyBackdrop"))	:SetBackdropColor(unpack(SkinData("MoneyBackdropColor"))) :SetBackdropBorderColor(unpack(SkinData("MoneyBackdropBorderColor")))
		:SetSize(165,28)
		:SetMovable(true) :SetClampedToScreen(true) :RegisterForDrag("LeftButton")
		:SetScript("OnEnter",function(self) UIFrameFadeIn(self.Close, 0.2, self.Close:GetAlpha() , 1.0) end) 
		:SetScript("OnLeave",function(self) if not MouseIsOver(self.Close) then UIFrameFadeOut(self.Close, 0.2, self.Close:GetAlpha() , 0.0) end end) 
		:SetScript("OnDragStart",function(self) self:StartMoving() end)
		:SetScript("OnDragStop",function(self) self:StopMovingOrSizing() end)
		:SetUserPlaced(true)
		:Hide()
	.__END

	local F = self.GreyFrame

	F.MainText = CHAIN(F:CreateFontString())
		:SetPoint("TOP",F,"Top",0,-4)
		:SetJustifyV("TOP")
		:SetFont(FONT,11)
		:SetParent(F)
		:SetText(L['loot_greyframe_maintext'])
	.__END

	F.Value = CHAIN(F:CreateFontString())
		:SetPoint("TOP",F.MainText,"Bottom",0,-1)
		:SetJustifyV("TOP")
		:SetParent(F)
		:SetFont(FONT,10)
		:SetText("h")
	.__END

	F.Close = CHAIN(CreateFrame("Button", "ZygorGreyFrameClose" , F )) 
		:SetSize(10,10)
		:SetPoint("LEFT",F.MainText,"RIGHT",3)
		:RegisterForClicks("LeftButtonUp")
		:SetScript("OnClick",function() Loot:CloseFrame() end) 
		:Hide()
	.__END
	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(F.Close)

	ZGV:AddMessageHandler("SKIN_UPDATED",Loot.ApplySkin)
	Loot:ApplySkin()
end

function Loot:ToggleFrame()
	if ZGV.db.profile.showgreyvalue and ZGV.db.profile.enable_vendor_tools then
		if not self.GreyFrame then 
			self:CreateFrame()
		end
		
		self.GreyFrame:Show()
		self:GetGreyBagValue()
	elseif self.GreyFrame then
		self.GreyFrame:Hide()
	end
end

function Loot:ApplySkin()
	local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
	local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacity or  1

	self.GreyFrame:SetBackdrop(SkinData("MoneyBackdrop"))
	self.GreyFrame:SetBackdropColor(unpack(SkinData("MoneyBackdropColor")))
	self.GreyFrame:SetBackdropBorderColor(unpack(SkinData("MoneyBackdropBorderColor")))
	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(self.GreyFrame.Close)
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
						if itemInfo.quality==0 then
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
	if Loot.SellingGreyTotal>0 then
		for i,v in pairs(Loot.SellingGreyStatus) do
			ZGV:Print(v)
		end
		ZGV:Print(L['loot_sellgreys_total']:format(GetMoneyString(Loot.SellingGreyTotal)))
	end
end

Loot.SellingGreyStatus = {}
function Loot:SellGreyItems() --Auto Sell Grey Items
	table.wipe(Loot.SellingGreyStatus)
	Loot.SellingGreyTotal=0

	-- gather info
	for bag=0, NUM_BAG_SLOTS do
		for slot=1, C_Container.GetContainerNumSlots(bag) do
			local item=C_Container.GetContainerItemID(bag,slot)
			if item  then
				local itemInfo = C_Container.GetContainerItemInfo(bag,slot)
				if itemInfo.quality==0 and not noValue then
					local price=select(11,ZGV:GetItemInfo(item))
					if itemInfo.quality==0 and price > 0 then
						table.insert(Loot.SellingGreyStatus,L['loot_sellgreys_sold']:format(itemInfo.hyperlink,itemInfo.itemCount,GetMoneyString(price*itemInfo.stackCount)))
						Loot.SellingGreyTotal = Loot.SellingGreyTotal + price*itemInfo.stackCount
					end
				end
			end
		end
	end

	-- work
	Loot.SellingGreyThread = coroutine.create(loot_sellgreyitems_thread)
	Loot.SellingGreyTimer = ZGV:ScheduleRepeatingTimer(function()
		local ok,ret = coroutine.resume(Loot.SellingGreyThread)
		if coroutine.status(Loot.SellingGreyThread)=="dead" then 
			ZGV:CancelTimer(Loot.SellingGreyTimer) 
		end
	end,
	0.1)
end

function Loot:SellUnusableItems()
	if not ZGV.db.profile.enable_vendor_tools then return end -- Checks for IM are depreciated, removed them. 
	Loot.SellItemsPopup:SetItems()
end

--Buying items from steps in guide

function Loot:ShowBuyConfirm(cost,hack) --hack used for testing
	ZGV:Debug("Showing/Creating Auto Buy Frame")
	local items=Loot.ItemsToBuy
	
	if not self.popup then 
		self.popup = ZGV.PopupHandler:NewPopup("ZygorLootPopup","loot")
		
		if not hack then
			self.popup.OnAccept = function(self) Loot:BuyItems() end
		end
		self.popup.OnSettings = function(self) ZGV:OpenOptions("automation") end
		
		--[[ --This option to minimize is disabled at the moment. If ever added make sure you hide the NC icon appriopriately. On Vendor close 
			--or on items being purchased.
		self.popup.returnMinimizeSettings = function(self)
			local notifcationText = L['notifcenter_loot_text']
			local tooltipText = L['notifcenter_gen_popup_tooltip']

			-- text,tooltipText,priority,poptime,removetime,quiet = returnMinimizeSettings()

			return notifcationText,tooltipText
		end
		--]]
		self.popup.noMinimize = 1
	end
	
	local itemtext = ""

	for name,item in pairs(items) do itemtext = itemtext..item.link.." x |cffff0000"..item.amount.."|r\n" end

	self.popup:SetText(L['loot_autobuyframetext']:format(itemtext,GetMoneyString(cost)))

	self.popup:Show()
end

function Loot:BuyItems()
	local items=Loot.ItemsToBuy

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

function Loot:FindItemsToBuy()
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
			if not merchItemName then Loot.FindItemsToBuyMissedNames=true break end
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
		if not found and not Loot.FindItemsToBuyMissedNames then
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
			Loot:ShowBuyConfirm(totalCost)--BuyItems(Loot.ItemsToBuy)
		else
			Loot:BuyItems()
		end
	elseif playerMoney < totalCost then
		ZGV:Print(L['loot_autobuypoor']:format(GetMoneyString(totalCost)))
	end
end

function Loot:SetUpGreySellButton()
	if self.greysellbutton then return end
	self.greysellbutton = CHAIN(CreateFrame("Button", "ZygorGuidesViewerSellButton", MerchantFrame, "UIPanelButtonTemplate"))
		:SetPoint("TOPLEFT", 60, -30)
		:SetText(L['loot_sellgreybutton'])
		:SetScript("OnClick",Loot.SellGreyItems)
		:SetWidth(100)
	.__END
end

local function OnEvent(self,event,arg1,arg2)
	if event=="BAG_UPDATE_DELAYED" then
		if ZGV.db.profile.showgreyvalue and ZGV.db.profile.enable_vendor_tools and Loot.GreyFrame then
			Loot:GetGreyBagValue()
		end
		if Loot.SellItemsPopup and Loot.SellItemsPopup.Popup and Loot.SellItemsPopup.Popup:IsVisible() then 
			-- refresh sell list when something changed in players bags
			Loot.SellItemsPopup:SetItems() 
		end 
	elseif event=="MERCHANT_SHOW" then
		Loot:SetUpGreySellButton()
		Loot.greysellbutton:SetShown(ZGV.db.profile.showgreysellbutton)

		if ZGV.db.profile.autosell and ZGV.db.profile.enable_vendor_tools then Loot:SellGreyItems() end
		if ZGV.db.profile.autosellother and ZGV.db.profile.enable_vendor_tools then Loot:SellUnusableItems() end
		if ZGV.db.profile.autobuy and ZGV.db.profile.enable_vendor_tools then  
			Loot.FindItemsToBuyMissedNames = false
			Loot:FindItemsToBuy() 
		end
	elseif event=="MERCHANT_UPDATE" then
		if ZGV.db.profile.autobuy and ZGV.db.profile.enable_vendor_tools then  
			ZGV:ScheduleTimer(function() Loot:FindItemsToBuy() end,1)		
		end
	elseif event=="MERCHANT_CLOSED" then
		if Loot.popup then Loot.popup:Hide() end 
		if Loot.SellItemsPopup and Loot.SellItemsPopup.Popup then Loot.SellItemsPopup.Popup:Hide() end 
		Loot.FindItemsToBuyMissedNames = false
	end
end

function Loot:RegisterEvents()
	Loot.Events = CreateFrame("Frame")
	Loot.Events:RegisterEvent("MERCHANT_SHOW")
	Loot.Events:RegisterEvent("MERCHANT_CLOSED")
	Loot.Events:RegisterEvent("MERCHANT_UPDATE")
	Loot.Events:RegisterEvent("BAG_UPDATE_DELAYED")
	Loot.Events:SetScript("OnEvent", OnEvent)
end

tinsert(ZGV.startups,{"Loot startup",function(self)
	ZGV.Loot:RegisterEvents()
	ZGV.Loot:ToggleFrame()
end})