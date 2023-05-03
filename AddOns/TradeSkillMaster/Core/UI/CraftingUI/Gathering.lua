-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Gathering = TSM.UI.CraftingUI:NewPackage("Gathering")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	frame = nil,
	query = nil,
}
local SOURCE_LIST = {
	"bank",
	"vendor",
	"guildBank",
	"alt",
	"altGuildBank",
	"craftProfit",
	"craftNoProfit",
	"auction",
	"auctionDE",
	"auctionCrafting"
}
local SOURCE_TEXT_LIST = {
	L["Bank"],
	L["Vendor"],
	L["Guild Bank"],
	L["Alts"],
	L["Alt Guild Bank"],
	L["Craft (Profitable)"],
	L["Craft (Unprofitable)"],
	L["AH"],
	L["AH (Disenchanting)"],
	L["AH (Crafting)"],
}
if not Environment.HasFeature(Environment.FEATURES.GUILD_BANK) then
	Table.RemoveByValue(SOURCE_LIST, "guildBank")
	Table.RemoveByValue(SOURCE_LIST, "altGuildBank")
	Table.RemoveByValue(SOURCE_TEXT_LIST, L["Guild Bank"])
	Table.RemoveByValue(SOURCE_TEXT_LIST, L["Alt Guild Bank"])
end
if Environment.IsRetail() then
	Table.RemoveByValue(SOURCE_LIST, "bank")
	Table.RemoveByValue(SOURCE_TEXT_LIST, L["Bank"])
end
assert(#SOURCE_LIST == #SOURCE_TEXT_LIST)



-- ============================================================================
-- Module Functions
-- ============================================================================

function Gathering.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "craftingUIContext", "gatheringDividedContainer")
		:AddKey("global", "craftingUIContext", "gatheringScrollingTable")
		:AddKey("profile", "gatheringOptions", "sources")
	TSM.UI.CraftingUI.RegisterTopLevelPage(L["Gathering"], private.GetGatheringFrame)
	TSM.Crafting.Gathering.SetContextChangedCallback(private.ContextChangedCallback)
	TSM.UI.TaskListUI.RegisterUpdateCallback(private.UpdateButtonState)
end



-- ============================================================================
-- Gathering UI
-- ============================================================================

function private.GetGatheringFrame()
	UIUtils.AnalyticsRecordPathChange("crafting", "gathering")
	assert(not private.query)
	private.query = TSM.Crafting.Gathering.CreateQuery()
		:SetUpdateCallback(private.UpdateButtonState)
	local frame = UIElements.New("DividedContainer", "gathering")
		:SetMinWidth(284, 200)
		:SetBackgroundColor("PRIMARY_BG")
		:SetSettingsContext(private.settings, "gatheringDividedContainer")
		:SetLeftChild(UIElements.New("ScrollFrame", "setup")
			:SetPadding(12)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Text", "title")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 8)
				:SetFont("BODY_BODY1_BOLD")
				:SetText(L["Gathering Setup"])
			)
			:AddChild(UIElements.New("Text", "crafterDropdownLabel")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 2)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetTextColor("INDICATOR")
				:SetText(L["Crafter"])
			)
			:AddChild(UIElements.New("SelectionDropdown", "crafterDropdown")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 8)
				:SetHintText(L["Select crafter"])
				:SetScript("OnSelectionChanged", private.CrafterDropdownOnSelectionChanged)
			)
			:AddChild(UIElements.New("Text", "professionDropdownLabel")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 2)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetTextColor("INDICATOR")
				:SetText(L["Profession"])
			)
			:AddChild(UIElements.New("MultiselectionDropdown", "professionDropdown")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 24)
				:SetHintText(L["Select professions"])
				:SetSelectionText(L["No Professions"], L["%d Professions"], L["All Professions"])
				:SetScript("OnSelectionChanged", private.ProfessionDropdownOnSelectionChanged)
			)
			:AddChild(UIElements.New("Text", "sourcesCategoryText")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 2)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetTextColor("INDICATOR")
				:SetText(L["Sources"])
			)
			:AddChild(UIElements.New("Text", "sourcesDesc")
				:SetHeight(28)
				:SetMargin(0, 0, 0, 4)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetTextColor("TEXT_ALT")
				:SetText(L["Define what priority Gathering gives certain sources."])
			)
			:AddChildrenWithFunction(private.CreateSourceRows)
		)
		:SetRightChild(UIElements.New("Frame", "mats")
			:SetLayout("VERTICAL")
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Text", "title")
				:SetHeight(20)
				:SetMargin(0, 0, 8, 8)
				:SetFont("BODY_BODY1_BOLD")
				:SetJustifyH("CENTER")
				:SetText(L["Materials to Gather"])
			)
			:AddChild(UIElements.New("QueryScrollingTable", "table")
				:SetSettingsContext(private.settings, "gatheringScrollingTable")
				:GetScrollingTableInfo()
					:NewColumn("name")
						:SetTitle(NAME)
						:SetFont("ITEM_BODY3")
						:SetJustifyH("LEFT")
						:SetIconSize(12)
						:SetTextInfo("itemString", UIUtils.GetDisplayItemName)
						:SetIconInfo("itemString", ItemInfo.GetTexture)
						:SetTooltipInfo("itemString")
						:SetSortInfo("name")
						:DisableHiding()
						:Commit()
					:NewColumn("sources")
						:SetTitle(L["Sources"])
						:SetFont("BODY_BODY3")
						:SetJustifyH("LEFT")
						:SetTextInfo("sourcesStr", private.MatsGetSourcesStrText)
						:SetSortInfo("sourcesStr")
						:Commit()
					:NewColumn("have")
						:SetTitle(L["Have"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("numHave")
						:SetSortInfo("numHave")
						:Commit()
					:NewColumn("need")
						:SetTitle(NEED)
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("numNeed")
						:SetSortInfo("numNeed")
						:Commit()
					:Commit()
				:SetQuery(TSM.Crafting.Gathering.CreateQuery()
					:VirtualField("name", "string", ItemInfo.GetName, "itemString", "?")
					:OrderBy("name", true)
				)
				:SetSelectionDisabled(true)
				:SetAutoReleaseQuery(true)
			)
			:AddChild(UIElements.New("HorizontalLine", "headerTopLine"))
			:AddChild(UIElements.New("ActionButton", "openTaskListBtn")
				:SetHeight(26)
				:SetMargin(8)
				:SetScript("OnClick", TSM.UI.TaskListUI.Toggle)
			)
		)
		:SetScript("OnUpdate", private.FrameOnUpdate)
		:SetScript("OnHide", private.FrameOnHide)
	private.frame = frame
	return frame
end

function private.MatsGetSourcesStrText(str)
	str = gsub(str, "/[^,]+", "")
	for i = 1, #SOURCE_LIST do
		str = gsub(str, SOURCE_LIST[i], SOURCE_TEXT_LIST[i])
	end
	return str
end

function private.CreateSourceRows(frame)
	for i = 1, #SOURCE_LIST do
		frame:AddChild(UIElements.New("Frame", "sourceFrame"..i)
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 8, 0)
			:AddChild(UIElements.New("Text", "label")
				:SetFont("BODY_BODY3_MEDIUM")
				:SetTextColor((i > #private.settings.sources + 1) and "TEXT_ALT+DISABLED" or "TEXT_ALT")
				:SetFormattedText(L["SOURCE %d"], i)
			)
			:AddChild(UIElements.New("SelectionDropdown", "dropdown")
				:SetWidth(188)
				:SetContext(i)
				:SetHintText(L["Select a Source"])
				:SetScript("OnSelectionChanged", private.SourceDropdownOnSelectionChanged)
			)
		)
	end
	private.UpdateSourceRows(frame)
end

function private.UpdateSourceRows(setupFrame)
	if not Environment.HasFeature(Environment.FEATURES.GUILD_BANK) then
		Table.RemoveByValue(private.settings.sources, "guildBank")
		Table.RemoveByValue(private.settings.sources, "altGuildBank")
	end
	if Environment.IsRetail() then
		Table.RemoveByValue(private.settings.sources, "bank")
	end
	local texts = TempTable.Acquire()
	local sources = TempTable.Acquire()
	for i = 1, #SOURCE_LIST do
		wipe(texts)
		wipe(sources)
		for j = 1, #SOURCE_LIST do
			local index = Table.KeyByValue(private.settings.sources, SOURCE_LIST[j])
			if not index or index >= i then
				tinsert(texts, SOURCE_TEXT_LIST[j])
				tinsert(sources, SOURCE_LIST[j])
			end
		end
		if i <= #private.settings.sources then
			tinsert(texts, "<"..strupper(REMOVE)..">")
			tinsert(sources, "")
		end
		setupFrame:GetElement("sourceFrame"..i..".label")
			:SetTextColor((i > #private.settings.sources + 1) and "TEXT_ALT+DISABLED" or "TEXT_ALT")
		setupFrame:GetElement("sourceFrame"..i..".dropdown")
			:SetItems(texts, sources)
			:SetDisabled(i > #private.settings.sources + 1)
			:SetHintText(L["Select a Source"])
			:SetSelectedItemByKey(private.settings.sources[i], true)
	end
	TempTable.Release(texts)
	TempTable.Release(sources)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.FrameOnUpdate(frame)
	private.UpdateButtonState()
	frame:SetScript("OnUpdate", nil)
	private.ContextChangedCallback()
end

function private.FrameOnHide(frame)
	assert(frame == private.frame)
	private.frame = nil
	private.query:Release()
	private.query = nil
end

function private.CrafterDropdownOnSelectionChanged(dropdown)
	TSM.Crafting.Gathering.SetCrafter(dropdown:GetSelectedItem() or "")
	dropdown:GetElement("__parent.professionDropdown")
		:SetItems(TSM.Crafting.Gathering.GetProfessionList())
		:SetSelectedItems(TSM.Crafting.Gathering.GetProfessions())
		:Draw()
end

function private.ProfessionDropdownOnSelectionChanged(dropdown)
	local professions = TempTable.Acquire()
	dropdown:GetSelectedItems(professions)
	TSM.Crafting.Gathering.SetProfessions(professions)
	TempTable.Release(professions)
end

function private.SourceDropdownOnSelectionChanged(dropdown)
	local index = dropdown:GetContext()
	local source = dropdown:GetSelectedItemKey()
	if source == "" then
		tremove(private.settings.sources, index)
	else
		private.settings.sources[index] = source
		for i = #private.settings.sources, index + 1, -1 do
			if private.settings.sources[i] == source then
				tremove(private.settings.sources, i)
			end
		end
	end
	local setupFrame = dropdown:GetParentElement():GetParentElement()
	private.UpdateSourceRows(setupFrame)
	setupFrame:Draw()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ContextChangedCallback()
	if not private.frame then
		return
	end

	private.frame:GetElement("setup.crafterDropdown")
		:SetItems(TSM.Crafting.Gathering.GetCrafterList())
		:SetSelectedItem(TSM.Crafting.Gathering.GetCrafter())
		:Draw()
	private.frame:GetElement("setup.professionDropdown")
		:SetItems(TSM.Crafting.Gathering.GetProfessionList())
		:SetSelectedItems(TSM.Crafting.Gathering.GetProfessions())
		:Draw()
end

function private.UpdateButtonState()
	if not private.frame then
		return
	end
	local button = private.frame:GetElement("mats.openTaskListBtn")
	if private.query:Count() == 0 then
		button:SetText(L["No Materials to Gather"])
		button:SetDisabled(true)
	elseif TSM.UI.TaskListUI.IsVisible() then
		button:SetText(L["Tasks Added to Task List"])
		button:SetDisabled(true)
	else
		button:SetText(L["Open Task List"])
		button:SetDisabled(false)
	end
	button:Draw()
end
