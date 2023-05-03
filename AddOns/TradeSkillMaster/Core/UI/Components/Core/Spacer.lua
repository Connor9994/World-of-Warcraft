-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local UIElements = TSM.Include("UI.UIElements")



-- ============================================================================
-- Element Definition
-- ============================================================================

local Spacer = UIElements.Define("Spacer", "Element") ---@class Spacer: Element



-- ============================================================================
-- Fake Frame Methods
-- ============================================================================

local FAKE_FRAME_MT = {
	__index = {
		SetParent = function(self, parent)
			self._parent = parent
		end,

		GetParent = function(self)
			return self._parent
		end,

		SetScale = function(self, scale)
			self._scale = scale
		end,

		GetScale = function(self)
			return self._scale
		end,

		SetWidth = function(self, width)
			self._width = width
		end,

		GetWidth = function(self)
			return self._width
		end,

		SetHeight = function(self, height)
			self._height = height
		end,

		GetHeight = function(self)
			return self._height
		end,

		Show = function(self)
			self._visible = true
		end,

		Hide = function(self)
			self._visible = false
		end,

		IsVisible = function(self)
			return self._visible
		end,

		ClearAllPoints = function(self)
			-- do nothing
		end,

		SetPoint = function(self, ...)
			-- do nothing
		end,
	},
}



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function Spacer:__init()
	-- Pass self as the frame
	self.__super:__init(self)
	local fakeFrame = {
		_parent = nil,
		_scale = 1,
		_width = 0,
		_height = 0,
		_visible = false,
	}
	self._fakeFrame = setmetatable(fakeFrame, FAKE_FRAME_MT)
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function Spacer:_GetBaseFrame()
	return self._fakeFrame
end
