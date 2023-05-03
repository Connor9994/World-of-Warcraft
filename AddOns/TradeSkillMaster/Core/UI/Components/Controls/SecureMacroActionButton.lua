-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
local UIElements = TSM.Include("UI.UIElements")



-- ============================================================================
-- Element Definition
-- ============================================================================

local SecureMacroActionButton = UIElements.Define("SecureMacroActionButton", "ActionButton") ---@class SecureMacroActionButton: ActionButton



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function SecureMacroActionButton:__init(name)
	self.__super:__init(name, true)
	local frame = self:_GetBaseFrame()
	frame:SetAttribute("type1", "macro")
	frame:SetAttribute("macrotext1", "")
end

function SecureMacroActionButton:Acquire()
	self.__super:Acquire()
	local frame = self:_GetBaseFrame()
	frame:RegisterForClicks(Environment.IsRetail() and GetCVarBool("ActionButtonUseKeyDown") and "LeftButtonDown" or "LeftButtonUp")
end

function SecureMacroActionButton:Release()
	local frame = self:_GetBaseFrame()
	frame:TSMSetScript("PreClick", nil)
	frame:SetAttribute("macrotext1", "")
	self.__super:Release()
end

---Registers a script handler.
---@param script string The script to register for (supported scripts: `PreClick`)
---@param handler function The script handler which will be called with the secure macro action button object followed by any arguments to the script
---@return SecureMacroActionButton @The secure macro action button object
function SecureMacroActionButton:SetScript(script, handler)
	if script == "PreClick" or script == "PostClick" then
		self.__super.__super:SetScript(script, handler)
	else
		error("Unknown SecureActionButton script: "..tostring(script))
	end
	return self
end

---Sets the macro text which clicking the button executes.
---@param text string The macro text
---@return SecureMacroActionButton @The secure macro action button object
function SecureMacroActionButton:SetMacroText(text)
	self:_GetBaseFrame():SetAttribute("macrotext1", text)
	return self
end
