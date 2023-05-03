-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Mailing = TSM.Operations:NewPackage("Mailing")
local L = TSM.Include("Locale").GetTable()
local Wow = TSM.Include("Util.Wow")
local AltTracking = TSM.Include("Service.AltTracking")
local PlayerInfo = TSM.Include("Service.PlayerInfo")
local private = {}
local OPERATION_INFO = {
	maxQtyEnabled = { type = "boolean", default = false },
	maxQty = { type = "number", default = 10 },
	target = { type = "string", default = "" },
	restock = { type = "boolean", default = false },
	restockSources = { type = "table", default = { guild = false, bank = false } },
	keepQty = { type = "number", default = 0 },
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Mailing.OnInitialize()
	TSM.Operations.Register("Mailing", L["Mailing"], OPERATION_INFO, 50, private.GetOperationInfo)
end


function Mailing.TargetShortfallGetNumToBags(itemString, numHave)
	local totalNumToSend = 0
	for _, _, operationSettings in TSM.Operations.GroupOperationIterator("Mailing", TSM.Groups.GetPathByItem(itemString)) do
		local numAvailable = numHave - operationSettings.keepQty
		local numToSend = 0
		if numAvailable > 0 then
			if operationSettings.maxQtyEnabled then
				if operationSettings.restock then
					local targetQty = private.GetTargetQuantity(operationSettings.target, itemString, operationSettings.restockSources)
					if PlayerInfo.IsPlayer(operationSettings.target) and targetQty <= operationSettings.maxQty then
						numToSend = numAvailable
					else
						numToSend = min(numAvailable, operationSettings.maxQty - targetQty)
					end
					if PlayerInfo.IsPlayer(operationSettings.target) then
						-- if using restock and target == player ensure that subsequent operations don't take reserved bag inventory
						numHave = numHave - max((numAvailable - (targetQty - operationSettings.maxQty)), 0)
					end
				else
					numToSend = min(numAvailable, operationSettings.maxQty)
				end
			else
				numToSend = numAvailable
			end
		end
		totalNumToSend = totalNumToSend + numToSend
		numHave = numHave - numToSend
	end
	return totalNumToSend
end

function Mailing.GetNumToSend(itemString, operationSettings, numAvailable)
	if numAvailable <= 0 then
		return 0
	end
	local numToSend = 0
	local isTargetPlayer = PlayerInfo.IsPlayer(operationSettings.target)
	if operationSettings.maxQtyEnabled then
		if operationSettings.restock then
			local targetQty = private.GetTargetQuantity(operationSettings.target, itemString, operationSettings.restockSources)
			if isTargetPlayer and targetQty <= operationSettings.maxQty then
				numToSend = numAvailable
			else
				numToSend = min(numAvailable, operationSettings.maxQty - targetQty)
			end
			if isTargetPlayer then
				numToSend = numAvailable - (targetQty - operationSettings.maxQty)
			end
		else
			numToSend = min(numAvailable, operationSettings.maxQty)
		end
	elseif not isTargetPlayer then
		numToSend = numAvailable
	end
	return max(numToSend, 0)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetOperationInfo(operationSettings)
	if operationSettings.target == "" then
		return
	end

	if operationSettings.maxQtyEnabled then
		return format(L["Mailing up to %d to %s."], operationSettings.maxQty, operationSettings.target)
	else
		return format(L["Mailing all to %s."], operationSettings.target)
	end
end

function private.GetTargetQuantity(player, itemString, sources)
	if player then
		-- TODO: support targets on connected realms
		player = strtrim(strmatch(player, "^[^-]+"))
	end
	local num = AltTracking.GetBagQuantity(itemString, player) + AltTracking.GetMailQuantity(itemString, player) + AltTracking.GetAuctionQuantity(itemString, player)
	if sources then
		if sources.guild then
			local guild = PlayerInfo.GetPlayerGuild(player, Wow.GetFactionrealmName())
			if guild then
				num = num + AltTracking.GetGuildQuantity(itemString, guild)
			end
		end
		if sources.bank then
			num = num + AltTracking.GetBankQuantity(itemString, player) + AltTracking.GetReagentBankQuantity(itemString, player)
		end
	end

	return num
end
