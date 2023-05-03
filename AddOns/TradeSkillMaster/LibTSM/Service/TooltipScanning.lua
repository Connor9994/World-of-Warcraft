-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local TooltipScanning = TSM.Init("Service.TooltipScanning") ---@class Service.TooltipScanning
local Environment = TSM.Include("Environment")
local ItemString = TSM.Include("Util.ItemString")
local Container = TSM.Include("Util.Container")
local private = {
	tooltip = nil
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function TooltipScanning.IsSoulbound(bag, slot)
	local itemId = Container.GetItemId(bag, slot)
	if not itemId then
		-- No item in this slot
		return true, false, false
	elseif itemId == ItemString.ToId(ItemString.GetPetCage()) then
		-- Battle pets are never soulbound
		return true, false, false
	end

	local info = private.SetContainerItem(bag, slot)
	if not Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) and private.tooltip:NumLines() < 1 then
		-- The tooltip didn't fully load yet
		return false, nil, nil
	end

	local isBOP, isBOA = false, false
	for i, text in private.TooltipLineIterator(info) do
		if text == PROFESSIONS_MODIFIED_CRAFTING_REAGENT_BASIC then
			break
		elseif (text == ITEM_BIND_ON_PICKUP and i < 4) or text == ITEM_SOULBOUND or text == ITEM_BIND_QUEST then
			isBOP = true
			break
		elseif (text == ITEM_ACCOUNTBOUND or text == ITEM_BIND_TO_ACCOUNT or text == ITEM_BIND_TO_BNETACCOUNT or text == ITEM_BNETACCOUNTBOUND) then
			isBOA = true
			break
		end
	end

	return true, isBOP, isBOA
end

function TooltipScanning.HasUsedCharges(bag, slot)
	assert(not Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO))
	local itemId = Container.GetItemId(bag, slot)
	if not itemId then
		-- No item in this slot
		return false
	elseif itemId == ItemString.ToId(ItemString.GetPetCage()) then
		-- Battle pets never have charges
		return false
	end

	-- Check if the item has max charges
	local info = private.SetItemId(itemId)
	local maxCharges = private.ScanTooltipCharges(info)
	if not maxCharges then
		return false
	end

	-- Check if there are used charges on the container item
	info = private.SetContainerItem(bag, slot)
	if maxCharges and private.ScanTooltipCharges(info) ~= maxCharges then
		return true
	end
	return false
end

function TooltipScanning.GetInboxMaxUnique(index, num)
	num = num or 1

	local speciesId, info = nil, nil
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
		info = private.SetInboxItem(index, num)
		speciesId = info.battlePetSpeciesID
	else
		speciesId = private.SetInboxItem(index, num)
	end
	if speciesId and speciesId > 0 then
		-- No max for battle pets
		return 0
	end

	for _, text in private.TooltipLineIterator(info) do
		if text == PROFESSIONS_MODIFIED_CRAFTING_REAGENT_BASIC then
			return 0
		elseif text == ITEM_UNIQUE then
			return 1
		else
			local match = strmatch(text, "^"..ITEM_UNIQUE.." %((%d+)%)$")
			if match then
				return tonumber(match)
			end
		end
	end

	return 0
end

function TooltipScanning.GetInboxBattlePetInfo(index, attachIndex)
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
		local info = private.SetInboxItem(index, attachIndex)
		return info.battlePetSpeciesID, info.battlePetLevel, info.battlePetBreedQuality
	else
		return private.SetInboxItem(index, attachIndex)
	end
end

function TooltipScanning.GetBuildBankBattlePetInfo(tab, slot)
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
		local info = private.SetGuildBankItem(tab, slot)
		if not info then
			return nil, nil, nil
		end
		return info.battlePetSpeciesID, info.battlePetLevel, info.battlePetBreedQuality
	else
		return private.SetGuildBankItem(tab, slot)
	end
end




-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SetContainerItem(bag, slot)
	private.PrepareTooltip()
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
		local info = nil
		if bag == BANK_CONTAINER then
			info = C_TooltipInfo.GetInventoryItem("player", BankButtonIDToInvSlotID(slot), true)
		elseif bag == REAGENTBANK_CONTAINER then
			info = C_TooltipInfo.GetInventoryItem("player", ReagentBankButtonIDToInvSlotID(slot), true)
		else
			info = C_TooltipInfo.GetBagItem(bag, slot)
		end
		TooltipUtil.SurfaceArgs(info)
		return info
	else
		if bag == BANK_CONTAINER then
			private.tooltip:SetInventoryItem("player", BankButtonIDToInvSlotID(slot))
		elseif bag == REAGENTBANK_CONTAINER then
			private.tooltip:SetInventoryItem("player", ReagentBankButtonIDToInvSlotID(slot))
		else
			private.tooltip:SetBagItem(bag, slot)
		end
	end
end

function private.SetItemId(itemId)
	private.PrepareTooltip()
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
		local info =  C_TooltipInfo.GetItemByID(itemId)
		TooltipUtil.SurfaceArgs(info)
		return info
	else
		private.tooltip:SetItemByID(itemId)
	end
end

function private.SetInboxItem(index, attachIndex)
	private.PrepareTooltip()
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
		local info = C_TooltipInfo.GetInboxItem(index, attachIndex)
		TooltipUtil.SurfaceArgs(info)
		return info
	else
		return select(2, private.tooltip:SetInboxItem(index, attachIndex))
	end
end

function private.SetGuildBankItem(tab, slot)
	private.PrepareTooltip()
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
		local info = C_TooltipInfo.GetGuildBankItem(tab, slot)
		if not info then
			return nil
		end
		TooltipUtil.SurfaceArgs(info)
		return info
	else
		return private.tooltip:SetGuildBankItem(tab, slot)
	end
end

function private.PrepareTooltip()
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
		return
	end
	private.tooltip = private.tooltip or CreateFrame("GameTooltip", "TSMScanTooltip", UIParent, "GameTooltipTemplate")
	private.tooltip:SetOwner(UIParent, "ANCHOR_NONE")
	private.tooltip:ClearLines()
end

function private.ScanTooltipCharges(info)
	for _, text in private.TooltipLineIterator(info) do
		if text == PROFESSIONS_MODIFIED_CRAFTING_REAGENT_BASIC then
			return false
		end
		local num = strmatch(text, "%d+")
		local chargesStr = gsub(ITEM_SPELL_CHARGES, "%%d", "%%d+")
		if strfind(chargesStr, ":") then
			if num == 1 then
				chargesStr = gsub(chargesStr, "\1244(.+):.+;", "%1")
			else
				chargesStr = gsub(chargesStr, "\1244.+:(.+);", "%1")
			end
		end
		local maxCharges = strmatch(text, "^"..chargesStr.."$")
		if maxCharges then
			return maxCharges
		end
	end
	return false
end

function private.TooltipLineIterator(info)
	if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
		assert(info)
		return private.TooltipLineIteratorHelper, info, 1
	else
		assert(not info)
		return private.TooltipLineIteratorHelper, nil, 1
	end
end

function private.TooltipLineIteratorHelper(info, index)
	while true do
		index = index + 1
		local numLines = Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) and #info.lines or private.tooltip:NumLines()
		if index > numLines then
			return
		end
		local text = nil
		if Environment.HasFeature(Environment.FEATURES.C_TOOLTIP_INFO) then
			TooltipUtil.SurfaceArgs(info.lines[index])
			text = info.lines[index].leftText
		else
			local tooltipText = _G["TSMScanTooltipTextLeft"..index]
			text = strtrim(tooltipText and tooltipText:GetText() or "")
		end
		if text and text ~= "" then
			return index, text
		end
	end
end
