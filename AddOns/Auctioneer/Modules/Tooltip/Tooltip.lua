if not Auctioneer then return end

-- Create a new Auctioneer module.
local Module = Auctioneer:Module("Tooltip")
local Const = Auctioneer:Const()
Module.bootType = Const.BootType.PlayerEnteringWorld

-- Hook our methods.
function Module:Boot(hook)
	hook(Const.DisplayTooltip, Module.DisplayTooltip)
end

function Module:DisplayTooltip(type, tooltip, tip, ...)
	local link, quantity, name, quality
	if type == "item" then
		_, quantity, name, link, quality = ...
	elseif type == "battlepet" then
		link, quantity, name, _, breedQuality = ...
	else
		return
	end

	tooltip:SetFrame(tip)
	local additional = tooltip:GetExtra()
	quantity = tonumber(quantity) or 1

	tooltip:SetColor(0.3, 0.9, 0.8)
	tooltip:SetMoneyAsText(false)
	tooltip:SetEmbed(false)

	local itemKey

	if additional.event == "SetItemKey" then
		itemKey = C_AuctionHouse.MakeItemKey(additional.eventItemID, additional.eventItemLevel or 0, additional.EventItemSuffix or 0, 0)
	elseif additional.event == "SetBagItem" then
		local location = ItemLocation:CreateFromBagAndSlot(additional.eventContainer, additional.eventIndex)
		itemKey = C_AuctionHouse.GetItemKeyFromItem(location)
	elseif additional.event == "SetInventoryItem" and additional.eventUnit == "player" then
		local location = ItemLocation:CreateFromEquipmentSlot(additional.eventIndex)
		itemKey = C_AuctionHouse.GetItemKeyFromItem(location)
	else
		if tip.GetOwner then
			local owner = tip:GetOwner()
			if owner.GetItemKey then
				itemKey = owner:GetItemKey()
			elseif owner.GetItemLocation then
				local location = owner:GetItemLocation()
				if location then
					itemKey = C_AuctionHouse.GetItemKeyFromItem(location)
				end
			end
		end

		if not itemKey then
			itemKey = Auctioneer:ItemKeyFromLink(link)
		end
	end

	if not AuctioneerData.itemHasLevel[itemKey.itemID] then
		-- We have never even seen this item
		tooltip:AddLine("Never seen at auction")
	else
		local key = Auctioneer:ItemKeyKey(itemKey)

		local stats = Auctioneer:Statistics(key)

		local header = "Statistics:"
		for _, stat in ipairs(stats) do
			local best, number, method = stat:Best()

			if best and number > 0 and best > 0 then
				if IsShiftKeyDown() then
					tooltip:AddLine(format("%s statistics:", stat.name))

					tooltip:AddLine(format(" - %s", method), best)

					local min, exact = stat:Minimum()
					if exact and min == exact and method ~= "minimum" then
						tooltip:AddLine(" - minimum", min)
					end

					local max, exact = stat:Maximum()
					if exact and max == exact and method ~= "maximum" then
						tooltip:AddLine(" - maximum", max)
					end

					local pct = stat:Percentile(10)
					if pct then
						tooltip:AddLine(" - 10th percentile", pct)
					end

					tooltip:AddLine(" - data points", "x"..number)
				else
					if header then
						tooltip:AddLine(header)
					end

					tooltip:AddLine(format("  %s %s (%d)", stat.name, method, number), best)
				end
				header = false
			end
		end

		if header then
			tooltip:AddLine("No statistics for this variant")
		end
	end

	tooltip:ClearFrame(tip)
end
