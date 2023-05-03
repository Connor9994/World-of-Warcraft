local name,ZGV = ...

local L = ZGV.L
local CHAIN = ZGV.ChainCall

-- REMOVE AFTER MIGRATION
local ZGVG=ZGV.Gold

if not ZGV.Goldguide then ZGV.Goldguide = {} end
local Goldguide = ZGV.Goldguide

LibStub("AceHook-3.0"):Embed(Goldguide)

Goldguide.TIER_DEMAND_MEDIUM = 0.5
Goldguide.TIER_DEMAND_HIGH = 1.0

Goldguide.ITEM_AUCTION_STATUS = {
	[0] = {"|cffff0000","Bad investment"}, -- 0-4
	[1] = {"|cffff0000","Bad investment"}, -- 0-4
	[2] = {"|cffff0000","Risky investment"}, -- 0-4
	[3] = {"|cffff0000","Risky investment"}, -- 0-4
	[4] = {"|cffff0000","Risky investment"}, -- 0-4
	[5] = {"|cffffff00","Safe investment"}, -- 5-9
	[6] = {"|cffffff00","Safe investment"}, -- 5-9
	[7] = {"|cffffff00","Safe investment"}, -- 5-9
	[8] = {"|cffffff00","Safe investment"}, -- 5-9
	[9] = {"|cffffff00","Safe investment"}, -- 5-9
	[10] = {"|cff00ff00","Good investment"}, -- 10+
	unscored = {"|cff777777","Unknown"}
}

local CRAFTING_SKILLS={"All","Mining","Jewelcrafting","Enchanting","Inscription","Blacksmithing","Engineering","Alchemy","Tailoring","Leatherworking","Cooking"}

function Goldguide:Initialise()
	Goldguide.OffsetFarming=0
	Goldguide.OffsetGathering=0
	Goldguide.OffsetCrafting=0
	Goldguide.OffsetAuctions=0

	ZGV.db.profile.goldsort = ZGV.db.profile.goldsort or {
		["gathering"] = {"dispgold","desc"},
		["farming"] = {"dispgold","desc"},
		["crafting"] = {"profit","desc"},
		["auctions"] = {"profit","desc"},
	}

	-- Add a pointer to farming guides groups, for crafting guides to use
	for i,group in pairs(ZGV.registered_groups.groups) do 
		if group.name == "GOLD" then
			for i,category in pairs(group.groups) do 
				if category.name == "Farming" then
					Goldguide.farming_guides=category.guides
				end
			end
		end
	end

	ZGV:CacheSkills()

	Goldguide.RecipeLevels={}
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		for skill,recipes in pairs(ZygorGuidesViewer.Professions.AllRecipes) do
			for spell,recipe in pairs(recipes) do
				Goldguide.RecipeLevels[spell] = tonumber(recipe.learnedat) or 1
			end
		end
	end

	Goldguide.herbalism = ZGV.Professions:GetSkill("Herbalism").level
	Goldguide.mining = ZGV.Professions:GetSkill("Mining").level

	Goldguide.CacheCraftingTooltip={}

	Goldguide:CalculateAllChores(true)

	if ZGV.db.global.gold_info_pages then Goldguide.ShowInfoPage=true end

	ZGV:AddMessageHandler("ZGV_GOLD_SCANNED",Goldguide.MainFrame_EventHandler)
	ZGV:AddEventHandler("MODIFIER_STATE_CHANGED",Goldguide.MainFrame_EventHandler)

	Goldguide:ShowWindow()
end

function Goldguide:CalculateAllChores(refresh)
	-- If we are here, then it means that we got new AH data, or just started gg
	Goldguide:InitialiseAuctionChores()
	Goldguide:InitialiseCraftingChores()

	for _,chore in pairs(Goldguide.Chores.Farming) do chore:CalculateDetails(refresh)   chore.needsRefresh=refresh end
	for _,chore in pairs(Goldguide.Chores.Gathering) do chore:CalculateDetails(refresh) chore.needsRefresh=refresh end
	for _,chore in pairs(Goldguide.Chores.Crafting) do chore:CalculateDetails(refresh)  chore.needsRefresh=refresh end
	for _,chore in pairs(Goldguide.Chores.Auctions) do chore:CalculateDetails(refresh)  chore.needsRefresh=refresh end

	if refresh then
		Goldguide.knows_crafting = false
		for _,skillname in ipairs(CRAFTING_SKILLS) do
			if ZGV.Professions:GetSkill(skillname).level>0 then
				Goldguide.knows_crafting = true
			end
		end
	end


	Goldguide:Update()
end

function Goldguide:Update()
	Goldguide.needToUpdate = false

	if not Goldguide.MainFrame then return end

	local tab=Goldguide.ActiveTab
	local results=0

	-- step 1: prepare data, filter out unwanted results
	if tab=="Farming" then
		for ii,chore in ipairs(Goldguide.Chores.Farming) do 
			if chore.needsRecalc then 
				chore:CalculateDetails(true)
			end
			if chore:IsValidChore() then results=results+1 end
		end
	elseif tab=="Gathering" then
		for ii,chore in ipairs(Goldguide.Chores.Gathering) do 
			if chore.needsRecalc then 
				chore:CalculateDetails(true)
			end
			if chore:IsValidChore() then results=results+1 end
		end
	elseif tab=="Crafting" then
		for ii,chore in ipairs(Goldguide.Chores.Crafting) do
			if chore:IsValidChore() then results=results+1 end
		end
	elseif tab=="Auctions" then
		for ii,chore in ipairs(Goldguide.Chores.Auctions) do 
			if chore:IsValidChore() then results=results+1 end
		end
	end

	-- step 2: sort data
	local Chores=Goldguide.Chores
	if tab=="Farming" then
		sort(Chores.Farming,Goldguide.Farming.dynamic_sort)
	elseif tab=="Gathering" then
		sort(Chores.Gathering,Goldguide.Gathering.dynamic_sort)
	elseif tab=="Crafting" then
		sort(Chores.Crafting,Goldguide.Crafting.dynamic_sort)
	elseif tab=="Auctions" then
		sort(Chores.Auctions,Goldguide.Auctions.dynamic_sort)
	end

	-- step 3: display data
	local rowoff=0

	local resultstatus
	
	if tab=="Farming" then 
		if results==0 then
			if #Goldguide.Chores.Farming==0 then
				resultstatus = L["gold_farming_error_noresults"]
			else
				local type = Goldguide.Farming_Frame.TypeDropdown:GetCurrentSelectedItem():GetText()
				resultstatus = L["gold_farming_error_noitemtype"]:format(type)
			end
		end

		local rownum=0
		local ROW_COUNT = Goldguide.Farming_Frame.Entries:CountRows()

		Goldguide.OffsetFarming = max(0,min(Goldguide.OffsetFarming,results-ROW_COUNT))
		local rowoff=Goldguide.OffsetFarming

		local itemindex = 1
		for ii,chore in ipairs(Goldguide.Chores.Farming) do 
			if chore.valid then
				rownum = itemindex-rowoff
				if rownum>0 and rownum<ROW_COUNT+1 then 
					local row = Goldguide.Farming_Frame.Entries.rows[rownum]
					local icon, title, zone, rate, disptime, dispgold = chore:GetDisplayInfo(chore.needsRefresh)
					row.no:SetText(itemindex)
					row.icon:SetTexture(icon)
					row.title:SetText(title)
					row.zone:SetText(zone)
					row.rate:SetText(rate)
					row.disptime:SetText(disptime)
					row.dispgold:SetText(dispgold)

					row.chore = chore

					row.backalpha = rownum%2==0 and 0.0 or 0.06
					row.back:SetAlpha(row.backalpha)
					
					row:Show()
				end
				itemindex=itemindex+1 
			end
		end
		Goldguide.Farming_Frame.Entries.scrollbar:TotalValue(results)
		Goldguide.Farming_Frame.Entries.scrollbar:SetValue(rowoff)
		for r=rownum+1,ROW_COUNT do 
			Goldguide.Farming_Frame.Entries.rows[r]:Hide() 
			Goldguide.Farming_Frame.Entries.rows[r].chore=nil 
		end
	end

	if tab=="Gathering" then 
		if results==0 then
			if #Goldguide.Chores.Gathering==0 then
				resultstatus = L["gold_gathering_no_results"]..L["gold_general_open_window1"]
			else
				local type = Goldguide.Gathering_Frame.TypeDropdown:GetCurrentSelectedItem():GetText()
				local profstrings = "" 
				local gatheringprofs={herbalism="Herbalism",mining="Mining",skinning="Skinning",fishing="Fishing",enchanting="Enchanting"}

				for k,prof in pairs(gatheringprofs) do
					local skill=ZGV.Professions:GetSkill(prof)
					local level=skill.level
					if level>0 then 
						profstrings = profstrings .. "\n" .. L["gold_gathering_error_prof"]:format(prof,level)
					end
					if ZGV.Professions.tradeskills[skill.parentskillID] and ZGV.Professions.tradeskills[skill.parentskillID].subs then
						for i,v in pairs(ZGV.Professions.tradeskills[skill.parentskillID].subs) do
							if v.name ~= prof then
								local subskill=ZGV.Professions:GetSkill(v.name)
								local sublevel=subskill.level
								if sublevel>0 then 
									profstrings = profstrings .. "\n" .. L["gold_gathering_error_prof"]:format(v.name,sublevel)
								end
							end
						end
					end
				end

				if type~="All" then
					local level = ZGV.Professions:GetSkill(type).level
					if level==0 then
						resultstatus = L["gold_gathering_error_one_noskillin"]:format(type) .. L["gold_general_open_window1"]
						if profstrings~="" then
							resultstatus = resultstatus..L["gold_gathering_error_one_noskillin_skills"]:format(profstrings)
						end
					else
						resultstatus = L["gold_gathering_error_one_noresults"]:format(type)
					end
				else
					if profstrings~="" then
						resultstatus = L["gold_gathering_error_one_nothing"]:format(profstrings) .. L["gold_general_open_window2"]
					else
						resultstatus = L["gold_gathering_error_all_noprofessions"] .. L["gold_general_open_window1"]
					end
				end
			end
		end

		local rownum=0
		local ROW_COUNT = Goldguide.Gathering_Frame.Entries:CountRows()

		Goldguide.OffsetGathering = max(0,min(Goldguide.OffsetGathering,results-ROW_COUNT))
		local rowoff=Goldguide.OffsetGathering

		local itemindex = 1
		for ii,chore in ipairs(Goldguide.Chores.Gathering) do 
			if chore.valid then
				rownum = itemindex-rowoff
				if rownum>0 and rownum<ROW_COUNT+1 then 
					local row = Goldguide.Gathering_Frame.Entries.rows[rownum]
					local icon, title, zone, rate, disptime, dispgold = chore:GetDisplayInfo(chore.needsRefresh)
					row.no:SetText(itemindex)
					row.icon:SetTexture(icon)
					row.title:SetText(title)
					row.zone:SetText(zone)
					row.rate:SetText(rate)
					row.disptime:SetText(disptime)
					row.dispgold:SetText(dispgold)

					row.chore = chore

					row.backalpha = rownum%2==0 and 0.0 or 0.06
					row.back:SetAlpha(row.backalpha)

					row:Show()
				end
				itemindex=itemindex+1 
			end
		end

		Goldguide.Gathering_Frame.Entries.scrollbar:TotalValue(results)
		Goldguide.Gathering_Frame.Entries.scrollbar:SetValue(rowoff)
		for r=rownum+1,ROW_COUNT do 
			Goldguide.Gathering_Frame.Entries.rows[r]:Hide() 
			Goldguide.Gathering_Frame.Entries.rows[r].chore=nil 
		end
	end

	if tab=="Crafting" then 
		if results==0 then
			if #Goldguide.Chores.Crafting==0 then
				if Goldguide.knows_crafting then
					resultstatus = L["gold_crafting_error_recipesnotcached"]
				else
					resultstatus = L["gold_crafting_error_noprofessions"]
				end
			else
				local type = Goldguide.Gathering_Frame.TypeDropdown:GetCurrentSelectedItem():GetText()
				resultstatus = L["gold_crafting_error_noresults"]:format(type)
			end
		end

		local rownum=0
		local ROW_COUNT = Goldguide.Crafting_Frame.Entries:CountRows()

		Goldguide.OffsetCrafting = max(0,min(Goldguide.OffsetCrafting,results-ROW_COUNT))
		local rowoff=Goldguide.OffsetCrafting

		local itemindex = 1
		for ii,chore in ipairs(Goldguide.Chores.Crafting) do
			if chore.valid then
				rownum = itemindex-rowoff
				if rownum>0 and rownum<ROW_COUNT+1 then 
					local row = Goldguide.Crafting_Frame.Entries.rows[rownum]
					local icon, name, status, materials, profit = chore:GetDisplayInfo(chore.needsRefresh)
					row.no:SetText(itemindex)
					row.icon:SetTexture(icon)
					row.name:SetText(name)
					row.status:SetText(status)
					row.materials:SetText(materials)
					row.profit:SetText(profit)

					row.chore = chore

					row.backalpha = rownum%2==0 and 0.0 or 0.06
					row.back:SetAlpha(row.backalpha)

					row:Show()
				end
				itemindex=itemindex+1 
			end
		end

		Goldguide.Crafting_Frame.Entries.scrollbar:TotalValue(results)
		Goldguide.Crafting_Frame.Entries.scrollbar:SetValue(rowoff)
		for r=rownum+1,ROW_COUNT do 
			Goldguide.Crafting_Frame.Entries.rows[r]:Hide() 
			Goldguide.Crafting_Frame.Entries.rows[r].chore=nil 
		end
	end

	if tab=="Auctions" then 
		if results==0 then
			if #Goldguide.Chores.Auctions==0 then
				resultstatus = L["gold_auctions_error_noresults"]
			else
				local type = Goldguide.Gathering_Frame.TypeDropdown:GetCurrentSelectedItem():GetText()
				resultstatus = L["gold_auctions_error_noresults"]:format(type)
			end
		end

		local rownum=0
		local ROW_COUNT = Goldguide.Auctions_Frame.Entries:CountRows()

		Goldguide.OffsetAuctions = max(0,min(Goldguide.OffsetAuctions,results-ROW_COUNT))
		local rowoff=Goldguide.OffsetAuctions

		local itemindex = 1
		for ii,chore in ipairs(Goldguide.Chores.Auctions) do 
			if chore.valid then
				rownum = itemindex-rowoff
				if rownum>0 and rownum<ROW_COUNT+1 then 
					local row = Goldguide.Auctions_Frame.Entries.rows[rownum]
					local icon, name, status, count, cost, profit, gain = chore:GetDisplayInfo(chore.needsRefresh)
					row.no:SetText(itemindex)
					row.icon:SetTexture(icon)
					row.title:SetText(name)
					row.status:SetText(status)
					row.count:SetText(count)
					row.cost:SetText(cost)
					row.profit:SetText(profit)
					row.gain:SetText(gain)

					row.chore = chore

					row.loadbutton:SetEnabledIf(not ZGVG.Appraiser:IsInCurrentDeals(chore.id))
						

					row.backalpha = rownum%2==0 and 0.0 or 0.06
					row.back:SetAlpha(row.backalpha)

					row:Show()
				end
				itemindex=itemindex+1 
			end
		end

		Goldguide.Auctions_Frame.Entries.scrollbar:TotalValue(results)
		Goldguide.Auctions_Frame.Entries.scrollbar:SetValue(rowoff)
		for r=rownum+1,ROW_COUNT do 
			Goldguide.Auctions_Frame.Entries.rows[r]:Hide() 
			Goldguide.Auctions_Frame.Entries.rows[r].chore=nil 
		end
	end

	Goldguide.MainFrame.MenuFrame.ResultCount:SetText("Results: "..results)

	if resultstatus then
		Goldguide.MainFrame.MessageFrame.ResultsMessage:SetText(resultstatus)
		Goldguide.MainFrame.MessageFrame:Show()
	else
		Goldguide.MainFrame.MessageFrame:Hide()
	end

	Goldguide:UpdateSortingArrows()
	Goldguide:UpdateStatusBar()
end

-- called from Auctions,Farming,Crafting,Gathering frames, with sorting param pairs: "fieldname","asc"|"desc", ...
function Goldguide.dynamic_sort(tab,a,b, ...)
	local field,order
	local varargn=1

	local a_val,b_val
	local a_val_num,b_val_num

	repeat
		field=select(varargn,...)
		order=select(varargn+1,...)
		varargn=varargn+2
		if not field then return nil end  -- this means the sorting has failed and may return random order!

		a_val = a[field]
		b_val = b[field]
		a_val_num = tonumber(a_val)
		b_val_num = tonumber(a_val)

		if order=="zerolast" then
			a_val=(a_val_num>0) and 1 or 0
			b_val=(b_val_num>0) and 1 or 0
			order="desc"
		end  -- just force zeroes to the bottom
		if order=="pos-zero-nil" then
			a_val=(a_val_num and a_val_num>0 and 1) or a_val_num or -1
			b_val=(b_val_num and b_val_num>0 and 1) or b_val_num or -1
			order="desc"
		end
	until a_val~=b_val

	if type(a_val)~=type(b_val) then
		a_val=tostring(a_val)
		b_val=tostring(b_val)
	end
	if order == "asc" then
		return a_val<b_val
	else
		return a_val>b_val
	end
end


function Goldguide.MainFrame_EventHandler(self, event, ...)
	if event=="ZGV_GOLD_SCANNED" and Goldguide.MainFrame:IsShown() then
		Goldguide:CalculateAllChores(true)
		Goldguide:Update()
	elseif event=="MODIFIER_STATE_CHANGED" and (...=="LSHIFT" or ...=="RSHIFT") and Goldguide.MainFrame:IsShown() then
		for k,row in pairs(Goldguide.Farming_Frame.Entries.rows) do
			if row:IsVisible() and row:IsMouseOver() then
				Goldguide.FarmingTooltip:Hide()
				row:GetScript("OnEnter")(row)
				break
			end
		end
		for k,row in pairs(Goldguide.Gathering_Frame.Entries.rows) do
			if row:IsVisible() and row:IsMouseOver() then
				Goldguide.GatheringTooltip:Hide()
				row:GetScript("OnEnter")(row)
				break
			end
		end
		for k,row in pairs(Goldguide.Crafting_Frame.Entries.rows) do
			if row:IsVisible() and row:IsMouseOver() then
				Goldguide.CraftingTooltip:Hide()
				row:GetScript("OnEnter")(row)
				break
			end
		end
		for k,row in pairs(Goldguide.Auctions_Frame.Entries.rows) do
			if row:IsVisible() and row:IsMouseOver() then
				Goldguide.AuctionTooltip:Hide()
				row:GetScript("OnEnter")(row)
				break
			end
		end
	end
end

function Goldguide.MainFrame_UpdateHandler(self, event)
	if Goldguide.needToUpdate then
		Goldguide:Update()
	end
end

tinsert(ZGV.startups,{"Goldguide core",function(self)
	if not ZGV.db.profile.load_gold then return end

	ZGV.Gold.usefulness = ZGV.StackSizes
	ZGV.db.char.CurrentDeals = ZGV.db.char.CurrentDeals or {}

	local t = debugprofilestop()

	Goldguide.Chores = {
		Gathering={},
		Farming={},
		Crafting={},
		Auctions={},
	}

	-- Check all the gold guides
	for gui,guide in ipairs(ZGV.registeredguides) do
		if guide.type=="GOLD" or guide.type=="PROFESSIONS" then
			if guide.headerdata.meta and guide.headerdata.meta.goldtype=="route"  then -- we need header data. if it is not there, ignore
				local chore = {}
				chore.name=guide.title_short
				chore.guide=guide
				chore.meta=guide.headerdata.meta
				chore.maps_array=guide.headerdata.maps

				local items={}
				for sitem,item in pairs(guide.headerdata.items) do
					if not item[3] then
						tinsert(items,item)
					end
				end
				chore.items = items

				if chore.meta.skillreq then 
					chore.type="gathering"
					Goldguide.Gathering:New(chore)
				else
					chore.type="farming"
					Goldguide.Farming:New(chore)
				end
			end

			if debugprofilestop()-t>50 then t=debugprofilestop() coroutine.yield("more gold to do") end
		end
	end
end } )

function Goldguide.UpdateSorting(widget,col)  -- NOT called with a colon; called from a ScrollTable widget.
	local dbfield = string.lower(Goldguide.ActiveTab)
	local col = string.lower(col)


	if ZGV.db.profile.goldsort[dbfield][1] == col then
		if ZGV.db.profile.goldsort[dbfield][2] == "desc" then
			ZGV.db.profile.goldsort[dbfield] = {col,"asc"}
		else
			ZGV.db.profile.goldsort[dbfield] = {col,"desc"}
		end
	else
		ZGV.db.profile.goldsort[dbfield] = {col,"desc"}
	end

	Goldguide:UpdateSortingArrows()
	Goldguide:Update()
end

function Goldguide:GetItemFlagsAndStatus(chore)
	local id = chore.id or chore.productid
	local _,class,subclass  = GetItemInfoInstant(id)

	local flags = {}

	---- Get Zygor defined item flags
	if ZGV.Gold.Auctions.BaseValues[class] and ZGV.Gold.Auctions.BaseValues[class][subclass] then
		for i,v in pairs(ZGV.Gold.Auctions.BaseValues[class][subclass]) do
			table.insert(flags,v)
		end
	end

	local status_override

	if ZGV.Gold.Auctions.ItemStatus[id] then
		for i,v in pairs(ZGV.Gold.Auctions.ItemStatus[id]) do
			if i~="OVERRIDE" and v~="WIPE" and string.sub(v,1,1)~="-" then table.insert(flags,v) end
			if v=="WIPE" then 
				table.wipe(flags)
			end

			if string.sub(v,1,1)=="-" then
				for k,n in pairs(flags) do
					if n==string.sub(v,2,-1) then
						table.remove(flags,k)
					end
				end
			end
		end
		if ZGV.Gold.Auctions.ItemStatus[id].OVERRIDE then
			status_override = ZGV.Gold.Auctions.ItemStatus[id].OVERRIDE
		end
	end

	if id > 1000000000 then -- pets
		if ZGV.Gold.Auctions.ItemStatus[82800] then -- global for pet cages
			for i,v in pairs(ZGV.Gold.Auctions.ItemStatus[82800]) do
				if i~="OVERRIDE" and v~="WIPE" and string.sub(v,1,1)~="-" then table.insert(flags,v) end
				if v=="WIPE" then 
					table.wipe(flags)
				end

				if string.sub(v,1,1)=="-" then
					for k,n in pairs(flags) do
						if n==string.sub(v,2,-1) then
							table.remove(flags,k)
						end
					end
				end
			end
			if ZGV.Gold.Auctions.ItemStatus[82800].OVERRIDE then
				status_override = ZGV.Gold.Auctions.ItemStatus[82800].OVERRIDE
			end
		end

		local petId = id  --TODO: make sure this works, was missing

		if ZGV.Gold.Auctions.PetStatus[petId] then -- custom for this pet
			for i,v in pairs(ZGV.Gold.Auctions.PetStatus[petId]) do
				if i~="OVERRIDE" and v~="WIPE" and string.sub(v,1,1)~="-" then table.insert(flags,v) end
				if v=="WIPE" then 
					table.wipe(flags)
				end

				if string.sub(v,1,1)=="-" then
					for k,n in pairs(flags) do
						if n==string.sub(v,2,-1) then
							table.remove(flags,k)
						end
					end
				end
			end
			if ZGV.Gold.Auctions.PetStatus[petId].OVERRIDE then
				status_override = ZGV.Gold.Auctions.PetStatus[petId].OVERRIDE
			end
		end
	end

	return flags,status_override
end

-- Used for Farming and Gathering type chores
Goldguide.Common = {}
function Goldguide.Common:AreRequirementsMet(ignore_skill,ignore_level)
	if ZGV.db.profile.gmgoldallvalid then self.valid=true return true,"debug override" end

	if ZGV.Gold.any_skill then ignore_skill=true end
	if ZGV.Gold.any_level then ignore_level=true end
	
	if self.meta then
		if self.meta.levelreq and not ignore_level then
			local level = ZGV:GetPlayerPreciseLevel()
			if type(self.meta.levelreq)=="number" and level<self.meta.levelreq then return false,"level" end
			if type(self.meta.levelreq)=="table" and level<self.meta.levelreq[1] then return false,"level" end
		end
		if self.meta.skillreq and not ignore_skill then
			for entry,value in pairs(self.meta.skillreq) do
				local tradeskill = ZGV.Professions:GetSkill(entry)
				if (not tradeskill.active) or (tradeskill.level or 0) < (value or 0) then return false,"skill" end
			end
		end
	end
	if self.guide and self.guide:GetStatus()=="INVALID" then return false,"badguide" end
	return true
end

function Goldguide.Common:GetProfitPerHour()  -- NOT SMART. Stupid as hell.
	if not self:AreRequirementsMet() then return -1 end
	local profit=0
	if not self.items then return 0 end
	for i,pair in ipairs(self.items) do
		local id,num,crap=unpack(pair)
		local vendorprice,ahprice = ZGVG:GetItemPrice(id)
		if not crap and ahprice>0 then
			profit=profit + num * ahprice
		else
			profit=profit + num * (vendorprice or 0)
		end
	end
	self.profitperhour = profit * 60 / self.time
	self.profitperhour_is_smart=false
	return self.profitperhour
end

function Goldguide.Common:GetSmartProfitPerHour()
	if not self:AreRequirementsMet() then 
		self.profitperhour=-1
		return
	end
	if self.profitperhour then return self.profitperhour end
	local profit=0
	if not self.items then return 0 end

	local trends = ZGV.Gold.servertrends
	if not trends then return self:GetProfitPerHour() end  -- not so smart without trends
	trends=trends.items

	if not self.calculated_details then self:CalculateDetails() end -- this calculates self.items, self.good_items etc
	for i,itemdata in ipairs(self.items) do
		local id,num,crap=unpack(itemdata)
		num = num or 1
		local trend = trends[id]
		if not crap and itemdata.is_lively then
			-- good healthy profits!

			-- WAIT. Gouged? Missing?
			profit = profit + num * itemdata.price

		else
			-- otherwise assume vendor
			profit=profit + num * itemdata.vendorprice
			-- or ZERO PROFIT HERE!
		end
	end

	self.profitperhour = profit * 60 / self.time
	self.profitperhour_is_smart=true
	return self.profitperhour
end

function Goldguide.Common:CalculateDetails(refresh)
	if self.calculated_details and not refresh and not self.needsRecalc then return self.calculated_details end
	self.needsRecalc = false

	self.profitperhour = nil
	self.cached_tooltip = nil

	local dyna_title = {}
	local s = ""

	self.display_name = nil

	if self.items then
		local itemstrings = {}
		local good_items = {}
		local bad_items = {}

		self.good_items=good_items
		self.bad_items=bad_items

		self.has_stagnant=nil
		self.has_gouged=nil
		self.has_empty=nil
		self.crap_rate=false

		local herbalism = Goldguide.herbalism
		local mining = Goldguide.mining

		self.scale=100 -- we'll be adjusting this right below.

		local trends = ZGV.Gold.servertrends
		trends = trends and trends.items
			
		for i,itemdata in ipairs(self.items) do
			local itemid,count,crap=unpack(itemdata)
			count = max(count or 1,1)
			local itemname,itemlink,_,_,_,_,_,_,_,itemicon,itemvendor = ZGV:GetItemInfo(itemid)
			if not itemname then self.needsRecalc = true end

			if self.meta and self.meta.herbalismcrapuntil and herbalism<self.meta.herbalismcrapuntil then
				count=count/10
				self.crap_rate=true
			end
			
			if self.meta and self.meta.miningcrapuntil and mining<self.meta.miningcrapuntil then
				count=count/10
				self.crap_rate=true
			end


			local trend = trends and trends[itemid]

			local vendor,scanprice

			if not crap then
				-- primary items

				itemdata.is_lively = trend and trend.health>0

				itemdata.est_sold = trend and trend.sold
				if itemdata.est_sold and itemdata.est_sold>0 then itemdata.is_lively=true end

				local useful = ZGVG.usefulness[itemid]
				
				local statusName,statusText,statusIcon 
				vendor,scanprice = ZGVG:GetItemPrice(itemid)

				local sellprice = ZGVG:GetSellPrice(itemid)
				local priceStatus = ZGVG:GetPriceStatus(itemid,sellprice)
				statusName = priceStatus.statusName
				statusText = priceStatus.name..priceStatus.sellsuggestion
				statusIcon = ZGV.IconSets.AuctionToolsPriceIcons[priceStatus.sellicon or priceStatus.icon].texcoord -- coords

				itemdata.vendorprice=vendor

				if trend and itemdata.is_lively then
					itemdata.price = sellprice
					if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
						itemdata.demand = count -- classic, we have no demand values	
					else
						itemdata.demand = trend.sold or trend.q_md or (trend.q_lo + trend.q_hi)/2  -- TEMPORARY. Doubling the market is bad too, but we have to start with something.
					end
					itemdata.scale = itemdata.demand/count

					-- scale whole route
					if self.scale>itemdata.scale then  self.scale=itemdata.scale  end

					if statusName=="PRICESTATUS_GOUGED" then
						self.has_gouged=true
						itemdata.gouged=true
					elseif statusName=="PRICESTATUS_EMPTY" then
						self.has_empty=true
						itemdata.empty=true
					end
					local is = ("%d %s (%s each = %s total); demand: %d  %s%s"):format(
						count, itemlink or "#"..itemid,
						ZGV.GetMoneyString(itemdata.price),ZGV.GetMoneyString(itemdata.price*count),
						itemdata.demand,
						itemdata.scale<1 and (" |cffff0000LOW DEMAND, %d daily max!|r"):format(itemdata.demand) or "",
						itemdata.gouged and (" |cff88ff00GOUGED: %s > %s|r"):format(
							ZGV.GetMoneyString(itemdata.price),
							ZGV.GetMoneyString(trend.p_hi*ZGVG.OVERPRICE))
							or (itemdata.empty and (" |cff00ff00EMPTY!|r") or "")
						)
					tinsert(good_items,{itemname,is,count=count,price=itemdata.price,profit=itemdata.price*count,is_lively=true,itemdata=itemdata})

				elseif trend and not itemdata.is_lively then
					itemdata.price = trend.p_md or vendor or 0
					self.has_stagnant=true
				
					local is = ("%d %s (%s each = %s total); |cffff0000market stagnant or saturated|r"):format(
						count, itemlink or "#"..itemid,
						ZGV.GetMoneyString(itemdata.price),ZGV.GetMoneyString(itemdata.price*count)
					)
					tinsert(bad_items,{itemname,is,count=count,price=itemdata.price,profit=itemdata.price*count,is_lively=false,itemdata=itemdata})

				elseif not trend then
					itemdata.price = vendor or 0

					local is = ("%d %s (%s each = %s total); %s|cffaa0000no history data|r"):format(
						count, itemlink or "#"..itemid,
						ZGV.GetMoneyString(itemdata.price),ZGV.GetMoneyString(itemdata.price*count),
						useful and "useful, but " or ""
						)
					tinsert(bad_items,{itemname,is,count=count,price=itemdata.price,profit=itemdata.price*count,is_lively=false,itemdata=itemdata,no_trend=true})

				end
			
				
			elseif crap and count>=10 then
				itemdata.is_lively=false
				itemdata.demand=0
				itemdata.price = ZGVG:GetItemPrice(itemid) or vendor or 0

				local is = ("%d %s (%s each = %s total) |cff888888<- vendor|r"):format(count,itemlink or "#"..itemid,ZGV.GetMoneyString(itemdata.price),ZGV.GetMoneyString(itemdata.price*count))
				tinsert(bad_items,{itemname,is,count=count,price=itemdata.price,profit=itemdata.price*count,itemdata=itemdata,no_trend=true})

			end

		end

		local function sort_by_profit(a,b)
			if a.is_lively and b.is_lively then return a.profit>b.profit
			elseif a.is_lively~=b.is_lively then return a.is_lively
			elseif a.profit~=b.profit then return a.profit>b.profit
			else return a[1] and b[1] and a[1]>b[1] end  -- last: by id
		end

		sort(good_items,sort_by_profit)
		for i,it in ipairs(good_items) do
			tinsert(itemstrings,it[2])
			if it.is_lively then tinsert(dyna_title,it[1]) end
		end

		if #bad_items>0 then
			tinsert(itemstrings,"---------")
			sort(bad_items,sort_by_profit)
			for i,it in ipairs(bad_items) do
				tinsert(itemstrings,it[2])
			end
		end

		--end
		s = s .. (" - get (per hour):\n%s\n"):format(table.concat(itemstrings,"\n"))
	end

	local quality = nil
	local _
	if self.good_items and #self.good_items>0 then
		_,_, quality ,_,_,_,_,_,_,_,_ = ZGV:GetItemInfo(self.good_items[1]["itemdata"][1])
		self.display_name = table.concat(dyna_title," / ")
	elseif self.bad_items and #self.bad_items>0 then
		_,_, quality ,_,_,_,_,_,_,_,_ = ZGV:GetItemInfo(self.bad_items[1]["itemdata"][1])
		self.display_name = self.bad_items[1][1]
	end
	if quality then
		local r, g, b, hex = GetItemQualityColor(quality);
		self.display_name="|c"..hex..self.display_name
	end

	self.display_name = self.display_name or self.name

	self.calculated_details = s

	self:GetSmartProfitPerHour()

	self.rate = self.profitperhour
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		self.scale = 1
	else
		self.scale = self.scale or 1
	end

	self.dispgold = self.profitperhour * self.scale
	self.disptime = self.time * self.scale
	if self.scale>=10 then
		self.disptime = self.time * 10
		self.dispgold = self.profitperhour * 10
	end

	if self.good_items and #self.good_items==0 then 
		self.disptime = 0
		self.dispgold = 0
	end


	if self.maps_array then
		self.maps = table.concat(self.maps_array, ", ") 
	end

	Goldguide.needToUpdate = true

	return s
end

local TIER_DEMAND_HIGH = 1.0
local TIER_DEMAND_MEDIUM = 0.5

function Goldguide.Common:GetTooltipData(refresh)
	if self.cached_tooltip and not refresh then return self.cached_tooltip end

	local price_desc = " /ea"
	local drops_desc = " /hr"

	local h = floor(self.scale)
	local m = (self.scale-h)*60
	m=m-m%5 --trunc to 10
	if h>2 then m=nil end
	local hm = (h>0 and h.."h" or "") .. (h>0 and m and " " or "") .. (m and (m .. "m") or "")

	self.cached_tooltip = {items={},separator=false}

	for ii,item in ipairs(self.good_items) do
		local itemname,itemlink = ZGV:GetItemInfo(item.itemdata[1])

		local demand
		-- DEMAND TIERS
		if item.itemdata.scale>=TIER_DEMAND_HIGH then
			demand=Goldguide.COLOR_DEMANDGREAT ..math.floor(item.itemdata.demand).."|r"
		elseif item.itemdata.scale>=TIER_DEMAND_MEDIUM then
			demand=Goldguide.COLOR_DEMANDGOOD ..math.floor(item.itemdata.demand).."|r"
		else
			demand=Goldguide.COLOR_DEMANDLOW ..math.floor(item.itemdata.demand).."|r"
		end
		
		local comment
		if item.itemdata.gouged then
			comment="Gouged; price raised."
		elseif item.itemdata.empty then
			comment="Market empty; price raised."
		else
			comment=""
		end

		local scaled_profit = item.profit * self.scale

		if not item.itemdata[3] then
			table.insert(self.cached_tooltip.items,{
				item=itemlink,
				price=ZGV.GetMoneyString(item.price)..price_desc, 
				drops=item.count..drops_desc, 
				profit=ZGV.GetMoneyString(scaled_profit), 
				demand=demand,
				status=comment
			})
		end
	end
	if self.good_items and #self.good_items>0 and #self.bad_items>0 then 
		self.cached_tooltip.separator = #self.good_items
	end

	if self.bad_items then
		for ii,item in ipairs(self.bad_items) do
			local itemname,itemlink = ZGV:GetItemInfo(item.itemdata[1])
			local comment=""
			if item.itemdata[3] then --crap
				comment="Vendor."
			elseif item.no_trend then
				if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
					comment="No trend data."
				else
					comment="Not useful."
				end
			elseif not item.is_lively then
				comment="Market stagnant, vendor."
			else
				comment=""
			end
			if not item.itemdata[3] then
				local scaled_profit = (item.profit or 0) * self.scale
				table.insert(self.cached_tooltip.items,{
					item=itemlink,
					price=ZGV.GetMoneyString(item.price)..price_desc, 
					drops=item.count..drops_desc, 
					profit=ZGV.GetMoneyString(scaled_profit), 
					demand=item.itemdata.demand or 0,
					status=comment
				})
			end
		end
	end

	if self.crap_rate then
		self.cached_tooltip.header = "|cff9100ffLow gathering skill level will result in lower amount of items.|r"
	end

	-- crop display to 30 entries
	while #self.cached_tooltip.items>30 do table.remove(self.cached_tooltip.items) end

	return self.cached_tooltip
end