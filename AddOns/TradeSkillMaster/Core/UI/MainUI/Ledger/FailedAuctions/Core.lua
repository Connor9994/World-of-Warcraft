-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local FailedAuctions = TSM.MainUI.Ledger:NewPackage("FailedAuctions")
local L = TSM.Include("Locale").GetTable()



-- ============================================================================
-- Module Functions
-- ============================================================================

function FailedAuctions.OnInitialize()
	TSM.MainUI.Ledger.RegisterPage(L["Failed Auctions"])
end

function FailedAuctions.RegisterPage(name, callback)
	TSM.MainUI.Ledger.RegisterChildPage(L["Failed Auctions"], name, callback)
end
