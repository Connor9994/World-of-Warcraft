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

local VerticalLine = UIElements.Define("VerticalLine", "Texture") ---@class VerticalLine: Texture
VerticalLine:_ExtendStateSchema()
	:UpdateFieldDefault("color", "ACTIVE_BG")
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function VerticalLine:Acquire()
	self.__super:Acquire()
	self:SetWidth(DEFAULT_LINE_THICKNESS)
end
