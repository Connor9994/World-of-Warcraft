-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ProfessionInfo = TSM.Include("Data.ProfessionInfo")
local ItemString = TSM.Include("Util.ItemString")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local MatString = TSM.Include("Util.MatString")
local RecipeString = TSM.Include("Util.RecipeString")
local CraftString = TSM.Include("Util.CraftString")
local Theme = TSM.Include("Util.Theme")
local Profession = TSM.Include("Service.Profession")
local ItemInfo = TSM.Include("Service.ItemInfo")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local L = TSM.Include("Locale").GetTable()
local private = {
	optionalMatsTemp = {},
}



-- ============================================================================
-- Element Definition
-- ============================================================================

local OptionalMatsDialog = UIElements.Define("OptionalMatsDialog", "Frame") ---@class OptionalMatsDialog: Frame



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function OptionalMatsDialog:__init(frame)
	self.__super:__init(frame)
	self._recipeString = nil
	self._selectedMatString = nil
	self._onRecipeStringChanged = nil
end

function OptionalMatsDialog:Acquire()
	self.__super:Acquire()
	self:SetLayout("VERTICAL")
	self:SetSize(478, 368)
	self:SetPadding(12)
	self:AddAnchor("CENTER")
	self:SetMouseEnabled(true)
	self:SetBackgroundColor("FRAME_BG", true)
	-- We defer adding the content until the recipeString is set
end

function OptionalMatsDialog:Release()
	self._recipeString = nil
	self._onRecipeStringChanged = nil
	self.__super:Release()
end

function OptionalMatsDialog:SetRecipeString(recipeString)
	assert(recipeString and not self._recipeString)
	self._recipeString = recipeString
	self:AddChild(UIElements.New("ViewContainer", "view")
		:SetNavCallback(self:__closure("_GetOptionalMatsViewContentFrame"))
		:AddPath("list", true)
		:AddPath("selection")
	)
	return self
end

---Registers a script handler.
---@param script "OnRecipeStringChanged"
---@param handler fun(craftDetails: OptionalMatsDialog, ...: any) The handler
---@return OptionalMatsDialog
function OptionalMatsDialog:SetScript(script, handler)
	if script == "OnRecipeStringChanged" then
		self._onRecipeStringChanged = handler
	else
		error("Invalid script: "..tostring(script))
	end
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function OptionalMatsDialog.__private:_GetOptionalMatsViewContentFrame(viewContainer, path)
	if path == "list" then
		local tooltip, name, texture = private.GetResultInfo(self._recipeString)
		return UIElements.New("Frame", "frame")
			:SetLayout("VERTICAL")
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, -4, 10)
				:AddChild(UIElements.New("Spacer", "spacer")
					:SetWidth(20)
				)
				:AddChild(UIElements.New("Text", "title")
					:SetJustifyH("CENTER")
					:SetFont("BODY_BODY1_BOLD")
					:SetText(L["Add Optional Reagents"])
				)
				:AddChild(UIElements.New("Button", "closeBtn")
					:SetMargin(0, -4, 0, 0)
					:SetBackgroundAndSize("iconPack.24x24/Close/Default")
					:SetScript("OnClick", self:__closure("_CloseDialog"))
				)
			)
			:AddChild(UIElements.New("Frame", "item")
				:SetLayout("HORIZONTAL")
				:SetPadding(6)
				:SetMargin(0, 0, 0, 10)
				:SetBackgroundColor("PRIMARY_BG_ALT", true)
				:AddChild(UIElements.New("Button", "icon")
					:SetSize(36, 36)
					:SetMargin(0, 8, 0, 0)
					:SetBackground(texture)
					:SetTooltip(tooltip)
				)
				:AddChild(UIElements.New("Text", "name")
					:SetHeight(36)
					:SetFont("ITEM_BODY1")
					:SetText(name)
				)
			)
			:AddChild(UIElements.New("Text", "label")
				:SetHeight(20)
				:SetJustifyH("LEFT")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(L["Optional Reagents"])
			)
			:AddChildrenWithFunction(self:__closure("_AddOptionalMatRows"))
			:AddChild(UIElements.New("Frame", "spacer"))
			:AddChild(UIElements.New("ActionButton", "addReagents")
				:SetHeight(24)
				:SetText(L["Add Reagent(s)"])
				:SetScript("OnClick", self:__closure("_CloseDialog"))
			)
	elseif path == "selection" then
		return UIElements.New("Frame", "frame")
			:SetLayout("VERTICAL")
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, -4, 10)
				:AddChild(UIElements.New("Button", "backBtn")
					:SetMargin(2, 0, 0, 0)
					:SetBackgroundAndSize(TextureAtlas.GetFlippedHorizontallyKey("iconPack.18x18/Chevron/Right"))
					:SetScript("OnClick", self:__closure("_HandleBackOnClick"))
				)
				:AddChild(UIElements.New("Text", "title")
					:SetJustifyH("CENTER")
					:SetFont("BODY_BODY1_BOLD")
					:SetText(Profession.GetMatSlotText(CraftString.FromRecipeString(self._recipeString), self._selectedMatString))
				)
				:AddChild(UIElements.New("Button", "closeBtn")
					:SetMargin(0, -4, 0, 0)
					:SetBackgroundAndSize("iconPack.24x24/Close/Default")
					:SetScript("OnClick", self:__closure("_CloseDialog"))
				)
			)
			:AddChild(UIElements.New("Frame", "container")
				:SetLayout("VERTICAL")
				:SetHeight(274)
				:SetPadding(0, 0, 10, 10)
				:SetBackgroundColor("PRIMARY_BG_ALT", true)
				:AddChildrenWithFunction(self:__closure("_AddOptionalMatEntries"))
			)
	else
		error("Unexpected path: "..tostring(path))
	end
end

function OptionalMatsDialog.__private:_AddOptionalMatRows(frame)
	for _, matString, _, slotText in Profession.MatIterator(CraftString.FromRecipeString(self._recipeString)) do
		local matType = MatString.GetType(matString)
		if matType == MatString.TYPE.NORMAL then
			-- pass
		elseif matType == MatString.TYPE.QUALITY then
			frame:AddChild(self:_GetOptionalMatRow(matString, slotText, false))
		elseif matType == MatString.TYPE.OPTIONAL or matType == MatString.TYPE.FINISHING then
			frame:AddChild(self:_GetOptionalMatRow(matString, slotText, true))
		else
			error("Invalid type: "..tostring(matString))
		end
	end
end

function OptionalMatsDialog.__private:_GetOptionalMatRow(matString, slotText, required)
	local slotId = MatString.GetSlotId(matString)
	local itemId = RecipeString.GetOptionalMat(self._recipeString, slotId)
	local itemString = itemId and "i:"..itemId or nil
	local row = UIElements.New("Frame", "optional"..slotId)
		:SetLayout("HORIZONTAL")
		:SetHeight(28)
		:SetMargin(8, 0, 4, 0)
		:AddChild(UIElements.New("Text", "slotId")
			:SetWidth(20)
			:SetMargin(2, 8, 0, 0)
			:SetFont("BODY_BODY1_BOLD")
			:SetText(slotId)
		)
		:AddChild(UIElements.New("Frame", "title")
			:SetLayout("HORIZONTAL")
			:SetPadding(0, 8, 0, 0)
			:SetBackgroundColor("ACTIVE_BG", true)
			:SetContext(matString)
			:SetMouseEnabled(true)
			:AddChild(UIElements.New("Button", "icon")
				:SetSize(20, 20)
				:SetMargin(8, 0, 0, 0)
				:SetBackground(itemString and ItemInfo.GetTexture(itemString) or nil)
				:SetTooltip(itemString)
			)
			:AddChild(UIElements.New("Button", "name")
				:SetWidth(300)
				:SetMargin(8, 0, 0, 0)
				:SetFont("BODY_BODY2")
				:SetJustifyH("LEFT")
				:PropagateScript("OnMouseUp")
				:SetText(itemString and UIUtils.GetDisplayItemName(itemString) or slotText)
			)
			:AddChild(UIElements.New("Frame", "spacer"))
			:AddChild(UIElements.New("Button", "removeBtn")
				:SetMargin(4, 4, 0, 0)
				:SetBackgroundAndSize("iconPack.18x18/Delete")
				:SetScript("OnClick", self:__closure("_HandleOptionalMatRemoveClick"))
			)
			:AddChild(UIElements.New("Texture", "addBtn")
				:SetMargin(4, 0, 0, 0)
				:SetTextureAndSize("iconPack.18x18/Chevron/Right")
			)
			:SetScript("OnMouseUp", self:__closure("_HandleOptionalMatAddOnMouseUp"))
		)
	row:GetElement("title.icon")
		:SetShown(itemString)
	row:GetElement("title.removeBtn")
		:SetShown(itemString and required)
	row:GetElement("title")
		:Draw()
	return row
end

function OptionalMatsDialog.__private:_HandleOptionalMatAddOnMouseUp(button)
	local viewContainer = button:GetParentElement():GetParentElement():GetParentElement()
	self._selectedMatString = button:GetContext()
	viewContainer:SetPath("selection", true)
end

function OptionalMatsDialog.__private:_HandleOptionalMatRemoveClick(button)
	local slotId = MatString.GetSlotId(button:GetParentElement():GetContext())
	assert(slotId)

	assert(not next(private.optionalMatsTemp))
	for _, existingSlotId, existingItemId in RecipeString.OptionalMatIterator(self._recipeString) do
		if existingSlotId ~= slotId then
			private.optionalMatsTemp[existingSlotId] = existingItemId
		end
	end
	self._recipeString = RecipeString.SetOptionalMats(self._recipeString, private.optionalMatsTemp)
	wipe(private.optionalMatsTemp)

	self:_onRecipeStringChanged(self._recipeString)

	local tooltip, name = private.GetResultInfo(self._recipeString)
	local titleFrame = button:GetParentElement()
	titleFrame:GetElement("icon")
		:SetBackground(nil)
		:SetTooltip(nil)
		:Hide()
	titleFrame:GetElement("name")
		:SetText(name)
	titleFrame:GetElement("removeBtn")
		:Hide()
	titleFrame:Draw()
	titleFrame:GetElement("__parent.__parent.item.icon")
		:SetTooltip(tooltip)
		:Draw()
end

function OptionalMatsDialog.__private:_AddOptionalMatEntries(frame)
	for itemString in MatString.ItemIterator(self._selectedMatString) do
		frame:AddChild(UIElements.New("Button", "button_"..itemString)
			:SetHeight(20)
			:SetPadding(8, 8, 0, 0)
			:SetFont("BODY_BODY2")
			:SetJustifyH("LEFT")
			:SetBackground("PRIMARY_BG_ALT", true)
			:SetContext(ItemString.ToId(itemString))
			:SetText(UIUtils.GetDisplayItemName(itemString) or Theme.GetColor("FEEDBACK_RED"):ColorText("?"))
			:SetTooltip(itemString)
			:SetScript("OnClick", self:__closure("_HandleOptionalMatOnEntrySelected"))
		)
	end
end

function OptionalMatsDialog.__private:_HandleOptionalMatOnEntrySelected(button)
	local slotId = MatString.GetSlotId(self._selectedMatString)
	local itemId = button:GetContext()
	assert(slotId and itemId)

	-- Make sure this is a valid optional mat
	local matString = Profession.GetOptionalMatString(CraftString.FromRecipeString(self._recipeString), slotId)
	assert(matString and MatString.ContainsItem(matString, itemId))

	assert(not next(private.optionalMatsTemp))
	for _, existingSlotId, existingItemId in RecipeString.OptionalMatIterator(self._recipeString) do
		-- Remove this item from any existing slots its in
		if existingItemId ~= itemId then
			private.optionalMatsTemp[existingSlotId] = existingItemId
		end
	end
	private.optionalMatsTemp[slotId] = itemId
	self._recipeString = RecipeString.SetOptionalMats(self._recipeString, private.optionalMatsTemp)
	wipe(private.optionalMatsTemp)

	self:_onRecipeStringChanged(self._recipeString)

	self:_CloseDialog()
end

function OptionalMatsDialog.__private:_CloseDialog()
	self:GetBaseElement():HideDialog()
end

function OptionalMatsDialog.__private:_HandleBackOnClick(button)
	local viewContainer = button:GetParentElement():GetParentElement():GetParentElement()
	self._selectedMatString = nil
	viewContainer:SetPath("list", true)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetResultInfo(recipeString)
	local craftString = CraftString.FromRecipeString(recipeString)
	local itemString, texture, name = Profession.GetResultInfo(craftString)
	local tooltip = nil
	if not itemString or itemString == "" then
		if Profession.IsClassicCrafting() then
			tooltip = "craft:"..(Profession.GetIndexByCraftString(craftString) or craftString)
		else
			tooltip = "enchant:"..RecipeString.GetSpellId(recipeString)
		end
	else
		local level = RecipeString.GetLevel(recipeString)
		local rank = RecipeString.GetRank(recipeString)
		if not level and not rank and not RecipeString.HasOptionalMats(recipeString) then
			tooltip = itemString
		elseif not level then
			tooltip = recipeString
		else
			local absItemLevel = nil
			for _, _, itemId in RecipeString.OptionalMatIterator(recipeString) do
				local matItemString = ItemString.Get(itemId)
				absItemLevel = absItemLevel or ProfessionInfo.GetItemLevelByOptionalMat(matItemString)
				level = level + (ProfessionInfo.GetCraftLevelIncreaseByOptionalMat(matItemString) or 0)
			end
			if absItemLevel then
				assert(level == 0)
				tooltip = itemString.."::i"..absItemLevel
			elseif level > 0 then
				local relLevel = ProfessionInfo.GetRelativeItemLevelByRank(level)
				tooltip = itemString..(relLevel < 0 and "::-" or "::+")..abs(relLevel)
			end
		end
	end
	return tooltip, itemString and UIUtils.GetDisplayItemName(itemString) or name, texture or ItemInfo.GetTexture(itemString)
end
