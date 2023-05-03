local name,ZGV = ...

-- GLOBAL EasyFork,UIDropDownFork_SetAnchor,UIDropDownFork_SetWidth

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local ACTIVE_ICON_WIDTH = 20

local C_Container = ZGV.Retrofit.C_Container

local Appraiser = ZGV.Gold.Appraiser 

function Appraiser.sort_inventory(a,b)
	if not a.price or not b.price then return false end

	local a_statusId = a.statusId + (a.isStagnant and 50 or 0)
	local b_statusId = b.statusId + (b.isStagnant and 50 or 0)

	local a_price,b_price
	if ZGV.db.profile.aucmode=="unit" then
		a_price = a.price / a.count
		b_price = b.price / b.count
	else
		a_price = a.price
		b_price = b.price
	end

	if a_statusId == b_statusId then
		if a_price == b_price then
			return a.name<b.name
		else
			return a_price > b_price
		end
	else
		return a_statusId < b_statusId
	end
end

Appraiser.InventoryItems = {}
local BagSlot_LinkCache = {}
Appraiser.BagSlot_LinkCache=BagSlot_LinkCache
for bag=0, NUM_BAG_SLOTS do BagSlot_LinkCache[bag] = {} end
BagSlot_LinkCache[5] = {}

function Appraiser:GetInventoryItems(refresh)
	if Appraiser.SellingInProgress then return end
	if refresh then
		for _,bag in pairs(BagSlot_LinkCache)  do
			table.wipe(bag)
		end
	end

	table.wipe(Appraiser.InventoryItems)
	--ZGV:Debug("AHT-Sell GetInventoryItems from "..debugstack(2,1,0))
	for bag,_ in pairs(BagSlot_LinkCache)  do
		for slot=1, C_Container.GetContainerNumSlots(bag) do
			self:AddItemToInventory(bag,slot)
		end
	end
end

local inventory_cache = {}

local function cached_GetContainerItemLink(bag, slot) 
	local itemid=C_Container.GetContainerItemID(bag, slot)
	if not itemid then
		-- item is missing, clear this single entry
		BagSlot_LinkCache[bag][slot]=nil
		return nil
	end

	if BagSlot_LinkCache[bag][slot] then return BagSlot_LinkCache[bag][slot] end
	local itemlink = C_Container.GetContainerItemLink(bag, slot)
	if itemlink then BagSlot_LinkCache[bag][slot] = itemlink end
	return BagSlot_LinkCache[bag][slot]
end

function Appraiser:AddItemToInventory(bag,slot)
	local itemid=C_Container.GetContainerItemID(bag,slot)
	if not itemid then return end

	local function debug(s,...) return self:Debug("AddItemToInventory(%d,%d=%d): "..s,bag,slot,itemid,...) end

	if ZGV.db.char.AThiddenitems[itemid] then
		debug("Item %d is hidden.",itemid)
		return
	end -- item was hidden by player

	local itemlink = cached_GetContainerItemLink(bag, slot) 
	if not itemlink then -- we did not get the link for this item yet, abort and retry
		self:Debug("setting Appraiser.needToUpdate "..itemid.."@"..bag..","..slot)
		Appraiser.needToUpdate = true
		return false
	end

	
	if ZGV.IsItemBound(bag,slot) then return false end

	local name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice, classID, subclassID = ZGV:GetItemInfo(itemlink)
	local itemInfo = C_Container.GetContainerItemInfo(bag, slot)
	local displayName = nil

	local petItem_id = nil
	local petItemFallback_id = nil

	local _,BattlePetId,BattlePetName,BattlePetLevel = nil,nil,nil

	if itemid == 82800 then -- Caged pet
		_,_,_,BattlePetId,BattlePetLevel,_,_,_,_,_,BattlePetName = string.find(itemlink,"(.*)battlepet:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+):(.*)%[(.*)%]")

		local result
		petItem_id, result = ZGV.PetBattle:GetPetFakeIdByLink(itemlink,"generic")
		if result~="OK" then return end

		local breedid,breedname = ZGV.PetBattle:GetPetBreedBySlot(bag,slot)

		name = BattlePetName
		displayName = BattlePetName.." (lvl "..BattlePetLevel.." "..breedname..")"
	end

	local single_locked = false
	if itemid == 82800 or classID==2 or classID==4 then
		-- lock pets and equipment to 1 per posting, to prevent blizzard ah posting random items
		single_locked=true
		maxStack=1
	end
		

	if not name or not itemInfo.iconFileID then return false end

	local statusIcon, statusText, statusId, statusText,statusIcon,isStagnant,statusColor

	local price,unit_price,empty = ZGVG:GetSellPrice(petItem_id or itemid,itemInfo.stackCount)

	local priceStatus = ZGVG:GetPriceStatus(petItem_id or itemid,empty and 0 or unit_price,1,false,true) -- not using faked, include deals
	statusId = priceStatus.statusId
	statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.sellsuggestion)
	statusIcon = ZGV.IconSets.AuctionToolsPriceIcons[priceStatus.sellicon or priceStatus.icon].texcoord -- coords
	isStagnant = priceStatus.stagnant
	statusColor = isStagnant and priceStatus.stagcolor or priceStatus.sellcolor

	if not (petItem_id or itemid) or not name or not price then
		ZGV:Print("Unable to add item",itemid,"to auctiontools.")
		return
	end

	local active = false
	if Appraiser.ActiveSellingItem and Appraiser.ActiveSellingItem.itemid == (petItem_id or itemid) then active = true end

	local exists = false
	local stripped_link = itemlink
	if not petItem_id then -- strip extra data, including uniqueID
		stripped_link = ZGV.ItemLink.StripBlizzExtras(itemlink)
	end
	for i,v in pairs(self.InventoryItems) do
		--if (petItem_id and v.itemid==petItem_id) or (not petItem_id and v.itemid == itemid) and not exists then
		if v.link==stripped_link then
			exists = true
			self.InventoryItems[i].count = self.InventoryItems[i].count + itemInfo.stackCount
			self.InventoryItems[i].price = self.InventoryItems[i].price + price
			break
		end
	end
	if not exists then
		--debug("Adding %s to inventory.",itemlink)
		
		local cache_id = petItem_id or itemid
		local stored_stack_count,stored_stack_size
		local auction,customprice,customprice_unit_bid,customprice_unit_buy

		local invcached = inventory_cache[stripped_link]
		if not invcached then
			invcached = {}
			inventory_cache[stripped_link] = invcached
		else
			stored_stack_count = invcached.stackcount
			stored_stack_size = invcached.stacksize
			customprice_unit_bid = invcached.customprice_unit_bid
			customprice_unit_buy = invcached.customprice_unit_buy
			customprice = invcached.customprice
			auction = invcached.auction
			table.wipe(invcached)
		end

		invcached.itemid=cache_id
		invcached.name=name
		invcached.displayName=displayName
		invcached.link=stripped_link
		invcached.icon=itemInfo.iconFileID
		invcached.count=itemInfo.stackCount
		invcached.price=price
		invcached.bag=bag
		invcached.slot=slot
		invcached.statusText=statusText
		invcached.statusIcon=statusIcon
		invcached.statusId=statusId
		invcached.statusColor=statusColor
		invcached.isStagnant=isStagnant
		invcached.quality=quality
		invcached.active=active
		invcached.maxStack=maxStack
		invcached.single_locked=single_locked

		invcached.battlepetid = tonumber(BattlePetId)

		invcached.stackcount=stored_stack_count
		invcached.stacksize=stored_stack_size
		invcached.customprice_unit_bid=customprice_unit_bid
		invcached.customprice_unit_buy=customprice_unit_buy
		invcached.customprice=customprice
		invcached.auction=auction

		table.insert(self.InventoryItems,invcached)
	end

end

function Appraiser:UpdateItemInInventory(item)
	item.count = Appraiser.GetTrueItemCount(item)
	
	local price,unit_price,empty = ZGVG:GetSellPrice(item.itemid,item.count)
	item.price = price

	local priceStatus = ZGVG:GetPriceStatus(item.itemid,empty and 0 or unit_price,1,false,true) -- not using faked, include deals
	item.statusId = priceStatus.statusId
	item.statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.sellsuggestion)
	item.statusIcon = ZGV.IconSets.AuctionToolsPriceIcons[priceStatus.sellicon or priceStatus.icon].texcoord -- coords
	item.isStagnant = priceStatus.stagnant
	item.statusColor = priceStatus.stagnant and priceStatus.stagcolor or priceStatus.sellcolor
end

function Appraiser:RefreshSellingItem()
	local found = false

	for ii,item in ipairs(self.InventoryItems) do 
		if item.link == self.LastSellingItem then
			item.active = true
			local truecount = Appraiser.GetTrueItemCount(item)

			if Appraiser.ActiveSellingItem and truecount ~= Appraiser.ActiveSellingItem.count then
				item.count = truecount
				Appraiser.ActiveSellingItem.count = truecount
				Appraiser:SetSellFields()
				Appraiser:SetSellHistoricalLabels()
			end
			found = true
			break
		end
	end
	--ZGV:Debug("&gold RefreshSellingItem LastSelling %s? %s found",self.LastSellingItem,found and "YES" or "NOT")
	if not found and not Appraiser.SellManualUnselect then
		Appraiser.ActiveSellingItem = nil
		Appraiser:SelectNextSellingItem()
	end
end

local lastitem,lasttime
function Appraiser:ActivateSellItem(item,automatic)
	if self.ActiveSellingItem == item then return end
	if lastitem==item and lasttime==GetTime() then return end
	lastitem,lasttime=item,GetTime()

	self:Debug("Activating sell item: %s (%s) because %s",item and item.name, item and item.link, debugstack(2,1,0))

	if not item then 
		self.ActiveSellingItem = nil
		self:Debug("Not activating: no item") 
		return 
	end

	local currentIndex = 0
	for i,v in pairs(self.InventoryItems) do 
		if v==item then currentIndex=i end
		v.active = false 
	end

	self.SellManualUnselect = false

	local location = ItemLocation:CreateFromBagAndSlot(item.bag, item.slot)
	local itemkey = C_AuctionHouse.GetItemKeyFromItem(location)

	ZGVG.Scan:ListenByKey(itemkey)

	C_Container.PickupContainerItem(item.bag, item.slot)
	AuctionHouseFrame.ItemSellFrame:OnOverlayClick()
	ClearCursor()

	self.ActiveSellingItem = item

	self.LastSellingItem = item.link
	self.NextSellingItemID = nil
	if self.InventoryItems[currentIndex+1] then
		self.NextSellingItemID = self.InventoryItems[currentIndex+1].itemid
	elseif self.InventoryItems[1] then
		self.NextSellingItemID = self.InventoryItems[1].itemid
	end
	self:Debug("ACTIVATED %s, NEXT %s",self.LastSellingItem,self.NextSellingItemID)


	item.active = true

	self:Update()
end

function Appraiser:MarkActiveItem()
	local item,location
	if AuctionHouseFrame.CommoditiesSellFrame:IsVisible() then
		item = AuctionHouseFrame.CommoditiesSellFrame.ItemDisplay:GetItem()
		location = AuctionHouseFrame.CommoditiesSellFrame.ItemDisplay:GetItemLocation()
	elseif AuctionHouseFrame.ItemSellFrame.ItemDisplay:IsVisible() then
		item = AuctionHouseFrame.ItemSellFrame.ItemDisplay:GetItem()
		location = AuctionHouseFrame.ItemSellFrame.ItemDisplay:GetItemLocation()
	else
		return
	end

	local bag, slot = location and location.bagID, location and location.slotIndex
	local active

	if self.ActiveSellingItem and self.ActiveSellingItem.bag==bag and self.ActiveSellingItem.slot==slot then return end

	for i,v in pairs(self.InventoryItems) do 
		if v.bag == bag and v.slot == slot then active=v end
		v.active = false 
	end

	if active then
		active.active = true
		self.ActiveSellingItem = active
		self.LastSellingItem = active and active.link
		Appraiser.SellManualUnselect = true
		--self:Debug("appraiser update from MarkActiveItem")
	else
		--Appraiser:SelectNextSellingItem()
	end
	self.needToUpdate = true
end

function Appraiser:InventoryRowMenu(row)
	if not row.item then return end

	Appraiser.ActiveSearch = row.item.itemid

	if not Appraiser.Inventory_Frame.InventoryMenu then Appraiser.Inventory_Frame.InventoryMenu = CreateFrame("FRAME","AT_Inventory_Menu",Appraiser.Inventory_Frame,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(Appraiser.Inventory_Frame.InventoryMenu, 0, 0, "TOP", row, "BOTTOM")
	local menu = {}

	tinsert(menu,{
			text = "Hide this item",
			tooltipText = "No longer show this item in Selling lists",
			tooltipOnButton=1,
			func = function() 
				ZGV.db.char.AThiddenitems[row.item.itemid]=true
				Appraiser:Update()
			end,
			notCheckable=0,
		})
	
	EasyFork(menu,Appraiser.Inventory_Frame.InventoryMenu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(Appraiser.Inventory_Frame.InventoryMenu, 300)
end

function Appraiser:SelectNextSellingItem()
	--if not ZGVG.Scan:CanScanByName() then return false end
	local index,nextindex,previndex = nil,nil,nil
	local refresh = false -- click new row only when we are switching to new item

	self:Debug("SelectNextSellingItem, lastselling=%s, called by",self.LastSellingItem)

	if not self.LastSellingItem then
		index = 1
		refresh = true
	else
		for i,item in pairs(Appraiser.InventoryItems) do 
			if item.link == self.LastSellingItem and item.count>0 then index = i end
			if Appraiser.NextSellingItemID and item.itemid == Appraiser.NextSellingItemID then nextindex = i end
		end

		if not index then
			if nextindex then 
				index=nextindex 
			else
				index=1
			end
			refresh = true
		end
	end

	if not refresh and not AuctionHouseFrame.CommoditiesSellFrame.ItemDisplay:GetItem() then
		local itemid=C_Container.GetContainerItemID(Appraiser.InventoryItems[index].bag, Appraiser.InventoryItems[index].slot)

		if not itemid then
			-- sigh, item is not there, most likely pet that we had more than one of, and one got sold.
			-- find where the other one is
			for bag=0, NUM_BAG_SLOTS do
				for slot=1, C_Container.GetContainerNumSlots(bag) do
					local itemlink = cached_GetContainerItemLink(bag, slot) 
					if itemlink and itemlink==self.LastSellingItem then
						Appraiser.InventoryItems[index].bag=bag
						Appraiser.InventoryItems[index].slot=slot
						break
					end
				end
			end
		end

		C_Container.PickupContainerItem(Appraiser.InventoryItems[index].bag, Appraiser.InventoryItems[index].slot)
		AuctionHouseFrame.CommoditiesSellFrame:OnOverlayClick()
	end

	if refresh then
		Appraiser.SellingInProgress = false
		Appraiser:ActivateSellItem(Appraiser.InventoryItems[index],true)
	end
	self.needToSelectNextSellingItem = nil
end

Appraiser.Debug = ZGVG.Debug