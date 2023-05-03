-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Groups = TSM.UI.VendoringUI:NewPackage("Groups")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local FSM = TSM.Include("Util.FSM")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	groupSearch = "",
	fsm = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Groups.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("char", "vendoringUIContext", "groupTree")
	private.FSMCreate()
	TSM.UI.VendoringUI.RegisterTopLevelPage(L["Groups"], private.GetFrame)
end



-- ============================================================================
-- Groups UI
-- ============================================================================

function private.GetFrame()
	UIUtils.AnalyticsRecordPathChange("vendoring", "groups")
	return UIElements.New("Frame", "buy")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "container")
			:SetLayout("VERTICAL")
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Text", "groupsText")
				:SetHeight(18)
				:SetMargin(0, 0, 0, 8)
				:SetFont("BODY_BODY3")
				:SetFormattedText(L["%d |4Group:Groups; Selected (%d |4Item:Items;)"], 0, 0)
			)
			:AddChild(UIElements.New("Frame", "search")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:AddChild(UIElements.New("Input", "input")
					:SetIconTexture("iconPack.18x18/Search")
					:SetClearButtonEnabled(true)
					:AllowItemInsert(true)
					:SetValue(private.groupSearch)
					:SetHintText(L["Search Groups"])
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
			:SetSettingsContext(private.settings, "groupTree")
			:SetQuery(TSM.Groups.CreateQuery(), "Vendoring")
			:SetSearchString(private.groupSearch)
			:SetScript("OnGroupSelectionChanged", private.GroupTreeOnGroupSelectionChanged)
		)
		:AddChild(UIElements.New("HorizontalLine", "line2"))
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Frame", "gold")
				:SetLayout("HORIZONTAL")
				:SetWidth(166)
				:SetMargin(0, 8, 0, 0)
				:SetPadding(4)
				:AddChild(TSM.UI.Views.PlayerGoldText.New("text"))
			)
			:AddChild(UIElements.New("ActionButton", "buyBtn")
				:SetMargin(0, 8, 0, 0)
				:SetText(L["Buy Groups"])
				:SetScript("OnClick", private.BuyBtnOnClick)
			)
			:AddChild(UIElements.New("ActionButton", "sellBtn")
				:SetText(L["Sell Groups"])
				:SetScript("OnClick", private.SellBtnOnClick)
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
	if text == private.groupSearch then
		return
	end
	private.groupSearch = text

	input:GetElement("__parent.__parent.__parent.groupTree")
		:SetSearchString(private.groupSearch)
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
	local footerFrame = groupTree:GetElement("__parent.footer")
	footerFrame:GetElement("sellBtn")
		:SetDisabled(groupTree:IsSelectionCleared())
	footerFrame:GetElement("buyBtn")
		:SetDisabled(groupTree:IsSelectionCleared())
	footerFrame:Draw()

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
	groupTree:GetElement("__parent.container.groupsText")
		:SetFormattedText(L["%d |4Group:Groups; Selected (%d |4Item:Items;)"], numGroups, numItems)
		:Draw()
end

function private.BuyBtnOnClick(button)
	private.fsm:ProcessEvent("EV_BUTTON_CLICKED", "BUY")
end

function private.SellBtnOnClick(button)
	private.fsm:ProcessEvent("EV_BUTTON_CLICKED", "SELL")
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	local fsmContext = {
		frame = nil,
		currentOperation = nil,
	}
	local function UpdateFrame(context)
		local footer = context.frame:GetElement("footer")
		footer:GetElement("buyBtn")
			:SetPressed(context.currentOperation == "BUY")
			:SetDisabled(context.currentOperation)
		footer:GetElement("sellBtn")
			:SetPressed(context.currentOperation == "SELL")
			:SetDisabled(context.currentOperation)
		footer:Draw()
	end
	private.fsm = FSM.New("VENDORING_GROUPS")
		:AddState(FSM.NewState("ST_FRAME_CLOSED")
			:SetOnEnter(function(context)
				context.frame = nil
				assert(not context.currentOperation)
			end)
			:AddTransition("ST_FRAME_OPEN")
			:AddTransition("ST_FRAME_CLOSED")
			:AddEvent("EV_FRAME_SHOW", function(context, frame)
				context.frame = frame
				return "ST_FRAME_OPEN"
			end)
		)
		:AddState(FSM.NewState("ST_FRAME_OPEN")
			:SetOnEnter(function(context)
				UpdateFrame(context)
			end)
			:AddTransition("ST_BUSY")
			:AddTransition("ST_FRAME_CLOSED")
			:AddEventTransition("EV_BUTTON_CLICKED", "ST_BUSY")
		)
		:AddState(FSM.NewState("ST_BUSY")
			:SetOnEnter(function(context, operation)
				assert(not context.currentOperation)
				context.currentOperation = operation
				local groups = TempTable.Acquire()
				for _, groupPath in context.frame:GetElement("groupTree"):SelectedGroupsIterator() do
					tinsert(groups, groupPath)
				end
				if operation == "BUY" then
					TSM.Vendoring.Groups.BuyGroups(groups, private.FSMSellCallback)
				elseif operation == "SELL" then
					TSM.Vendoring.Groups.SellGroups(groups, private.FSMSellCallback)
				else
					error("Unexpected operation: "..tostring(operation))
				end
				TempTable.Release(groups)
				UpdateFrame(context)
			end)
			:SetOnExit(function(context)
				context.currentOperation = nil
				TSM.Vendoring.Groups.StopBuySell()
			end)
			:AddTransition("ST_FRAME_OPEN")
			:AddTransition("ST_FRAME_CLOSED")
			:AddEventTransition("EV_SELL_DONE", "ST_FRAME_OPEN")
		)
		:AddDefaultEventTransition("EV_FRAME_HIDE", "ST_FRAME_CLOSED")
		:Init("ST_FRAME_CLOSED", fsmContext)
end

function private.FSMSellCallback()
	private.fsm:ProcessEvent("EV_SELL_DONE")
end
