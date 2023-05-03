-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local MatString = TSM.Include("Util.MatString")
local ItemString = TSM.Include("Util.ItemString")
local RecipeString = TSM.Include("Util.RecipeString")
local CraftString = TSM.Include("Util.CraftString")
local BagTracking = TSM.Include("Service.BagTracking")
local Profession = TSM.Include("Service.Profession")
local ItemInfo = TSM.Include("Service.ItemInfo")
local UIElements = TSM.Include("UI.UIElements")
local Tooltip = TSM.Include("UI.Tooltip")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	optionalMatOrderTemp = {},
	bagUpdateCallbacks = nil,
}
local ROW_HEIGHT = 20
local ICON_SIZE = 12
local ICON_SPACING = 4
local STATUS_CHECK_TEXTURE = "iconPack.12x12/Checkmark/Default"
local STATUS_X_TEXTURE = "iconPack.12x12/Close/Default"



-- ============================================================================
-- Element Definition
-- ============================================================================

local CraftingMatList = UIElements.Define("CraftingMatList", "List") ---@class CraftingMatList: List



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function CraftingMatList:__init()
	self.__super:__init()
	if not private.bagUpdateCallbacks then
		-- Register a bag tracking callback to update all elements
		private.bagUpdateCallbacks = {}
		BagTracking.RegisterCallback(function()
			for _, callback in pairs(private.bagUpdateCallbacks) do
				callback()
			end
		end)
	end
	self._query = nil
	self._itemString = {}
	self._text = {}
	self._icon = {}
	self._quantity = {}
	self._playerQuantity = {}
end

function CraftingMatList:Acquire()
	self.__super:Acquire(ROW_HEIGHT)
	private.bagUpdateCallbacks[self] = self:__closure("_HandleBagUpdate")
end

function CraftingMatList:Release()
	private.bagUpdateCallbacks[self] = nil
	wipe(self._itemString)
	wipe(self._text)
	wipe(self._icon)
	wipe(self._quantity)
	wipe(self._playerQuantity)
	self.__super:Release()
	if self._query then
		self._query:Release()
	end
	self._query = nil
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function CraftingMatList:SetRecipeString(recipeString)
	wipe(self._itemString)
	wipe(self._text)
	wipe(self._icon)
	wipe(self._quantity)
	wipe(self._playerQuantity)

	if recipeString then
		local craftString = CraftString.FromRecipeString(recipeString)
		assert(not next(private.optionalMatOrderTemp))
		for _, matString, quantity in Profession.MatIterator(craftString) do
			local matType = MatString.GetType(matString)
			if matType == MatString.TYPE.NORMAL then
				self:_AddMaterial(matString, quantity)
			elseif matType == MatString.TYPE.QUALITY then
				local itemString = "i:"..RecipeString.GetOptionalMat(recipeString, MatString.GetSlotId(matString))
				self:_AddMaterial(itemString, quantity)
			else
				local slotId = MatString.GetSlotId(matString)
				if RecipeString.GetOptionalMat(recipeString, slotId) then
					tinsert(private.optionalMatOrderTemp, slotId)
				end
			end
		end
		sort(private.optionalMatOrderTemp)
		for _, slotId in ipairs(private.optionalMatOrderTemp) do
			local itemId = RecipeString.GetOptionalMat(recipeString, slotId)
			local itemString = "i:"..itemId
			self:_AddMaterial(itemString, Profession.GetMatQuantity(craftString, itemId))
		end
		wipe(private.optionalMatOrderTemp)
	end

	self:_SetNumRows(#self._itemString)
	self:Draw()
end

function CraftingMatList:SetScript(script)
	error("Unknown CraftingMatList script: "..tostring(script))
end



-- ============================================================================
-- Protected/Private Class Methods
-- ============================================================================

function CraftingMatList.__private:_HandleBagUpdate()
	for i, prevQuantity in ipairs(self._playerQuantity) do
		local playerQuantity = BagTracking.GetCraftingMatQuantity(self._itemString[i])
		if prevQuantity ~= playerQuantity then
			self._playerQuantity[i] = playerQuantity
			local row = self:_GetRow(i)
			if row then
				self:_DrawRowQty(row, self._playerQuantity[i], self._quantity[i])
			end
		end
	end
end

function CraftingMatList.__private:_AddMaterial(itemString, quantity)
	tinsert(self._itemString, itemString)
	tinsert(self._text, UIUtils.GetDisplayItemName(itemString) or Theme.GetColor("FEEDBACK_RED"):ColorText("?"))
	tinsert(self._icon, ItemInfo.GetTexture(itemString) or ItemInfo.GetTexture(ItemString.GetUnknown()))
	tinsert(self._quantity, quantity)
	tinsert(self._playerQuantity, BagTracking.GetCraftingMatQuantity(itemString))
end

function CraftingMatList.__protected:_HandleRowAcquired(row)
	row:DisableHighlight()

	-- Add the status texture
	local status = row:AddTexture("status")
	status:SetDrawLayer("ARTWORK", 1)
	TextureAtlas.SetTextureAndSize(status, STATUS_CHECK_TEXTURE)

	-- Add the icon
	local icon = row:AddTexture("icon")
	icon:SetDrawLayer("ARTWORK", 1)
	icon:SetWidth(ICON_SIZE)
	icon:SetHeight(ICON_SIZE)

	-- Add the item text
	local item = row:AddText("item")
	item:SetHeight(ROW_HEIGHT)
	item:SetFont(Theme.GetFont("ITEM_BODY3"):GetWowFont())
	item:SetJustifyH("LEFT")

	-- Add the quantity text
	local qty = row:AddText("qty")
	qty:SetHeight(ROW_HEIGHT)
	qty:SetFont(Theme.GetFont("TABLE_TABLE1"):GetWowFont())
	qty:SetJustifyH("RIGHT")

	-- Layout the elements
	status:SetPoint("LEFT", Theme.GetColSpacing() / 2, 0)
	icon:SetPoint("LEFT", status, "RIGHT", ICON_SPACING, 0)
	item:SetPoint("LEFT", icon, "RIGHT", ICON_SPACING, 0)
	item:SetPoint("RIGHT", qty, "LEFT", -Theme.GetColSpacing() / 2, 0)
	qty:SetPoint("RIGHT", -Theme.GetColSpacing() / 2, 0)
end

function CraftingMatList.__protected:_HandleRowDraw(row)
	local dataIndex = row:GetDataIndex()
	self:_DrawRowItem(row, self._text[dataIndex], self._icon[dataIndex])
	self:_DrawRowQty(row, self._playerQuantity[dataIndex], self._quantity[dataIndex])
end

function CraftingMatList.__private:_DrawRowItem(row, text, icon)
	row:GetText("item"):SetText(text)
	row:GetTexture("icon"):SetTexture(icon)
end

function CraftingMatList.__private:_DrawRowQty(row, bagQuantity, quantity)
	local color = bagQuantity >= quantity and "FEEDBACK_GREEN" or "FEEDBACK_RED"
	local textureKey = TextureAtlas.GetColoredKey(bagQuantity >= quantity and STATUS_CHECK_TEXTURE or STATUS_X_TEXTURE, color)
	TextureAtlas.SetTexture(row:GetTexture("status"), textureKey)
	local qty = row:GetText("qty")
	qty:SetText(Theme.GetColor(color):ColorText(format("%d / %d", bagQuantity, quantity)))
	-- Adjust the width of the qty text to fit the text string
	qty:SetWidth(10000)
	qty:SetWidth(qty:GetStringWidth())
end

function CraftingMatList.__protected:_HandleRowEnter(row)
	local itemString = self._itemString[row:GetDataIndex()]
	if not itemString then
		return
	end
	row:ShowTooltip(itemString)
end

function CraftingMatList.__protected:_HandleRowLeave(row)
	-- The data might not exist anymore, so just hide the tooltip to be safe
	Tooltip.Hide()
end

function CraftingMatList.__protected:_HandleRowClick(row, mouseButton)
	if mouseButton ~= "LeftButton" or (not IsShiftKeyDown() and not IsControlKeyDown()) then
		return
	end
	UIUtils.HandleModifiedItemClick(self._itemString[row:GetDataIndex()])
end
