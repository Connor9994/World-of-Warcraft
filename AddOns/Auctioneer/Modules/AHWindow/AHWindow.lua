if not Auctioneer then return end

-- Create a new Auctioneer module.
local Module = Auctioneer:Module("AHWindow")
local Const = Auctioneer:Const()

-- Hook our methods.
function Module:Boot(hook)
	hook(Const.AuctionHouseOpened, Module.AuctionHouseOpened)
end

local function OnMouseDown(frame)
	frame:StartMoving()
end

local function OnMouseUp(frame)
	frame:StopMovingOrSizing()
end

function Module:AuctionHouseOpened()
	if AuctionHouseFrame and not AuctionHouseFrame.Auctioneered then
		AuctionHouseFrame.Auctioneered = true
		AuctionHouseFrame:SetMovable(true)
		AuctionHouseFrame:SetClampedToScreen(true)
		AuctionHouseFrame:SetScript("OnMouseDown", OnMouseDown)
		AuctionHouseFrame:SetScript("OnMouseUp", OnMouseUp)
	end
end
