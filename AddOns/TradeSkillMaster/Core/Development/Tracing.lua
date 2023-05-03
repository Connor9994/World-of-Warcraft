-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

if not TSMDEV then
	return
end
TSMDEV.Tracing = {}
local Tracing = TSMDEV.Tracing



-- ============================================================================
-- Module Functions
-- ============================================================================

function Tracing.Enable(apiName)
	LoadAddOn("Blizzard_EventTrace")
	local tableName, tableKey = strsplit(".", apiName)
	if not tableKey then
		tableName = nil
		tableKey = tableName
	end
	assert(tableKey)
	hooksecurefunc(tableName and _G[tableName] or _G, tableKey, function(...) EventTrace:LogEvent(apiName, ...) end)
end
