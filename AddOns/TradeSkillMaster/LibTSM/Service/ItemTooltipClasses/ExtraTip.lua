-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ExtraTip = TSM.Init("Service.ItemTooltipClasses.ExtraTip") ---@class Service.ItemTooltipClasses.ExtraTip
local private = {
	numExtraTips = 0,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function ExtraTip.Create(tooltip)
	return private.CreateExtraTip(tooltip)
end



-- ============================================================================
-- Extra Tip Methods
-- ============================================================================

local EXTRA_TIP_METHODS = {
	Attach = function(self, tooltip)
		self:SetOwner(tooltip, "ANCHOR_PRESERVE")
		self.anchorFrame = nil
		self:OnUpdate()
	end,

	Show = function(self)
		self.anchorFrame = nil
		GameTooltip.Show(self)
		local bottom = self:GetBottom()
		if bottom and self:GetParent():IsShown() then
			self.isTop = bottom <= 0
		end
		self:OnUpdate()
		local numLines = self:NumLines()
		local changedLines = self.changedLines or 0
		if changedLines >= numLines then return end
		for i = changedLines + 1, numLines do
			local left, right = self.Left[i], self.Right[i]
			local font = i == 1 and GameTooltipHeader or GameFontNormal

			local r, g, b, a = left:GetTextColor()
			left:SetFontObject(font)
			left:SetTextColor(r, g, b, a)

			r, g, b, a = right:GetTextColor()
			right:SetFontObject(font)
			right:SetTextColor(r, g, b, a)
		end
		self.changedLines = numLines
		GameTooltip.Show(self)
		self:OnUpdate()
	end,

	OnUpdate = function(self)
		local tooltip = self:GetParent()
		local anchorFrame = private.GetExtraTipFrame(tooltip, tooltip:GetChildren()) or tooltip
		if anchorFrame ~= self.anchorFrame then
			self:ClearAllPoints()
			if self.isTop then
				self:SetPoint("BOTTOM", anchorFrame, "TOP")
			else
				self:SetPoint("TOP", anchorFrame, "BOTTOM")
			end
			self.anchorFrame = anchorFrame
		end
	end,
}

local LINE_METATABLE = {
	__index = function(t, k)
		local v = _G[t.name..k]
		rawset(t, k, v)
		return v
	end,
}



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.CreateExtraTip(tooltip)
	private.numExtraTips = private.numExtraTips + 1
	local extraTip = CreateFrame("GameTooltip", "TSMExtraTip"..private.numExtraTips, tooltip, "GameTooltipTemplate")
	extraTip:SetClampedToScreen(true)

	for name, func in pairs(EXTRA_TIP_METHODS) do
		extraTip[name] = func
	end

	extraTip.Left = setmetatable({name = extraTip:GetName().."TextLeft"}, LINE_METATABLE)
	extraTip.Right = setmetatable({name = extraTip:GetName().."TextRight"}, LINE_METATABLE)
	return extraTip
end

function private.GetExtraTipFrame(tooltip, ...)
	for i = 1, select('#', ...) do
		local frame = select(i, ...)
		if frame.InitLines and frame:GetParent() == tooltip and frame:IsVisible() then
			return frame
		end
	end
end
