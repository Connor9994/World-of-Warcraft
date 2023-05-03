-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local TaskListUI = TSM.UI:NewPackage("TaskListUI")
local L = TSM.Include("Locale").GetTable()
local Event = TSM.Include("Util.Event")
local TempTable = TSM.Include("Util.TempTable")
local Log = TSM.Include("Util.Log")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	frame = nil,
	categoryCollapsed = {},
	taskCollapsed = {},
	didAutoShow = false,
	wasVisible = false,
	updateCallbacks = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function TaskListUI.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "taskListUIContext", "frame")
		:AddKey("global", "taskListUIContext", "isOpen")
	TSM.TaskList.SetUpdateCallback(private.OnTaskListUpdate)
	if not private.settings.isOpen then
		private.didAutoShow = true
	end
	Event.Register("PLAYER_REGEN_ENABLED", private.OnRegenEnabled)
	Event.Register("PLAYER_REGEN_DISABLED", private.OnRegenDisabled)
end

function TaskListUI.OnDisable()
	if private.frame then
		-- hide the frame
		private.frame:Hide()
		assert(not private.frame)
	end
end

function TaskListUI.Toggle()
	if private.frame then
		private.frame:Hide()
	else
		if TSM.TaskList.GetNumTasks() == 0 then
			Log.PrintUser(L["Your task list is currently empty."])
			return
		end
		private.settings.isOpen = true
		private.frame = private.CreateMainFrame()
		TaskListUI.UpdateFrame()
		private.frame:Show()
	end
	for _, callback in ipairs(private.updateCallbacks) do
		callback()
	end
end

function TaskListUI.IsVisible()
	return private.frame and true or false
end

function TaskListUI.RegisterUpdateCallback(callback)
	tinsert(private.updateCallbacks, callback)
end

function TaskListUI.UpdateFrame()
	local mouseOver = private.frame:_GetBaseFrame():IsMouseOver() and true or false
	private.frame:SetBackgroundColor((mouseOver or TSM.db.global.appearanceOptions.taskListBackgroundLock) and "FRAME_BG%50" or nil, true)
	private.frame:SetBorderColor((mouseOver or TSM.db.global.appearanceOptions.taskListBackgroundLock) and "ACTIVE_BG%50" or nil, 2)
	private.frame:Draw()
end



-- ============================================================================
-- Task List UI
-- ============================================================================

function private.OnRegenEnabled()
	if not private.wasVisible then
		return
	end
	TaskListUI.Toggle()
end

function private.OnRegenDisabled()
	private.wasVisible = TaskListUI.IsVisible()
	if private.frame then
		-- hide the frame
		private.frame:Hide()
		assert(not private.frame)
	end
end

function private.CreateMainFrame()
	UIUtils.AnalyticsRecordPathChange("task_list")
	local frame = UIElements.New("OverlayApplicationFrame", "base")
		:SetParent(UIParent)
		:SetWidth(307)
		:SetStrata("HIGH")
		:SetSettingsContext(private.settings, "frame")
		:SetTitle(L["TSM TASK LIST"])
		:SetScript("OnHide", private.BaseFrameOnHide)
		:SetContentFrame(UIElements.New("Frame", "content")
			:SetLayout("VERTICAL")
			:AddChild(UIElements.New("HorizontalLine", "hline")
				:SetColor("ACTIVE_BG_ALT")
			)
			:AddChildrenWithFunction(private.CreateTaskListElements)
		)
		:SetScript("OnEnter", TaskListUI.UpdateFrame)
		:SetScript("OnLeave", TaskListUI.UpdateFrame)
	frame:GetElement("closeBtn"):SetScript("OnClick", private.CloseBtnOnClick)
	return frame
end

function private.CreateTaskListElements(frame)
	-- get all the category counts
	local categoryCount = TempTable.Acquire()
	for _, task in TSM.TaskList.Iterator() do
		local category = task:GetCategory()
		categoryCount[category] = (categoryCount[category] or 0) + 1
	end

	local currentCategoryFrame, currentTaskFrame = nil, nil
	local lastCategory = nil
	for _, task in TSM.TaskList.Iterator() do
		local category = task:GetCategory()
		local taskDesc = task:GetTaskDesc()
		local buttonEnabled, buttonText = task:GetButtonState()
		-- draw a category row if this is the first task for a category
		local isNewCategory = category ~= lastCategory
		if isNewCategory then
			private.CreateCategoryLine(frame, category, categoryCount[category])
			local categoryFrame = UIElements.New("Frame", "categoryChildren_"..category)
				:SetLayout("VERTICAL")
			frame:AddChild(categoryFrame)
			if private.categoryCollapsed[category] then
				categoryFrame:Hide()
			else
				categoryFrame:Show()
			end
			currentCategoryFrame = categoryFrame
		end
		lastCategory = category

		private.CreateTaskHeaderLine(currentCategoryFrame, taskDesc, buttonText, buttonEnabled, task)
		if task:HasSubTasks() then
			local taskFrame = UIElements.New("Frame", "taskChildren_"..taskDesc)
				:SetLayout("VERTICAL")
			currentCategoryFrame:AddChild(taskFrame)
			if private.taskCollapsed[taskDesc] then
				taskFrame:Hide()
			else
				taskFrame:Show()
			end
			currentTaskFrame = taskFrame
		else
			currentTaskFrame = nil
		end

		if task:HasSubTasks() then
			-- draw the subtask rows
			for index, subTaskDesc in task:SubTaskIterator() do
				private.CreateSubTaskLine(currentTaskFrame, subTaskDesc, task, index)
			end
		end
	end

	TempTable.Release(categoryCount)
end

function private.CreateCategoryLine(frame, category, count)
	frame:AddChild(UIElements.New("Frame", "category_"..category)
		:SetLayout("HORIZONTAL")
		:SetHeight(28)
		:SetMargin(4, 4, 0, 2)
		:AddChild(UIElements.New("Button", "expanderBtn")
			:SetBackgroundAndSize(private.categoryCollapsed[category] and "iconPack.18x18/Caret/Right" or "iconPack.18x18/Caret/Down")
			:SetContext(category)
			:SetScript("OnClick", private.CategoryExpanderOnClick)
		)
		:AddChild(UIElements.New("Text", "desc")
			:SetWidth("AUTO")
			:SetMargin(2, 4, 0, 0)
			:SetFont("BODY_BODY1_BOLD")
			:SetTextColor("INDICATOR_ALT")
			:SetText(category)
		)
		:AddChild(UIElements.New("Text", "count")
			:SetFont("BODY_BODY2_MEDIUM")
			:SetText(format("(%d)", count))
		)
	)
end

function private.CreateTaskHeaderLine(frame, taskText, buttonText, buttonEnabled, task)
	local button = UIElements.New(task:IsSecureMacro() and "SecureMacroActionButton" or "ActionButton", "button")
		:SetSize(80, 15)
		:SetFont("BODY_BODY3_MEDIUM")
		:SetContext(task)
		:SetDisabled(not buttonEnabled)
		:SetText(buttonText)
	if task:IsSecureMacro() then
		button:SetMacroText(task:GetSecureMacroText())
	else
		button:SetScript("OnMouseDown", private.OnTaskButtonMouseDown)
		button:SetScript("OnClick", private.OnTaskButtonClicked)
	end
	frame:AddChild(UIElements.New("Frame", "task_"..taskText)
		:SetLayout("HORIZONTAL")
		:SetHeight(26)
		:SetPadding(18, 8, 0, 0)
		:AddChild(UIElements.New("Button", "expanderBtn")
			:SetBackgroundAndSize(private.taskCollapsed[taskText] and "iconPack.18x18/Caret/Right" or "iconPack.18x18/Caret/Down")
			:SetContext(taskText)
			:SetScript("OnClick", private.TaskExpanderOnClick)
		)
		:AddChild(UIElements.New("Text", "desc")
			:SetMargin(2, 4, 0, 0)
			:SetFont("ITEM_BODY1")
			:SetTextColor("INDICATOR")
			:SetText(taskText)
		)
		:AddChild(button)
	)
	if not task:HasSubTasks() then
		frame:GetElement("task_"..taskText..".expanderBtn"):Hide()
	end
end

function private.CreateSubTaskLine(frame, subTask, task, index)
	if task:CanHideSubTasks() then
		frame:AddChild(UIElements.New("Frame", "subTask")
			:SetHeight(20)
			:SetMargin(18, 8, 0, 2)
			:SetLayout("HORIZONTAL")
			:SetContext(task)
			:AddChild(UIElements.New("Button", "hideBtn")
				:SetBackgroundAndSize("iconPack.18x18/Visible")
				:SetContext(index)
				:SetScript("OnClick", private.HideBtnOnClick)
			)
			:AddChild(UIElements.New("Text", "text")
				:SetMargin(2, 0, 0, 0)
				:SetFont("BODY_BODY2_BOLD")
				:SetText(subTask)
			)
		)
	else
		frame:AddChild(UIElements.New("Text", "text")
			:SetHeight(20)
			:SetMargin(38, 8, 0, 2)
			:SetFont("BODY_BODY2_BOLD")
			:SetText(subTask)
		)
	end
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.BaseFrameOnHide(frame)
	assert(frame == private.frame)
	frame:Release()
	private.frame = nil
	UIUtils.AnalyticsRecordClose("task_list")
end

function private.CloseBtnOnClick(button)
	Log.PrintUser(L["Hiding the TSM Task List UI. Type '/tsm tasklist' to reopen it."])
	private.settings.isOpen = false
	TaskListUI.Toggle()
end

function private.CategoryExpanderOnClick(button)
	local contentFrame = button:GetParentElement():GetParentElement()
	local category = button:GetContext()
	private.categoryCollapsed[category] = not private.categoryCollapsed[category]
	if private.categoryCollapsed[category] then
		button:SetBackgroundAndSize("iconPack.18x18/Caret/Right")
		contentFrame:GetElement("categoryChildren_"..category):Hide()
	else
		button:SetBackgroundAndSize("iconPack.18x18/Caret/Down")
		contentFrame:GetElement("categoryChildren_"..category):Show()
	end
	contentFrame:GetBaseElement():Draw()
end

function private.TaskExpanderOnClick(button)
	local contentFrame = button:GetParentElement():GetParentElement()
	local taskText = button:GetContext()
	private.taskCollapsed[taskText] = not private.taskCollapsed[taskText]
	if private.taskCollapsed[taskText] then
		button:SetBackgroundAndSize("iconPack.18x18/Caret/Right")
		contentFrame:GetElement("taskChildren_"..taskText):Hide()
	else
		button:SetBackgroundAndSize("iconPack.18x18/Caret/Down")
		contentFrame:GetElement("taskChildren_"..taskText):Show()
	end
	contentFrame:GetBaseElement():Draw()
end

function private.OnTaskButtonMouseDown(button)
	local task = button:GetContext()
	task:OnMouseDown()
end

function private.OnTaskButtonClicked(button)
	local task = button:GetContext()
	task:OnButtonClick()
end

function private.HideBtnOnClick(button)
	local task = button:GetParentElement():GetContext()
	task:HideSubTask(button:GetContext())
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.OnTaskListUpdate()
	if private.frame then
		local numTasks = TSM.TaskList.GetNumTasks()
		if numTasks == 0 then
			private.didAutoShow = false
			TaskListUI.Toggle()
			return
		end
		private.frame:SetTitle(L["TSM TASK LIST"].." ("..numTasks..")")
		local contentFrame = private.frame:GetElement("content")
		contentFrame:ReleaseAllChildren()
		contentFrame:AddChild(UIElements.New("HorizontalLine", "hline")
			:SetColor("ACTIVE_BG_ALT")
		)
		contentFrame:AddChildrenWithFunction(private.CreateTaskListElements)
		contentFrame:GetParentElement():Draw()
	elseif not private.didAutoShow and TSM.TaskList.GetNumTasks() > 0 then
		TaskListUI.Toggle()
		private.didAutoShow = true
	end
end
