-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ItemLinked = TSM.Init("Service.ItemLinked") ---@class Service.ItemLinked
local Table = TSM.Include("Util.Table")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {
	callbacks = {},
	priorityLookup = {}
}



-- ============================================================================
-- Module Loading
-- ============================================================================

ItemLinked:OnModuleLoad(function()
	local origHandleModifiedItemClick = HandleModifiedItemClick
	HandleModifiedItemClick = function(...)
		return private.ItemLinkedHook(origHandleModifiedItemClick, ...)
	end
	local origChatEdit_InsertLink = ChatEdit_InsertLink
	ChatEdit_InsertLink = function(...)
		return private.ItemLinkedHook(origChatEdit_InsertLink, ...)
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function ItemLinked.RegisterCallback(callback, highPriority)
	assert(type(callback) == "function")
	tinsert(private.callbacks, callback)
	private.priorityLookup[callback] = highPriority and 1 or 0
	Table.SortWithValueLookup(private.callbacks, private.priorityLookup, false, true)
end

function ItemLinked.UnregisterCallback(callback)
	assert(type(callback) == "function")
	private.priorityLookup[callback] = nil
	assert(Table.RemoveByValue(private.callbacks, callback) == 1)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ItemLinkedHook(origFunc, ...)
	local putIntoChat = origFunc(...)
	if putIntoChat then
		return putIntoChat
	end
	local itemLink = ...
	local name = ItemInfo.GetName(itemLink)
	if not name or not private.HandleItemLinked(name, itemLink) then
		return putIntoChat
	end
	return true
end

function private.HandleItemLinked(name, itemLink)
	for _, callback in ipairs(private.callbacks) do
		if callback(name, itemLink) then
			return true
		end
	end
end
