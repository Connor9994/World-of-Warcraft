-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CraftingReports = TSM.UI.CraftingUI:NewPackage("CraftingReports")
local L = TSM.Include("Locale").GetTable()
local CraftString = TSM.Include("Util.CraftString")
local RecipeString = TSM.Include("Util.RecipeString")
local Math = TSM.Include("Util.Math")
local Log = TSM.Include("Util.Log")
local Money = TSM.Include("Util.Money")
local String = TSM.Include("Util.String")
local ItemString = TSM.Include("Util.ItemString")
local Theme = TSM.Include("Util.Theme")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local CustomPrice = TSM.Include("Service.CustomPrice")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	craftsQuery = nil,
	matsQuery = nil,
	filterText = "",
	craftProfessions = {},
	matProfessions = {},
}
local MAT_PRICE_SOURCES = {ALL, L["Default Price"], L["Custom Price"]}



-- ============================================================================
-- Module Functions
-- ============================================================================

function CraftingReports.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "craftingUIContext", "craftsScrollingTable")
		:AddKey("global", "craftingUIContext", "matsScrollingTable")
		:AddKey("factionrealm", "internalData", "mats")
		:AddKey("global", "craftingOptions", "defaultMatCostMethod")
	TSM.UI.CraftingUI.RegisterTopLevelPage(L["Reports"], private.GetCraftingReportsFrame)
end



-- ============================================================================
-- CraftingReports UI
-- ============================================================================

function private.GetCraftingReportsFrame()
	UIUtils.AnalyticsRecordPathChange("crafting", "crafting_reports")
	if not private.craftsQuery then
		private.craftsQuery = TSM.Crafting.CreateCraftsQuery()
		private.craftsQuery:VirtualField("firstOperation", "string", private.FirstOperationVirtualField, "itemString")
	end
	private.craftsQuery:ResetFilters()
	private.craftsQuery:ResetOrderBy()
	private.craftsQuery:OrderBy("itemName", true)
	private.matsQuery = private.matsQuery or TSM.Crafting.CreateMatItemQuery()
	private.matsQuery:ResetFilters()
	private.matsQuery:ResetOrderBy()
	private.matsQuery:OrderBy("name", true)
	return UIElements.New("Frame", "craftingReportsContent")
		:SetLayout("VERTICAL")
		:SetPadding(0, 0, 6, 0)
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:AddChild(UIElements.New("TabGroup", "buttons")
			:SetNavCallback(private.GetTabElements)
			:AddPath(L["Crafts"], true)
			:AddPath(L["Materials"])
		)
end

function private.GetTabElements(self, path)
	if path == L["Crafts"] then
		UIUtils.AnalyticsRecordPathChange("crafting", "crafting_reports", "crafts")
		private.filterText = ""
		wipe(private.craftProfessions)
		tinsert(private.craftProfessions, L["All Professions"])
		for _, player, profession in TSM.Crafting.PlayerProfessions.Iterator() do
			tinsert(private.craftProfessions, format("%s - %s", profession, player))
		end
		private.craftsQuery:ResetFilters()

		return UIElements.New("Frame", "crafts")
			:SetLayout("VERTICAL")
			:AddChild(UIElements.New("Frame", "filters")
				:SetLayout("HORIZONTAL")
				:SetHeight(72)
				:SetPadding(10, 10, 8, 16)
				:AddChild(UIElements.New("Frame", "search")
					:SetLayout("VERTICAL")
					:AddChild(UIElements.New("Text", "label")
						:SetHeight(20)
						:SetMargin(0, 0, 0, 4)
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Filter by Keyword"])
					)
					:AddChild(UIElements.New("Input", "input")
						:SetHeight(24)
						:AllowItemInsert()
						:SetIconTexture("iconPack.18x18/Search")
						:SetClearButtonEnabled(true)
						:SetHintText(L["Enter Keyword"])
						:SetScript("OnValueChanged", private.CraftsInputOnValueChanged)
					)
				)
				:AddChild(UIElements.New("Frame", "profession")
					:SetLayout("VERTICAL")
					:SetMargin(16, 16, 0, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetHeight(20)
						:SetMargin(0, 0, 0, 4)
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Filter by Profession"])
					)
					:AddChild(UIElements.New("SelectionDropdown", "dropdown")
						:SetHeight(24)
						:SetItems(private.craftProfessions)
						:SetSelectedItem(private.craftProfessions[1], true)
						:SetScript("OnSelectionChanged", private.CraftsDropdownOnSelectionChanged)
					)
				)
				:AddChild(UIElements.New("Frame", "craftable")
					:SetLayout("HORIZONTAL")
					:SetSize(176, 24)
					:SetMargin(0, 0, 24, 0)
					:AddChild(UIElements.New("Checkbox", "checkbox")
						:SetWidth(24)
						:SetFont("BODY_BODY2")
						:SetScript("OnValueChanged", private.CheckboxOnValueChanged)
					)
					:AddChild(UIElements.New("Text", "label")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY2")
						:SetText(L["Only show craftable"])
					)
				)
			)
			:AddChild(UIElements.New("QueryScrollingTable", "crafts")
				:SetSettingsContext(private.settings, "craftsScrollingTable")
				:GetScrollingTableInfo()
					:SetMenuInfo(private.CraftsMatsMenuIterator, private.CraftsMenuClickHandler)
					:NewColumn("queued")
						:SetTitleIcon("iconPack.18x18/Queue")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("CENTER")
						:SetTextInfo("num")
						:SetSortInfo("num")
						:Commit()
					:NewColumn("craftName")
						:SetTitle(L["Name"])
						:SetIconSize(12)
						:SetFont("ITEM_BODY3")
						:SetJustifyH("LEFT")
						:SetTextInfo(nil, private.CraftsGetCraftNameText)
						:SetIconInfo("itemString", ItemInfo.GetTexture)
						:SetTooltipInfo("itemString")
						:SetSortInfo("itemName")
						:DisableHiding()
						:Commit()
					:NewColumn("operation")
						:SetTitle(L["Operation"])
						:SetFont("BODY_BODY3")
						:SetJustifyH("LEFT")
						:SetTextInfo("firstOperation")
						:SetSortInfo("firstOperation")
						:Commit()
					:NewColumn("bags")
						:SetTitle(L["Bag"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("bagQuantity", private.CraftsGetBagsText)
						:SetSortInfo("bagQuantity")
						:Commit()
					:NewColumn("ah")
						:SetTitle(L["AH"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("auctionQuantity", private.CraftsGetAHText)
						:SetSortInfo("auctionQuantity")
						:Commit()
					:NewColumn("craftingCost")
						:SetTitle(L["Crafting Cost"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("craftingCost", private.CraftsGetCostItemValueText)
						:SetSortInfo("craftingCost")
						:Commit()
					:NewColumn("itemValue")
						:SetTitle(L["Item Value"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("itemValue", private.CraftsGetCostItemValueText)
						:SetSortInfo("itemValue")
						:Commit()
					:NewColumn("profit")
						:SetTitle(L["Profit"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("profit", private.CraftsGetProfitText)
						:SetSortInfo("profit")
						:Commit()
					:NewColumn("profitPct")
						:SetTitle("%")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("profitPct", private.GetProfitPctText)
						:SetSortInfo("profitPct")
						:Commit()
					:NewColumn("saleRate")
						:SetTitleIcon("iconPack.18x18/SaleRate")
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("CENTER")
						:SetTextInfo("saleRate", private.CraftsGetSaleRateText)
						:SetSortInfo("saleRate")
						:Commit()
					:Commit()
				:SetQuery(private.craftsQuery)
				:SetSelectionDisabled(true)
				:SetScript("OnRowClick", private.CraftsOnRowClick)
			)
	elseif path == L["Materials"] then
		UIUtils.AnalyticsRecordPathChange("crafting", "crafting_reports", "materials")
		wipe(private.matProfessions)
		tinsert(private.matProfessions, L["All Professions"])
		for _, _, profession in TSM.Crafting.PlayerProfessions.Iterator() do
			if not private.matProfessions[profession] then
				tinsert(private.matProfessions, profession)
				private.matProfessions[profession] = true
			end
		end
		private.matsQuery:ResetFilters()

		return UIElements.New("Frame", "materials")
			:SetLayout("VERTICAL")
			:AddChild(UIElements.New("Frame", "filters")
				:SetLayout("HORIZONTAL")
				:SetHeight(72)
				:SetPadding(10, 10, 8, 16)
				:AddChild(UIElements.New("Frame", "search")
					:SetLayout("VERTICAL")
					:AddChild(UIElements.New("Text", "label")
						:SetHeight(20)
						:SetMargin(0, 0, 0, 4)
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Filter by Keyword"])
					)
					:AddChild(UIElements.New("Input", "input")
						:SetHeight(24)
						:AllowItemInsert()
						:SetIconTexture("iconPack.18x18/Search")
						:SetClearButtonEnabled(true)
						:SetHintText(L["Enter Keyword"])
						:SetScript("OnValueChanged", private.MatsInputOnValueChanged)
					)
				)
				:AddChild(UIElements.New("Frame", "profession")
					:SetLayout("VERTICAL")
					:SetMargin(16, 0, 0, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetHeight(20)
						:SetMargin(0, 0, 0, 4)
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Filter by Profession"])
					)
					:AddChild(UIElements.New("SelectionDropdown", "dropdown")
						:SetHeight(24)
						:SetItems(private.matProfessions)
						:SetSelectedItem(private.matProfessions[1], true)
						:SetScript("OnSelectionChanged", private.MatsDropdownOnSelectionChanged)
					)
				)
				:AddChild(UIElements.New("Frame", "priceSource")
					:SetLayout("VERTICAL")
					:SetMargin(16, 0, 0, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetHeight(20)
						:SetMargin(0, 0, 0, 4)
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Filter by Price Source"])
					)
					:AddChild(UIElements.New("SelectionDropdown", "dropdown")
						:SetHeight(24)
						:SetItems(MAT_PRICE_SOURCES)
						:SetSelectedItem(MAT_PRICE_SOURCES[1], true)
						:SetScript("OnSelectionChanged", private.MatsDropdownOnSelectionChanged)
					)
				)
			)
			:AddChild(UIElements.New("QueryScrollingTable", "mats")
				:SetSettingsContext(private.settings, "matsScrollingTable")
				:GetScrollingTableInfo()
					:SetMenuInfo(private.CraftsMatsMenuIterator, private.MatsMenuClickHandler)
					:NewColumn("name")
						:SetTitle(L["Name"])
						:SetIconSize(12)
						:SetFont("ITEM_BODY3")
						:SetJustifyH("LEFT")
						:SetTextInfo("itemString", private.MatsGetNameText)
						:SetIconInfo("itemString", ItemInfo.GetTexture)
						:SetTooltipInfo("itemString")
						:SetSortInfo("name")
						:DisableHiding()
						:Commit()
					:NewColumn("price")
						:SetTitle(L["Mat Price"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("matCost", private.MatsGetPriceText)
						:SetSortInfo("matCost")
						:Commit()
					:NewColumn("professions")
						:SetTitle(L["Professions Used In"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("LEFT")
						:SetTextInfo("professions")
						:SetSortInfo("professions")
						:Commit()
					:NewColumn("num")
						:SetTitle(L["Number Owned"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("totalQuantity", private.MatsGetNumText)
						:SetSortInfo("totalQuantity")
						:Commit()
					:Commit()
				:SetQuery(private.matsQuery)
				:SetSelectionDisabled(true)
				:SetScript("OnRowClick", private.MatsOnRowClick)
			)
	else
		error("Unknown path: "..tostring(path))
	end
end



-- ============================================================================
-- ScrollingTable Functions
-- ============================================================================

function private.CraftsGetCraftNameText(row)
	return UIUtils.GetDisplayItemName(row:GetField("itemString")) or row:GetField("name")
end

function private.CraftsGetBagsText(bagQuantity)
	return bagQuantity or "0"
end

function private.CraftsGetAHText(bagQuantity)
	return bagQuantity or "0"
end

function private.CraftsGetCostItemValueText(costItemValue)
	if Math.IsNan(costItemValue) then
		return ""
	end
	return Money.ToString(costItemValue, nil, "OPT_RETAIL_ROUND")
end

function private.CraftsGetProfitText(profit)
	if Math.IsNan(profit) then
		return ""
	end
	return Money.ToString(profit, (profit >= 0 and Theme.GetColor("FEEDBACK_GREEN") or Theme.GetColor("FEEDBACK_RED")):GetTextColorPrefix(), "OPT_RETAIL_ROUND")
end

function private.GetProfitPctText(profitPct)
	if Math.IsNan(profitPct) then
		return ""
	end
	local color = Theme.GetColor(profitPct >= 0 and "FEEDBACK_GREEN" or "FEEDBACK_RED")
	return color:ColorText(profitPct.."%") or ""
end

function private.CraftsGetSaleRateText(saleRate)
	if Math.IsNan(saleRate) then
		return ""
	end
	return format("%0.2f", saleRate)
end

function private.MatsGetNameText(itemString)
	return UIUtils.GetDisplayItemName(itemString) or UIUtils.GetDisplayItemName(ItemString.GetUnknown())
end

function private.MatsGetPriceText(matCost)
	if Math.IsNan(matCost) then
		return ""
	end
	return Money.ToString(matCost, nil, "OPT_RETAIL_ROUND")
end

function private.MatsGetNumText(totalQuantity)
	return totalQuantity or "0"
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.CraftsInputOnValueChanged(input)
	local text = input:GetValue()
	if text == private.filterText then
		return
	end
	private.filterText = text
	private.UpdateCraftsQueryWithFilters(input:GetParentElement():GetParentElement())
end

function private.CraftsDropdownOnSelectionChanged(dropdown)
	private.UpdateCraftsQueryWithFilters(dropdown:GetParentElement():GetParentElement())
end

function private.CheckboxOnValueChanged(checkbox)
	private.UpdateCraftsQueryWithFilters(checkbox:GetParentElement():GetParentElement())
end

function private.CraftsOnRowClick(scrollingTable, record, mouseButton)
	local craftString = record:GetField("craftString")
	local recipeString = RecipeString.FromCraftString(craftString)
	local level = CraftString.GetLevel(craftString)
	if level then
		return
	end
	if mouseButton == "LeftButton" then
		TSM.Crafting.Queue.Add(recipeString, 1)
	elseif mouseButton == "RightButton" then
		TSM.Crafting.Queue.Remove(recipeString, 1)
	end
end

function private.MatsInputOnValueChanged(input)
	private.UpdateMatsQueryWithFilters(input:GetParentElement():GetParentElement())
end

function private.MatsDropdownOnSelectionChanged(dropdown)
	private.UpdateMatsQueryWithFilters(dropdown:GetParentElement():GetParentElement())
end

function private.MatsOnRowClick(scrollingTable, row)
	local itemString = row:GetField("itemString")
	local matInfo = private.settings.mats[itemString]
	local priceStr = matInfo.customValue or private.settings.defaultMatCostMethod
	scrollingTable:GetBaseElement():ShowDialogFrame(TSM.UI.Views.CustomStringDialog.New(priceStr, L["Material Cost"], private.MatPriceValidateFunc, nil, private.MatPriceDialogOnHide, itemString)
		:AddChildBeforeById("input", UIElements.New("Frame", "item")
			:SetLayout("HORIZONTAL")
			:SetHeight(36)
			:SetPadding(6)
			:SetMargin(0, 0, 0, 10)
			:SetBackgroundColor("PRIMARY_BG_ALT", true)
			:SetContext(itemString)
			:AddChild(UIElements.New("Button", "icon")
				:SetWidth(24)
				:SetMargin(0, 8, 0, 0)
				:SetBackground(ItemInfo.GetTexture(itemString))
				:SetTooltip(itemString)
			)
			:AddChild(UIElements.New("Text", "name")
				:SetMargin(0, 8, 0, 0)
				:SetFont("ITEM_BODY1")
				:SetText(UIUtils.GetDisplayItemName(itemString))
			)
			:AddChild(UIElements.New("Button", "resetBtn")
				:SetWidth("AUTO")
				:SetFont("BODY_BODY3_MEDIUM")
				:SetTextColor(matInfo.customValue and "TEXT" or "TEXT_ALT")
				:SetDisabled(not matInfo.customValue)
				:SetText(L["Reset to Default"])
				:SetScript("OnClick", private.ResetButtonOnClick)
			)
		)
	)
end

function private.MatPriceValidateFunc(input, value)
	local isValid, errMsg = CustomPrice.Validate(value)
	if not isValid and value ~= "" then
		return false, errMsg
	end
	return true
end

function private.MatPriceDialogOnHide(value, itemString)
	TSM.Crafting.SetMatCustomValue(itemString, value)
end

function private.ResetButtonOnClick(button)
	local itemString = button:GetParentElement():GetContext()
	TSM.Crafting.SetMatCustomValue(itemString, nil)
	assert(not private.settings.mats[itemString].customValue)
	button:SetTextColor("TEXT_ALT")
	button:SetDisabled(true)
	button:Draw()
	button:GetElement("__parent.__parent.input")
		:SetValue(Money.ToString(private.settings.defaultMatCostMethod) or private.settings.defaultMatCostMethod)
		:Draw()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.FirstOperationVirtualField(itemString)
	return TSM.Operations.GetFirstOperationByItem("Crafting", itemString) or ""
end

function private.UpdateCraftsQueryWithFilters(frame)
	private.craftsQuery:ResetFilters()
	-- apply search filter
	local filter = strtrim(frame:GetElement("search.input"):GetValue())
	if filter ~= "" then
		private.craftsQuery:Matches("itemName", String.Escape(filter))
	end
	-- apply dropdown filter
	local professionPlayer = frame:GetElement("profession.dropdown"):GetSelectedItem()
	if professionPlayer ~= private.craftProfessions[1] then
		local profession, player = strmatch(professionPlayer, "^(.+) %- ([^ ]+)$")
		private.craftsQuery
			:Equal("profession", profession)
			:ListContains("players", player)
	end
	-- apply craftable filter
	local craftableOnly = frame:GetElement("craftable.checkbox"):IsChecked()
	if craftableOnly then
		private.craftsQuery:Custom(private.IsCraftableQueryFilter)
	end
	frame:GetElement("__parent.crafts"):SetQuery(private.craftsQuery, true)
end

function private.IsCraftableQueryFilter(record)
	return TSM.Crafting.ProfessionUtil.GetNumCraftableFromDB(record:GetField("craftString")) > 0
end

function private.UpdateMatsQueryWithFilters(frame)
	private.matsQuery:ResetFilters()
	-- apply search filter
	local filter = strtrim(frame:GetElement("search.input"):GetValue())
	if filter ~= "" then
		private.matsQuery:Matches("name", strlower(String.Escape(filter)))
	end
	-- apply dropdown filters
	local profession = frame:GetElement("profession.dropdown"):GetSelectedItem()
	if profession ~= private.matProfessions[1] then
		private.matsQuery
			:Or()
				:Equal("professions", profession)
				:Matches("professions", "^"..profession..",")
				:Matches("professions", ","..profession..",")
				:Matches("professions", ","..profession.."$")
			:End()
	end
	local priceSource = frame:GetElement("priceSource.dropdown"):GetSelectedItem()
	if priceSource == MAT_PRICE_SOURCES[2] then
		private.matsQuery:Equal("customValue", "")
	elseif priceSource == MAT_PRICE_SOURCES[3] then
		private.matsQuery:NotEqual("customValue", "")
	end
	frame:GetElement("__parent.mats"):SetQuery(private.matsQuery, true)
end

function private.CraftsMatsMenuIterator(scrollingTable, prevIndex)
	if prevIndex == "CREATE_GROUPS" then
		-- we're done
		return
	else
		return "CREATE_GROUPS", L["Create Groups from Table"]
	end
end

function private.CraftsMenuClickHandler(scrollingTable, index1, index2)
	if index1 == "CREATE_GROUPS" then
		assert(not index2)
		scrollingTable:GetBaseElement():HideDialog()
		local numCreated, numAdded = 0, 0
		for _, row in private.craftsQuery:Iterator() do
			local itemString = row:GetField("itemString")
			local groupPath = TSM.Groups.Path.Join(L["Crafted Items"], row:GetField("profession"))
			if not TSM.Groups.Exists(groupPath) then
				TSM.Groups.Create(groupPath)
				numCreated = numCreated + 1
			end
			if not TSM.Groups.IsItemInGroup(itemString) and not ItemInfo.IsSoulbound(itemString) then
				TSM.Groups.SetItemGroup(itemString, groupPath)
				numAdded = numAdded + 1
			end
		end
		Log.PrintfUser(L["%d groups were created and %d items were added from the table."], numCreated, numAdded)
	else
		error("Unexpected index1: "..tostring(index1))
	end
end

function private.MatsMenuClickHandler(scrollingTable, index1, index2)
	if index1 == "CREATE_GROUPS" then
		assert(not index2)
		scrollingTable:GetBaseElement():HideDialog()
		local numCreated, numAdded = 0, 0
		for _, row in private.matsQuery:Iterator() do
			local itemString = row:GetField("itemString")
			local groupPath = L["Materials"]
			if not TSM.Groups.Exists(groupPath) then
				TSM.Groups.Create(groupPath)
				numCreated = numCreated + 1
			end
			if not TSM.Groups.IsItemInGroup(itemString) and not ItemInfo.IsSoulbound(itemString) then
				TSM.Groups.SetItemGroup(itemString, groupPath)
				numAdded = numAdded + 1
			end
		end
		Log.PrintfUser(L["%d groups were created and %d items were added from the table."], numCreated, numAdded)
	else
		error("Unexpected index1: "..tostring(index1))
	end
end
