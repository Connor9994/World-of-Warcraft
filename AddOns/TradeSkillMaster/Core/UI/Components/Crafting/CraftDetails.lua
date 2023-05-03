-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
local ProfessionInfo = TSM.Include("Data.ProfessionInfo")
local ItemString = TSM.Include("Util.ItemString")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local MatString = TSM.Include("Util.MatString")
local RecipeString = TSM.Include("Util.RecipeString")
local CraftString = TSM.Include("Util.CraftString")
local Money = TSM.Include("Util.Money")
local Profession = TSM.Include("Service.Profession")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local L = TSM.Include("Locale").GetTable()
local private = {
	optionalMatsTemp = {},
}
local MAX_CRAFT_RANK = 3
local MAX_CRAFT_LEVEL = 4
local MAX_CRAFT_QUALITY = 5



-- ============================================================================
-- Element Definition
-- ============================================================================

local CraftDetails = UIElements.Define("CraftDetails", "Frame") ---@class CraftDetails: Frame
CraftDetails:_ExtendStateSchema()
	:AddOptionalStringField("craftString", nil)
	:AddOptionalStringField("recipeString", nil)
	:AddNumberField("numCraftable", 0)
	:AddOptionalStringField("neededTools", nil)
	:AddOptionalNumberField("remainingCooldown", nil)
	:AddStringField("craftingType", "")
	:AddBooleanField("canCraft", false)
	:AddStringField("craftType", "NONE")
	:AddOptionalNumberField("craftingCost", nil)
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function CraftDetails:__init(frame)
	self.__super:__init(frame)
	self._craftableQuantityFunc = nil
	self._craftingCostFunc = nil
	self._onQueueButtonClick = nil
	self._onCraftButtonMouseDown = nil
	self._onCraftButtonClick = nil
end

function CraftDetails:Acquire()
	self.__super:Acquire()
	self:SetLayout("VERTICAL")
	self:SetMargin(0, 0, 2, 0)
	self:SetPadding(5)
	self:SetBorderColor("ACTIVE_BG", 1)
	self:SetBackgroundColor("PRIMARY_BG", true)
	self:AddChild(UIElements.New("Frame", "header")
		:SetLayout("HORIZONTAL")
		:SetHeight(28)
		:SetPadding(0, 0, 0, 4)
		:AddChild(UIElements.New("Button", "icon")
			:SetSize(20, 20)
			:SetMargin(8, 4, 0, 0)
			:SetScript("OnClick", self:__closure("_HandleItemClick"))
		)
		:AddChild(UIElements.New("Button", "name")
			:SetHeight(24)
			:SetWidth("AUTO")
			:SetFont("ITEM_BODY1")
			:SetJustifyH("LEFT")
			:SetScript("OnClick", self:__closure("_HandleItemClick"))
		)
		:AddChild(UIElements.New("Text", "craftNum")
			:SetMargin(4, 0, 0, 0)
			:SetWidth("AUTO")
			:SetFont("ITEM_BODY1")
			:SetTextColor("INDICATOR")
			:SetJustifyH("LEFT")
		)
		:AddChild(UIElements.New("SelectionDropdown", "rankDropdown")
			:SetSize(80, 20)
			:SetMargin(12, 0, 0, 0)
			:SetScript("OnSelectionChanged", self:__closure("_HandleRankDropdownSelectionChanged"))
		)
		:AddChild(UIElements.New("Text", "rankText")
			:SetWidth("AUTO")
			:SetMargin(12, 0, 0, 0)
		)
		:AddChild(UIElements.New("VerticalLine", "line1")
			:SetMargin(12, 12, 2, 2)
		)
		:AddChild(UIElements.New("Text", "craftingCostLabel")
			:SetWidth("AUTO")
			:SetMargin(0, 4, 0, 0)
			:SetFont("BODY_BODY3")
			:SetText(L["Crafting Cost"]..":")
		)
		:AddChild(UIElements.New("Text", "craftingCostText")
			:SetWidth("AUTO")
			:SetMargin(0, 0, 0, 0)
			:SetFont("TABLE_TABLE1")
		)
		:AddChild(UIElements.New("VerticalLine", "line2")
			:SetMargin(12, 12, 2, 2)
		)
		:AddChild(UIElements.New("Text", "error")
			:SetWidth("AUTO")
			:SetFont("BODY_BODY3_MEDIUM")
			:SetTextColor("FEEDBACK_RED")
		)
		:AddChild(UIElements.New("Spacer", "spacer"))
	)
	self:AddChild(UIElements.New("HorizontalLine", "line"))
	self:AddChild(UIElements.New("Frame", "content")
		:SetLayout("HORIZONTAL")
		:AddChild(UIElements.New("Frame", "mats")
			:SetLayout("VERTICAL")
			:SetMargin(8, 12, 4, 4)
			:AddChild(UIElements.New("CraftingMatList", "matList"))
			:AddChild(UIElements.New("ActionButton", "optionalMatsBtn")
				:SetHeight(20)
				:SetMargin(0, 0, 4, 0)
				:SetText(L["Optional Reagents"])
				:SetFont("BODY_BODY3_MEDIUM")
				:SetScript("OnClick", self:__closure("_HandleOptionalMatsClick"))
			)
		)
		:AddChild(UIElements.New("Frame", "buttons")
			:SetLayout("VERTICAL")
			:SetWidth(230)
			:SetMargin(12, 4, 4, 4)
			:AddChild(UIElements.New("Frame", "quantity")
				:SetLayout("HORIZONTAL")
				:AddChild(UIElements.New("ActionButton", "decrease")
					:SetWidth("AUTO")
					:SetMargin(0, 4, 0, 0)
					:SetText(TextureAtlas.GetTextureLink(TextureAtlas.GetFlippedHorizontallyKey("iconPack.18x18/Caret/Right")))
					:DisableClickCooldown()
					:SetScript("OnClick", private.QuantityDecreaseOnClick)
				)
				:AddChild(UIElements.New("Input", "input")
					:SetMargin(0, 4, 0, 0)
					:SetBackgroundColor("FRAME_BG")
					:SetFont("BODY_BODY2_BOLD")
					:SetJustifyH("CENTER")
					:SetValidateFunc("NUMBER", "1:9999")
					:SetValue(1)
				)
				:AddChild(UIElements.New("ActionButton", "increase")
					:SetWidth("AUTO")
					:SetMargin(0, 4, 0, 0)
					:SetText(TextureAtlas.GetTextureLink("iconPack.18x18/Caret/Right"))
					:DisableClickCooldown()
					:SetScript("OnClick", private.QuantityIncreaseOnClick)
				)
				:AddChild(UIElements.New("ActionButton", "maxBtn")
					:SetWidth("AUTO")
					:SetPadding(4, 4, 0, 0)
					:SetFont("BODY_BODY2_BOLD")
					:SetText(L["MAX"])
					:DisableClickCooldown()
					:SetScript("OnClick", self:__closure("_HandleMaxBtnOnClick"))
				)
			)
			:AddChild(UIElements.New("Frame", "content")
				:SetLayout("HORIZONTAL")
				:SetMargin(0, 0, 6, 6)
				:AddChild(UIElements.New("ActionButton", "craftBtn")
					:SetWidth(80)
					:SetMargin(0, 6, 0, 0)
					:SetText(L["Craft"])
					:SetScript("OnMouseDown", self:__closure("_HandleCraftButtonMouseDown"))
					:SetScript("OnClick", self:__closure("_HandleCraftButtonClick"))
				)
				:AddChild(UIElements.New("ActionButton", "craftVellumBtn")
					:SetWidth(144)
					:SetMargin(0, 0, 0, 0)
					:SetText(L["Craft Vellum"])
					:SetScript("OnMouseDown", self:__closure("_HandleCraftButtonMouseDown"))
					:SetScript("OnClick", self:__closure("_HandleCraftButtonClick"))
				)
			)
			:AddChild(UIElements.New("ActionButton", "queueBtn")
				:SetText(L["Queue"])
				:DisableClickCooldown()
				:SetScript("OnClick", self:__closure("_HandleQueueButtonClick"))
			)
		)
	)
	local buttons = self:GetElement("content.buttons")

	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToNeededTools)
		:AssignToTableKey(self._state, "neededTools")
	self._state:Publisher()
		:IgnoreDuplicatesWithKeys("neededTools", "remainingCooldown", "numCraftable", "craftingType")
		:MapWithFunction(private.StateToCanCraft)
		:AssignToTableKey(self._state, "canCraft")
	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToCraftType)
		:AssignToTableKey(self._state, "craftType")

	self._state:Publisher()
		:IgnoreDuplicatesWithKeys("craftString", "neededTools", "remainingCooldown", "numCraftable")
		:MapWithFunction(private.StateToErrStr)
		:IgnoreDuplicates()
		:CallFunction(self:__closure("_SetErrorText"))

	local craftBtn = buttons:GetElement("content.craftBtn")
	self._state:PublisherForKeyChange("craftType")
		:MapWithFunction(private.CraftTypeToButtonText)
		:CallMethod(craftBtn, "SetText")
	self._state:PublisherForKeyChange("craftType")
		:MapWithFunction(private.CraftTypeToButtonWidth)
		:CallMethod(craftBtn, "SetWidth")
	self._state:PublisherForKeyChange("canCraft")
		:InvertBoolean()
		:CallMethod(craftBtn, "SetDisabled")
	self._state:PublisherForKeyChange("craftingType")
		:MapBooleanEquals("craft")
		:CallMethod(craftBtn, "SetPressed")

	self._state:PublisherForKeyChange("craftType")
		:MapWithFunction(private.CraftTypeToQueueDisabled)
		:CallMethod(buttons:GetElement("queueBtn"), "SetDisabled")
	self._state:PublisherForKeyChange("craftType")
		:MapBooleanNotEquals("ITEM")
		:CallMethod(buttons:GetElement("quantity.decrease"), "SetDisabled")
	self._state:PublisherForKeyChange("craftType")
		:MapBooleanNotEquals("ITEM")
		:CallMethod(buttons:GetElement("quantity.input"), "SetDisabled")
	self._state:PublisherForKeyChange("craftType")
		:MapBooleanNotEquals("ITEM")
		:CallMethod(buttons:GetElement("quantity.increase"), "SetDisabled")
	self._state:PublisherForKeyChange("craftType")
		:MapBooleanNotEquals("ITEM")
		:CallMethod(buttons:GetElement("quantity.maxBtn"), "SetDisabled")

	local craftVellumBtn = buttons:GetElement("content.craftVellumBtn")
	self._state:Publisher()
		:IgnoreDuplicatesWithKeys("craftType", "canCraft")
		:MapWithFunction(private.StateToCraftVellumDisabled)
		:CallMethod(craftVellumBtn, "SetDisabled")
	self._state:PublisherForKeyChange("craftType")
		:MapBooleanEquals("ENCHANT_VELLUM")
		:CallMethod(craftVellumBtn, "SetShown")
	self._state:PublisherForKeyChange("craftingType")
		:MapBooleanEquals("all")
		:CallMethod(craftVellumBtn, "SetPressed")

	self._state:PublisherForKeyChange("craftingCost")
		:MapWithFunction(private.CraftingCostToText)
		:CallFunction(self:__closure("_SetCraftingCostText"))

	local craftNum = self:GetElement("header.craftNum")
	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToCraftNumText)
		:CallMethod(craftNum, "SetText")
	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToCraftNumShown)
		:CallMethod(craftNum, "SetShown")

	local rankText = self:GetElement("header.rankText")
	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToRankText)
		:CallMethod(rankText, "SetText")
	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToRankTextShown)
		:CallMethod(rankText, "SetShown")

	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToOptionalMatsBtnShown)
		:CallMethod(self:GetElement("content.mats.optionalMatsBtn"), "SetShown")

	self._state:PublisherForKeyChange("recipeString")
		:CallMethod(self:GetElement("content.mats.matList"), "SetRecipeString")

	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToRankDropdownShown)
		:CallMethod(self:GetElement("header.rankDropdown"), "SetShown")

	local icon = self:GetElement("header.icon")
	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToIconBackground)
		:CallMethod(icon, "SetBackground")
	self._state:PublisherForKeyChange("recipeString")
		:MapWithFunction(private.RecipeStringToResultTooltip)
		:CallMethod(icon, "SetTooltip")
	self._state:PublisherForKeyChange("craftString")
		:MapToBoolean()
		:CallMethod(icon, "SetShown")

	local name = self:GetElement("header.name")
	self._state:PublisherForKeyChange("craftString")
		:MapWithFunction(private.CraftStringToNameText)
		:CallMethod(name, "SetText")
	self._state:PublisherForKeyChange("recipeString")
		:MapWithFunction(private.RecipeStringToResultTooltip)
		:CallMethod(name, "SetTooltip")
end

function CraftDetails:Release()
	self._craftableQuantityFunc = nil
	self._craftingCostFunc = nil
	self._onQueueButtonClick = nil
	self._onCraftButtonMouseDown = nil
	self._onCraftButtonClick = nil
	self.__super:Release()
end

---Sets the craftable quantity function.
---@param func fun(recipeString: string): number Function which gets the craftable quantity
---@return CraftDetails
function CraftDetails:SetCraftableQuantityFunction(func)
	assert(func and not self._craftableQuantityFunc)
	self._craftableQuantityFunc = func
	self._state:PublisherForKeyChange("recipeString")
		:MapWithFunction(private.RecipeStringToNumCraftable, func)
		:AssignToTableKey(self._state, "numCraftable")
	return self
end

---Sets the crafting cost function.
---@param func fun(recipeString: string): number? Function which calculates the crafting cost
---@return CraftDetails
function CraftDetails:SetCraftingCostFunction(func)
	assert(func and not self._craftingCostFunc)
	self._craftingCostFunc = func
	self._state:PublisherForKeyChange("recipeString")
		:MapWithFunction(private.RecipeStringToCraftingCost, func)
		:AssignToTableKey(self._state, "craftingCost")
	return self
end

---Sets the selected recipe's spell ID.
---@param spellId number The spellId
---@return CraftDetails
function CraftDetails:SetSpellId(spellId)
	local dropdown = self:GetElement("header.rankDropdown")
	dropdown:ClearItems()
	local knownRank, highestLevel, lowestQuality = nil, nil, nil
	if spellId then
		for i = 1, MAX_CRAFT_RANK do
			if Profession.GetIndexByCraftString(CraftString.Get(spellId, i)) then
				knownRank = i
				break
			end
		end
		for i = 1, MAX_CRAFT_LEVEL do
			if Profession.GetIndexByCraftString(CraftString.Get(spellId, nil, i)) then
				dropdown:AddItem(format(L["Rank %d"], i), i)
				highestLevel = i
			else
				break
			end
		end
		for i = 1, MAX_CRAFT_QUALITY do
			if Profession.GetIndexByCraftString(CraftString.Get(spellId, nil, nil, i)) then
				lowestQuality = i
				break
			end
		end
	end
	local craftString = spellId and CraftString.Get(spellId, knownRank, highestLevel, lowestQuality) or nil
	dropdown:SetSelectedItemByKey(highestLevel, true)

	local changed = craftString ~= self._state.craftString
	self._state.craftString = craftString
	self:_UpdateRecipeString(changed)
	return self
end

---Sets whether or not a craft is in progress.
---@param craftingType ""|"all"|"craft"|"queue" The type of craft in progress
---@param craftingQuantity? number The number being crafted
---@return CraftDetails
function CraftDetails:SetState(craftingType, craftingQuantity)
	assert(craftingType == "" or craftingType == "all" or craftingType == "craft" or craftingType == "queue")
	self._state.craftingType = craftingType
	self._state.remainingCooldown = Profession.GetRemainingCooldown(self._state.craftString)
	if Profession.IsClassicCrafting() and CraftCreateButton then
		local craftBtnBaseFrame = self:GetElement("content.buttons.content.craftBtn"):_GetBaseFrame()
		CraftCreateButton:SetParent(craftBtnBaseFrame)
		CraftCreateButton:ClearAllPoints()
		CraftCreateButton:SetAllPoints(craftBtnBaseFrame)
		CraftCreateButton:SetFrameLevel(200)
		CraftCreateButton:DisableDrawLayer("BACKGROUND")
		CraftCreateButton:DisableDrawLayer("ARTWORK")
		CraftCreateButton:SetHighlightTexture(nil)
		if self._state.canCraft then
			CraftCreateButton:Enable()
		else
			CraftCreateButton:Disable()
		end
	end
	if craftingQuantity then
		self:GetElement("content.buttons.quantity.input")
			:SetValue(craftingQuantity)
			:Draw()
	end
	return self
end

---Registers a script handler.
---@param script "OnQueueButtonClick"|"OnCraftButtonMouseDown"|"OnCraftButtonClick"
---@param handler fun(craftDetails: CraftDetails, ...: any) The handler
---@return CraftDetails
function CraftDetails:SetScript(script, handler)
	if script == "OnQueueButtonClick" then
		self._onQueueButtonClick = handler
	elseif script == "OnCraftButtonMouseDown" then
		self._onCraftButtonMouseDown = handler
	elseif script == "OnCraftButtonClick" then
		self._onCraftButtonClick = handler
	else
		error("Invalid script: "..tostring(script))
	end
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function CraftDetails.__private:_UpdateRecipeString(wipeExisting)
	if not self._state.craftString then
		self._state.recipeString = nil
		return
	end
	assert(not next(private.optionalMatsTemp))
	if self._state.recipeString and not wipeExisting then
		-- Ensure the existing optional mats are valid for the selected recipe and can be used with the selected craft level
		local level = CraftString.GetLevel(self._state.craftString)
		for _, slotId, itemId in RecipeString.OptionalMatIterator(self._state.recipeString) do
			local matString = Profession.GetOptionalMatString(self._state.craftString, slotId)
			local levelTable = ProfessionInfo.GetRequiredLevelByOptionalMat("i:"..itemId)
			if (not levelTable or levelTable[level]) and (matString and MatString.ContainsItem(matString, itemId)) then
				private.optionalMatsTemp[slotId] = itemId
			end
		end
	end
	-- Make sure all the quality mats are set
	for _, matString in Profession.MatIterator(self._state.craftString) do
		if MatString.GetType(matString) == MatString.TYPE.QUALITY then
			local slotId = MatString.GetSlotId(matString)
			-- TODO: Set the mat quality based on the quality specified in the craftString
			private.optionalMatsTemp[slotId] = private.optionalMatsTemp[slotId] or ItemString.ToId(MatString.GetQualityItem(matString, 1))
		end
	end
	self._state.recipeString = RecipeString.FromCraftString(self._state.craftString, private.optionalMatsTemp)
	wipe(private.optionalMatsTemp)
end

function CraftDetails.__private:_AddOptionalMat(slotId, itemId)
	-- Make sure this is a valid optional mat
	local matString = Profession.GetOptionalMatString(self._state.craftString, slotId)
	assert(matString and MatString.ContainsItem(matString, itemId))

	assert(not next(private.optionalMatsTemp))
	for _, existingSlotId, existingItemId in RecipeString.OptionalMatIterator(self._state.recipeString) do
		-- Remove this item from any existing slots its in
		if existingItemId ~= itemId then
			private.optionalMatsTemp[existingSlotId] = existingItemId
		end
	end
	private.optionalMatsTemp[slotId] = itemId
	self._state.recipeString = RecipeString.FromCraftString(self._state.craftString, private.optionalMatsTemp)
	wipe(private.optionalMatsTemp)
end

function CraftDetails.__private:_RemoveOptionalMat(slotId)
	assert(not next(private.optionalMatsTemp))
	for _, existingSlotId, existingItemId in RecipeString.OptionalMatIterator(self._state.recipeString) do
		if existingSlotId ~= slotId then
			private.optionalMatsTemp[existingSlotId] = existingItemId
		end
	end
	self._state.recipeString = RecipeString.FromCraftString(self._state.craftString, private.optionalMatsTemp)
	wipe(private.optionalMatsTemp)
end

function CraftDetails.__private:_GetQuantityValue()
	return max(tonumber(self:GetElement("content.buttons.quantity.input"):GetValue()), 1)
end

function CraftDetails.__private:_HandleRankDropdownSelectionChanged(dropdown)
	local level = dropdown:GetSelectedItemKey()
	if not level then
		return
	end
	self._state.craftString = CraftString.SetLevel(self._state.craftString, dropdown:GetSelectedItemKey())
	self:_UpdateRecipeString()
end

function CraftDetails.__private:_HandleQueueButtonClick()
	self:_onQueueButtonClick(self._state.recipeString, self:_GetQuantityValue())
end

function CraftDetails.__private:_HandleCraftButtonMouseDown(button)
	local isVellum = button == self:GetElement("content.buttons.content.craftVellumBtn")
	self:_onCraftButtonMouseDown(self._state.recipeString, self:_GetQuantityValue(), isVellum)
end

function CraftDetails.__private:_HandleCraftButtonClick(button)
	button:SetPressed(true)
	button:Draw()
	local isVellum = button == self:GetElement("content.buttons.content.craftVellumBtn")
	self:_onCraftButtonClick(self._state.recipeString, self:_GetQuantityValue(), isVellum)
end

function CraftDetails.__private:_HandleOptionalMatsClick()
	self:GetBaseElement():ShowDialogFrame(UIElements.New("OptionalMatsDialog", "frame")
		:SetRecipeString(self._state.recipeString)
		:SetScript("OnRecipeStringChanged", self:__closure("_HandleDialogRecipeStringChanged"))
	)
end

function CraftDetails.__private:_HandleDialogRecipeStringChanged(_, recipeString)
	self._state.recipeString = recipeString
end

function CraftDetails.__private:_HandleMaxBtnOnClick(button)
	local numCraftable = self._craftableQuantityFunc(self._state.recipeString)
	if numCraftable < 1 then
		return
	end
	button:GetElement("__parent.input")
		:SetValue(numCraftable)
		:Draw()
end

function CraftDetails.__private:_HandleItemClick()
	local itemString = Profession.GetResultInfo(self._state.craftString)
	if itemString then
		UIUtils.HandleModifiedItemClick(itemString)
	end
end

function CraftDetails.__private:_SetCraftingCostText(text)
	self:GetElement("header.craftingCostText"):SetText(text)
	self:GetElement("header"):Draw()
end

function CraftDetails.__private:_SetErrorText(text)
	self:GetElement("header.error"):SetText(text)
	self:GetElement("header"):Draw()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.QuantityDecreaseOnClick(button)
	local input = button:GetElement("__parent.input")
	input:Subtract()
end

function private.QuantityIncreaseOnClick(button)
	local input = button:GetElement("__parent.input")
	input:Add()
end

function private.StateToErrStr(state)
	if not state.craftString then
		return L["No receipe selected"]
	elseif state.neededTools then
		return REQUIRES_LABEL.." "..state.neededTools
	elseif state.remainingCooldown then
		return format(L["On Cooldown for %s"], SecondsToTime(state.remainingCooldown))
	elseif state.numCraftable == 0 then
		return L["Missing Materials"]
	else
		return ""
	end
end

function private.CraftStringToNeededTools(craftString)
	return craftString and Profession.NeededTools(craftString) or nil
end

function private.StateToCanCraft(state)
	return not state.neededTools and not state.remainingCooldown and state.numCraftable > 0 and state.craftingType == ""
end

function private.CraftTypeToButtonText(craftType)
	if craftType == "ITEM" or craftType == "RESEARCH" then
		return L["Craft"]
	elseif craftType == "ENCHANT" or craftType == "ENCHANT_VELLUM" then
		return L["Enchant"]
	elseif craftType == "TINKER" then
		return L["Tinker"]
	elseif craftType == "NONE" then
		return ""
	else
		error("Invalid craftType: "..tostring(craftType))
	end
end

function private.CraftTypeToButtonWidth(craftType)
	return craftType == "ENCHANT_VELLUM" and 80 or 230
end

function private.CraftTypeToQueueDisabled(craftType)
	return craftType ~= "ENCHANT_VELLUM" and craftType ~= "ITEM"
end

function private.StateToCraftVellumDisabled(state)
	return state.craftType ~= "ENCHANT_VELLUM" or not state.canCraft
end

function private.CraftingCostToText(craftingCost)
	return Money.ToString(craftingCost, nil, "OPT_RETAIL_ROUND") or "---"
end

function private.CraftStringToCraftNumText(craftString)
	if not craftString then
		return ""
	end
	local lNum, hNum = Profession.GetCraftedQuantityRange(craftString)
	return lNum == hNum and format("(%d)", lNum) or format("(%d-%d)", lNum, hNum)
end

function private.CraftStringToCraftNumShown(craftString)
	if not craftString then
		return false
	end
	local lNum, hNum = Profession.GetCraftedQuantityRange(craftString)
	return lNum ~= hNum or lNum >= 2
end

function private.CraftStringToRankText(craftString)
	local rank = craftString and CraftString.GetRank(craftString) or -1
	local level = craftString and CraftString.GetLevel(craftString) or -1
	assert(rank <= 0 or level <= 0)
	if rank > 0 then
		local filled = TextureAtlas.GetTextureLink("iconPack.14x14/Star/Filled")
		local unfilled = TextureAtlas.GetTextureLink("iconPack.14x14/Star/Unfilled")
		assert(rank >= 1 and rank <= 3)
		return strrep(filled, rank)..strrep(unfilled, 3 - rank)
	elseif level > 0 then
		local currExp = Profession.GetCurrentExpByCraftString(craftString)
		local nextExp = Profession.GetNextExpByCraftString(craftString)
		return currExp >= 0 and format("%s / %s", currExp, nextExp) or L["Max"]
	else
		return ""
	end
end

function private.CraftStringToRankTextShown(craftString)
	local rank = craftString and CraftString.GetRank(craftString) or -1
	local level = craftString and CraftString.GetLevel(craftString) or -1
	return rank > 0 or level > 0
end

function private.CraftStringToOptionalMatsBtnShown(craftString)
	return craftString and Profession.HasOptionalMats(craftString) or false
end

function private.CraftStringToRankDropdownShown(craftString)
	local level = craftString and CraftString.GetLevel(craftString) or -1
	return level > 0
end

function private.RecipeStringToResultTooltip(recipeString)
	if not recipeString then
		return nil
	end
	local craftString = CraftString.FromRecipeString(recipeString)
	local itemString = Profession.GetResultInfo(craftString)
	if not itemString or itemString == "" then
		if Profession.IsClassicCrafting() then
			return "craft:"..(Profession.GetIndexByCraftString(craftString) or craftString)
		else
			return "enchant:"..RecipeString.GetSpellId(recipeString)
		end
	end

	local level = RecipeString.GetLevel(recipeString)
	local rank = RecipeString.GetRank(recipeString)
	if not level and not rank and not RecipeString.HasOptionalMats(recipeString) then
		return itemString
	elseif not level then
		return Profession.IsEnchant(craftString) and itemString or recipeString
	end

	local absItemLevel = nil
	for _, _, itemId in RecipeString.OptionalMatIterator(recipeString) do
		local matItemString = ItemString.Get(itemId)
		absItemLevel = absItemLevel or ProfessionInfo.GetItemLevelByOptionalMat(matItemString)
		level = level + (ProfessionInfo.GetCraftLevelIncreaseByOptionalMat(matItemString) or 0)
	end
	if absItemLevel then
		assert(level == 0)
		return itemString.."::i"..absItemLevel
	elseif level > 0 then
		local relLevel = ProfessionInfo.GetRelativeItemLevelByRank(level)
		return itemString..(relLevel < 0 and "::-" or "::+")..abs(relLevel)
	else
		return itemString
	end
end

function private.CraftStringToIconBackground(craftString)
	if not craftString then
		return nil
	end
	local _, texture = Profession.GetResultInfo(craftString)
	return texture
end

function private.CraftStringToNameText(craftString)
	if not craftString then
		return ""
	end
	local itemString, _, name = Profession.GetResultInfo(craftString)
	return itemString and UIUtils.GetDisplayItemName(itemString) or name
end

function private.CraftStringToCraftType(craftString)
	if not craftString then
		return "NONE"
	elseif Profession.IsEnchant(craftString) then
		return Environment.IsVanillaClassic() and "ENCHANT" or "ENCHANT_VELLUM"
	elseif Profession.IsTinker(craftString) then
		return "TINKER"
	elseif not Profession.GetResultInfo(craftString) then
		return "RESEARCH"
	else
		return "ITEM"
	end
end

function private.RecipeStringToNumCraftable(recipeString, func)
	return recipeString and func(recipeString) or 0
end

function private.RecipeStringToCraftingCost(recipeString, func)
	return recipeString and func(recipeString) or nil
end
