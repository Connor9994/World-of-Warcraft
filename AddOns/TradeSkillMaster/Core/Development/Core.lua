-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
-- only create the TSMDEV table if we're in a dev or test environment
if not Environment.IsDev() and not Environment.IsTest() then
	return
end
TSMDEV = {} ---@class TSMDEV



-- ============================================================================
-- Global TSMDEV Functions
-- ============================================================================

function TSMDEV.Dump(value)
	-- TODO: Implement something for test environments
	assert(not Environment.IsTest())
	LoadAddOn("Blizzard_DebugTools")
	DevTools_Dump(value)
end
