local name,ZGV = ...

local ZGVG=ZGV.Gold

local L = ZGV.L
local CHAIN = ZGV.ChainCall

if not ZGV.Gold.Appraiser then ZGV.Gold.Appraiser = {} end
local Appraiser = ZGV.Gold.Appraiser
LibStub("AceHook-3.0"):Embed(Appraiser)


local GOLD_FORMAT_TYPE=3
local APPRAISER_PLAYER_NAME = UnitName("player")

local BUYOUT_TIMEOUT = 5

Appraiser.RawDataTable = {}

Appraiser.FlatSellItems = {}

Appraiser.OutdatedTime = 60*3

local C_Container = ZGV.Retrofit.C_Container

local lastUpdate
local old_currow
function Appraiser:Update(force)
	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end
	if lastUpdate==GetTime() and not force then return end  -- not twice per frame, please.
	lastUpdate=GetTime()

	local InventoryList = Appraiser.Inventory_Frame.InventoryList
	local ShoppingList = Appraiser.Buy_Frame.ShoppingList

	self.lastUpdated = debugprofilestop()

	if Appraiser.MainFrame.hideTooltip then
		GameTooltip:Hide()
		Appraiser.MainFrame.hideTooltip = false
	end

	local rowoff=0

	table.wipe(self.FlatSellItems)
	self.SellItems = self.SellItems or {}
	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}

	-- Initialise
	if self.ActiveTab == "Inventory" then
		
		Appraiser:GetInventoryItems()

		for ii,invItem in ipairs(self.InventoryItems) do
			if invItem.count <= 0 or ZGV.db.char.AThiddenitems[invItem.itemid] then 
				table.remove(self.InventoryItems,ii)
			else
				Appraiser:UpdateItemInInventory(invItem)
			end
		end
	elseif self.ActiveTab == "Buy" then
		-- Adding items from guide moved to guide step entry

		-- Remove items that were bought out
		for indexBuy,v in pairs(ZGV.db.char.GGbuyitems) do
			if ZGV.db.char.GGbuyitems[indexBuy].count <= 0 then
				table.remove(ZGV.db.char.GGbuyitems,indexBuy)
				if v==Appraiser.SelectedShoppingItem then
					self:Debug("Update: Removed GG item: %s, selecting something else.",v.name)
					ZGV:ScheduleTimer(function() Appraiser:SelectNextShoppingItem() end,0)
				end
			end
		end
		for indexGuide,v in pairs(self.GuideBuyItems) do
			if self.GuideBuyItems[indexGuide].count <= 0 then
				table.remove(self.GuideBuyItems,indexGuide)
				if v==Appraiser.SelectedShoppingItem then
					self:Debug("Update: Removed guide item: %s, selecting something else.",v.name)
					ZGV:ScheduleTimer(function() Appraiser:SelectNextShoppingItem() end,0)
				end
			end
		end
		for indexManual,v in pairs(self.ManualBuyItems) do
			if self.ManualBuyItems[indexManual].count and self.ManualBuyItems[indexManual].count <= 0 then
				table.remove(self.ManualBuyItems,indexManual)
				if v==Appraiser.SelectedShoppingItem then
					self:Debug("Update: Removed manual item: %s, selecting something else.",v.name)
					ZGV:ScheduleTimer(function() Appraiser:SelectNextShoppingItem() end,0)
				end
			end
		end
		
		self.ShoppingAuctions = self.ShoppingAuctions or {}

		-- Merge into single table, maintaining order in which items were added
		self.ShoppingItems = {}
		local indexMerged = 1
		local _
		for indexBuy = 1,#ZGV.db.char.GGbuyitems do
			self.ShoppingItems[indexMerged] = ZGV.db.char.GGbuyitems[indexBuy]
			local tempitem = self.ShoppingItems[indexMerged]
			if not (tempitem.displayName or tempitem.name) then 
				tempitem.name, _, _, _, _, _, _, _, _, tempitem.icon = ZGV:GetItemInfo(tempitem.itemid)
			end
			indexMerged = indexMerged + 1
		end

		if #ZGV.db.char.GGbuyitems>0 and (#self.ManualBuyItems>0 or #self.GuideBuyItems>0) then
			self.ShoppingItems[indexMerged] = "separator"
			indexMerged = indexMerged + 1
		end

		for indexGuide,v in pairs(self.GuideBuyItems) do
			self.ShoppingItems[indexMerged] = self.GuideBuyItems[indexGuide]
			local tempitem = self.ShoppingItems[indexMerged]
			if not (tempitem.displayName or tempitem.name) then 
				tempitem.name, _, _, _, _, _, _, _, _, tempitem.icon = ZGV:GetItemInfo(tempitem.itemid)
			end
			indexMerged = indexMerged + 1
		end

		if #self.ManualBuyItems>0 and #self.GuideBuyItems>0 then
			self.ShoppingItems[indexMerged] = "separator"
			indexMerged = indexMerged + 1
		end

		for itemlink,itemdata in pairs(self.ManualBuyItems) do
			self.ShoppingItems[indexMerged] = itemdata
			indexMerged = indexMerged + 1
		end

		for _,itemdata in ipairs(self.ShoppingItems) do
			if type(itemdata)=="table" then
				local unit_price = ZGV.Gold.Scan:GetPrice(itemdata.itemid)
				local priceStatus = ZGVG:GetPriceStatus(itemdata.itemid,unit_price)
				itemdata.statusId = priceStatus.statusId
				itemdata.statusText = priceStatus.name.."\n"..(priceStatus.stagnant and "Market stagnant." or priceStatus.buysuggestion)
				itemdata.statusIcon = ZGV.IconSets.AuctionToolsPriceIcons[priceStatus.buyicon or priceStatus.icon].texcoord -- coords

				itemdata.isStagnant = priceStatus.stagnant
				itemdata.statusColor = itemdata.isStagnant and priceStatus.stagcolor or priceStatus.buycolor
			end
		end

		self.ShoppingAddAuctions = self.ShoppingAddAuctions or {}
	end

	-- Sort
	if self.ActiveTab == "Inventory" then
		if not Appraiser.SellingInProgress then 
			sort(self.InventoryItems,Appraiser.sort_inventory)
		end
		local currow = self:GetSellingItemIndex(self.ActiveSellingItem)
		if old_currow~=currow then
			old_currow=currow
			ZGV:ScheduleTimer(function() Appraiser:ScrollToSellingItem() end,0)
		end
		--self:Debug("Update about to RefreshSelling")
		Appraiser:RefreshSellingItem()
	elseif self.ActiveTab == "Buy" then
		sort(self.ShoppingAuctions,Appraiser.sort_shoppingAuctions)
		sort(self.ShoppingAddAuctions,Appraiser.sort_shoppingAddAuctions)
	end

	-- Display
	if self.ActiveTab == "Inventory" then
		local IL_RowNum=0
		local IA_RowNum=0

		local INVENTORY_ROW_COUNT = InventoryList:CountRows()

		Appraiser.InventoryOffset = max(0,min(Appraiser.InventoryOffset,#self.InventoryItems-INVENTORY_ROW_COUNT))
		local IL_RowOff=Appraiser.InventoryOffset
		for ii,invItem in ipairs(self.InventoryItems) do 
			IL_RowNum = ii-IL_RowOff
			if IL_RowNum>0 and IL_RowNum<INVENTORY_ROW_COUNT+1 then 
				local row = InventoryList.rows[IL_RowNum]
				row.icon:SetTexture(invItem.icon)
				local color = ""
				if invItem.quality then
					local _,_,_, hex = GetItemQualityColor(invItem.quality);
					color="|c"..hex
				end
				row.name:SetText(invItem.count.." "..color..(invItem.displayName or invItem.name or "..."))
				row.status:SetTexCoord(unpack(invItem.statusIcon))
				row.status:SetVertexColor(unpack(invItem.statusColor))

				if invItem.count > 0 then
					if ZGV.db.profile.aucmode == "unit" then
						row.price:SetText(ZGV.GetMoneyString(invItem.price/invItem.count or 0))
					else
						row.price:SetText(ZGV.GetMoneyString(invItem.price or 0))
					end
				end
				if invItem.active then
					row:SetNormalBackdropColor(0.3,0.3,0.3,1)
				else
					row:SetNormalBackdropColor(0,0,0,0)
				end

				row.item = invItem
				row:Show()
			end
		end
		InventoryList.scrollbar:TotalValue(#self.InventoryItems)
		InventoryList.scrollbar:SetValue(IL_RowOff)

	
		for r=IL_RowNum+1,INVENTORY_ROW_COUNT do InventoryList.rows[r]:Hide() InventoryList.rows[r].item=nil end
	

	elseif self.ActiveTab == "Buy" then
		local SL_RowNum=0
		local SA_RowNum=0
		local SR_RowNum=0

		local SHOPPING_ROW_COUNT = ShoppingList:CountRows()

		--- Shopping section ---------------------------------------------------------------------------------
		Appraiser.ShoppingOffset = max(0,min(Appraiser.ShoppingOffset or 0,#self.ShoppingItems-SHOPPING_ROW_COUNT))
		local IL_RowOff=Appraiser.ShoppingOffset
		for ii,invItem in ipairs(self.ShoppingItems) do 
			SL_RowNum = ii-IL_RowOff
			if SL_RowNum>0 and SL_RowNum<SHOPPING_ROW_COUNT+1 then 
				local row = ShoppingList.rows[SL_RowNum]
				if invItem=="separator" then
					row.icon:SetTexture()
					row.name:SetText()
					row.price:SetText()
					row.tooltip = nil
					row:SetNormalBackdropColor(0,0,0,0)
					row:SetBackdropBorderColor(0,0,0,0)
					row.back:SetTexture(ZGV.SKINSDIR.."separator")
					row.status:Hide()
					row:Disable()
					--row.remove:Hide()
				else
					row.back:SetTexture()
					row.status:Show()
					--row.remove:Show()

					row.icon:SetTexture(invItem.icon)
					local color = ""
					if invItem.quality then
						local _,_,_, hex = GetItemQualityColor(invItem.quality);
						color="|c"..hex
					end
					row.price:SetText(invItem.priceMax and ZGV.GetMoneyString(invItem.priceMax) or "")
					
					row.name:SetText((invItem.count or "").." "..color..(invItem.displayName or invItem.name or "..."))
					row.status:SetTexCoord(unpack(invItem.statusIcon))
					row.status:SetVertexColor(unpack(invItem.statusColor))

					if invItem.active then
						row:SetNormalBackdropColor(0.3,0.3,0.3,1)
					else
						row:SetNormalBackdropColor(0,0,0,0)
					end
					row:Enable()

					row.item = invItem
				end
				row:Show()
			end
		end
		ShoppingList.scrollbar:TotalValue(#self.ShoppingItems)
		ShoppingList.scrollbar:SetValue(IL_RowOff)

		for r=SL_RowNum+1,SHOPPING_ROW_COUNT do ShoppingList.rows[r]:Hide() end
	end

	self.needToUpdate = false
end

function Appraiser:IsInCurrentDeals(id)
	for indexBuy,v in pairs(ZGV.db.char.GGbuyitems) do
		if v.itemid==id then return true end
	end
	for indexManual,v in pairs(self.ManualBuyItems) do
		if v.itemid==id then return true end
	end
	return false
end

function Appraiser:ScanAll()
	if ZGVG.Scan.state~="SS_IDLE" then return end

	ZGVG.Scan.queried_by_name = nil
	ZGVG.Scan.queried_by_partial_name = nil
	ZGVG.Scan.queried_by_link = nil

	self:Scan("scanfast")
end

function Appraiser:Scan(mode)
	if ZGVG.Scan.state~="SS_IDLE" then return end
	self.SellingInProgress = false
	self.InventoryItems = self.InventoryItems or {}

	if (mode=="scanfast" or not mode) and ZGVG.Scan:CanScanFast() then
		self.TryingToFastScan = true

		ZGVG.Scan.ResultCallback = function() 
			ZGVG.Scan:SetState("SS_IDLE") 
			ZGV.db.char.TimeTillScan = ZGV.db.char.TimeTillScan or time()+60*60
		end
		ZGVG.Scan.FailCallback = function() 
			ZGVG.Scan:SetState("SS_IDLE") 
			ZGV.db.char.TimeTillScan = ZGV.db.char.TimeTillScan or time()+60*60
		end

		ZGVG.Scan:ScanFast()

		self:UpdateScannedList()
		self.DoneDeals = {}
		self:UpdateProgressBar()
	elseif mode=="scannew" and ZGVG.Scan:CanScanByName() then 
		self:GetInventoryItems()
		self:StartNewItemScan()
	else
		ZGV:Print("Unable to start scanning.")
	end
	self:Update()
end

function Appraiser:StartManualScan()
	if ZGVG.Scan.state~="SS_IDLE" then return end

	self:Debug("Running Manual Scan.")
	self.SellingInProgress = false

	if self.manualScanning then return end
	self.ScanItemsQueue = {}
	self.manualScanning = true
	self.manualScanningTotal = #self.InventoryItems
	self.manualScanningDone = 1
	for i,v in pairs(self.InventoryItems) do
		table.insert(self.ScanItemsQueue,v)
	end
	self:UpdateScannedList()
	self.manualScanNextItem=true
	self:ScanNextItem()
end

function Appraiser:ProcessBrowseResults()
	if self.manualScanningID then
		ZGV.db.realm.gold_scan_data[1] = ZGV.db.realm.gold_scan_data[1] or {}
		local saved = ZGV.db.realm.gold_scan_data[1]
		local browseresults = C_AuctionHouse.GetBrowseResults()
		local found
		for index,item in pairs(browseresults) do
			if item.itemKey.itemID == self.manualScanningID or item.itemKey.battlePetSpeciesID==self.manualScanningItem.battlepetid then -- or pet
				saved[self.manualScanningID] = saved[self.manualScanningID] or {}
				local saveditem = saved[self.manualScanningID]
				for price,count in pairs(saveditem) do  -- remove cheaper entries
					if price<item.minPrice then
						saveditem[price] = nil
					end
				end
				self:Debug("ProcessBrowseResults: |cffffffff%s|r ##%d = %s",self.manualScanningName,self.manualScanningID,GetMoneyString(item.minPrice))
				saveditem[item.minPrice] = saveditem[item.minPrice] or 1  -- fake count, but hey, we're not running analytics here.
				found=true
				break
			end
		end
		if not found then self:Debug("ProcessBrowseResults: |cffffffff%s|r ##%d = NOT FOUND",self.manualScanningName,self.manualScanningID) end
		self:Update()
		self:ScanNextItem()
	end
end

function Appraiser:StartNewItemScan()
	if self.manualScanning then return end
	self:Debug("Running New Item Scan:")
	self.ScanItemsQueue = {}
	self.manualScanning = true
	self.manualScanningTotal = 0
	self.manualScanningDone = 1
	for i,v in pairs(self.InventoryItems) do
		if not self.ScannedItems[v.itemid] then
			table.insert(self.ScanItemsQueue,v)
			self.manualScanningTotal = self.manualScanningTotal + 1
			self:Debug("+ %s",v.name)
		end
	end
	self:UpdateScannedList()
	self.manualScanNextItem=true
	self:UpdateStatusBar()
	self:UpdateProgressBar()
	self:UpdateCoverFrame()
end

function Appraiser:ScanNextItem()
	local item = tremove(self.ScanItemsQueue)
	local options=nil

	if item then
		self.manualScanningDone = self.manualScanningTotal - #self.ScanItemsQueue
		self.manualScanningName = item.name
		self.manualScanningID = item.itemid
		self.manualScanningItem = item
		self:Debug("|cFFFFD699ScanNextItem|r for %s##%d (%d/%d, queued %d)",item.name,item.itemid, self.manualScanningDone,self.manualScanningTotal, #self.ScanItemsQueue)
		ZGVG.Scan:ScanByName(item.name,item.itemid,"dontanalyze")
	else
		self:Debug("|cFFFFD699ScanNextItem|r no more.")
		self.manualScanning = false
		self.manualScanningName = false
		self.manualScanningID = false
		self.manualScanningTotal = false
		self.manualScanningDone = false
		self.manualScanNextItem=false
	end
	self.scannextitem_msg=false
	self:UpdateStatusBar()
	self:UpdateProgressBar()
	self:UpdateCoverFrame()
end

function Appraiser:Abort()
	if self.manualScanning or self.manualBuyScanning then self:AbortManualScan() else ZGVG.Scan:Abort() end
	self.MainFrame.CoverFrame:Hide()
end

function Appraiser:UpdateCoverFrame()
	local Scan=ZGVG.Scan
	self.MainFrame.CoverFrame:SetShown(Scan.state=="SS_QUERYING" or Scan.state=="SS_RECEIVING" or Scan.state=="SS_SCANNING" or Scan.state=="SS_ANALYZING" or self.manualScanning or self.manualBuyScanning)
end
	
function Appraiser:AbortManualScan()
	self.ScanBuyItems = {}
	self.manualBuyScanning = false
	self.ScanItemsQueue = {}
	self.manualScanning = false
	self.manualScanNextItem=false
	self.WaitingForAuctionData=false
	self.ActiveSearch=nil
	self.ActiveSearchName=nil
	self.GoToPage=nil
	self.AttemptingToBuyout=nil
	self.ActiveShoppingAddItem = nil
	ZGVG.Scan:SetState("SS_IDLE")

	self:Debug("EVERYTHING ABORTED.")

	self:Update()
end

function Appraiser:UpdateScannedList()
	self.ScannedItems = {}
	for i,v in pairs(self.InventoryItems) do
		self.ScannedItems[v.itemid] = v.itemid
	end
end

function Appraiser:SaveScanTable()
	local itemid = self.ActiveSearch

	if not itemid then return end

	self.RawDataTable[itemid] = {}
	for i,rawline in pairs(ZGV.Gold.Scan.rawdata) do
		local page,row,itemId,count,buyoutPrice,link,is_own = strsplit("^",rawline)
		self.RawDataTable[itemid][i] = {count,buyoutPrice,buyoutPrice/count,is_own,link}
	end

	self.ActiveSearch = nil
	self.ActiveSearchName = nil

	self:Update()
end

local function Appraiser_SetTooltipData(tooltip, itemLink)
	local name,link=GameTooltip:GetItem()
	itemLink = itemLink or link
	if not itemLink then return end -- blizz is no longer guaranteed to provide itemlinks on time

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


	-- Decide what detail level we're showing.

		if not ZGV.db.profile.gold_tooltips_show then return end
		
		local tooltip_context = "out"
		if AuctionFrame and AuctionFrame:IsShown() then tooltip_context="ah" end
		
		local tooltip_detail = ZGV.db.profile['gold_tooltips_' .. tooltip_context]   -- gold_tooltips_ah or gold_tooltips_out
		if not tooltip_detail or tooltip_detail==0 then return end
		if IsShiftKeyDown() and ZGV.db.profile.gold_tooltips_shift then tooltip_detail=3 end
	--


	if not Appraiser.TooltipPatched then
		local _
		if not itemLink then _,itemLink = tooltip:GetItem() end

		if not itemLink then
			Appraiser.TooltipPatched  = true
			return
		end


		local itemId = tonumber(itemLink:match("item:(%d+)"))

		if not itemId or itemId==0 or itemId==82800 then -- no item, or caged pet
			Appraiser.TooltipPatched  = true
			return 
		end

		local tooltipnamestring = tooltip:GetName()

		local isboundable = false
		for i=1,tooltip:NumLines() do
			local line=_G[tooltipnamestring.."TextLeft"..i]:GetText()
			if line then
				isboundable = isboundable or line==ITEM_SOULBOUND
				isboundable = isboundable or line==ITEM_BIND_ON_PICKUP
				isboundable = isboundable or line==ITEM_BIND_TO_BNETACCOUNT
				isboundable = isboundable or line==ITEM_BNETACCOUNTBOUND
				isboundable = isboundable or line==ITEM_BIND_QUEST
				isboundable = isboundable or line==ITEM_CONJURED

				-- if we found use clause, we are past possible points of binding, stop looking
				if strfind(line, USE_COLON) then break end 
			end
		end

		local p_lo, p_md, p_hi, demand
		local trends_known
		
		local trend = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[itemId]
		if trend then
			p_lo = ZGV.GetMoneyString(trend.p_lo) or "unknown"
			p_md = ZGV.GetMoneyString(trend.p_md) or "unknown"
			p_hi = ZGV.GetMoneyString(trend.p_hi) or "unknown"
			demand = trend.sold or trend.q_md or (trend.q_lo + trend.q_hi)/2
			
			trends_known = true
		else 
			trends_known = false
		end

		local globaltrend = not trends_known and ZGVG.servertrends_global and ZGVG.servertrends_global.items and ZGVG.servertrends_global.items[itemId]

		
		tooltip:AddLine("|cffffffff |r")
		tooltip:AddLine("|cfffe6100Zygor Gold Data:|r")
		if isboundable then
			tooltip:AddLine("  |cffeeeeeeItem is soulbound|r ")
			tooltip:Show()
			return
		end

		local price,_,empty = ZGVG:GetSellPrice(itemId)
		local price_g = (price>0 and ZGV.GetMoneyString(price)) or "n/a"
		local minprice = ZGVG.Scan:GetPrice(itemId) or 0
		local minprice_g = (minprice>0 and ZGV.GetMoneyString(minprice)) or "n/a"

		local priceStatus = ZGVG:GetPriceStatus(itemId,empty and 0 or price)
		local statusName = priceStatus.statusName
		local statusText = priceStatus.name.." "..priceStatus.sellsuggestion
		local statusIcon = ZGV.IconSets.AuctionToolsPriceIcons[priceStatus.sellicon or priceStatus.icon].texcoord -- coords
		local statusColor = priceStatus.sellcolor -- array
		
		tooltip:AddDoubleLine("  |cffeeeeeeCurrent lowest price:|r ",minprice_g)

		if ZGV.db.profile.debug_display  then
			tooltip:AddDoubleLine("  STATUSNAME:",statusName)
			tooltip:AddDoubleLine("  STAG:",(priceStatus.stagnant and "yes" or "no"))
		end

		tooltip:AddDoubleLine("  |cffeeeeeeSuggested sell price:|r ",price_g)

		if tooltip_detail==2 then -- dynamic
			
			local overpricemargin_perc = floor(ZGVG.OVERPRICE*100-100).."%"
			local gouged_perc = trends_known and floor((minprice-trend.p_hi)/trend.p_hi - 1) * 100 .. "%"

			if statusName=="PRICESTATUS_EMPTY" then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
				tooltip:AddDoubleLine("    |cffeeeeeeGouging by:|r",overpricemargin_perc)
			elseif statusName=="PRICESTATUS_GOUGED" or statusName=="PRICESTATUS_UP" or statusName=="PRICESTATUS_RISING" then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)
				tooltip:AddDoubleLine("    |cffeeeeeeGouge setting:|r",overpricemargin_perc)
			elseif statusName=="PRICESTATUS_DOWN" or statusName=="PRICESTATUS_FALLING" or statusName=="PRICESTATUS_DUMPED" then
				tooltip:AddDoubleLine("    |cffeeeeeeHistorical low:|r ",p_lo)
			elseif statusName=="PRICESTATUS_NORMAL" then
				if minprice<trend.p_md then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical low:|r ",p_lo)  end
				if minprice>=trend.p_lo and minprice<=trend.p_hi then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical median:|r ",p_md)  end
				if minprice>trend.p_md then  tooltip:AddDoubleLine("    |cffeeeeeeHistorical high:|r ",p_hi)  end
			elseif statusName=="PRICESTATUS_NODATA" then
				tooltip:AddDoubleLine("    |cffeeeeeeGlobal median:|r ",globaltrend and ZGV.GetMoneyString(globaltrend.p_md) or "n/a")
			end
		end

		if tooltip_detail==3 then -- full
			if trends_known then
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical low:|r ",p_lo)
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical median:|r ",p_md)
				tooltip:AddDoubleLine("  |cffeeeeeeHistorical high:|r ",p_hi)
			end
			if globaltrend then
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal low:|r ",ZGV.GetMoneyString(globaltrend.p_lo))
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal median:|r ",ZGV.GetMoneyString(globaltrend.p_md))
				tooltip:AddDoubleLine("  |cffeeeeeeGlobal high:|r ",ZGV.GetMoneyString(globaltrend.p_hi))
			end
		end

		tooltip:AddDoubleLine("  |cffeeeeeeDemand (est. sold):|r ",trends_known and demand or "n/a")

		tooltip:AddDoubleLine("  |cffeeeeeeStatus:|r ",ZGV.ArrayToStringColor(statusColor)..statusText)

		if ZGV.Gold.Scan and ZGV.db.realm.LastScan then
			tooltip:AddDoubleLine("  |cffeeeeeeLast updated:|r ",("|c%s%s|r"):format(OldColor(ZGV.db.realm.LastScan,3600*2,60*10), ZGV.UI.GetTimeStamp(ZGV.db.realm.LastScan)))
		end
		tooltip:AddLine("|cffffffff |r")
		tooltip:Show()
		
		Appraiser.TooltipPatched  = true
	end
end

local function Appraiser_ClearTooltipData(tooltip, ...)
	Appraiser.TooltipPatched = false
end

function Appraiser:OnAuctionSetMode(f,mode)
	if not ZGVG.Scan.enabled then return end
	Appraiser:MakeOptionsButton()
	if not ZGV.db.profile.auction_enable then return end

	local newmode
	if mode==AuctionHouseFrameDisplayMode.Buy or mode==AuctionHouseFrameDisplayMode.CommoditiesBuy or mode==AuctionHouseFrameDisplayMode.ItemBuy then
		newmode = "Buy"
	elseif mode==AuctionHouseFrameDisplayMode.CommoditiesSell or mode==AuctionHouseFrameDisplayMode.ItemSell or mode==AuctionHouseFrameDisplayMode.WowTokenSell then
		newmode = "Inventory"
	else
		newmode = "Auctions"
	end

	if newmode~="Buy" then 
		for indexBuy,v in pairs(ZGV.db.char.GGbuyitems) do v.active=false end
		for indexGuide,v in pairs(self.GuideBuyItems) do v.active=false end
		for indexManual,v in pairs(self.ManualBuyItems) do v.active=false end
		Appraiser.SelectedShoppingItem = nil
		Appraiser.SelectedBuyAuction = nil
	end

	if newmode~="Inventory" then 
		Appraiser.ActiveSellingItem = nil
		Appraiser.InventoryOffset = 0
		Appraiser.LastSellingItem = nil
	end

	Appraiser:CreateMainFrame()

	--local mode = AuctionHouseFrame:GetDisplayMode()
	if newmode == "Buy" then
		self:Debug("AuctionHouseFrame:SetDisplayMode, it's Buy")
		Appraiser:SetCurrentTab("Buy")
	elseif newmode == "Inventory" then
		self:Debug("AuctionHouseFrame:SetDisplayMode, it's Sell")
		Appraiser:SetCurrentTab("Inventory")
	else
		self:Debug("AuctionHouseFrame:SetDisplayMode, it's Auctions")
		Appraiser:SetCurrentTab(nil)
	end

end

function Appraiser.EventHandler(frame, event, ...)
	local self=Appraiser

	if event=="ADDON_LOADED" and ...=="Blizzard_AuctionHouseUI" then
		self:Debug("Hooking into AuctionHouseFrame:OnShow")
		hooksecurefunc (AuctionHouseFrame, "SetDisplayMode", function(...) Appraiser:OnAuctionSetMode(...) end)
		frame:UnregisterEvent("ADDON_LOADED")
		return
	end
	
	if not ZGV.db.profile.auction_enable then return end

	if not Appraiser.MainFrame or not Appraiser.MainFrame:IsVisible() then return end
	self:Debug("Event %s",event)
	if event=="AUCTION_HOUSE_CLOSED" then
		Appraiser:HideWindow()
		if ZGV.Gold.HelpPopup then
			ZGV.Gold.HelpPopup:Hide()
		end
	elseif event=="AUCTION_HOUSE_BROWSE_RESULTS_UPDATED" or event=="AUCTION_HOUSE_BROWSE_RESULTS_ADDED" or event=="ITEM_SEARCH_RESULTS_UPDATED" or event=="ITEM_SEARCH_RESULTS_ADDED" then  --AILU
		if C_AuctionHouse.HasFullBrowseResults() then
			if Appraiser.manualScanning then
				Appraiser:ProcessBrowseResults()
			else
				Appraiser:DisplayBuyItem()
			end
		end
	elseif event=="AUCTION_ITEM_LIST_UPDATE" then  --AILU
		Appraiser.WaitingForAuctionData = nil
	elseif event=="BAG_UPDATE_DELAYED" then
		Appraiser:GetInventoryItems("clearcache")
		--Appraiser.needToSelectNextSellingItem=true
		self:Debug("%s, appraiser update",event)
		Appraiser.needToUpdate = true
	elseif event=="AUCTION_MULTISELL_START" then
		self.SellingInProgress = true
		self.SellingInBatch=true
	elseif event=="AUCTION_MULTISELL_UPDATE" then
		if select(1,...)==select(2,...) then  -- end of posting
			self.SellingInProgress = false
			self.SellingInBatch=false
		end
	elseif event=="AUCTION_MULTISELL_FAILURE" then
		self.SellingInProgress = false
		self.SellingInBatch=false
	elseif event=="AUCTION_OWNED_LIST_UPDATE" then
		Appraiser:GetInventoryItems("clearcache")
		self:Debug("%s, appraiser update",event)
		Appraiser.needToUpdate = true
		if not self.SellingInBatch then
			--Appraiser.ActiveSellingItem = nil
			--Appraiser:WipeSellHistoricalData()
			--Appraiser:WipeSellPricingData()
			Appraiser.needToSelectNextSellingItem=true
			Appraiser.SellingInProgress = false
		end
	elseif event=="ZGV_AFTER_SINGLE_AILU" then
		if self.ActiveTab=="Buy" then
			Appraiser:FocusOnSelectedAuction()
			self:Debug("%s, appraiser update",event)
			Appraiser.needToUpdate = true
		end
	elseif event=="ZGV_CSAQNAME_CHANGED" and select(1,...)==true then
		if self.ActiveTab=="Buy" then
			Appraiser:FocusOnSelectedAuction()
			self:Debug("%s, appraiser update",event)
			Appraiser.needToUpdate = true
		end

	elseif event=="ZGV_SS_STATE_CHANGE" then
		local state = ...
		if state=="SS_IDLE" and self.previousScanState=="SS_MESSAGE" then
			if self.PostMessageCallback then
				self.PostMessageCallback()
				self.PostMessageCallback = nil
			end
		end
		self.previousScanState = state
		
	elseif event=="ZGV_GOLD_SCANNED" then
		self:Debug("GOLD_SCANNED")
		--[[
		if not (Appraiser.ScanItemsQueue and next(Appraiser.ScanItemsQueue)) then
			Appraiser.MainFrame.progressFrame:Hide()
		end
		--]]
		if self.ActiveTab=="Buy" then
			-- remove pendings from all items
			if Appraiser.ShoppingItems then  for i,item in ipairs(Appraiser.ShoppingItems) do  if type(item)=="table" then item.pending=false  end end  end
		end

		Appraiser.ScanIsRunning = false
		Appraiser:SaveScanTable()  -- also calls :GetShoppingAuctions and :Update

		--Appraiser.manualScanNextItem=true
		self:Debug("appraiser update from "..event)
		Appraiser.needToUpdate = true

	elseif event=="CHAT_MSG_SYSTEM" then
		if Appraiser.AttemptingToBuyout and Appraiser.SelectedShoppingItem then
			local name = Appraiser.SelectedShoppingItem.expectedName
			if select(1,...) == ERR_AUCTION_WON_S:format(name) then
				Appraiser.AttemptingToBuyout = false
				Appraiser.BuyoutTimestamp = nil

				local itemid = Appraiser.SelectedShoppingItem.itemid
				local buyitem = Appraiser.SelectedShoppingItem
				local buyindex = Appraiser.SelectedShoppingItem.buyoutindex
				local buyauction = table.remove(Appraiser.RawDataTable[buyitem.itemid],buyindex)

				if Appraiser.SelectedBuyAuction then  -- clear it if there are no more stacks like that
					local found=false
					for i,auc in ipairs(Appraiser.ShoppingAuctions) do
						if auc.stack_size==tonumber(buyauction[1]) and auc.stack_price==tonumber(buyauction[2]) then found=true break end
					end
					if not found then Appraiser.SelectedBuyAuction=nil Appraiser.SelectedShoppingItem.buyoutindex=nil end
				end

				if buyitem.count then
					buyitem.count = buyitem.count - buyauction[1]
				else
					buyitem.bought = (buyitem.bought or 0) + buyauction[1]
				end

				if buyitem.count and buyitem.count <= 0 then
					ZGV.Gold.Appraiser.DoneDeals[itemid]=true -- hide this item from gold guide, until next fullscan is completed
					Appraiser:ClearShoppingItemDetails()
					Appraiser:ShowSearchFrame(true)
					--Appraiser.Buy_Frame.activeName:SetText("No item selected")
					--Appraiser.Buy_Frame.activeIcon:SetTexture()
					--Appraiser:SelectBuyoutRow()
					self:Debug("Quota purchased, selecting something else.")
					ZGV:ScheduleTimer(function() Appraiser:SelectNextShoppingItem() end,0)
				else
					Appraiser:GetBuyoutPrice(Appraiser.SelectedShoppingItem) -- refresh, but leave SelectedBuyAuction alone if it's set.
					Appraiser:GetShoppingAuctions()
					Appraiser:SetBuyoutLabels()
					Appraiser:Update()
				end
			end
		end
	
	elseif event=="UI_ERROR_MESSAGE" then
		local num,err = ...
		self:Debug("UI_ERROR_MESSAGE: %d %s",num,err)
		if num == 27 or --ERR_ITEM_NOT_FOUND
			num == 42 or --ERR_NOT_ENOUGH_MONEY
			num == 437 or --ERR_AUCTION_BID_OWN
			num == 439 or --ERR_AUCTION_HIGHER_BID
			err == ERR_ITEM_MAX_COUNT then
				if self.ActiveTab=="Buy" then
					Appraiser:GetShoppingAuctions()
					Appraiser:SetBuyoutLabels()
					Appraiser.AttemptingToBuyout=false
					Appraiser:Update()
				end
		end
	end
end

local delay,interval=0,0.05
local last_delay, last_canscan, last_delay2, last_canscan2, last_state
local last_work


local bag_slot_ids = {}
for bag = 1, NUM_BAG_SLOTS do bag_slot_ids[bag] = C_Container.ContainerIDToInventoryID(bag) end

function Appraiser.GetTrueItemCount(item)
	local truecount = GetItemCount(item.link)

	for bag=1, NUM_BAG_SLOTS do -- GIC also grabs equipped bags, so substract them from real count
		local bagid = GetInventoryItemID("player", bag_slot_ids[bag])
		if bagid==item.itemid then truecount = truecount - 1 end
	end

	if item.itemid > 1000000000 then -- battle pet, need spoonfeeding since GetItemCount(link) does not work for pets
		truecount = 0
		for bag=0, NUM_BAG_SLOTS do
			for slot=1, C_Container.GetContainerNumSlots(bag) do
				local itemInfo = C_Container.GetContainerItemInfo(bag, slot)
				if itemInfo and item.link == itemInfo.hyperlink then
					truecount = truecount + itemInfo.stackCount
				end
			end
		end
	end

	return truecount
end

local scan_delay,scan_interval=0,5

local function UpdateHandler(frame, elapsed)
	local self=Appraiser
	scan_delay = scan_delay + elapsed
	delay=delay+elapsed  if delay>interval then delay=0 else return end

	if AuctionHouseFrame and AuctionHouseFrame:IsVisible() then
		Appraiser:MarkActiveItem()
	end

	if not self.MainFrame then return end
	if not self.MainFrame:IsVisible() then return end

	local now = debugprofilestop()
	local refreshRate = (self.SellingInProgress and 100 or 5000)
	if self.needToUpdate or now-self.lastUpdated>refreshRate then
		--if not self.needToUpdate then Appraiser:Debug("appraiser update from timer rate "..refreshRate) end

		self:Update()
	end
	
	self:UpdateStatusBar()
	self:UpdateProgressBar()
	self:UpdateButtonStates()

	if self.AttemptingToBuyout and self.BuyoutTimestamp and GetTime()-self.BuyoutTimestamp>BUYOUT_TIMEOUT then
		self:AbortManualScan()
	end

	--[[
	local scanButton = Appraiser.MainFrame.ScanButton
	scanButton.tooltip = "Run a full auction scan."
	scanButton:SetText("Full Scan")
	scanButton:SetTextColor(1,1,1,1)
	if scanButton:IsMouseOver() then scanButton:GetScript("OnEnter")(scanButton) end

	if scan_delay>scan_interval then 
		if Appraiser.TryingToFastScan then
			Appraiser.TryingToFastScan = false
			Appraiser:Scan()
		end
		scan_delay=0 
	end
	--]]

	-- Now do some real work!
	self:Work()

end
Appraiser.UpdateHandler = UpdateHandler   -- for forcing an update

function Appraiser:UpdateNow()
	self:Debug("appraiser update from UpdateNow")
	self.needToUpdate=true
	Appraiser.UpdateHandler(nil,999)
end

local lastwork
function Appraiser:Work()
	if lastwork==GetTime() then return end
	lastwork=GetTime()

	local canscan,delay = true,0 -- ZGVG.Scan:CanScanByName()
	if Appraiser.DelayedFindNextBuyout then 
		-- we tried to switch pages when looking for cheapest buyout, but could not. 
		-- waiting for scan to be possible to retry
		if canscan then
			local dfnb = Appraiser.DelayedFindNextBuyout
			Appraiser.DelayedFindNextBuyout = nil
			Appraiser:FindNextBuyout(dfnb)
		end
	end

	if Appraiser.GoToPage and not Appraiser.manualBuyScanning and canscan then
		-- a page flip was requested
		self:Debug("Work: Moving to '%s' page %d (querying).",Appraiser.ActiveSearchName,Appraiser.GoToPage+1)
		ZGV.Gold.Scan.Proxy:GoToPage(Appraiser.GoToPage)
		Appraiser.ActiveSearch = nil
		Appraiser.ActiveSearchName = nil
		Appraiser.GoToPage = nil
		Appraiser.RetryBuyout = Appraiser.RetryBuyoutAfterPage
		Appraiser.RetryBuyoutAfterPage = nil
	end


	if Appraiser.SelectedShoppingItem and Appraiser.SelectedShoppingItem.updated and time()-Appraiser.SelectedShoppingItem.updated>self.OutdatedTime then
		Appraiser.SelectedShoppingItem = nil
	end

	if self.needToSelectNextSellingItem then
		self:SelectNextSellingItem()
	end
end

function Appraiser:CreateTrackerFrame()
	-- Separate frame for events because Appraiser's own frame doesn't exist until it's first shown.
	Appraiser.Events = CreateFrame("Frame")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_BROWSE_RESULTS_ADDED")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_BROWSE_RESULTS_UPDATED")
	Appraiser.Events:RegisterEvent("ITEM_SEARCH_RESULTS_ADDED")
	Appraiser.Events:RegisterEvent("ITEM_SEARCH_RESULTS_UPDATED")

	Appraiser.Events:RegisterEvent("ADDON_LOADED")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_SHOW")
	Appraiser.Events:RegisterEvent("AUCTION_HOUSE_CLOSED")
	Appraiser.Events:RegisterEvent("BAG_UPDATE_DELAYED")
	Appraiser.Events:RegisterEvent("CHAT_MSG_SYSTEM")
	Appraiser.Events:RegisterEvent("UI_ERROR_MESSAGE")
	Appraiser.Events:RegisterEvent("AUCTION_MULTISELL_START")
	Appraiser.Events:RegisterEvent("AUCTION_MULTISELL_UPDATE")
	Appraiser.Events:RegisterEvent("AUCTION_MULTISELL_FAILURE")
	ZGV:AddMessageHandler("ZGV_GOLD_SCANNED",Appraiser.EventHandler)
	ZGV:AddMessageHandler("ZGV_SS_STATE_CHANGE",Appraiser.EventHandler)
	Appraiser.Events:SetScript("OnEvent",Appraiser.EventHandler)
	Appraiser.Events:SetScript("OnUpdate",UpdateHandler)

	hooksecurefunc (GameTooltip, "SetMerchantItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetBuybackItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetBagItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	--hooksecurefunc (GameTooltip, "SetAuctionItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetLootRollItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetInventoryItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetGuildBankItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetTradePlayerItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetTradeTargetItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetQuestItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetQuestLogItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetInboxItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetItemByID",		function(tip) Appraiser_SetTooltipData(tip) end)
	--hooksecurefunc (GameTooltip, "SetAuctionSellItem",	function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (ItemRefTooltip, "SetHyperlink",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetHyperlink",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetLootItem",		function(tip) Appraiser_SetTooltipData(tip) end)
	hooksecurefunc (GameTooltip, "SetSendMailItem",		function(tip) Appraiser_SetTooltipData(tip) end)

	-- LEGION TEMP FIX, SetTradeSkillItem no longer exists
	-- possible replacements: SetRecipeResultItem / SetRecipeReagentItem

	GameTooltip:HookScript("OnTooltipCleared", Appraiser_ClearTooltipData)
end

tinsert(ZGV.startups,{"Auctiontools core",function(self)
	Appraiser:CreateTrackerFrame()
	Appraiser.ScannedItems = {}
	ZGV.Gold.Appraiser.DoneDeals = {}
	ZGV.db.char.AThiddenitems = ZGV.db.char.AThiddenitems or {}
	ZGV.db.char.ATsearchitems = ZGV.db.char.ATsearchitems or {}
	Appraiser.GuideBuyItems = Appraiser.GuideBuyItems or {}
	Appraiser.ManualBuyItems = ZGV.db.char.ATsearchitems or {}
	ZGV.db.char.GGbuyitems = ZGV.db.char.GGbuyitems or {}
	Appraiser.Loaded = true	
	ZGV.db.profile.aucmode = ZGV.db.profile.aucmode or "unit"
	Appraiser.lastUpdated = 0

	ZGV.Gold.Scan:CreateWorkFrame()
end})

tinsert(ZGV.startups,{"Auctiontools late pop",function(self)
	if AuctionHouseFrame and AuctionHouseFrame:IsShown() then
		Appraiser:OnAuctionSetMode(AuctionHouseFrame:GetDisplayMode())
		ZGVG.Scan:EventHandler("AUCTION_HOUSE_SHOW")
	end
end,after="all"})