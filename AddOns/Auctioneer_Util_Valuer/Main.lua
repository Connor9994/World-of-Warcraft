if not Auctioneer then return end

-- Create a new Auctioneer module.
local Module = Auctioneer:Module("Util:Valuer")
local Const = Auctioneer.Const()

local valuerFrame
local gui = Auctioneer.GUI

-- Hook our methods
function Module:Boot(hook)
	hook(Const.DisplayModeChanged, Module.DisplayModeChanged)
	hook(Const.SellItemLoaded, Module.SellItemLoaded)
	Module:CreateFrame()
end

if not AuctioneerUtilValuerData then
	AuctioneerUtilValuerData = {}
end

function Module:DisplayModeChanged(displayMode)
	if displayMode ~= AuctionHouseFrameDisplayMode.ItemSell and
	displayMode ~= AuctionHouseFrameDisplayMode.CommoditiesSell then
		self:Hide()
	end
end

function Module:SellItemLoaded(itemType, itemLocation)
	if not itemType or not itemLocation then
		self:Hide()
		return
	end

	local itemKey = C_AuctionHouse.GetItemKeyFromItem(itemLocation)
	if not itemKey then
		self:Hide()
		return
	end

	local item = Auctioneer:Item{
		itemKey = itemKey,
		itemLocation = itemLocation
	}

	local info = item:Info()

	local detail = valuerFrame.detail
	self:ShowFrame(detail)

	-- Remove all current lines back into the frame pool.
	local lines = detail.lines
	lines:Free()

	-- Add lines.
	local line = lines:AddSingleLine(14, "CENTER")
	line:Set("|c"..info.color..info.name.."|r")

	local id = item:ID()
	line = lines:AddDoubleLine()
	line:Set("Auctioneer StatID", id)

	local stats = Auctioneer:Statistics(id)
	for _, stat in ipairs(stats) do
		line = lines:AddSingleLine()
		line:Set(format("%s statistics:", stat.name))

		line = lines:AddMoneyLine()
		local best, number, method = stat:Best()
		line:Set(format(" - %s", method), best)

		local min, exact = stat:Minimum()
		if exact and min == exact and method ~= "minimum" then
			line = lines:AddMoneyLine()
			line:Set(" - minimum", min)
		end

		local max, exact = stat:Maximum()
		if exact and max == exact and method ~= "maximum" then
			line = lines:AddMoneyLine()
			line:Set(" - maximum", max)
		end

		local pct = stat:Percentile(10)
		if pct then
			line = lines:AddMoneyLine()
			line:Set(" - 10th percentile", pct)
		end

		line = lines:AddDoubleLine()
		line:Set(" - data points", "x"..number)
	end
end

function Module:CreateFrame()
	valuerFrame = CreateFrame("Frame", "AuctioneerDealFinderFrame", AuctionHouseFrame, "SimplePanelTemplate")
	valuerFrame:SetPoint("TOPLEFT", AuctionHouseFrame, "TOPRIGHT", -2, -20)
	valuerFrame:SetPoint("BOTTOMLEFT", AuctionHouseFrame, "BOTTOMRIGHT", -2, 5)
	valuerFrame:SetWidth(320)
	valuerFrame.frames = {}

	local inset = valuerFrame.Inset

	local close = CreateFrame("Button", nil, valuerFrame, "UIPanelCloseButton")
	close:SetPoint("TOPRIGHT", valuerFrame, "TOPRIGHT")
	close:SetWidth(32)
	close:SetHeight(32)
	valuerFrame.close = close

	local title = valuerFrame:CreateFontString(nil, "OVERLAY")
	title:SetPoint("BOTTOM", inset, "TOP", 0, 3)
	title:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	title:SetJustifyH("LEFT")
	title:SetTextColor(1, 0.8, 0)
	title:SetText("Valuer")

	local bg = inset.Bg
	bg:SetVertTile(false)
	bg:SetHorizTile(false)
	bg:SetAtlas("auctionhouse-background-buy-commodities-market", true)

	local detail = CreateFrame("Frame", nil, inset)
	detail:SetPoint("TOPLEFT", inset, "TOPLEFT", 5, -5)
	detail:SetPoint("BOTTOMRIGHT", inset, "BOTTOMRIGHT", -5, 5)
	valuerFrame.detail = detail
	tinsert(valuerFrame.frames, detail)

	-- GUI:Lines() is like a tooltip, you add lines to it. Then when done, :Free()
	local lines = Auctioneer.GUI:Lines(detail)
	detail.lines = lines

	valuerFrame:Hide()
end

function Module:Reset()
end

function Module:ShowFrame(show)
	valuerFrame:Show()
	for _, frame in ipairs(valuerFrame.frames) do
		if frame == show then
			frame:Show()
		else
			frame:Hide()
		end
	end
end

function Module:Hide()
	valuerFrame:Hide()
end
