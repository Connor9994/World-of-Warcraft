-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Log = TSM.Auctioning:NewPackage("Log")
local L = TSM.Include("Locale").GetTable()
local Database = TSM.Include("Util.Database")
local Theme = TSM.Include("Util.Theme")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {
	db = nil,
}
local REASON_INFO = {
	-- general
	invalidItemGroup = { color = "FEEDBACK_RED", str = L["Item/Group is invalid (see chat)."] },
	invalidSeller = { color = "FEEDBACK_RED", str = L["Invalid seller data returned by server."] },
	-- post scan
	postDisabled = { color = "FEEDBACK_ORANGE", str = L["Posting disabled."] },
	postNotEnough = { color = "FEEDBACK_ORANGE", str = L["Not enough items in bags."] },
	postMaxExpires = { color = "FEEDBACK_ORANGE", str = L["Above max expires."] },
	postBelowMin = { color = "FEEDBACK_ORANGE", str = L["Cheapest auction below min price."] },
	postTooMany = { color = "FEEDBACK_BLUE", str = L["Maximum amount already posted."] },
	postNormal = { color = "FEEDBACK_GREEN", str = L["Posting at normal price."] },
	postResetMin = { color = "FEEDBACK_GREEN", str = L["Below min price. Posting at min."] },
	postResetMax = { color = "FEEDBACK_GREEN", str = L["Below min price. Posting at max."] },
	postResetNormal = { color = "FEEDBACK_GREEN", str = L["Below min price. Posting at normal."] },
	postAboveMaxMin = { color = "FEEDBACK_GREEN", str = L["Above max price. Posting at min."] },
	postAboveMaxMax = { color = "FEEDBACK_GREEN", str = L["Above max price. Posting at max."] },
	postAboveMaxNormal = { color = "FEEDBACK_GREEN", str = L["Above max price. Posting at normal."] },
	postAboveMaxNoPost = { color = "FEEDBACK_ORANGE", str = L["Above max price. Not posting."] },
	postUndercut = { color = "FEEDBACK_GREEN", str = L["Undercutting competition."] },
	postPlayer = { color = "FEEDBACK_GREEN", str = L["Posting at your current price."] },
	postWhitelist = { color = "FEEDBACK_GREEN", str = L["Posting at whitelisted player's price."] },
	postWhitelistNoPost = { color = "FEEDBACK_ORANGE", str = L["Lowest auction by whitelisted player."] },
	postBlacklist = { color = "FEEDBACK_GREEN", str = L["Undercutting blacklisted player."] },
	-- cancel scan
	cancelDisabled = { color = "FEEDBACK_ORANGE", str = L["Canceling disabled."] },
	cancelNotUndercut = { color = "FEEDBACK_GREEN", str = L["Your auction has not been undercut."] },
	cancelBid = { color = "FEEDBACK_BLUE", str = L["Auction has been bid on."] },
	cancelNoMoney = { color = "FEEDBACK_BLUE", str = L["Not enough money to cancel."] },
	cancelKeepPosted = { color = "FEEDBACK_BLUE", str = L["Keeping undercut auctions posted."] },
	cancelBelowMin = { color = "FEEDBACK_ORANGE", str = L["Not canceling auction below min price."] },
	cancelAtReset = { color = "FEEDBACK_GREEN", str = L["Not canceling auction at reset price."] },
	cancelAtNormal = { color = "FEEDBACK_GREEN", str = L["At normal price and not undercut."] },
	cancelAtAboveMax = { color = "FEEDBACK_GREEN", str = L["At above max price and not undercut."] },
	cancelAtWhitelist = { color = "FEEDBACK_GREEN", str = L["Posted at whitelisted player's price."] },
	cancelUndercut = { color = "FEEDBACK_RED", str = L["You've been undercut."] },
	cancelRepost = { color = "FEEDBACK_BLUE", str = L["Canceling to repost at higher price."] },
	cancelReset = { color = "FEEDBACK_BLUE", str = L["Canceling to repost at reset price."] },
	cancelWhitelistUndercut = { color = "FEEDBACK_RED", str = L["Undercut by whitelisted player."] },
	cancelPlayerUndercut = { color = "FEEDBACK_BLUE", str = L["Canceling auction you've undercut."] },
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Log.OnInitialize()
	private.db = Database.NewSchema("AUCTIONING_LOG")
		:AddNumberField("index")
		:AddStringField("itemString")
		:AddStringField("seller")
		:AddNumberField("buyout")
		:AddStringField("operation")
		:AddStringField("reasonStr")
		:AddStringField("reasonKey")
		:AddStringField("state")
		:AddIndex("index")
		:Commit()
end

function Log.Truncate()
	private.db:Truncate()
end

function Log.CreateQuery()
	return private.db:NewQuery()
		:VirtualField("name", "string", ItemInfo.GetName, "itemString", "")
		:OrderBy("index", true)
end

function Log.UpdateRowByIndex(index, field, value)
	local row = private.db:NewQuery()
		:Equal("index", index)
		:GetFirstResultAndRelease()

	if field == "state" then
		assert(value == "POSTED" or value == "CANCELLED" or value == "SKIPPED")
		if not row then
			return
		end
	end

	row:SetField(field, value)
		:Update()

	row:Release()
end

function Log.SetQueryUpdatesPaused(paused)
	private.db:SetQueryUpdatesPaused(paused)
end

function Log.AddEntry(itemString, operationName, reasonKey, seller, buyout, index)
	private.db:NewRow()
		:SetField("itemString", itemString)
		:SetField("seller", seller)
		:SetField("buyout", buyout)
		:SetField("operation", operationName)
		:SetField("reasonStr", REASON_INFO[reasonKey].str)
		:SetField("reasonKey", reasonKey)
		:SetField("index", index)
		:SetField("state", "PENDING")
		:Create()
end

function Log.GetColorFromReasonKey(reasonKey)
	return REASON_INFO[reasonKey].color
end

function Log.GetInfoStr(row)
	local state, reasonKey = row:GetFields("state", "reasonKey")
	local reasonInfo = REASON_INFO[reasonKey]
	if state == "PENDING" then
		return Theme.GetColor(reasonInfo.color):ColorText(reasonInfo.str)
	elseif state == "POSTED" then
		return Theme.GetColor("INDICATOR"):ColorText(L["Posted:"]).." "..reasonInfo.str
	elseif state == "CANCELLED" then
		return Theme.GetColor("INDICATOR"):ColorText(L["Cancelled:"]).." "..reasonInfo.str
	elseif state == "SKIPPED" then
		return Theme.GetColor("INDICATOR"):ColorText(L["Skipped:"]).." "..reasonInfo.str
	else
		error("Invalid state: "..tostring(state))
	end
end
