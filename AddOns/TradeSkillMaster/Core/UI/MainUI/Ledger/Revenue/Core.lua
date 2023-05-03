-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Revenue = TSM.MainUI.Ledger:NewPackage("Revenue")
local L = TSM.Include("Locale").GetTable()



-- ============================================================================
-- Module Functions
-- ============================================================================

function Revenue.OnInitialize()
	TSM.MainUI.Ledger.RegisterPage(L["Revenue"])
end

function Revenue.RegisterPage(name, callback)
	TSM.MainUI.Ledger.RegisterChildPage(L["Revenue"], name, callback)
end
