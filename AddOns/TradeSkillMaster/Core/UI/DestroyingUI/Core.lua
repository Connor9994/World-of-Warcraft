-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local DestroyingUI = TSM.UI:NewPackage("DestroyingUI")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local DisenchantInfo = TSM.Include("Data.DisenchantInfo")
local ItemString = TSM.Include("Util.ItemString")
local Log = TSM.Include("Util.Log")
local TempTable = TSM.Include("Util.TempTable")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local Reactive = TSM.Include("Util.Reactive")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Conversions = TSM.Include("Service.Conversions")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIManager = TSM.Include("UI.UIManager")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	manager = nil,
	settings = nil,
	query = nil,
}
local MIN_FRAME_SIZE = { width = 280, height = 280 }
local CONVERSION_METHODS = {
	Conversions.METHOD.PROSPECT,
	Conversions.METHOD.MILL,
}
local STATE_SCHEMA = Reactive.CreateStateSchema()
	:AddOptionalTableField("combineFuture")
	:AddOptionalTableField("destroyFuture")
	:AddOptionalTableField("frame")
	:AddBooleanField("canCombine", false)
	:AddBooleanField("canDestroy", false)
	:AddBooleanField("autoShow", false)
	:AddBooleanField("autoCombine", false)
	:AddBooleanField("didAutoShow", false)
	:Commit()



-- ============================================================================
-- Module Functions
-- ============================================================================

function DestroyingUI.OnEnable()
	private.settings = Settings.NewView()
		:AddKey("global", "destroyingUIContext", "frame")
		:AddKey("global", "destroyingUIContext", "itemsScrollingTable")
		:AddKey("global", "destroyingOptions", "autoShow")
		:AddKey("global", "destroyingOptions", "autoStack")

	local state = STATE_SCHEMA:CreateState()
	private.manager = UIManager.Create(state, private.ActionHandler)

	-- Setup publisher to set state.canCombine
	private.manager:SetStateFromPublisher("canCombine", TSM.Destroying.CanCombinePublisher())

	-- Create query and setup publisher for state.canDestroy
	private.query = TSM.Destroying.CreateBagQuery()
	private.manager:SetStateFromPublisher("canDestroy", private.query:Publisher()
		:MapToValue(private.query)
		:MapWithMethod("Count")
		:MapBooleanNotEquals(0)
	)

	-- Setup publishers to set state.autoShow/autoCombine from settings
	private.manager:SetStateFromPublisher("autoCombine", private.settings:PublisherForKey("autoStack"))
	private.manager:SetStateFromPublisher("autoShow", private.settings:PublisherForKey("autoShow"))

	-- Publisher for when we have something to combine/destory
	private.manager:ProcessActionFromPublisher("ACTION_CAN_COMBINE_OR_DESTROY", state:Publisher()
		:IgnoreDuplicatesWithKeys("canDestroy", "canCombine", "autoShow", "didAutoShow")
		:IgnoreWithFunction(private.StateToShouldShow)
	)

	-- Publisher for when we don't have anything to combine/destory
	private.manager:ProcessActionFromPublisher("ACTION_CAN_NOT_COMBINE_OR_DESTROY", state:Publisher()
		:IgnoreDuplicatesWithKeys("canDestroy", "canCombine")
		:IgnoreWithFunction(private.StateToShouldHide)
	)
end

function DestroyingUI.OnDisable()
	private.manager:ProcessAction("ACTION_ON_DISABLE")
end

function DestroyingUI.Toggle()
	private.manager:ProcessAction("ACTION_TOGGLE")
end



-- ============================================================================
-- Action Handler
-- ============================================================================

function private.ActionHandler(state, action)
	Log.Info("Handling action %s", action)
	if action == "ACTION_FRAME_SHOW" then
		assert(not state.frame and (state.canCombine or state.canDestroy))
		UIUtils.AnalyticsRecordPathChange("destroying")
		state.didAutoShow = true
		state.frame = private.CreateMainFrame(state)
		state.frame:Show()
		state.frame:Draw()
		private.ItemsOnSelectionChanged(state.frame:GetElement("content.items"))

		if state.autoCombine then
			-- We should auto-combine first
			return "ACTION_COMBINE_START"
		end
	elseif action == "ACTION_FRAME_ON_HIDE" then
		UIUtils.AnalyticsRecordClose("destroying")
		assert(state.frame)
		if state.combineFuture then
			state.combineFuture:Cancel()
			state.combineFuture = nil
		end
		if state.destroyFuture then
			state.destroyFuture:Cancel()
			state.destroyFuture = nil
		end
		state.frame:Hide()
		state.frame:Release()
		state.frame = nil
	elseif action == "ACTION_COMBINE_START" then
		assert(not state.combineFuture)
		local future = TSM.Destroying.StartCombine()
		future:SetScript("OnDone", private.CombineFutureOnDone)
		state.combineFuture = future
	elseif action == "ACTION_COMBINE_DONE" then
		-- Don't care what the result was
		state.combineFuture:GetValue()
		state.combineFuture = nil
	elseif action == "ACTION_DESTROY_START" then
		assert(not state.destroyFuture)
		local future = TSM.Destroying.StartDestroy(state.frame:GetElement("content.destroyBtn"), state.frame:GetElement("content.items"):GetSelection())
		future:SetScript("OnDone", private.DestroyFutureOnDone)
		state.destroyFuture = future
	elseif action == "ACTION_DESTROY_DONE" then
		-- Don't care what the result was
		state.destroyFuture:GetValue()
		state.destroyFuture = nil
	elseif action == "ACTION_TOGGLE" then
		if state.frame then
			state.frame:Hide()
		elseif state.canCombine or state.canDestroy then
			return "ACTION_FRAME_SHOW"
		end
	elseif action == "ACTION_ON_DISABLE" or action == "ACTION_CAN_NOT_COMBINE_OR_DESTROY" then
		if not state.frame then
			return
		end
		state.frame:Hide()
	elseif action == "ACTION_CAN_COMBINE_OR_DESTROY" then
		if state.frame then
			return
		end
		return "ACTION_FRAME_SHOW"
	else
		error("Unknown action: "..tostring(action))
	end
end



-- ============================================================================
-- Main Frame
-- ============================================================================

function private.CreateMainFrame(state)
	local frame = UIElements.New("ApplicationFrame", "base")
		:SetParent(UIParent)
		:SetSettingsContext(private.settings, "frame")
		:SetMinResize(MIN_FRAME_SIZE.width, MIN_FRAME_SIZE.height)
		:SetStrata("HIGH")
		:SetTitle(L["Destroying"])
		:SetScript("OnHide", private.FrameOnHide)
		:SetContentFrame(UIElements.New("Frame", "content")
			:SetLayout("VERTICAL")
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Frame", "item")
				:SetLayout("VERTICAL")
				:SetHeight(82)
				:SetMargin(8)
				:SetBackgroundColor("PRIMARY_BG_ALT", true)
				:SetBorderColor("FRAME_BG")
				:AddChild(UIElements.New("Frame", "header")
					:SetLayout("HORIZONTAL")
					:SetPadding(8, 8, 8, 4)
					:SetHeight(32)
					:SetBackgroundColor("FRAME_BG", true)
					:AddChild(UIElements.New("Button", "icon")
						:SetSize(20, 20)
						:SetMargin(0, 5, 0, 0)
					)
					:AddChild(UIElements.New("Text", "name")
						:SetHeight(20)
						:SetFont("ITEM_BODY2")
					)
				)
				-- Draw a line along the bottom to hide the rounded corners at the bottom of the header frame
				:AddChildNoLayout(UIElements.New("Texture", "line")
					:AddAnchor("BOTTOMLEFT", "header")
					:AddAnchor("BOTTOMRIGHT", "header")
					:SetHeight(4)
					:SetColor("FRAME_BG")
				)
				:AddChild(UIElements.New("Frame", "container")
					:SetLayout("VERTICAL")
					:SetPadding(0, 0, 4, 4)
					:AddChild(UIElements.New("ScrollFrame", "scroll")
						:SetPadding(8, 8, 0, 0)
					)
				)
			)
			:AddChild(UIElements.New("QueryScrollingTable", "items")
				:SetSettingsContext(private.settings, "itemsScrollingTable")
				:GetScrollingTableInfo()
					:NewColumn("item")
						:SetTitle(L["Item"])
						:SetIconSize(12)
						:SetFont("ITEM_BODY3")
						:SetJustifyH("LEFT")
						:SetTextInfo("itemString", UIUtils.GetDisplayItemName)
						:SetIconInfo("itemString", ItemInfo.GetTexture)
						:SetTooltipInfo("itemString")
						:SetSortInfo("name")
						:SetTooltipLinkingDisabled(true)
						:SetActionIconInfo(1, 12, private.GetHideIcon)
						:SetActionIconClickHandler(private.OnHideIconClick)
						:DisableHiding()
						:Commit()
					:NewColumn("num")
						:SetTitle("Qty")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("CENTER")
						:SetTextInfo("quantity")
						:SetSortInfo("quantity")
						:Commit()
					:Commit()
				:SetQuery(private.query)
				:SetScript("OnSelectionChanged", private.ItemsOnSelectionChanged)
			)
			:AddChild(UIElements.New("HorizontalLine", "lineBottom"))
			:AddChild(UIElements.New("ActionButton", "combineBtn")
				:SetHeight(26)
				:SetMargin(12, 12, 12, 0)
				:SetTextPublisher(state:PublisherForKeyChange("combineFuture")
					:MapToBoolean()
					:MapBooleanWithValues(L["Combining..."], L["Combine Partial Stacks"])
				)
				:SetDisabledPublisher(state:Publisher()
					:IgnoreDuplicatesWithKeys("canCombine", "combineFuture", "destroyFuture")
					:MapWithFunction(private.StateToCombineDisabled)
				)
				:SetPressedPublisher(state:PublisherForKeyChange("combineFuture")
					:MapToBoolean()
				)
				:SetScript("OnClick", private.CombineButtonOnClick)
			)
			:AddChild(UIElements.NewNamed("SecureMacroActionButton", "destroyBtn", "TSMDestroyBtn")
				:SetHeight(26)
				:SetMargin(12, 12, 8, 12)
				:SetTextPublisher(state:PublisherForKeyChange("destroyFuture")
					:MapToBoolean()
					:MapBooleanWithValues(L["Destroying..."], L["Destroy Next"])
				)
				:SetDisabledPublisher(state:Publisher()
					:IgnoreDuplicatesWithKeys("canDestroy", "combineFuture", "destroyFuture")
					:MapWithFunction(private.StateToDestroyDisabled)
				)
				:SetPressedPublisher(state:PublisherForKeyChange("destroyFuture")
					:MapToBoolean()
				)
				:SetScript("PreClick", private.DestroyButtonPreClick)
			)
		)
	return frame
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.FrameOnHide()
	private.manager:ProcessAction("ACTION_FRAME_ON_HIDE")
end

function private.GetHideIcon(_, data, iconIndex, isMouseOver)
	assert(iconIndex == 1)
	-- TODO: needs a new texture for the icon
	return true, isMouseOver and TextureAtlas.GetColoredKey("iconPack.12x12/Hide", "TEXT_ALT") or "iconPack.12x12/Hide", true, L["Click to hide this item for the current session. Hold shift to hide this item permanently."]
end

function private.OnHideIconClick(scrollingTable, data, iconIndex, mouseButton)
	assert(iconIndex == 1)
	if mouseButton ~= "LeftButton" then
		return
	end
	local row = scrollingTable._query:GetResultRowByUUID(data)
	local itemString = row:GetField("itemString")
	if IsShiftKeyDown() then
		Log.PrintfUser(L["Destroying will ignore %s permanently. You can remove it from the ignored list in the settings."], ItemInfo.GetName(itemString))
		TSM.Destroying.IgnoreItemPermanent(itemString)
	else
		Log.PrintfUser(L["Destroying will ignore %s until you log out."], ItemInfo.GetName(itemString))
		TSM.Destroying.IgnoreItemSession(itemString)
	end
end

function private.ItemsOnSelectionChanged(scrollingTable)
	if not scrollingTable:GetSelection() then
		-- select the first row
		local result = private.query:GetFirstResult()
		return scrollingTable:SetSelection(result and result:GetUUID() or nil)
	end

	local itemString = scrollingTable:GetSelection():GetField("itemString")
	local itemFrame = scrollingTable:GetElement("__parent.item")
	itemFrame:GetElement("header.icon")
		:SetBackground(ItemInfo.GetTexture(itemString))
		:SetTooltip(itemString)
	itemFrame:GetElement("header.name")
		:SetText(UIUtils.GetDisplayItemName(itemString) or "")

	local info, targetItems = private.GetDestroyInfo(itemString)
	local scrollFrame = itemFrame:GetElement("container.scroll")
	scrollFrame:ReleaseAllChildren()
	for i, text in ipairs(info) do
		scrollFrame:AddChild(UIElements.New("Button", "row"..i)
			:SetHeight(14)
			:SetFont("ITEM_BODY3")
			:SetJustifyH("LEFT")
			:SetText(text)
			:SetTooltip(targetItems[i])
		)
	end
	TempTable.Release(info)
	TempTable.Release(targetItems)
	itemFrame:Draw()
end

function private.CombineButtonOnClick(button)
	private.manager:ProcessAction("ACTION_COMBINE_START")
end

function private.DestroyButtonPreClick(button)
	private.manager:ProcessAction("ACTION_DESTROY_START")
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetDestroyInfo(itemString)
	local classId = ItemInfo.GetClassId(itemString)
	local quality = ItemInfo.GetQuality(itemString)
	local itemLevel = Environment.IsRetail() and ItemInfo.GetItemLevel(itemString) or ItemInfo.GetItemLevel(ItemString.GetBase(itemString))
	local expansion = Environment.IsRetail() and ItemInfo.GetExpansion(itemString) or nil
	local info = TempTable.Acquire()
	local targetItems = TempTable.Acquire()
	for targetItemString in DisenchantInfo.TargetItemIterator() do
		local amountOfMats, matRate, minAmount, maxAmount = DisenchantInfo.GetTargetItemSourceInfo(targetItemString, classId, quality, itemLevel, expansion)
		if amountOfMats then
			local name = ItemInfo.GetName(targetItemString)
			local color = ItemInfo.GetQualityColor(targetItemString)
			if name and color then
				matRate = matRate and matRate * 100
				matRate = matRate and matRate.."% " or ""
				local range = (minAmount and maxAmount) and Theme.GetColor("FEEDBACK_YELLOW"):ColorText(minAmount ~= maxAmount and (" ["..minAmount.."-"..maxAmount.."]") or (" ["..minAmount.."]")) or ""
				tinsert(info, color..matRate..name.." x"..amountOfMats.."|r"..range)
				tinsert(targetItems, targetItemString)
			end
		end
	end
	for _, method in ipairs(CONVERSION_METHODS) do
		for targetItemString, amountOfMats, matRate, minAmount, maxAmount in Conversions.TargetItemsByMethodIterator(itemString, method) do
			local name = ItemInfo.GetName(targetItemString)
			local color = ItemInfo.GetQualityColor(targetItemString)
			if name and color then
				matRate = matRate and matRate * 100
				matRate = matRate and matRate.."% " or ""
				local range = (minAmount and maxAmount) and Theme.GetColor("FEEDBACK_YELLOW"):ColorText(minAmount ~= maxAmount and (" ["..minAmount.."-"..maxAmount.."]") or (" ["..minAmount.."]")) or ""
				tinsert(info, color..matRate..name.." x"..amountOfMats.."|r"..range)
				tinsert(targetItems, targetItemString)
			end
		end
	end
	return info, targetItems
end

function private.StateToCombineDisabled(state)
	return state.combineFuture or state.destroyFuture or not state.canCombine
end

function private.StateToDestroyDisabled(state)
	return state.combineFuture or state.destroyFuture or not state.canDestroy
end

function private.StateToShouldShow(state)
	return state.autoShow and not state.didAutoShow and (state.canDestroy or state.canCombine)
end

function private.StateToShouldHide(state)
	return not state.canDestroy and not state.canCombine
end

function private.CombineFutureOnDone()
	private.manager:ProcessAction("ACTION_COMBINE_DONE")
end

function private.DestroyFutureOnDone()
	private.manager:ProcessAction("ACTION_DESTROY_DONE")
end
