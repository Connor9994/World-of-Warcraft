local Handlers = Auctioneer:Boot("Handlers")
local Const = Auctioneer:Const()

-- These handlers will process events from the Auctioneer frame when those
-- events get triggered.
-- Handler methods get called with self == Auctioneer.

function Handlers:ADDON_LOADED(event, addon)
	if addon == 'Blizzard_AuctionHouseUI' then
		Handlers._.Internal:AuctionHouseOpened()
	end
end

function Handlers:PLAYER_ENTERING_WORLD()
	Handlers._.Internal:PlayerEnteringWorld()
end

function Handlers:AUCTION_HOUSE_SHOW()
	Handlers._.Internal:AuctionHouseOpened()
end

function Handlers:AUCTION_HOUSE_CLOSED()
	Handlers._.Internal:AuctionHouseClosed()
end

function Handlers:REPLICATE_ITEM_LIST_UPDATE(...)
	self:Trigger(Const.ReplicateItemsAvaliable, ...)
end

function Handlers:AUCTION_HOUSE_BROWSE_RESULTS_ADDED(...)
	self:Trigger(Const.BrowseResultsAvailable, "added", ...)
end

function Handlers:AUCTION_HOUSE_BROWSE_RESULTS_UPDATED(...)
	self:Trigger(Const.BrowseResultsAvailable, "updated", ...)
end

function Handlers:ITEM_SEARCH_RESULTS_ADDED(...)
	self:Trigger(Const.SearchResultsAvaliable, "added", ...)
end

function Handlers:ITEM_SEARCH_RESULTS_UPDATED(...)
	self:Trigger(Const.SearchResultsAvaliable, "updated", ...)
end

function Handlers:ITEM_KEY_ITEM_INFO_RECEIVED(...)
	self:Trigger(Const.ItemKeyInfoFound, ...)
end
