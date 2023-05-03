-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Constants = TSM.Init("Util.DatabaseClasses.Constants") ---@class Util.DatabaseClasses.Constants
Constants.DB_INDEX_VALUE_SEP = "\001"
Constants.OTHER_FIELD_QUERY_PARAM = newproxy()
Constants.BOUND_QUERY_PARAM = newproxy()
