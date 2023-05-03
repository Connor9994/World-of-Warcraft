-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local MailingUI = TSM.UI:NewPackage("MailingUI")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local FSM = TSM.Include("Util.FSM")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local Settings = TSM.Include("Service.Settings")
local DefaultUI = TSM.Include("Service.DefaultUI")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	topLevelPages = {},
	frame = nil,
	fsm = nil,
	defaultUISwitchBtn = nil,
	isVisible = false,
	showTimer = nil,
}
local MIN_FRAME_SIZE = { width = 575, height = 400 }



-- ============================================================================
-- Module Functions
-- ============================================================================

function MailingUI.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mailingUIContext", "showDefault")
		:AddKey("global", "mailingUIContext", "frame")
	private.FSMCreate()
end

function MailingUI.OnDisable()
	-- hide the frame
	private.fsm:ProcessEvent("EV_FRAME_HIDE")
end

function MailingUI.RegisterTopLevelPage(name, callback)
	tinsert(private.topLevelPages, { name = name, callback = callback })
end

function MailingUI.IsVisible()
	return private.isVisible
end

function MailingUI.SetSelectedTab(buttonText, redraw)
	private.frame:SetSelectedNavButton(buttonText, redraw)
end



-- ============================================================================
-- Main Frame
-- ============================================================================

function private.CreateMainFrame()
	UIUtils.AnalyticsRecordPathChange("mailing")
	-- Always show the Inbox first
	private.settings.frame.page = 1
	local frame = UIElements.New("LargeApplicationFrame", "base")
		:SetParent(UIParent)
		:SetSettingsContext(private.settings, "frame")
		:SetMinResize(MIN_FRAME_SIZE.width, MIN_FRAME_SIZE.height)
		:SetStrata("HIGH")
		:AddSwitchButton(private.SwitchBtnOnClick)
		:SetScript("OnHide", private.BaseFrameOnHide)

	for _, info in ipairs(private.topLevelPages) do
		frame:AddNavButton(info.name, info.callback)
	end

	private.frame = frame

	return frame
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.BaseFrameOnHide()
	UIUtils.AnalyticsRecordClose("mailing")
	private.fsm:ProcessEvent("EV_FRAME_HIDE")
end

function private.SwitchBtnOnClick(button)
	private.settings.showDefault = button ~= private.defaultUISwitchBtn
	private.fsm:ProcessEvent("EV_SWITCH_BTN_CLICKED")
end

function private.SwitchButtonOnEnter(button)
	button:SetTextColor("TEXT")
		:Draw()
end

function private.SwitchButtonOnLeave(button)
	button:SetTextColor("TEXT_ALT")
		:Draw()
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	private.showTimer = Delay.CreateTimer("MAILING_SHOW", function() private.fsm:ProcessEvent("EV_MAIL_SHOW") end)
	DefaultUI.RegisterMailVisibleCallback(function(visible)
		if visible then
			private.showTimer:RunForFrames(0)
		else
			private.fsm:ProcessEvent("EV_MAIL_CLOSED")
		end
	end)

	MailFrame:UnregisterEvent("MAIL_SHOW")
	CancelEmote()

	local fsmContext = {
		frame = nil,
	}

	ScriptWrapper.Set(MailFrame, "OnHide", function()
		private.fsm:ProcessEvent("EV_FRAME_HIDE")
	end)

	private.fsm = FSM.New("MAILING_UI")
		:AddState(FSM.NewState("ST_CLOSED")
			:AddTransition("ST_DEFAULT_OPEN")
			:AddTransition("ST_FRAME_OPEN")
			:AddEvent("EV_FRAME_TOGGLE", function(context)
				assert(not private.settings.showDefault)
				return "ST_FRAME_OPEN"
			end)
			:AddEvent("EV_MAIL_SHOW", function(context)
				if private.settings.showDefault then
					return "ST_DEFAULT_OPEN"
				else
					return "ST_FRAME_OPEN"
				end
			end)
		)
		:AddState(FSM.NewState("ST_DEFAULT_OPEN")
			:SetOnEnter(function(context, isIgnored)
				if Environment.IsRetail() then
					ShowUIPanel(MailFrame)
				else
					MailFrame_OnEvent(MailFrame, "MAIL_SHOW")
				end

				if not private.defaultUISwitchBtn then
					private.defaultUISwitchBtn = UIElements.New("ActionButton", "switchBtn")
						:SetSize(60, Environment.IsRetail() and 15 or 16)
						:SetFont("BODY_BODY3")
						:AddAnchor("TOPRIGHT", Environment.IsRetail() and -27 or -26, Environment.IsRetail() and -4 or -3)
						:SetRelativeLevel(Environment.IsRetail() and 600 or 3)
						:DisableClickCooldown()
						:SetText(L["TSM4"])
						:SetScript("OnClick", private.SwitchBtnOnClick)
						:SetScript("OnEnter", private.SwitchButtonOnEnter)
						:SetScript("OnLeave", private.SwitchButtonOnLeave)
					private.defaultUISwitchBtn:_GetBaseFrame():SetParent(MailFrame)
				end

				if isIgnored then
					private.defaultUISwitchBtn:Hide()
				else
					private.defaultUISwitchBtn:Show()
					private.defaultUISwitchBtn:Draw()
				end
			end)
			:AddTransition("ST_CLOSED")
			:AddTransition("ST_FRAME_OPEN")
			:AddEvent("EV_FRAME_HIDE", function(context)
				OpenMailFrame:Hide()
				CloseMail()

				return "ST_CLOSED"
			end)
			:AddEventTransition("EV_MAIL_CLOSED", "ST_CLOSED")
			:AddEvent("EV_SWITCH_BTN_CLICKED", function()
				OpenMailFrame:Hide()
				return "ST_FRAME_OPEN"
			end)
		)
		:AddState(FSM.NewState("ST_FRAME_OPEN")
			:SetOnEnter(function(context)
				if not Environment.IsRetail() then
					OpenAllBags()
				end
				CheckInbox()
				DoEmote("READ", nil, true)
				HideUIPanel(MailFrame)

				assert(not context.frame)
				context.frame = private.CreateMainFrame()
				context.frame:Show()
				context.frame:Draw()
				private.isVisible = true
			end)
			:SetOnExit(function(context)
				if context.frame then
					context.frame:Hide()
					context.frame:Release()
					context.frame = nil
				end
				private.isVisible = false
			end)
			:AddTransition("ST_CLOSED")
			:AddTransition("ST_DEFAULT_OPEN")
			:AddEvent("EV_FRAME_HIDE", function(context)
				CancelEmote()
				CloseAllBags()
				CloseMail()

				return "ST_CLOSED"
			end)
			:AddEvent("EV_MAIL_SHOW", function(context)
				if not Environment.IsRetail() then
					OpenAllBags()
				end
				CheckInbox()

				if not context.frame then
					DoEmote("READ", nil, true)
					context.frame = private.CreateMainFrame()
					context.frame:Draw()
					private.isVisible = true
				end
			end)
			:AddEvent("EV_MAIL_CLOSED", function(context)
				CancelEmote()
				CloseAllBags()

				return "ST_CLOSED"
			end)
			:AddEvent("EV_SWITCH_BTN_CLICKED", function()
				return "ST_DEFAULT_OPEN"
			end)
		)
		:Init("ST_CLOSED", fsmContext)
end
