-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ExpiringMailTask = TSM.Include("LibTSMClass").DefineClass("ExpiringMailTask", TSM.TaskList.Task)
local L = TSM.Include("Locale").GetTable()
TSM.TaskList.ExpiringMailTask = ExpiringMailTask
local private = {}




-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function ExpiringMailTask.__init(self)
	self.__super:__init()
	self._characters = {}
	self._daysLeft = {}
end

function ExpiringMailTask.Acquire(self, doneHandler, category)
	self.__super:Acquire(doneHandler, category, L["Expiring Mails"])
end

function ExpiringMailTask.Release(self)
	self.__super:Release()
	wipe(self._characters)
	wipe(self._daysLeft)
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function ExpiringMailTask.IsSecureMacro(self)
	return true
end

function ExpiringMailTask.GetSecureMacroText(self)
	return "/logout"
end

function ExpiringMailTask.GetDaysLeft(self, character)
	return self._daysLeft[character] or false
end

function ExpiringMailTask.WipeCharacters(self)
	wipe(self._characters)
	wipe(self._daysLeft)
end

function ExpiringMailTask.HasCharacters(self)
	return #self._characters > 0
end

function ExpiringMailTask.HasCharacter(self, character)
	return self._daysLeft[character] and true or false
end

function ExpiringMailTask.AddCharacter(self, character, days)
	tinsert(self._characters, character)
	self._daysLeft[character] = days
end

function ExpiringMailTask.CanHideSubTasks(self)
	return true
end

function ExpiringMailTask.HideSubTask(self, index)
	local character = self._characters[index]
	if not character then
		return
	end
	TSM.db.factionrealm.internalData.expiringMail[character] = nil

	TSM.TaskList.Expirations.Update()
end

function ExpiringMailTask.HasSubTasks(self)
	assert(self:HasCharacters())
	return true
end

function ExpiringMailTask.SubTaskIterator(self)
	assert(self:HasCharacters())
	sort(self._characters)
	return private.SubTaskIterator, self, 0
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function ExpiringMailTask._UpdateState(self)
	return self:_SetButtonState(true, strupper(LOGOUT))
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SubTaskIterator(self, index)
	index = index + 1
	local character = self._characters[index]
	if not character then
		return
	end
	local timeLeft = self._daysLeft[character]
	if timeLeft < 0 then
		timeLeft = L["Expired"]
	elseif timeLeft >= 1 then
		timeLeft = floor(timeLeft).." "..DAYS
	else
		local hoursLeft = floor(timeLeft * 24)
		if hoursLeft > 1 then
			timeLeft = hoursLeft.." "..L["Hrs"]
		elseif hoursLeft == 1 then
			timeLeft = hoursLeft.." "..L["Hr"]
		else
			timeLeft = floor(hoursLeft / 60).." "..L["Min"]
		end
	end
	local charColored = character
	local classColor = RAID_CLASS_COLORS[TSM.db:Get("sync", TSM.db:GetSyncScopeKeyByCharacter(character), "internalData", "classKey")]
	if classColor then
		charColored = "|c"..classColor.colorStr..charColored.."|r"
	end
	return index, charColored.." ("..timeLeft..")"
end
