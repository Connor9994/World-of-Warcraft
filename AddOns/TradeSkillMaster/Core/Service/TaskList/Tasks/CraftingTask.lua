-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CraftingTask = TSM.Include("LibTSMClass").DefineClass("CraftingTask", TSM.TaskList.Task)
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local CraftString = TSM.Include("Util.CraftString")
local Table = TSM.Include("Util.Table")
local Event = TSM.Include("Util.Event")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local BagTracking = TSM.Include("Service.BagTracking")
local Profession = TSM.Include("Service.Profession")
TSM.TaskList.CraftingTask = CraftingTask
local private = {
	currentlyCrafting = nil,
	registeredCallbacks = false,
	pendingSpellId = nil,
	pendingItemString = nil,
	activeTasks = {},
}



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function CraftingTask.__init(self)
	self.__super:__init()
	self._profession = nil
	self._skillId = nil
	self._craftStrings = {}
	self._craftQuantity = {}

	if not private.registeredCallbacks then
		Profession.RegisterStateCallback(private.UpdateTasks)
		Profession.RegisterHasScannedCallback(private.UpdateTasks)
		BagTracking.RegisterCallback(private.UpdateTasks)
		private.registeredCallbacks = true

		Event.Register("CHAT_MSG_LOOT", private.ChatMsgLootEventHandler)
		Event.Register("UNIT_SPELLCAST_INTERRUPTED", private.SpellCastEventHandler)
		Event.Register("UNIT_SPELLCAST_FAILED", private.SpellCastEventHandler)
		Event.Register("UNIT_SPELLCAST_FAILED_QUIET", private.SpellCastEventHandler)
	end
end

function CraftingTask.Acquire(self, doneHandler, category, profession)
	self.__super:Acquire(doneHandler, category, format(L["%s Crafts"], profession))
	self._profession = profession
	for _, _, prof, skillId in TSM.Crafting.PlayerProfessions.Iterator() do
		if prof == profession and (not self._skillId or (self._skillId == -1 and skillId ~= -1)) then
			self._skillId = skillId
		end
	end
	private.activeTasks[self] = true
end

function CraftingTask.Release(self)
	self.__super:Release()
	self._profession = nil
	self._skillId = nil
	wipe(self._craftStrings)
	wipe(self._craftQuantity)
	private.activeTasks[self] = nil
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function CraftingTask.WipeCraftStrings(self)
	wipe(self._craftStrings)
	wipe(self._craftQuantity)
end

function CraftingTask.HasCraftStrings(self)
	return #self._craftStrings > 0
end

function CraftingTask.GetProfession(self)
	return self._profession
end

function CraftingTask.HasCraftString(self, craftString)
	return self._craftQuantity[craftString] and true or false
end

function CraftingTask.AddCraftString(self, craftString, quantity)
	tinsert(self._craftStrings, craftString)
	self._craftQuantity[craftString] = quantity
end

function CraftingTask.OnMouseDown(self)
	if self._buttonText == L["CRAFT"] then
		local craftString = self._craftStrings[1]
		local quantity = self._craftQuantity[craftString]
		Log.Info("Preparing %s (%d)", craftString, quantity)
		TSM.Crafting.ProfessionUtil.PrepareToCraft(craftString, nil, quantity)
	end
end

function CraftingTask.OnButtonClick(self)
	if self._buttonText == L["CRAFT"] then
		local craftString = self._craftStrings[1]
		local spellId = CraftString.GetSpellId(craftString)
		local quantity = self._craftQuantity[craftString]
		local _, numMax = Profession.GetCraftedQuantityRange(craftString)
		if numMax and numMax > 1 then
			-- need minimum this many repeats
			quantity = ceil(quantity / numMax)
		end
		Log.Info("Crafting %s (%d)", craftString, quantity)
		private.currentlyCrafting = self
		private.pendingSpellId = spellId
		private.pendingItemString = TSM.Crafting.GetItemString(craftString)
		local numCrafted = TSM.Crafting.ProfessionUtil.Craft(craftString, spellId, quantity, true, private.CraftCompleteCallback)
		if numCrafted == 0 then
			-- we're probably crafting something else already - so just bail
			Log.Err("Failed to craft")
			private.currentlyCrafting = nil
		end
	elseif self._buttonText == L["OPEN"] then
		Profession.Open(Environment.IsRetail() and self._skillId or self._profession)
	else
		error("Invalid state: "..tostring(self._buttonText))
	end
	self:Update()
end

function CraftingTask.HasSubTasks(self)
	assert(self:HasCraftStrings())
	return true
end

function CraftingTask.SubTaskIterator(self)
	assert(self:HasCraftStrings())
	sort(self._craftStrings, private.SpellIdSort)
	return private.SubTaskIterator, self, 0
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function CraftingTask._UpdateState(self)
	sort(self._craftStrings, private.SpellIdSort)
	if TSM.Crafting.ProfessionUtil.GetNumCraftableFromDB(self._craftStrings[1]) == 0 then
		-- don't have the mats to craft this
		return self:_SetButtonState(false, L["NEED MATS"])
	elseif self._profession ~= Profession.GetCurrentProfession() then
		-- the profession isn't opened
		return self:_SetButtonState(true, L["OPEN"])
	elseif not Profession.HasScanned() then
		-- the profession is opened, but we haven't yet fully scanned it
		return self:_SetButtonState(false, strupper(OPENING))
	elseif private.currentlyCrafting == self then
		return self:_SetButtonState(false, L["CRAFTING"])
	elseif private.currentlyCrafting then
		return self:_SetButtonState(false, L["BUSY"])
	else
		-- ready to craft
		return self:_SetButtonState(true, L["CRAFT"])
	end
end

function CraftingTask._RemoveCraftString(self, craftString)
	assert(Table.RemoveByValue(self._craftStrings, craftString) == 1)
	self._craftQuantity[craftString] = nil
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ChatMsgLootEventHandler(_, msg)
	if not private.pendingSpellId or not private.pendingItemString then
		return
	end
	local msgItemLink, quantity = nil, nil
	local numMin, numMax = Profession.GetCraftedQuantityRange(CraftString.Get(private.pendingSpellId))
	if numMin == 1 then
		numMin = numMin + 1
	end
	for i = numMin, numMax do
		local itemLink = private.ExtractFormatValue(msg, format(LOOT_ITEM_CREATED_SELF_MULTIPLE, "%s", i))
		if itemLink then
			msgItemLink = itemLink
			quantity = i
			break
		end
	end
	if not msgItemLink then
		msgItemLink = private.ExtractFormatValue(msg, LOOT_ITEM_CREATED_SELF)
		quantity = 1
	end
	if not msgItemLink or ItemString.GetBase(msgItemLink) ~= ItemString.GetBase(private.pendingItemString) then
		Log.Info("Unknown item link (%s, %s, %s)", msg, tostring(msgItemLink), private.pendingItemString)
		return
	end
	local self = private.currentlyCrafting
	assert(self)
	local craftString = self._craftStrings[1]
	self._craftQuantity[craftString] = self._craftQuantity[craftString] - quantity
	Log.Info("Crafted %s (%d), remaining: %d", private.pendingItemString, quantity, self._craftQuantity[craftString])
	if self._craftQuantity[craftString] <= 0 then
		private.ClearPendingContext()
	end
end

function private.SpellCastEventHandler(event, unit, _, spellId)
	if unit ~= "player" or spellId ~= private.pendingSpellId then
		return
	end
	private.ClearPendingContext()
end

function private.ExtractFormatValue(str, fmtStr)
	assert(not strmatch(fmtStr, "\001"))
	local part1, part2 = strsplit("\001", format(fmtStr, "\001"))
	return strmatch(str, "^"..part1.."(.+)"..part2.."$")
end

function private.ClearPendingContext()
	private.pendingSpellId = nil
	private.pendingItemString = nil
end

function private.SubTaskIterator(self, index)
	index = index + 1
	local craftString = self._craftStrings[index]
	if not craftString then
		return
	end
	return index, TSM.Crafting.GetName(craftString).." ("..self._craftQuantity[craftString]..")"
end

function private.CraftCompleteCallback(success, isDone)
	local self = private.currentlyCrafting
	assert(self)
	local craftString = self._craftStrings[1]
	if isDone then
		private.currentlyCrafting = nil
		private.ClearPendingContext()
		if success then
			self:_RemoveCraftString(craftString)
			if not self:HasCraftStrings() then
				self:_doneHandler()
			end
		end
	end
	if self:HasCraftStrings() then
		self:Update()
	end
end

function private.UpdateTasks()
	for task in pairs(private.activeTasks) do
		if task:HasCraftStrings() then
			task:Update()
		end
	end
end

function private.SpellIdSort(a, b)
	local aNumCraftable = TSM.Crafting.ProfessionUtil.GetNumCraftableFromDB(a)
	local bNumCraftable = TSM.Crafting.ProfessionUtil.GetNumCraftableFromDB(b)
	if aNumCraftable == bNumCraftable then
		return a < b
	end
	return aNumCraftable > bNumCraftable
end
