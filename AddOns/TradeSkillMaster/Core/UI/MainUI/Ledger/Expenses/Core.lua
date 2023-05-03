-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Expenses = TSM.MainUI.Ledger:NewPackage("Expenses")
local L = TSM.Include("Locale").GetTable()



-- ============================================================================
-- Module Functions
-- ============================================================================

function Expenses.OnInitialize()
	TSM.MainUI.Ledger.RegisterPage(L["Expenses"])
end

function Expenses.RegisterPage(name, callback)
	TSM.MainUI.Ledger.RegisterChildPage(L["Expenses"], name, callback)
end
