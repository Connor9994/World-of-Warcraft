if not Auctioneer then return end

-- Create a new Auctioneer module.
local Module = Auctioneer:Module("Scanner")
local Const = Auctioneer.Const()

-- We will fire this off when we have items.
Const.ScannerItemsPush = Const:Iota()
Const.ScannerItemsCompleted = Const:Iota()

local progressFrame

-- Hook our method
function Module:Boot(hook)
	hook(Const.BrowseResultsAvailable, Module.BrowseResultsAvailable)
	hook(Const.ItemKeyInfoFound, Module.ItemKeyInfoFound)
	hook(Const.AuctionHouseOpened, Module.AuctionHouseOpened)
	hook(Const.AuctionHouseClosed, Module.AuctionHouseClosed)
	hook(Const.DisplayModeChanged, Module.DisplayModeChanged)

	Module:CreateProgress()
end

-- Our job:
--   When the browse page updates, step through all available items.
--   Collect the information for the items.
--   Trigger a statistic update when the results are processed.

function Module:BrowseResultsAvailable(type, results)
	-- We have some browse results here, so lets process them.
	self:Fetch(type, results)
end

function Module:ItemKeyInfoFound(itemID)
	-- We have some browse results here, so lets process them.
	self:Process(itemID)
end

function Module:AuctionHouseOpened()
	print("Welcome to Auctioneer, click the \"Search\" button to begin a scan")
	self:Reset()
end

function Module:AuctionHouseClosed()
	self:Push()
	self:Reset()
end

function Module:DisplayModeChanged(displayMode)
	if self.scanning and displayMode ~= AuctionHouseFrameDisplayMode.Buy then
		self:Push()
		self:Reset()
	end
end

-- Add the current browse results to our list and keep fetching more until we
-- have all the results loaded.
function Module:Fetch(type, results)
	if AuctionHouseFrame:GetDisplayMode() ~= AuctionHouseFrameDisplayMode.Buy then
		if self.scanning then
			self:Push()
			self:Reset()
		end
		return
	end

	if type == "updated" then
		self.scanning = true
		self.processing = false
		self.browseResults = C_AuctionHouse.GetBrowseResults()
		self.browseSize = 12000
		self:InvertedProgress(false)
	elseif not self.scanning then
		return
	else
		tAppendAll(self.browseResults, results)
	end

	local numResults = #self.browseResults
	if C_AuctionHouse.HasFullBrowseResults() then
		if numResults > 0 then
			self:InvertedProgress(true)
			self:SetProgress(0, ("Getting results: %d"):format(numResults))
			self.processing = true
			self.browsePosition = 1
			self.browseSize = numResults
			self.batchPosition = 0
			self.items = {}
			self:Next()
		end
		return
	end

	if numResults > self.browseSize - 1000 then
		self.browseSize = self.browseSize + 1000
	end

	self:SetProgress(numResults/self.browseSize * 100,
		("Getting results: %d"):format(numResults))

	C_AuctionHouse.RequestMoreBrowseResults()
end

-- Processes one item from the browseResults list.
function Module:Next()
	if not self.scanning or not self.processing then
		return
	end

	self:SetProgress(self.browsePosition / self.browseSize * 100,
		("Processing results: %d"):format(self.browsePosition))

	-- Batch load the next 50 items if we're in new waters.
	if self.batchPosition < self.browsePosition then
		for i=1,50 do
			if self.browsePosition + i < self.browseSize then
				local futureItem = self.browseResults[self.browsePosition + i]
				if futureItem and futureItem.itemKey then
					C_AuctionHouse.GetItemKeyInfo(futureItem.itemKey)
				end
			end
		end
		self.batchPosition = self.batchPosition + 50
	end

	local itemData = self.browseResults[self.browsePosition]
	--[[
	{ Name = "itemKey", Type = "ItemKey", Nilable = false },
	{ Name = "appearanceLink", Type = "string", Nilable = true },
	{ Name = "totalQuantity", Type = "number", Nilable = false },
	{ Name = "minPrice", Type = "number", Nilable = false },
	{ Name = "containsOwnerItem", Type = "bool", Nilable = false },
	]]

	if not itemData then
		-- We have reached the end
		self:SetProgress(100, "Finished")
		self:Push()
		return
	end

	self.processing = itemData
	self:Process()
end

-- Process the current item for our items.
function Module:Process(itemID)
	if not self.processing then
		return
	end

	local itemKey = self.processing.itemKey
	--[[
	{ Name = "itemID", Type = "number", Nilable = false },
	{ Name = "itemLevel", Type = "number", Nilable = false, Default = 0 },
	{ Name = "itemSuffix", Type = "number", Nilable = false, Default = 0 },
	{ Name = "battlePetSpeciesID", Type = "number", Nilable = false, Default = 0 },
	]]
	if not itemKey then
		return
	end

	local hasLevel = AuctioneerData.itemHasLevel[itemKey.itemID]
	if itemKey.itemLevel > 0 and hasLevel ~= 1 then
		AuctioneerData.itemHasLevel[itemKey.itemID] = 1
	elseif not hasLevel then
		AuctioneerData.itemHasLevel[itemKey.itemID] = 0
	end

	-- If we got an itemID in the call, check to make sure we process the same item.
	if itemID and itemID ~= itemKey.itemID then
		return
	end

	-- Check to see if the itemInfo is available.
	local itemInfo = C_AuctionHouse.GetItemKeyInfo(itemKey)
	--[[
		{ Name = "itemName", Type = "string", Nilable = false },
		{ Name = "battlePetLink", Type = "string", Nilable = true },
		{ Name = "quality", Type = "number", Nilable = false },
		{ Name = "iconFileID", Type = "number", Nilable = false },
		{ Name = "isPet", Type = "bool", Nilable = false },
		{ Name = "isCommodity", Type = "bool", Nilable = false },
		{ Name = "isEquipment", Type = "bool", Nilable = false },
	]]
	if not itemInfo then
		-- The information hasn't arrived yet, it will arrive eventually.
		return
	end

	-- Add the items.
	self:Add(itemKey, itemInfo, self.processing)

	-- Progress to the next item.
	self.browsePosition = self.browsePosition + 1
	self:Next()
end

-- Add the given item to the items.
function Module:Add(itemKey, itemInfo, itemData)
	local item = Auctioneer:Item{
		id = Auctioneer:ItemKeyKey(itemKey),
		itemKey = itemKey,
		itemInfo = itemInfo,
		itemData = itemData,
	}
	--[[
		item = {
			id: string,
			itemKey: { itemID, itemLevel, itemSuffix, battlePetSpeciesID },
			itemInfo: { itemName, battlePetLink, quality, iconFileID, isPet, isCommodity, isEquipment },
			itemData: { itemKey, appearanceLink, totalQuantity, minPrice, containsOwnerItem },
		}
	]]

	tinsert(self.items, item)
end

-- Collate the current items and push to the stats modules.
function Module:Push()
	if not self.items then
		return
	end

	self:InvertedProgress(false)
	self:SetProgress(0, "Sending items")
	local items = self.items
	self.processing = false
	self.items = false

	-- Push the items in chunks to the stats modules.
	coroutine.wrap(function ()
		local co = coroutine.running()
		local function resume() coroutine.resume(co) end

		local pos = 1
		local size = #items
		while pos < size do
			local to = pos + 49
			if to > size then
				to = size
			end

			local block = {unpack(items, pos, to)}
			Auctioneer:Trigger(Const.ScannerItemsPush, block)
			self:SetProgress(to / size * 100, ("Statistics: %d"):format(to))

			pos = to+1
			C_Timer.After(0.01, resume)
			coroutine.yield()
		end
		self:Reset()

		C_Timer.After(0.5, resume)
		coroutine.yield()

		Auctioneer:Trigger(Const.ScannerItemsCompleted, items)
	end)()
end

-- Reset state.
function Module:Reset()
	self.scanning = false
	self.processing = false
	self.items = false
	self:ClearProgress()
end

function Module:CreateProgress()
	progressFrame = CreateFrame("STATUSBAR", "AuctioneerScannerFrame", AuctionHouseFrame)
	progressFrame:SetPoint("BOTTOMRIGHT", AuctionHouseFrame, "TOPRIGHT")
	progressFrame:SetWidth(200)
	progressFrame:SetHeight(20)
	progressFrame:SetStatusBarTexture("Interface\\TARGETINGFRAME\\UI-StatusBar")
	progressFrame:GetStatusBarTexture():SetHorizTile(false)
	progressFrame:GetStatusBarTexture():SetVertTile(false)
	progressFrame:SetMinMaxValues(0, 100)
	progressFrame:Hide()

	progressFrame.bg = progressFrame:CreateTexture(nil, "BACKGROUND")
	progressFrame.bg:SetTexture("Interface\\TARGETINGFRAME\\UI-StatusBar")
	progressFrame.bg:SetAllPoints(true)

	progressFrame.value = progressFrame:CreateFontString(nil, "OVERLAY")
	progressFrame.value:SetPoint("LEFT", progressFrame, "LEFT", 4, 0)
	progressFrame.value:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	progressFrame.value:SetJustifyH("LEFT")
	progressFrame.value:SetTextColor(0.6, 0.6, 0.6)

	progressFrame.Set = Module.SetProgress
	progressFrame.Clear = Module.ClearProgress
	progressFrame.Inverted = Module.InvertedProgress

	self:InvertedProgress(false)
end

function Module:InvertedProgress(invert)
	if invert then
		progressFrame:SetStatusBarColor(0.1, 0.1, 0.1)
		progressFrame.bg:SetVertexColor(0, 0.35, 0.65)
	else
		progressFrame:SetStatusBarColor(0, 0.35, 0.65)
		progressFrame.bg:SetVertexColor(0.1, 0.1, 0.1)
	end
	progressFrame.invert = invert
end

function Module:SetProgress(percent, text)
	progressFrame:Show()
	progressFrame:SetValue(percent)
	progressFrame.value:SetText(text)
end

function Module:ClearProgress()
	progressFrame:Hide()
end
