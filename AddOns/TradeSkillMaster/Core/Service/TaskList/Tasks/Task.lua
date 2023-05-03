-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Task = TSM.Include("LibTSMClass").DefineClass("Task", nil, "ABSTRACT")
TSM.TaskList.Task = Task



-- ============================================================================
-- Task - Class Meta Methods
-- ============================================================================

function Task.__init(self)
	self._category = nil
	self._desc = nil
	self._buttonEnabled = nil
	self._buttonText = nil
	self._doneHandler = nil
end

function Task.Acquire(self, doneHandler, category, desc)
	self._doneHandler = doneHandler
	self._category = category
	self._desc = desc
end

function Task.Release(self)
	self._category = nil
	self._desc = nil
	self._buttonEnabled = nil
	self._buttonText = nil
	self._doneHandler = nil
end



-- ============================================================================
-- Task - Public Methods
-- ============================================================================

function Task.GetCategory(self)
	return self._category
end

function Task.GetTaskDesc(self)
	return self._desc
end

function Task.HasSubTasks(self)
	return false
end

function Task.SubTaskIterator(self)
	error("Must be implemented by the subclass")
end

function Task.IsSecureMacro(self)
	return false
end

function Task.GetSecureMacroText(self)
	error("Must be implemented by the subclass")
end

function Task.GetButtonState(self)
	return self._buttonEnabled, self._buttonText
end

function Task.Update(self)
	if self:_UpdateState() then
		TSM.TaskList.OnTaskUpdated()
	end
end

function Task.OnMouseDown(self)
end

function Task.OnButtonClick(self)
	error("Must be implemented by the subclass")
end

function Task.CanHideSubTasks(self)
	return false
end

function Task.HideSubTask(self)
	error("Must be implemented by the subclass")
end



-- ============================================================================
-- Task - Private Methods
-- ============================================================================

function Task._UpdateState(self)
	error("Must be implemented by the subclass")
end

function Task._SetButtonState(self, buttonEnabled, buttonText)
	if buttonEnabled == self._buttonEnabled and buttonText == self._buttonText then
		-- nothing changed
		return false
	end
	self._buttonEnabled = buttonEnabled
	self._buttonText = buttonText
	return true
end
