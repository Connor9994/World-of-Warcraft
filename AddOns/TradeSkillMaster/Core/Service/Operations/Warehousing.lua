-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Warehousing = TSM.Operations:NewPackage("Warehousing")
local private = {}
local L = TSM.Include("Locale").GetTable()
local OPERATION_INFO = {
	moveQuantity = { type = "number", default = 0 },
	keepBagQuantity = { type = "number", default = 0 },
	keepBankQuantity = { type = "number", default = 0 },
	restockQuantity = { type = "number", default = 0 },
	stackSize = { type = "number", default = 0 },
	restockKeepBankQuantity = { type = "number", default = 0 },
	restockStackSize = { type = "number", default = 0 },
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Warehousing.OnInitialize()
	TSM.Operations.Register("Warehousing", L["Warehousing"], OPERATION_INFO, 12, private.GetOperationInfo)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetOperationInfo(operationSettings)
	if (operationSettings.keepBagQuantity ~= 0 or operationSettings.keepBankQuantity ~= 0) and operationSettings.moveQuantity == 0 then
		if operationSettings.keepBagQuantity ~= 0 then
			if operationSettings.keepBankQuantity ~= 0 then
				if operationSettings.restockQuantity ~= 0 then
					return format(L["Warehousing will move all of the items in this group keeping %d of each item back when bags > bank/gbank, %d of each item back when bank/gbank > bags. Restock will maintain %d items in your bags."], operationSettings.keepBagQuantity, operationSettings.keepBankQuantity, operationSettings.restockQuantity)
				else
					return format(L["Warehousing will move all of the items in this group keeping %d of each item back when bags > bank/gbank, %d of each item back when bank/gbank > bags."], operationSettings.keepBagQuantity, operationSettings.keepBankQuantity)
				end
			else
				if operationSettings.restockQuantity ~= 0 then
					return format(L["Warehousing will move all of the items in this group keeping %d of each item back when bags > bank/gbank. Restock will maintain %d items in your bags."], operationSettings.keepBagQuantity, operationSettings.restockQuantity)
				else
					return format(L["Warehousing will move all of the items in this group keeping %d of each item back when bags > bank/gbank."], operationSettings.keepBagQuantity)
				end
			end
		else
			if operationSettings.restockQuantity ~= 0 then
				return format(L["Warehousing will move all of the items in this group keeping %d of each item back when bank/gbank > bags. Restock will maintain %d items in your bags."], operationSettings.keepBankQuantity, operationSettings.restockQuantity)
			else
				return format(L["Warehousing will move all of the items in this group keeping %d of each item back when bank/gbank > bags."], operationSettings.keepBankQuantity)
			end
		end
	elseif (operationSettings.keepBagQuantity ~= 0 or operationSettings.keepBankQuantity ~= 0) and operationSettings.moveQuantity ~= 0 then
		if operationSettings.keepBagQuantity ~= 0 then
			if operationSettings.keepBankQuantity ~= 0 then
				if operationSettings.restockQuantity ~= 0 then
					return format(L["Warehousing will move a max of %d of each item in this group keeping %d of each item back when bags > bank/gbank, %d of each item back when bank/gbank > bags. Restock will maintain %d items in your bags."], operationSettings.moveQuantity, operationSettings.keepBagQuantity, operationSettings.keepBankQuantity, operationSettings.restockQuantity)
				else
					return format(L["Warehousing will move a max of %d of each item in this group keeping %d of each item back when bags > bank/gbank, %d of each item back when bank/gbank > bags."], operationSettings.moveQuantity, operationSettings.keepBagQuantity, operationSettings.keepBankQuantity)
				end
			else
				if operationSettings.restockQuantity ~= 0 then
					return format(L["Warehousing will move a max of %d of each item in this group keeping %d of each item back when bags > bank/gbank. Restock will maintain %d items in your bags."], operationSettings.keepBankQuantity, operationSettings.restockQuantity)
				else
					return format(L["Warehousing will move a max of %d of each item in this group keeping %d of each item back when bags > bank/gbank."], operationSettings.keepBankQuantity)
				end
			end
		else
			if operationSettings.restockQuantity ~= 0 then
				return format(L["Warehousing will move a max of %d of each item in this group keeping %d of each item back when bank/gbank > bags. Restock will maintain %d items in your bags."], operationSettings.moveQuantity, operationSettings.keepBankQuantity, operationSettings.restockQuantity)
			else
				return format(L["Warehousing will move a max of %d of each item in this group keeping %d of each item back when bank/gbank > bags."], operationSettings.moveQuantity, operationSettings.keepBankQuantity)
			end
		end
	elseif operationSettings.moveQuantity ~= 0 then
		if operationSettings.restockQuantity ~= 0 then
			return format(L["Warehousing will move a max of %d of each item in this group. Restock will maintain %d items in your bags."], operationSettings.moveQuantity, operationSettings.restockQuantity)
		else
			return format(L["Warehousing will move a max of %d of each item in this group."], operationSettings.moveQuantity)
		end
	else
		if operationSettings.restockQuantity ~= 0 then
			return format(L["Warehousing will move all of the items in this group. Restock will maintain %d items in your bags."], operationSettings.restockQuantity)
		else
			return L["Warehousing will move all of the items in this group."]
		end
	end
end
