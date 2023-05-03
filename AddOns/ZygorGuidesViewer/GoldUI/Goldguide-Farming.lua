local name,ZGV = ...

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local Goldguide = ZGV.Goldguide

Goldguide.Farming = {}
local Farming=Goldguide.Farming

setmetatable(Goldguide.Farming,{__index=Goldguide.Common})

function Farming:New(data)
	data.time=data.time or 60
	setmetatable(data,{__index=Farming,__lt=Farming.sorting})
	table.insert(Goldguide.Chores.Farming,data)
end

function Farming:GetDisplayInfo(refresh)
	if self.cached_display and not refresh then return unpack(self.cached_display) end

	self.needsRefresh=false

	-- icon
	local iconitem
	if #self.good_items>0 then 
		iconitem=self.good_items[1].itemdata[1]
	elseif #self.bad_items>0 then 
		iconitem=self.bad_items[1].itemdata[1]
	end
	local icon = iconitem and select(10,ZGV:GetItemInfo(iconitem))
	if not icon then self.needsRefresh=true end

	-- rate
	local rate = ("%s"):format(ZGV.GetMoneyString(self.profitperhour)).."/hr"

	-- times
	local isovertime
	if self.scale>=10 then 
		self.scale=10 
		isovertime=true 
	end

	local vendoronly
	if self.good_items and #self.good_items==0 then vendoronly=true end
	
	local h = floor(self.scale)
	local m = (self.scale-h)*60
	m=m-m%5 --trunc to 10
	if h>2 then m=nil end
	local disptime = (isovertime and "> " or "") .. (h>0 and h.."h" or "") .. (h>0 and m and " " or "") .. (m and (m .. "m") or "")
	if vendoronly then disptime="- " end

	local gold = ZGV.GetMoneyString(self.profitperhour*self.scale)
	local dispgold = vendoronly and "-" or ((isovertime and "> " or "") .. gold)

	self.cached_display={
		icon,
		self.display_name,
		self.maps,
		rate,
		disptime,
		dispgold
		}

	return unpack(self.cached_display)
end

function Farming:IsValidChore()
	if ZGV.db.profile.gmgoldallvalid then self.valid=true return true,"debug override" end

	self.valid=false
	if self.profitperhour<=0 then return false,"no profit" end
	if ZGV.db.profile.gold_farming_type~="all" and ZGV.db.profile.gold_farming_type~=self.meta.itemtype then return false,"type filter" end
	if (not ZGV.db.profile.gold_farming_mode and (#self.good_items<=0 or (self.scale and self.scale<Goldguide.TIER_DEMAND_MEDIUM))) then return false,"mode filter" end
	
	local query = string.lower(Goldguide.MainFrame.MenuFrame.SearchEdit:GetText())
	if query and query~="" then 
		if not string.match(string.lower(self.name), query) then return false,"name query" end
	end

	self.valid=true
	return true
end

function Farming.dynamic_sort(a,b)
	return Goldguide.dynamic_sort("farming",a,b, "time","zerolast", ZGV.db.profile.goldsort['farming'][1],ZGV.db.profile.goldsort['farming'][2], "dispgold","desc", "name","asc")
end

