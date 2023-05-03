-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Crafting Queue List UI Element Class.
-- The element used to show the queue in the Crafting UI. It is a subclass of the @{ScrollingTable} class.
-- @classmod CraftingQueueList

local TSM = select(2, ...) ---@type TSM
local L = TSM.Include("Locale").GetTable()
local CraftString = TSM.Include("Util.CraftString")
local TempTable = TSM.Include("Util.TempTable")
local Money = TSM.Include("Util.Money")
local RecipeString = TSM.Include("Util.RecipeString")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local Profession = TSM.Include("Service.Profession")
local BagTracking = TSM.Include("Service.BagTracking")
local UIUtils = TSM.Include("UI.UIUtils")
local CraftingQueueList = TSM.Include("LibTSMClass").DefineClass("CraftingQueueList", TSM.UI.ScrollingTable)
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(CraftingQueueList)
TSM.UI.CraftingQueueList = CraftingQueueList
local private = {
	categoryOrder = {},
	sortSelf = nil,
	sortProfitCache = {},
}
local CATEGORY_SEP = "\001"



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function CraftingQueueList.__init(self)
	self.__super:__init()
	self._collapsed = {}
	self._query = nil
	self._numCraftableCache = {}
	self._onRowMouseDownHandler = nil
	self._dialogRecipeString = nil
	self._dialogInputValue = nil
end

function CraftingQueueList.Acquire(self)
	self._headerMode = "NONE"
	self.__super:Acquire()
	self:SetSelectionDisabled(true)
	self:GetScrollingTableInfo()
		:NewColumn("name")
			:SetFont("ITEM_BODY3")
			:SetJustifyH("LEFT")
			:SetIconSize(12)
			:SetExpanderStateFunction(private.GetExpanderState)
			:SetIconFunction(private.GetItemIcon)
			:SetIconHoverEnabled(true)
			:SetIconClickHandler(private.OnItemIconClick)
			:SetTextFunction(private.GetItemText)
			:SetTooltipFunction(private.GetItemTooltip)
			:SetActionIconInfo(1, 12, private.GetDeleteIcon, true)
			:SetActionIconClickHandler(private.OnDeleteIconClick)
			:Commit()
		:NewColumn("qty")
			:SetAutoWidth()
			:SetFont("TABLE_TABLE1")
			:SetJustifyH("CENTER")
			:SetTextFunction(private.GetQty)
			:SetActionIconInfo(1, 12, private.GetEditIcon, true)
			:SetActionIconClickHandler(private.OnEditIconClick)
			:Commit()
		:Commit()
end

function CraftingQueueList.Release(self)
	self._onRowMouseDownHandler = nil
	self._dialogRecipeString = nil
	self._dialogInputValue = nil
	wipe(self._numCraftableCache)
	wipe(self._collapsed)
	if self._query then
		self._query:Release()
		self._query = nil
	end
	for _, row in ipairs(self._rows) do
		ScriptWrapper.Clear(row._frame, "OnDoubleClick")
		ScriptWrapper.Clear(row._frame, "OnMouseDown")
		for _, button in pairs(row._buttons) do
			ScriptWrapper.Clear(button, "OnMouseDown")
		end
	end
	self.__super:Release()
end

--- Gets the data of the first row.
-- @tparam CraftingQueueList self The crafting queue list object
-- @treturn CraftingQueueList The crafting queue list object
function CraftingQueueList.GetFirstData(self)
	for _, data in ipairs(self._data) do
		if type(data) ~= "string" then
			return data
		end
	end
end

--- Registers a script handler.
-- @tparam CraftingQueueList self The crafting queue list object
-- @tparam string script The script to register for (supported scripts: `OnRowClick`, `OnRowMouseDown`)
-- @tparam function handler The script handler which will be called with the crafting queue list object followed by any
-- arguments to the script
-- @treturn CraftingQueueList The crafting queue list object
function CraftingQueueList.SetScript(self, script, handler)
	if script == "OnRowMouseDown" then
		self._onRowMouseDownHandler = handler
	else
		self.__super:SetScript(script, handler)
	end
	return self
end

--- Sets the @{DatabaseQuery} source for this list.
-- This query is used to populate the entries in the crafting queue list.
-- @tparam CraftingQueueList self The crafting queue list object
-- @tparam DatabaseQuery query The query object
-- @treturn CraftingQueueList The crafting queue list object
function CraftingQueueList.SetQuery(self, query)
	if self._query then
		self._query:Release()
	end
	self._query = query
	self._query:SetUpdateCallback(private.QueryUpdateCallback, self)
	self:_UpdateData()
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function CraftingQueueList._GetTableRow(self, isHeader)
	local row = self.__super:_GetTableRow(isHeader)
	if not isHeader then
		ScriptWrapper.Set(row._frame, "OnMouseDown", private.RowOnMouseDown, row)
		ScriptWrapper.Set(row._frame, "OnDoubleClick", private.RowOnDoubleClick, row)
		for _, button in pairs(row._buttons) do
			ScriptWrapper.Set(button, "OnMouseDown", private.RowOnMouseDown, row)
		end
	end
	return row
end

function CraftingQueueList._UpdateData(self)
	wipe(self._data)
	if not self._query then
		return
	end
	local categories = TempTable.Acquire()
	wipe(self._numCraftableCache)
	wipe(private.sortProfitCache)
	for _, row in self._query:Iterator() do
		local players = strjoin(",", row:GetField("players"))
		local rawCategory = strjoin(CATEGORY_SEP, row:GetField("profession"), players)
		local category = strlower(rawCategory)
		if not categories[category] then
			tinsert(categories, category)
		end
		categories[category] = rawCategory
		if not self._collapsed[rawCategory] then
			local recipeString = row:GetField("recipeString")
			self._numCraftableCache[row] = TSM.Crafting.ProfessionUtil.GetNumCraftableFromDBRecipeString(recipeString)
			private.sortProfitCache[recipeString] = TSM.Crafting.Cost.GetProfitByRecipeString(recipeString)
			tinsert(self._data, row)
		end
	end
	sort(categories, private.CategorySortComparator)
	wipe(private.categoryOrder)
	for i, category in ipairs(categories) do
		private.categoryOrder[category] = i
		tinsert(self._data, categories[category])
	end
	TempTable.Release(categories)
	private.sortSelf = self
	sort(self._data, private.DataSortComparator)
	private.sortSelf = nil
end

function CraftingQueueList._SetCollapsed(self, data, collapsed)
	self._collapsed[data] = collapsed or nil
end

function CraftingQueueList._HandleRowClick(self, data, mouseButton)
	if type(data) == "string" then
		self:_SetCollapsed(data, not self._collapsed[data])
		self:UpdateData(true)
	else
		local currentRow
		for _, row in ipairs(self._rows) do
			if row:GetData() == data then
				currentRow = row
				break
			end
		end
		if currentRow._texts.qty:IsMouseOver(8, -8, -8, 8) then
			private.OnEditIconClick(self, data, 1)
		else
			self.__super:_HandleRowClick(data, mouseButton)
		end
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.RowOnMouseDown(row, mouseButton)
	local data = row:GetData()
	if type(data) == "string" then
		return
	end
	local self = row._scrollingTable
	if self._onRowMouseDownHandler then
		self:_onRowMouseDownHandler(data, mouseButton)
	end
end

function private.RowOnDoubleClick(row, mouseButton)
	local self = row._scrollingTable
	self:_HandleRowClick(row:GetData(), mouseButton)
end

function private.GetExpanderState(self, data)
	if type(data) == "string" then
		return true, not self._collapsed[data], 0
	else
		return false, false, 0
	end
end

function private.GetItemIcon(self, data)
	if type(data) == "string" then
		return
	end
	local tooltip, texture = TSM.Crafting.ProfessionUtil.GetCraftResultTooltipFromRecipeString(data:GetField("recipeString"))
	return texture, tooltip
end

function private.OnItemIconClick(self, data, mouseButton)
	self:_HandleRowClick(data, mouseButton)
end

function private.GetItemText(self, data)
	if type(data) == "string" then
		local profession, players = strsplit(CATEGORY_SEP, data)
		local name = Profession.GetSkillLine()
		local isValid = private.PlayersContains(players, UnitName("player")) and strlower(profession) == strlower(name or "")
		local text = Theme.GetColor("INDICATOR"):ColorText(profession).." ("..players..")"
		if isValid then
			return text
		else
			return text.."  "..TextureAtlas.GetTextureLink("iconPack.12x12/Attention")
		end
	else
		local recipeString = data:GetField("recipeString")
		local craftString = CraftString.FromRecipeString(recipeString)
		local itemString = TSM.Crafting.GetItemString(craftString)
		local spellId = CraftString.GetSpellId(craftString)
		return itemString and UIUtils.GetDisplayItemName(itemString) or GetSpellInfo(spellId) or "?"
	end
end

function private.GetItemTooltip(self, data)
	if type(data) == "string" then
		local profession, players = strsplit(CATEGORY_SEP, data)
		local name = Profession.GetSkillLine()
		if not private.PlayersContains(players, UnitName("player")) then
			return L["You are not on one of the listed characters."]
		elseif strlower(profession) ~= strlower(name or "") then
			return L["This profession is not open."]
		end
		return
	end

	local recipeString = data:GetField("recipeString")
	local craftString = CraftString.FromRecipeString(recipeString)
	local numQueued = data:GetField("num")
	local itemString = TSM.Crafting.GetItemString(craftString)
	local spellId = CraftString.GetSpellId(craftString)
	local name = itemString and UIUtils.GetDisplayItemName(itemString) or GetSpellInfo(spellId) or "?"
	local tooltipLines = TempTable.Acquire()
	tinsert(tooltipLines, name.." (x"..numQueued..")")
	local numResult = TSM.Crafting.GetNumResult(craftString)
	local profit = TSM.Crafting.Cost.GetProfitByRecipeString(recipeString)
	local profitStr = profit and Money.ToString(profit * numResult, Theme.GetColor(profit >= 0 and "FEEDBACK_GREEN" or "FEEDBACK_RED"):GetTextColorPrefix(), "OPT_RETAIL_ROUND") or "---"
	local totalProfitStr = profit and Money.ToString(profit * numResult * numQueued, Theme.GetColor(profit >= 0 and "FEEDBACK_GREEN" or "FEEDBACK_RED"):GetTextColorPrefix(), "OPT_RETAIL_ROUND") or "---"
	tinsert(tooltipLines, L["Profit (Total)"]..": "..profitStr.." ("..totalProfitStr..")")
	for _, matItemString, quantity in TSM.Crafting.MatIterator(craftString) do
		local numHave = BagTracking.GetCraftingMatQuantity(matItemString)
		local numNeed = quantity * numQueued
		local color = Theme.GetColor(numHave >= numNeed and "FEEDBACK_GREEN" or "FEEDBACK_RED")
		tinsert(tooltipLines, color:ColorText(numHave.."/"..numNeed).." - "..(UIUtils.GetDisplayItemName(matItemString) or "?"))
	end
	for _, _, itemId in RecipeString.OptionalMatIterator(recipeString) do
		local matItemString = "i:"..itemId
		local numHave = BagTracking.GetCraftingMatQuantity(matItemString)
		local numNeed = TSM.Crafting.GetOptionalMatQuantity(craftString, itemId)* numQueued
		local color = Theme.GetColor(numHave >= numNeed and "FEEDBACK_GREEN" or "FEEDBACK_RED")
		tinsert(tooltipLines, color:ColorText(numHave.."/"..numNeed).." - "..(UIUtils.GetDisplayItemName(matItemString) or "?"))
	end
	local cooldown = Profession.GetRemainingCooldown(craftString)
	if cooldown then
		tinsert(tooltipLines, Theme.GetColor("FEEDBACK_RED"):ColorText(format(L["On Cooldown for %s"], SecondsToTime(cooldown))))
	end
	return strjoin("\n", TempTable.UnpackAndRelease(tooltipLines)), true, true
end

function private.GetDeleteIcon(self, data, iconIndex)
	assert(iconIndex == 1)
	if type(data) == "string" then
		return false
	end
	return true, "iconPack.12x12/Close/Default", true
end

function private.OnDeleteIconClick(self, data, iconIndex)
	assert(iconIndex == 1 and type(data) ~= "string")
	TSM.Crafting.Queue.SetNum(data:GetField("recipeString"), 0)
end

function private.GetEditIcon(self, data, iconIndex)
	assert(iconIndex == 1)
	if type(data) == "string" then
		return false
	end
	return true, "iconPack.12x12/Edit", true
end

function private.OnEditIconClick(self, data, iconIndex)
	assert(iconIndex == 1 and type(data) ~= "string")
	local currentRow = nil
	for _, row in ipairs(self._rows) do
		if row:GetData() == data then
			currentRow = row
			break
		end
	end
	local name = private.GetItemText(self, data)
	local texture, tooltip = private.GetItemIcon(self, data)
	local recipeString, num = currentRow:GetData():GetFields("recipeString", "num")
	self._dialogRecipeString = recipeString
	self._dialogInputValue = num
	local dialogFrame = UIElements.New("Frame", "qty")
		:SetLayout("HORIZONTAL")
		:AddAnchor("LEFT", currentRow._frame, Theme.GetColSpacing() / 2, 0)
		:AddAnchor("RIGHT", currentRow._frame, -Theme.GetColSpacing(), 0)
		:SetHeight(20)
		:SetContext(self)
		:SetBackgroundColor("PRIMARY_BG")
		:SetScript("OnHide", private.DialogOnHide)
		:AddChild(UIElements.New("Button", "icon")
			:SetSize(12, 12)
			:SetMargin(16, 4, 0, 0)
			:SetBackground(texture)
			:SetTooltip(tooltip)
		)
		:AddChild(UIElements.New("Text", "name")
			:SetWidth("AUTO")
			:SetFont("ITEM_BODY3")
			:SetText(name)
		)
		:AddChild(UIElements.New("Spacer", "spacer"))
		:AddChild(UIElements.New("Input", "input")
			:SetWidth(75)
			:SetBackgroundColor("ACTIVE_BG")
			:SetJustifyH("CENTER")
			:SetSubAddEnabled(true)
			:SetValidateFunc("NUMBER", "1:9999")
			:SetValue(num)
			:SetScript("OnFocusLost", private.QtyInputOnFocusLost)
			:SetScript("OnValueChanged", private.DialogInputOnValueChanged)
		)
	local baseFrame = self:GetBaseElement()
	baseFrame:ShowDialogFrame(dialogFrame)
	dialogFrame:GetElement("input"):SetFocused(true)
end

function private.DialogOnHide(frame)
	local self = frame:GetContext()
	TSM.Crafting.Queue.SetNum(self._dialogRecipeString, self._dialogInputValue)
	self._dialogRecipeString = nil
	self._dialogInputValue = nil
	self:Draw()
end

function private.DialogInputOnValueChanged(input)
	local self = input:GetParentElement():GetContext()
	self._dialogInputValue = tonumber(input:GetValue())
end

function private.QtyInputOnFocusLost(input)
	input:GetBaseElement():HideDialog()
end

function private.GetQty(self, data)
	if type(data) == "string" then
		return ""
	end
	local numQueued = data:GetFields("num")
	local numCraftable = min(self._numCraftableCache[data], numQueued)
	local recipeString = data:GetField("recipeString")
	local craftString = CraftString.FromRecipeString(recipeString)
	local onCooldown = Profession.GetRemainingCooldown(craftString)
	local color = Theme.GetColor(((numCraftable == 0 or onCooldown) and "FEEDBACK_RED") or (numCraftable < numQueued and "FEEDBACK_YELLOW") or "FEEDBACK_GREEN")
	return color:ColorText(format("%s / %s", numCraftable, numQueued))
end

function private.PlayersContains(players, player)
	players = strlower(players)
	player = strlower(player)
	return players == player or strmatch(players, "^"..player..",") or strmatch(players, ","..player..",") or strmatch(players, ","..player.."$")
end

function private.CategorySortComparator(a, b)
	local aProfession, aPlayers = strsplit(CATEGORY_SEP, a)
	local bProfession, bPlayers = strsplit(CATEGORY_SEP, b)
	if aProfession ~= bProfession then
		local currentProfession = Profession.GetSkillLine()
		currentProfession = strlower(currentProfession or "")
		if aProfession == currentProfession then
			return true
		elseif bProfession == currentProfession then
			return false
		else
			return aProfession < bProfession
		end
	end
	local playerName = UnitName("player")
	local aContainsPlayer = private.PlayersContains(aPlayers, playerName)
	local bContainsPlayer = private.PlayersContains(bPlayers, playerName)
	if aContainsPlayer and not bContainsPlayer then
		return true
	elseif bContainsPlayer and not aContainsPlayer then
		return false
	else
		return aPlayers < bPlayers
	end
end

function private.DataSortComparator(a, b)
	-- sort by category
	local aCategory, bCategory = nil, nil
	if type(a) == "string" and type(b) == "string" then
		return private.categoryOrder[strlower(a)] < private.categoryOrder[strlower(b)]
	elseif type(a) == "string" then
		aCategory = strlower(a)
		local bPlayers = strjoin(",", b:GetField("players"))
		bCategory = strlower(strjoin(CATEGORY_SEP, b:GetField("profession"), bPlayers))
		if aCategory == bCategory then
			return true
		end
	elseif type(b) == "string" then
		local aPlayers = strjoin(",", a:GetField("players"))
		aCategory = strlower(strjoin(CATEGORY_SEP, a:GetField("profession"), aPlayers))
		bCategory = strlower(b)
		if aCategory == bCategory then
			return false
		end
	else
		local aPlayers = strjoin(",", a:GetField("players"))
		aCategory = strlower(strjoin(CATEGORY_SEP, a:GetField("profession"), aPlayers))
		local bPlayers = strjoin(",", b:GetField("players"))
		bCategory = strlower(strjoin(CATEGORY_SEP, b:GetField("profession"), bPlayers))
	end
	if aCategory ~= bCategory then
		return private.categoryOrder[aCategory] < private.categoryOrder[bCategory]
	end
	-- sort spells within a category
	local aRecipeString = a:GetField("recipeString")
	local bRecipeString = b:GetField("recipeString")
	local aNumCraftable = private.sortSelf._numCraftableCache[a]
	local bNumCraftable = private.sortSelf._numCraftableCache[b]
	local aNumQueued = a:GetField("num")
	local bNumQueued = b:GetField("num")
	local aCanCraftAll = aNumCraftable >= aNumQueued
	local bCanCraftAll = bNumCraftable >= bNumQueued
	if aCanCraftAll and not bCanCraftAll then
		return true
	elseif not aCanCraftAll and bCanCraftAll then
		return false
	end
	local aCanCraftSome = aNumCraftable > 0
	local bCanCraftSome = bNumCraftable > 0
	if aCanCraftSome and not bCanCraftSome then
		return true
	elseif not aCanCraftSome and bCanCraftSome then
		return false
	end
	local aProfit = private.sortProfitCache[aRecipeString]
	local bProfit = private.sortProfitCache[bRecipeString]
	if aProfit and not bProfit then
		return true
	elseif not aProfit and bProfit then
		return false
	end
	if aProfit ~= bProfit then
		return aProfit > bProfit
	end
	return aRecipeString < bRecipeString
end

function private.QueryUpdateCallback(_, _, self)
	self:UpdateData(true)
end
