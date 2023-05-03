local Const = Auctioneer:Boot("Const")
local iota = 0

-- Call to get a unique ID for your own module's events.
function Const:Iota()
	iota = iota + 1
	return iota
end

-- Get the name of the constant.
function Const:Name(id)
	for k, v in pairs(self) do
		if type(v) == 'number' and v == id then
			return k
		end
	end
end

-- These are not trigger events, they are to define when you want a module to
-- load when you create it, so they are placed here instead.
Const.BootType = {
	PlayerEnteringWorld = Const:Iota(),
	AuctionHouseLoaded = Const:Iota(),
}

-- Trigger events can be found in Const.Trigger.NAME and also at Const.NAME.
Const.Trigger = {}
function Const.Trigger:Add(name)
	self[name] = Const:Iota()

	-- Declare it at the root level also for ease of use.
	if not Const[name] then
		Const[name] = self[name]
	end
end

-- Fired when the AH opens or closes.
Const.Trigger:Add("AuctionHouseOpened")
Const.Trigger:Add("AuctionHouseClosed")

-- Events from AH.
Const.Trigger:Add("DisplayModeChanged")
Const.Trigger:Add("SellItemLoaded")
Const.Trigger:Add("ReplicateItemsAvaliable")
Const.Trigger:Add("BrowseResultsAvailable")
Const.Trigger:Add("SearchResultsAvaliable")
Const.Trigger:Add("ItemKeyInfoFound")

-- Other events.
Const.Trigger:Add("DisplayTooltip")
Const.Trigger:Add("InboxHeaderInfo")
