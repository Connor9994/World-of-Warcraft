-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local StoryBoard = TSM.UI:NewPackage("StoryBoard")
local Log = TSM.Include("Util.Log")
local Reactive = TSM.Include("Util.Reactive")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIManager = TSM.Include("UI.UIManager")
local private = {
	manager = nil,
	settings = nil,
	dividedContainerContext = {},
}
local MIN_FRAME_SIZE = { width = 400, height = 300 }
local DEFAULT_DIVIDED_CONTAINER_CONTEXT = { leftWidth = 200 }
local STATE_SCHEMA = Reactive.CreateStateSchema()
	:AddOptionalTableField("frame")
	:Commit()



-- ============================================================================
-- Module Functions
-- ============================================================================

function StoryBoard.OnEnable()
	private.settings = Settings.NewView()
		:AddKey("global", "storyBoardUIContext", "frame")

	local state = STATE_SCHEMA:CreateState()
	private.manager = UIManager.Create(state, private.ActionHandler)
end

function StoryBoard.OnDisable()
	private.manager:ProcessAction("ACTION_ON_DISABLE")
end

function StoryBoard.Toggle()
	private.manager:ProcessAction("ACTION_TOGGLE")
end



-- ============================================================================
-- Action Handler
-- ============================================================================

function private.ActionHandler(state, action)
	Log.Info("Handling action %s", action)
	if action == "ACTION_FRAME_SHOW" then
		assert(not state.frame)
		state.frame = private.CreateMainFrame(state)
		state.frame:Show()
		state.frame:Draw()
	elseif action == "ACTION_FRAME_ON_HIDE" then
		assert(state.frame)
		state.frame:Hide()
		state.frame:Release()
		state.frame = nil
	elseif action == "ACTION_TOGGLE" then
		if state.frame then
			state.frame:Hide()
		else
			return "ACTION_FRAME_SHOW"
		end
	elseif action == "ACTION_ON_DISABLE" then
		if not state.frame then
			return
		end
		state.frame:Hide()
	else
		error("Unknown action: "..tostring(action))
	end
end



-- ============================================================================
-- Main Frame
-- ============================================================================

function private.CreateMainFrame(state)
	return UIElements.New("ApplicationFrame", "base")
		:SetParent(UIParent)
		:SetSettingsContext(private.settings, "frame")
		:SetMinResize(MIN_FRAME_SIZE.width, MIN_FRAME_SIZE.height)
		:SetStrata("HIGH")
		:SetTitle("TSM Storyboard")
		:SetScript("OnHide", private.FrameOnHide)
		:SetContentFrame(UIElements.New("DividedContainer", "container")
			:SetContextTable(private.dividedContainerContext, DEFAULT_DIVIDED_CONTAINER_CONTEXT)
			:SetBackgroundColor("PRIMARY_BG")
			:SetMinWidth(100, 100)
			:SetLeftChild(UIElements.New("ScrollFrame", "left")
				:SetBackgroundColor("PRIMARY_BG")
				:AddChild(UIElements.New("Text", "controlsHeading")
					:SetHeight(20)
					:SetMargin(8, 0, 0, 0)
					:SetFont("BODY_BODY3")
					:SetJustifyH("LEFT")
					:SetText("Controls")
				)
				:AddChild(UIElements.New("Button", "actionButton")
					:SetHeight(20)
					:SetPadding(24, 0, 0, 0)
					:SetFont("BODY_BODY3")
					:SetJustifyH("LEFT")
					:SetBackground("PRIMARY_BG", true)
					:SetText("ActionButton")
					:SetScript("OnClick", private.CreateActionButtonPage)
				)
				:AddChild(UIElements.New("Button", "button")
					:SetHeight(20)
					:SetPadding(24, 0, 0, 0)
					:SetFont("BODY_BODY3")
					:SetJustifyH("LEFT")
					:SetBackground("PRIMARY_BG", true)
					:SetText("Button")
					:SetScript("OnClick", private.CreateButtonPage)
				)
			)
			:SetRightChild(UIElements.New("ScrollFrame", "right")
				:SetPadding(16)
			)
		)
end

function private.GetAndClearContent(button)
	button:SetHighlightLocked(true)
		:Draw()
	local right = button:GetElement("__parent.__parent.right")
	local prevButton = right:GetContext()
	if prevButton then
		prevButton:SetHighlightLocked(false)
			:Draw()
	end
	right:SetContext(button)
	right:ReleaseAllChildren()
	return right
end

function private.CreateActionButtonPage(button)
	private.GetAndClearContent(button)
		:AddChild(private.CreateActionButton("pressed", "Default Button"))
		:AddChild(private.CreateActionButton("pressed", "Disabled Button")
			:SetDisabled(true)
		)
		:AddChild(private.CreateActionButton("pressed", "Pressed Button")
			:SetPressed(true)
		)
		:AddChild(private.CreateActionButton("modifier", "Modifier Button (Shift Not Pressed)")
			:SetModifierText("Modifier Button (Shift Pressed)", "SHIFT")
		)
		:AddChild(private.CreateActionButton("cooldown", "No Click Cooldown")
			:DisableClickCooldown()
		)
		:Draw()
end

function private.CreateActionButton(id, text)
	return UIElements.New("ActionButton", id)
		:SetHeight(24)
		:SetMargin(0, 0, 32, 0)
		:SetText(text)
		:SetScript("OnClick", private.ButtonOnClick)
end

function private.CreateButtonPage(button)
	private.GetAndClearContent(button)
		:AddChild(private.CreateButton("colored")
			:SetBackground("ACTIVE_BG")
			:SetText("Solid Color")
		)
		:AddChild(private.CreateButton("coloredHighlight")
			:SetBackground("ACTIVE_BG", true)
			:SetText("Solid Color with Highlight")
		)
		:AddChild(private.CreateButton("iconLeft")
			:SetIcon("iconPack.14x14/Add/Circle", "LEFT")
			:SetText("Button With Left Icon")
		)
		:AddChild(UIElements.New("Frame", "row")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 32, 0)
			:AddChild(UIElements.New("Spacer", "spacer1"))
			:AddChild(UIElements.New("Button", "icon")
				:SetScript("OnClick", private.ButtonOnClick)
				:SetBackgroundAndSize("iconPack.14x14/Attention")
			)
			:AddChild(UIElements.New("Spacer", "spacer2"))
			:AddChild(UIElements.New("Button", "texture")
				:SetSize(24, 24)
				:SetBackground(136254)
				:SetScript("OnClick", private.ButtonOnClick)
			)
			:AddChild(UIElements.New("Spacer", "spacer3"))
		)
		:Draw()
end

function private.CreateButton(id)
	return UIElements.New("Button", id)
		:SetHeight(24)
		:SetMargin(0, 0, 32, 0)
		:SetScript("OnClick", private.ButtonOnClick)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.FrameOnHide()
	private.manager:ProcessAction("ACTION_FRAME_ON_HIDE")
end

function private.ButtonOnClick()
	print("Click!")
end
