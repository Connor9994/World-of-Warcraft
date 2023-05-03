local Internal = Auctioneer:Boot("Internal")
local Const = Auctioneer:Const()

local frame = Internal._:Frame()

Internal.hookEvents = {
	'AUCTION_CANCELED',
	'AUCTION_HOUSE_BROWSE_RESULTS_ADDED',
	'AUCTION_HOUSE_BROWSE_RESULTS_UPDATED',
	'AUCTION_HOUSE_CLOSED',
	'AUCTION_HOUSE_DISABLED',
	'AUCTION_HOUSE_FAVORITES_UPDATED',
	'AUCTION_HOUSE_SCRIPT_DEPRECATED',
	-- 'AUCTION_HOUSE_SHOW', -- Already registered, and don't want to unregister.
	'AUCTION_MULTISELL_FAILURE',
	'AUCTION_MULTISELL_START',
	'AUCTION_MULTISELL_UPDATE',
	'BID_ADDED',
	'BIDS_UPDATED',
	'COMMODITY_PRICE_UNAVAILABLE',
	'COMMODITY_PRICE_UPDATED',
	'COMMODITY_PURCHASE_FAILED',
	'COMMODITY_PURCHASE_SUCCEEDED',
	'COMMODITY_PURCHASED',
	'COMMODITY_SEARCH_RESULTS_ADDED',
	'COMMODITY_SEARCH_RESULTS_UPDATED',
	'EXTRA_BROWSE_INFO_RECEIVED',
	'ITEM_KEY_ITEM_INFO_RECEIVED',
	'ITEM_PURCHASED',
	'ITEM_SEARCH_RESULTS_ADDED',
	'ITEM_SEARCH_RESULTS_UPDATED',
	'OWNED_AUCTIONS_UPDATED',
	'REPLICATE_ITEM_LIST_UPDATE',
}

Internal.sortOrder = {
	{
		sortOrder = Enum.AuctionHouseSortOrder.Price,
		reverseSort = false
	},
	{
		sortOrder = Enum.AuctionHouseSortOrder.Name,
		reverseSort = false
	}
}

Internal.modules = {}

-- Basic method to present an object as text.
function Internal:Dump(o)
	if type(o) == 'table' then
		local s = '{ '
		for k,v in pairs(o) do
			if type(k) == 'table' then
				k = '<table:'..Internal:Dump(k)..'>'
			elseif type(k) ~= 'number' then
				k = '"'..k..'"'
			end
			s = s .. '['..k..'] = ' .. Internal:Dump(v) .. ','
		end
		return s .. '} '
	else
		return tostring(o)
	end
end

-- Same as Dump, but only one level and only keys.
function Internal:DumpOne(o)
	if type(o) == 'table' then
		local s = '{'
		for k in pairs(o) do
			if type(k) == 'table' then
				k = '<table>'
			elseif type(k) ~= 'number' then
				k = '"'..k..'"'
			end
			s = s .. '['..k..'], '
		end
		return s .. '} '
	else
		return tostring(o)
	end
end

-- Create a basic copy of the provided object.
function Internal:Copy(what)
	local copy = {}
	for k, v in pairs(what) do
		copy[k] = v
	end
	return copy
end

-- Add the module to our list.
function Internal:Add(module)
	tinsert(self.modules, module)
end

-- Called when the player enters the world.
function Internal:PlayerEnteringWorld()
	frame:UnregisterEvent("PLAYER_ENTERING_WORLD")

	self:HookTooltip()
	self:HookInbox()

	self:BootModules(Const.BootType.PlayerEnteringWorld)
end

-- Called when the AH is opened.
function Internal:AuctionHouseLoaded()
	self.ahLoaded = true

	self:HookDisplayMode()
	self:HookSellFrame()

	self:BootModules(Const.BootType.AuctionHouseLoaded)
end

-- Called when we get an event that indicates the AH may have opened.
function Internal:AuctionHouseOpened()
	if self.isOpen then
		return
	end
	self.isOpen = true

	if not self.ahLoaded then
		self:AuctionHouseLoaded()
	end

	for _, event in pairs(self.hookEvents) do
		--print("Registering for event", event)
		frame:RegisterEvent(event)
	end

	Auctioneer:Trigger(Const.AuctionHouseOpened)
end

-- Called when we get an event that indicates the AH may have closed.
function Internal:AuctionHouseClosed()
	if not self.isOpen then
		return
	end
	self.isOpen = false

	for _, event in pairs(self.hookEvents) do
		--print("Unregistering for event", event)
		frame:UnregisterEvent(event)
	end

	Auctioneer:Trigger(Const.AuctionHouseClosed)
end

-- Handler for any Auctioneer registered events.
function Internal:OnEvent(event, ...)
	--print("Caught event", event, ...)

	local handler = Internal._.Handlers[event]

	if handler then
		-- Call handler method with self = Auctioneer.
		handler(Auctioneer, ...)
	end
end

function Internal:ItemKeyString(itemKey)
	if itemKey.battlePetSpeciesID ~= 0 then
		return format(
			"battlepet:%d",
			itemKey.battlePetSpeciesID
		)
	end

	return format(
		"item:%d::::::%d::%d",
		itemKey.itemID,
		itemKey.itemSuffix,
		itemKey.itemLevel
	)
end

function Internal:ItemKeyFromLink(link)
	local linkType, linkOptions, name = LinkUtil.ExtractLink(link)
	local linkBits = {strsplit(":", linkOptions)}

	if linkType == "battlepet" then
		-- 82800 is a cage.
		local cageID = 82800
		local speciesID = tonumber(linkBits[1])
		return C_AuctionHouse.MakeItemKey(cageID, 0, 0, speciesID)
	end

	if linkType == "item" then
		local itemID = tonumber(linkBits[1])
		local itemSuffix = tonumber(linkBits[7]) or 0
		local itemLevel = 0
		if AuctioneerData.itemHasLevel[itemID] == 1 then
			itemLevel = GetDetailedItemLevelInfo(link)
		end

		return C_AuctionHouse.MakeItemKey(itemID, itemLevel, itemSuffix, 0)
	end
end

function Internal:ItemKeyKey(itemKey)
	if not itemKey or not itemKey.itemID then
		return nil
	end

	if itemKey.battlePetSpeciesID ~= 0 then
		if itemKey.itemLevel == 0 and itemKey.itemSuffix == 0 then
			if itemKey.itemID == 82800 then
				-- 82800 is a cage.
				return format(":::%d", itemKey.battlePetSpeciesID)
			end

			return format(
				"%d:::%d",
				itemKey.itemID,
				itemKey.battlePetSpeciesID
			)
		end

		return format(
			"%d:%d:%d:%d",
			itemKey.itemID,
			itemKey.itemLevel,
			itemKey.itemSuffix,
			itemKey.battlePetSpeciesID
		)
	end

	if itemKey.itemSuffix ~= 0 then
		if itemKey.itemLevel == 0 then
			return format(
				"%d::%d",
				itemKey.itemID,
				itemKey.itemSuffix
			)
		end

		return format(
			"%d:%d:%d",
			itemKey.itemID,
			itemKey.itemLevel,
			itemKey.itemSuffix
		)
	end

	if itemKey.itemLevel ~= 0 then
		return format(
			"%d:%d",
			itemKey.itemID,
			itemKey.itemLevel
		)
	end

	return format("%d", itemKey.itemID)
end

function Internal:ItemKeyFromString(itemKeyString)
	local parts = itemKeyString:split(":")

	local itemID, itemLevel, itemSuffix, battlePetSpeciesID = 0, 0, 0, 0

	if #parts > 3 then
		battlePetSpeciesID = tonumber(parts[4])
	end
	if #parts > 2 then
		itemSuffix = tonumber(parts[3])
	end
	if #parts > 1 then
		itemLevel = tonumber(parts[2])
	end
	itemID = tonumber(parts[1])

	return C_AuctionHouse.MakeItemKey(itemID, itemLevel, itemSuffix, battlePetSpeciesID)
end

function Internal:ItemLinkBreakdown(itemLink)
	local parts = select(2, LinkUtil.ExtractLink(link))

	local itemID, enchantID, gemID1, gemID2, gemID3, gemID4,
		suffixID, uniqueID, linkLevel, specializationID, upgradeTypeID,
		instanceDifficultyID, numBonusIDs = strsplit(":", parts)

	local tempString, unknown1, unknown2, unknown3 = strmatch(parts,
		"[-%d]-:[-%d]-:[-%d]-:[-%d]-:[-%d]-:[-%d]-:[-%d]-:[-%d]-:[-%d]-:[-%d]-:[-%d]-:[-%d]-:[-%d]-:([-:%d]+):([-%d]-):([-%d]-):([-%d]-)")

	local bonusIDs, upgradeValue
	if upgradeTypeID and upgradeTypeID ~= "" then
		upgradeValue = tempString:match("[-:%d]+:([-%d]+)")
		bonusIDs = tempString:match("([-:%d]+):")
	else
		bonusIDs = strsplit(":", tempString)
	end

	return {
		itemID = itemID,
		enchantID = enchantID,
		gemID1 = gemID1,
		gemID2 = gemID2,
		gemID3 = gemID3,
		gemID4 = gemID4,
		suffixID = suffixID,
		uniqueID = uniqueID,
		linkLevel = linkLevel,
		specializationID = specializationID,
		upgradeTypeID = upgradeTypeID,
		instanceDifficultyID = instanceDifficultyID,
		numBonusIDs = numBonusIDs,
		upgradeValue = upgradeValue,
		bonusIDs = bonusIDs,
	}
end

function Internal:HookTooltip()
	local tooltip = Internal.libs.TipHelper

	tooltip:Activate()

	tooltip:AddCallback({type = "item", callback = function(...)
		Auctioneer:Trigger(Const.DisplayTooltip, "item", tooltip, ...)
	end}, 600)

	tooltip:AddCallback({type = "battlepet", callback = function(...)
		Auctioneer:Trigger(Const.DisplayTooltip, "battlepet", tooltip, ...)
	end}, 600)
end

function Internal:HookInbox()
	local _GetInboxHeaderInfo = GetInboxHeaderInfo
	local function inboxHeaderInfo(index)
		--print("inboxHeaderInfo", index, sender, subject)
		local icon, stationary, sender, subject, money, cod, daysLeft, itemCount, wasRead, wasReturned, textCreated, canReply, gm, itemQuantity, itemLink  = _GetInboxHeaderInfo(index);
		Auctioneer:Trigger(Const.InboxHeaderInfo, {
			icon = icon,
			stationary = stationary,
			sender = sender,
			subject = subject,
			money = money,
			cod = cod,
			daysLeft = daysLeft,
			itemCount = itemCount,
			wasRead = wasRead,
			wasReturned = wasReturned,
			textCreated = textCreated,
			canReply = canReply,
			gm = gm,
			itemQuantity = itemQuantity,
			itemLink = itemLink,
		})
	end
	hooksecurefunc("GetInboxHeaderInfo", inboxHeaderInfo)
end

function Internal:HookDisplayMode()
	local function displayModeChanged(_, displayMode)
		if displayMode ~= self.displayMode then
			self.displayMode = displayMode
			Auctioneer:Trigger(Const.DisplayModeChanged, displayMode)
		end
	end
	hooksecurefunc(AuctionHouseFrame, "SetDisplayMode", displayModeChanged)
end

function Internal:HookSellFrame()
	local function sellItemLoaded(f, itemLocation)
		if itemLocation == nil then
			if self.sellLocation ~= itemLocation then
				Auctioneer:Trigger(Const.SellItemLoaded, nil)
			end

			self.sellLocation = itemLocation
			return
		end

		local itemType
		if f == AuctionHouseFrame.CommoditiesSellFrame then
			itemType = AuctionHouseSearchContext.SellCommodities
		else
			itemType = AuctionHouseSearchContext.SellItems
		end

		if self.sellLocation ~= itemLocation then
			Auctioneer:Trigger(Const.SellItemLoaded, itemType, itemLocation)
		end
		self.sellLocation = itemLocation
	end
	hooksecurefunc(AuctionHouseFrame.CommoditiesSellFrame, "SetItem", sellItemLoaded)
	hooksecurefunc(AuctionHouseFrame.ItemSellFrame, "SetItem", sellItemLoaded)
end

function Internal:BootModules(bootType)
	local modulesBooted = {}
	local unresolved = -1
	local loopCount = 0
	while unresolved ~= 0 do
		local waiting = {}
		local prior = unresolved
		unresolved = 0
		loopCount = loopCount + 1

		for _, module in ipairs(self.modules) do
			if not modulesBooted[module.name] and module.bootType == bootType then
				local unmetDeps = false
				for _, dep in ipairs(module.deps) do
					if not modulesBooted[dep] then
						unmetDeps = true
						local wait = module.name.." waiting on "..dep
						tinsert(waiting, wait)
						break
					end
				end

				if not unmetDeps then
					if module.Boot then
						module:Boot(function (event, method)
							if not event then
								error("No event supplied to module:Hook for module "..module.name)
							end
							if not method then
								error("No method supplied to module:Hook for module "..module.name)
							end
							module.hooks[event] = method
						end)
					end
					modulesBooted[module.name] = true
				else
					unresolved = unresolved + 1
				end
			end
		end

		if unresolved == prior then
			print("Auctioneer: Failed to resolve", unresolved, "module dependencies:")
			for _, wait in ipairs(waiting) do
				print(" -", wait)
			end
		end

		if loopCount > 20 then
			break
		end
	end
end
