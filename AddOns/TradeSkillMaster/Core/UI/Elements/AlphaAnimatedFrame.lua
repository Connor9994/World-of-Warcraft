-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- AlphaAnimatedFrame UI Element Class.
-- An alpha animated frame is a frame which allows for animating its alpha. It is a subclass of the @{Frame} class.
-- @classmod AlphaAnimatedFrame

local TSM = select(2, ...) ---@type TSM
local AlphaAnimatedFrame = TSM.Include("LibTSMClass").DefineClass("AlphaAnimatedFrame", TSM.UI.Frame)
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(AlphaAnimatedFrame)
TSM.UI.AlphaAnimatedFrame = AlphaAnimatedFrame



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function AlphaAnimatedFrame.__init(self)
	self.__super:__init()

	local frame = self:_GetBaseFrame()
	self._ag = frame:CreateAnimationGroup()
	self._ag:SetLooping("BOUNCE")
	self._alpha = self._ag:CreateAnimation("Alpha")
end

function AlphaAnimatedFrame.Acquire(self)
	self._alpha:SetFromAlpha(1)
	self._alpha:SetToAlpha(1)
	self._alpha:SetDuration(1)
	self.__super:Acquire()
end

function AlphaAnimatedFrame.Release(self)
	self._ag:Stop()
	self.__super:Release()
end

--- Sets the range of the alpha animation.
-- @tparam AlphaAnimatedFrame self The alpha animated frame object
-- @tparam number fromAlpha The initial alpha value (usually 1)
-- @tparam number toAlpha The end alpha value (between 0 and 1 inclusive)
-- @treturn AlphaAnimatedFrame The alpha animated frame object
function AlphaAnimatedFrame.SetRange(self, fromAlpha, toAlpha)
	self._alpha:SetFromAlpha(fromAlpha)
	self._alpha:SetToAlpha(toAlpha)
	return self
end

--- Sets the duration of the animation.
-- @tparam AlphaAnimatedFrame self The alpha animated frame object
-- @tparam number duration The duration in seconds
-- @treturn AlphaAnimatedFrame The alpha animated frame object
function AlphaAnimatedFrame.SetDuration(self, duration)
	self._alpha:SetDuration(duration)
	return self
end

--- Sets whether or not the animation is playing.
-- @tparam AlphaAnimatedFrame self The alpha animated frame object
-- @tparam boolean play Whether the animation should be playing or not
-- @treturn AlphaAnimatedFrame The alpha animated frame object
function AlphaAnimatedFrame.SetPlaying(self, play)
	if play then
		self._ag:Play()
	else
		self._ag:Stop()
	end
	return self
end

--- Gets whether or not the animation is playing.
-- @tparam AlphaAnimatedFrame self The alpha animated frame object
-- @treturn boolean Whether the animation is playing
function AlphaAnimatedFrame.IsPlaying(self)
	return self._ag:IsPlaying()
end
