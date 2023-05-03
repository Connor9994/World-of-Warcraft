-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Macros = TSM.MainUI.Settings:NewPackage("Macros")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Vararg = TSM.Include("Util.Vararg")
local Log = TSM.Include("Util.Log")
local Theme = TSM.Include("Util.Theme")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {}
local MACRO_NAME = "TSMMacro"
local MACRO_ICON = Environment.IsRetail() and "Achievement_Faction_GoldenLotus" or "INV_Misc_Flower_01"
local BINDING_NAME = "MACRO "..MACRO_NAME
local buttonEvent = Environment.IsRetail() and (GetCVarBool("ActionButtonUseKeyDown") and "1" or "0") or nil
local BUTTON_INFO = {
	["row1.myauctionsCheckbox"] = {name = "TSMCancelAuctionBtn"},
	["row1.auctioningCheckbox"] = {name = "TSMAuctioningBtn"},
	["row2.shoppingCheckbox"] = {name = "TSMShoppingBuyoutBtn"},
	["row2.bidBuyConfirmBtn"] = {name = "TSMBidBuyConfirmBtn"},
	["row3.sniperCheckbox"] = {name = "TSMSniperBtn"},
	["row3.craftingCheckbox"] = {name = "TSMCraftingBtn"},
	["row4.destroyingCheckbox"] = {name = "TSMDestroyBtn", button = Environment.IsRetail() and "LeftButton "..buttonEvent or nil},
	["row4.vendoringCheckbox"] = {name = "TSMVendoringSellAllButton"},
}
local CHARACTER_BINDING_SET = 2
local MAX_MACRO_LENGTH = 255



-- ============================================================================
-- Module Functions
-- ============================================================================

function Macros.OnInitialize()
	TSM.MainUI.Settings.RegisterSettingPage(L["Macros"], "middle", private.GetMacrosSettingsFrame)
end



-- ============================================================================
-- Macros Settings UI
-- ============================================================================

function private.GetMacrosSettingsFrame()
	UIUtils.AnalyticsRecordPathChange("main", "settings", "macros")
	local body = GetMacroBody(MACRO_NAME) or ""
	local upEnabled, downEnabled, altEnabled, ctrlEnabled, shiftEnabled = false, false, false, false, false
	for _, binding in Vararg.Iterator(GetBindingKey(BINDING_NAME)) do
		upEnabled = upEnabled or (strfind(binding, "MOUSEWHEELUP") and true)
		downEnabled = downEnabled or (strfind(binding, "MOUSEWHEELDOWN") and true)
		altEnabled = altEnabled or (strfind(binding, "ALT-") and true)
		ctrlEnabled = ctrlEnabled or (strfind(binding, "CTRL-") and true)
		shiftEnabled = shiftEnabled or (strfind(binding, "SHIFT-") and true)
	end

	local frame = UIElements.New("ScrollFrame", "macroSettings")
		:SetPadding(8, 8, 8, 0)
		:AddChild(TSM.MainUI.Settings.CreateExpandableSection("Macro", "setup", L["Macro Setup"], L["Many commonly-used actions in TSM can be added to a macro and bound to your scroll wheel. Use the options below to setup this macro and scroll wheel binding."], 40)
			:AddChild(UIElements.New("Text", "actionsSubHeading")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:SetFont("BODY_BODY2_BOLD")
				:SetText(L["Bound Actions"])
			)
			:AddChild(UIElements.New("Frame", "row1")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Checkbox", "myauctionsCheckbox")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["My Auctions %s button"], Theme.GetColor("INDICATOR"):ColorText(L["Cancel"])))
				)
				:AddChild(UIElements.New("Checkbox", "auctioningCheckbox")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["Auctioning %s button"], Theme.GetColor("INDICATOR"):ColorText(L["Post / Cancel"])))
				)
			)
			:AddChild(UIElements.New("Frame", "row2")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Checkbox", "shoppingCheckbox")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["Shopping %s button"], Theme.GetColor("INDICATOR"):ColorText(L["Buyout"])))
				)
				:AddChild(UIElements.New("Checkbox", "bidBuyConfirmBtn")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["Confirmation %s button"], Theme.GetColor("INDICATOR"):ColorText(L["Bid / Buyout"])))
				)
			)
			:AddChild(UIElements.New("Frame", "row3")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Checkbox", "sniperCheckbox")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["Sniper %s button"], Theme.GetColor("INDICATOR"):ColorText(L["Buyout"])))
				)
				:AddChild(UIElements.New("Checkbox", "craftingCheckbox")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["Crafting %s button"], Theme.GetColor("INDICATOR"):ColorText(L["Craft Next"])))
				)
			)
			:AddChild(UIElements.New("Frame", "row4")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 16)
				:AddChild(UIElements.New("Checkbox", "destroyingCheckbox")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["Destroying %s button"], Theme.GetColor("INDICATOR"):ColorText(L["Destroy Next"])))
				)
				:AddChild(UIElements.New("Checkbox", "vendoringCheckbox")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(format(L["Vendoring %s button"], Theme.GetColor("INDICATOR"):ColorText(L["Sell All"])))
				)
			)
			:AddChild(UIElements.New("Text", "scrollWheelSubHeading")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:SetFont("BODY_BODY2_BOLD")
				:SetText(L["Scroll Wheel Options"])
			)
			:AddChild(UIElements.New("Frame", "direction")
				:SetLayout("VERTICAL")
				:SetMargin(0, 0, 0, 14)
				:AddChild(UIElements.New("Text", "label")
					:SetHeight(20)
					:SetMargin(0, 0, 0, 6)
					:SetFont("BODY_BODY2")
					:SetText(L["Scroll wheel direction"])
				)
				:AddChild(UIElements.New("Frame", "check")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Checkbox", "up")
						:SetWidth("AUTO")
						:SetMargin(0, 16, 0, 0)
						:SetFont("BODY_BODY2")
						:SetText(L["Up"])
						:SetChecked(upEnabled)
					)
					:AddChild(UIElements.New("Checkbox", "down")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY2")
						:SetText(L["Down"])
						:SetChecked(downEnabled)
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
				)
			)
			:AddChild(UIElements.New("Frame", "modifiers")
				:SetLayout("VERTICAL")
				:SetMargin(0, 0, 0, 18)
				:AddChild(UIElements.New("Text", "label")
					:SetHeight(20)
					:SetMargin(0, 0, 0, 6)
					:SetFont("BODY_BODY2")
					:SetText(L["Modifiers"])
				)
				:AddChild(UIElements.New("Frame", "check")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Checkbox", "alt")
						:SetWidth("AUTO")
						:SetMargin(0, 16, 0, 0)
						:SetFont("BODY_BODY2")
						:SetText(L["ALT"])
						:SetChecked(altEnabled)
					)
					:AddChild(UIElements.New("Checkbox", "ctrl")
						:SetWidth("AUTO")
						:SetMargin(0, 16, 0, 0)
						:SetFont("BODY_BODY2")
						:SetText(L["CTRL"])
						:SetChecked(ctrlEnabled)
					)
					:AddChild(UIElements.New("Checkbox", "shift")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY2")
						:SetText(L["SHIFT"])
						:SetChecked(shiftEnabled)
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
				)
			)
			:AddChild(UIElements.New("ActionButton", "createBtn")
				:SetHeight(24)
				:SetText(GetMacroInfo(MACRO_NAME) and L["Update existing macro"] or L["Create macro"])
				:SetScript("OnClick", private.CreateButtonOnClick)
			)
		)

	for path, info in pairs(BUTTON_INFO) do
		frame:GetElement("setup.content."..path)
			:SetChecked(strfind(body, info.name) and true or false)
	end
	return frame
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.CreateButtonOnClick(button)
	-- remove the old bindings and macros
	for _, binding in Vararg.Iterator(GetBindingKey(BINDING_NAME)) do
		SetBinding(binding)
	end
	DeleteMacro(MACRO_NAME)

	if GetNumMacros() >= MAX_ACCOUNT_MACROS then
		Log.PrintUser(L["Could not create macro as you already have too many. Delete one of your existing macros and try again."])
		return
	end

	-- create the new macro
	local scrollFrame = button:GetParentElement():GetParentElement():GetParentElement()
	local lines = TempTable.Acquire()
	for elementPath, info in pairs(BUTTON_INFO) do
		if scrollFrame:GetElement("setup.content."..elementPath):IsChecked() then
			if info.button then
				tinsert(lines, "/click "..info.name.." "..info.button)
			else
				tinsert(lines, "/click "..info.name)
			end
		end
	end
	local macroText = table.concat(lines, "\n")
	CreateMacro(MACRO_NAME, MACRO_ICON, macroText)
	TempTable.Release(lines)

	-- create the binding
	local modifierStr = ""
	if scrollFrame:GetElement("setup.content.modifiers.check.ctrl"):IsChecked() then
		modifierStr = modifierStr.."CTRL-"
	end
	if scrollFrame:GetElement("setup.content.modifiers.check.alt"):IsChecked() then
		modifierStr = modifierStr.."ALT-"
	end
	if scrollFrame:GetElement("setup.content.modifiers.check.shift"):IsChecked() then
		modifierStr = modifierStr.."SHIFT-"
	end
	-- we want to save these bindings to be per-character, so the mode should be 1 / 2 if we're currently on
	-- per-character bindings or not respectively
	local bindingMode = (GetCurrentBindingSet() == CHARACTER_BINDING_SET) and 1 or 2
	if scrollFrame:GetElement("setup.content.direction.check.up"):IsChecked() then
		SetBinding(modifierStr.."MOUSEWHEELUP", nil, bindingMode)
		SetBinding(modifierStr.."MOUSEWHEELUP", BINDING_NAME, bindingMode)
	end
	if scrollFrame:GetElement("setup.content.direction.check.down"):IsChecked() then
		SetBinding(modifierStr.."MOUSEWHEELDOWN", nil, bindingMode)
		SetBinding(modifierStr.."MOUSEWHEELDOWN", BINDING_NAME, bindingMode)
	end

	SaveBindings(CHARACTER_BINDING_SET)

	button:SetText(GetMacroInfo(MACRO_NAME) and L["Update existing macro"] or L["Create macro"])
		:Draw()

	Log.PrintUser(L["Macro created and scroll wheel bound!"])
	if #macroText > MAX_MACRO_LENGTH then
		Log.PrintUser(L["WARNING: The macro was too long, so was truncated to fit by WoW."])
	end
end
