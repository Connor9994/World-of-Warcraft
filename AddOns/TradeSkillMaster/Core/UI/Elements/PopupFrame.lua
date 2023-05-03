	-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- PopupFrame UI Element Class.
-- A popup frame which shows when clicking on a "more" button.
-- @classmod PopupFrame

local TSM = select(2, ...) ---@type TSM
local NineSlice = TSM.Include("Util.NineSlice")
local Theme = TSM.Include("Util.Theme")
local PopupFrame = TSM.Include("LibTSMClass").DefineClass("PopupFrame", TSM.UI.Frame)
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(PopupFrame)
TSM.UI.PopupFrame = PopupFrame



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function PopupFrame.__init(self)
	self.__super:__init()
	self._nineSlice = NineSlice.New(self:_GetBaseFrame())
end

function PopupFrame.Draw(self)
	self.__super:Draw()
	self._nineSlice:SetStyle("popup")
	-- TOOD: fix the texture color properly
	self._nineSlice:SetPartVertexColor("center", Theme.GetColor("PRIMARY_BG_ALT:duskwood"):GetFractionalRGBA())
end
