-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Groups = TSM.UI.MailingUI:NewPackage("Groups")
local L = TSM.Include("Locale").GetTable()
local FSM = TSM.Include("Util.FSM")
local Log = TSM.Include("Util.Log")
local TempTable = TSM.Include("Util.TempTable")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	filterText = "",
	fsm = nil
}
local SECONDS_PER_MINUTE = 60



-- ============================================================================
-- Module Functions
-- ============================================================================

function Groups.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("char", "mailingUIContext", "groupTree")
		:AddKey("global", "mailingOptions", "resendDelay")
	private.FSMCreate()
	TSM.UI.MailingUI.RegisterTopLevelPage(L["Groups"], private.GetGroupsFrame)
end



-- ============================================================================
-- Groups UI
-- ============================================================================

function private.GetGroupsFrame()
	UIUtils.AnalyticsRecordPathChange("mailing", "groups")
	return UIElements.New("Frame", "groups")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "container")
			:SetLayout("VERTICAL")
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Frame", "search")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:AddChild(UIElements.New("Input", "input")
					:SetIconTexture("iconPack.18x18/Search")
					:SetClearButtonEnabled(true)
					:AllowItemInsert(true)
					:SetHintText(L["Search Groups"])
					:SetValue(private.filterText)
					:SetScript("OnValueChanged", private.GroupSearchOnValueChanged)
				)
				:AddChild(UIElements.New("Button", "expandAllBtn")
					:SetSize(24, 24)
					:SetMargin(8, 4, 0, 0)
					:SetBackground("iconPack.18x18/Expand All")
					:SetScript("OnClick", private.ExpandAllGroupsOnClick)
					:SetTooltip(L["Expand / Collapse All Groups"])
				)
				:AddChild(UIElements.New("Button", "selectAllBtn")
					:SetSize(24, 24)
					:SetBackground("iconPack.18x18/Select All")
					:SetScript("OnClick", private.SelectAllGroupsOnClick)
					:SetTooltip(L["Select / Deselect All Groups"])
				)
			)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("ApplicationGroupTree", "groupTree")
			:SetMargin(0, 0, 0, 1)
			:SetSettingsContext(private.settings, "groupTree")
			:SetQuery(TSM.Groups.CreateQuery(), "Mailing")
			:SetSearchString(private.filterText)
			:SetScript("OnGroupSelectionChanged", private.GroupTreeOnGroupSelectionChanged)
		)
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetHeight(26)
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Spacer", "spacer"))
			:AddChild(UIElements.New("Text", "groupsText")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("RIGHT")
				:SetText(format(L["%d Groups Selected"], 0))
			)
			:AddChild(UIElements.New("Texture", "vline")
				:SetWidth(1)
				:SetMargin(8, 8, 2, 2)
				:SetColor("ACTIVE_BG_ALT")
			)
			:AddChild(UIElements.New("Text", "itemsText")
				:SetWidth("AUTO")
				:SetMargin(0, 8, 0, 0)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("RIGHT")
				:SetText(L["Total Items"]..": ".."0")
			)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "bottom")
			:SetLayout("VERTICAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("ActionButton", "mailGroupBtn")
				:SetHeight(24)
				:SetText(L["Mail Selected Groups"])
				:SetScript("OnClick", private.MailBtnOnClick)
				:SetModifierText(L["Mail Selected Groups (Dry Run)"], "CTRL")
				:SetModifierText(L["Mail Selected Groups (Auto Resend)"], "SHIFT")
				:SetModifierText(L["Mail Selected Groups (Dry Run + Auto Resend)"], "SHIFT", "CTRL")
				:SetTooltip(format(L["Hold SHIFT to automatically resend items after '%s', and CTRL to perform a dry-run where no items are actually mailed, but chat messages will still display the result."], SecondsToTime(private.settings.resendDelay * SECONDS_PER_MINUTE)))
			)
		)
		:SetScript("OnUpdate", private.FrameOnUpdate)
		:SetScript("OnHide", private.FrameOnHide)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.FrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)
	private.GroupTreeOnGroupSelectionChanged(frame:GetElement("groupTree"))
	private.fsm:ProcessEvent("EV_FRAME_SHOW", frame)
end

function private.FrameOnHide(frame)
	private.fsm:ProcessEvent("EV_FRAME_HIDE")
end

function private.GroupSearchOnValueChanged(input)
	local text = strlower(input:GetValue())
	if text == private.filterText then
		return
	end
	private.filterText = text

	input:GetElement("__parent.__parent.__parent.groupTree")
		:SetSearchString(private.filterText)
		:Draw()
end

function private.ExpandAllGroupsOnClick(button)
	button:GetElement("__parent.__parent.__parent.groupTree")
		:ToggleExpandAll()
end

function private.SelectAllGroupsOnClick(button)
	button:GetElement("__parent.__parent.__parent.groupTree")
		:ToggleSelectAll()
end

function private.GroupTreeOnGroupSelectionChanged(groupTree)
	groupTree:GetElement("__parent.bottom.mailGroupBtn")
		:SetDisabled(groupTree:IsSelectionCleared())
		:Draw()

	local numGroups, numItems = 0, 0
	for _, groupPath in groupTree:SelectedGroupsIterator() do
		numGroups = numGroups + 1
		if groupPath == TSM.CONST.ROOT_GROUP_PATH then
			-- TODO
		else
			for _ in TSM.Groups.ItemIterator(groupPath) do
				numItems = numItems + 1
			end
		end
	end
	groupTree:GetElement("__parent.footer.groupsText")
		:SetText(format(L["%d Groups Selected"], numGroups))
	groupTree:GetElement("__parent.footer.itemsText")
		:SetText(L["Total Items"]..": "..numItems)

	groupTree:GetElement("__parent.footer")
		:Draw()
end

function private.MailBtnOnClick(button)
	private.fsm:ProcessEvent("EV_BUTTON_CLICKED", IsShiftKeyDown(), IsControlKeyDown())
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	local fsmContext = {
		frame = nil,
		sending = false
	}

	local function UpdateButton(context)
		context.frame:GetElement("bottom.mailGroupBtn")
			:SetText(context.sending and L["Sending..."] or L["Mail Selected Groups"])
			:SetPressed(context.sending)
			:Draw()
	end

	private.fsm = FSM.New("MAILING_GROUPS")
		:AddState(FSM.NewState("ST_HIDDEN")
			:SetOnEnter(function(context)
				TSM.Mailing.Send.KillThread()
				TSM.Mailing.Groups.KillThread()
				context.frame = nil
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_HIDDEN")
			:AddEventTransition("EV_FRAME_SHOW", "ST_SHOWN")
		)
		:AddState(FSM.NewState("ST_SHOWN")
			:SetOnEnter(function(context, frame)
				if not context.frame then
					context.frame = frame
				end
				UpdateButton(context)
			end)
			:AddTransition("ST_HIDDEN")
			:AddTransition("ST_SENDING_START")
			:AddEventTransition("EV_BUTTON_CLICKED", "ST_SENDING_START")
		)
		:AddState(FSM.NewState("ST_SENDING_START")
			:SetOnEnter(function(context, sendRepeat, isDryRun)
				context.sending = true
				local groups = TempTable.Acquire()
				for _, groupPath in context.frame:GetElement("groupTree"):SelectedGroupsIterator() do
					tinsert(groups, groupPath)
				end
				if isDryRun then
					Log.PrintUser(L["Performing a dry-run of your Mailing operations for the selected groups."])
				end
				TSM.Mailing.Groups.StartSending(private.FSMGroupsCallback, groups, sendRepeat, isDryRun)
				TempTable.Release(groups)
				UpdateButton(context)
			end)
			:SetOnExit(function(context)
				context.sending = false
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_HIDDEN")
			:AddEventTransition("EV_SENDING_DONE", "ST_SHOWN")
		)
		:AddDefaultEventTransition("EV_FRAME_HIDE", "ST_HIDDEN")
		:Init("ST_HIDDEN", fsmContext)
end

function private.FSMGroupsCallback()
	private.fsm:ProcessEvent("EV_SENDING_DONE")
end
