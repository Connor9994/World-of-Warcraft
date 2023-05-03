-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local DefaultUI = TSM.Init("Service.DefaultUI")
local Environment = TSM.Include("Environment")
local Event = TSM.Include("Util.Event")
local private = {
	visible = {},
	callbacks = {},
	callbackFilter = {},
}
local FRAMES = {
	MAIL = "MAIL",
	AUCTION_HOUSE = "AUCTION_HOUSE",
	BANK = "BANK",
	GUILDBANK = "GUILDBANK",
	MERCHANT = "MERCHANT",
}



-- ============================================================================
-- Module Loading
-- ============================================================================

DefaultUI:OnModuleLoad(function()
	for _, frame in pairs(FRAMES) do
		private.visible[frame] = false
		private.callbacks[frame] = {}
		private.callbackFilter[frame] = {}
	end
	if Environment.HasFeature(Environment.FEATURES.PLAYER_INTERACTION_MANAGER) then
		Event.Register("PLAYER_INTERACTION_MANAGER_FRAME_SHOW", private.PlayerInteractionShowHandler)
		hooksecurefunc(PlayerInteractionFrameManager, "ShowFrame", private.PlayerInteractionShowHandler)
		Event.Register("PLAYER_INTERACTION_MANAGER_FRAME_HIDE", function(_, frameType)
			if frameType == Enum.PlayerInteractionType.MailInfo then
				private.HandleEvent(FRAMES.MAIL, false)
			elseif frameType == Enum.PlayerInteractionType.Auctioneer then
				private.HandleEvent(FRAMES.AUCTION_HOUSE, false)
			elseif frameType == Enum.PlayerInteractionType.Banker then
				private.HandleEvent(FRAMES.BANK, false)
			elseif frameType == Enum.PlayerInteractionType.GuildBanker then
				private.HandleEvent(FRAMES.GUILDBANK, false)
			elseif frameType == Enum.PlayerInteractionType.Merchant then
				private.HandleEvent(FRAMES.MERCHANT, false)
			end
		end)
	else
		Event.Register("MAIL_SHOW", function() private.HandleEvent(FRAMES.MAIL, true) end)
		Event.Register("MAIL_CLOSED", function() private.HandleEvent(FRAMES.MAIL, false) end)
		Event.Register("AUCTION_HOUSE_SHOW", function() private.HandleEvent(FRAMES.AUCTION_HOUSE, true) end)
		Event.Register("AUCTION_HOUSE_CLOSED", function() private.HandleEvent(FRAMES.AUCTION_HOUSE, false) end)
		Event.Register("BANKFRAME_OPENED", function() private.HandleEvent(FRAMES.BANK, true) end)
		Event.Register("BANKFRAME_CLOSED", function() private.HandleEvent(FRAMES.BANK, false) end)
		Event.Register("GUILDBANKFRAME_OPENED", function() private.HandleEvent(FRAMES.GUILDBANK, true) end)
		Event.Register("GUILDBANKFRAME_CLOSED", function() private.HandleEvent(FRAMES.GUILDBANK, false) end)
		Event.Register("MERCHANT_SHOW", function() private.HandleEvent(FRAMES.MERCHANT, true) end)
		Event.Register("MERCHANT_CLOSED", function() private.HandleEvent(FRAMES.MERCHANT, false) end)
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function DefaultUI.IsMailVisible()
	return private.visible[FRAMES.MAIL]
end

function DefaultUI.IsAuctionHouseVisible()
	return private.visible[FRAMES.AUCTION_HOUSE]
end

function DefaultUI.IsBankVisible()
	return private.visible[FRAMES.BANK]
end

function DefaultUI.IsGuildBankVisible()
	return private.visible[FRAMES.GUILDBANK]
end

function DefaultUI.IsMerchantVisible()
	return private.visible[FRAMES.MERCHANT]
end

function DefaultUI.RegisterMailVisibleCallback(callback, visibleFilter)
	private.RegisterCallback(FRAMES.MAIL, callback, visibleFilter)
end

function DefaultUI.RegisterAuctionHouseVisibleCallback(callback, visibleFilter)
	private.RegisterCallback(FRAMES.AUCTION_HOUSE, callback, visibleFilter)
end

function DefaultUI.RegisterBankVisibleCallback(callback, visibleFilter)
	private.RegisterCallback(FRAMES.BANK, callback, visibleFilter)
end

function DefaultUI.RegisterGuildBankVisibleCallback(callback, visibleFilter)
	private.RegisterCallback(FRAMES.GUILDBANK, callback, visibleFilter)
end

function DefaultUI.RegisterMerchantVisibleCallback(callback, visibleFilter)
	private.RegisterCallback(FRAMES.MERCHANT, callback, visibleFilter)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.PlayerInteractionShowHandler(_, interactionType)
	if interactionType == Enum.PlayerInteractionType.MailInfo then
		private.HandleEvent(FRAMES.MAIL, true)
	elseif interactionType == Enum.PlayerInteractionType.Auctioneer then
		private.HandleEvent(FRAMES.AUCTION_HOUSE, true)
	elseif interactionType == Enum.PlayerInteractionType.Banker then
		private.HandleEvent(FRAMES.BANK, true)
	elseif interactionType == Enum.PlayerInteractionType.GuildBanker then
		private.HandleEvent(FRAMES.GUILDBANK, true)
	elseif interactionType == Enum.PlayerInteractionType.Merchant then
		private.HandleEvent(FRAMES.MERCHANT, true)
	end
end

function private.RegisterCallback(frame, callback, visibleFilter)
	tinsert(private.callbacks[frame], callback)
	private.callbackFilter[frame][callback] = visibleFilter
end

function private.HandleEvent(frame, visible)
	assert(type(visible) == "boolean")
	if private.visible[frame] == visible then
		return
	end
	private.visible[frame] = visible
	for _, callback in ipairs(private.callbacks[frame]) do
		local filter = private.callbackFilter[frame][callback]
		if filter == nil then
			callback(visible)
		elseif filter == visible then
			callback()
		end
	end
end
