-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local UIElements = TSM.Include("UI.UIElements")
local DEFAULT_LINE_THICKNESS = 2



-- ============================================================================
-- Element Definition
-- ============================================================================

local HorizontalLine = UIElements.Define("HorizontalLine", "Texture") ---@class HorizontalLine: Texture
HorizontalLine:_ExtendStateSchema()
	:UpdateFieldDefault("color", "ACTIVE_BG")
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function HorizontalLine:Acquire()
	self.__super:Acquire()
	self:SetHeight(DEFAULT_LINE_THICKNESS)
end
