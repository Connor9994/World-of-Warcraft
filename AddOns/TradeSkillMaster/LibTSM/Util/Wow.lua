-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Wow = TSM.Init("Util.Wow") ---@class Util.Wow
local PLAYER_SEP = " - "
local CHARACTER = UnitName("player")
local FACTION = UnitFactionGroup("player")
local REALM = GetRealmName()
local FACTIONREALM = FACTION..PLAYER_SEP..REALM



-- ============================================================================
-- Module Functions
-- ============================================================================

---Shows a basic Wow message popup.
---@param text string The text to display
function Wow.ShowBasicMessage(text)
	if BasicMessageDialog:IsShown() then
		return
	end
	BasicMessageDialog.Text:SetText(text)
	BasicMessageDialog:Show()
end

---Shows a WoW static popup dialog.
---@param name string The unique (global) name of the dialog to be shown
function Wow.ShowStaticPopupDialog(name)
	StaticPopupDialogs[name].preferredIndex = 4
	StaticPopup_Show(name)
	for i = 1, 100 do
		if _G["StaticPopup" .. i] and _G["StaticPopup" .. i].which == name then
			_G["StaticPopup" .. i]:SetFrameStrata("TOOLTIP")
			break
		end
	end
end

---Sets the WoW item ref frame to the specified link.
---@param link string The itemLink to show the item ref frame for
function Wow.SafeItemRef(link)
	if type(link) ~= "string" then return end
	-- extract the Blizzard itemString for both items and pets
	local blizzItemString = strmatch(link, "^\124c[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]\124H(item:[^\124]+)\124.+$")
	blizzItemString = blizzItemString or strmatch(link, "^\124c[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]\124H(battlepet:[^\124]+)\124.+$")
	if blizzItemString then
		SetItemRef(blizzItemString, link, "LeftButton")
	end
end

---Checks if an addon is installed.
---
---This function only checks if the addon is installed, not if it's enabled.
---@param name string The name of the addon
---@return boolean @Whether or not the addon is installed
function Wow.IsAddonInstalled(name)
	return select(2, GetAddOnInfo(name)) and true or false
end

---Checks if an addon is currently enabled.
---@param name string The name of the addon
---@return boolean @Whether or not the addon is enabled
function Wow.IsAddonEnabled(name)
	return GetAddOnEnableState(CHARACTER, name) == 2 and select(4, GetAddOnInfo(name)) and true or false
end

---Get the name of the current character.
---@return string
function Wow.GetCharacterName()
	return CHARACTER
end

---Get the name of the current faction.
---@return string
function Wow.GetFactionName()
	return FACTION
end

---Get the name of the current realm.
---@return string
function Wow.GetRealmName()
	return REALM
end

---Get the name of the current factionrealm.
---@return string
function Wow.GetFactionrealmName()
	return FACTIONREALM
end

---Check if the specified character (and optionally factionrealm) is the current character.
---@param character string The name of the character to check
---@param factionrealm? string The name of the factionrealm which the character belongs to
---@return boolean
function Wow.IsPlayer(character, factionrealm)
	return character == CHARACTER and (factionrealm == nil or factionrealm == FACTIONREALM)
end

---Formats a character name for display.
---@param character string The name of the character
---@param factionrealm string The factionrealm for the character
---@param full? boolean Use the full factionrealm even if it's the current factionrealm
function Wow.FormatCharacterName(character, factionrealm, full)
	if full then
		return strjoin(PLAYER_SEP, character, factionrealm)
	elseif factionrealm == FACTIONREALM then
		return character
	else
		local faction, realm = strmatch(factionrealm, "^([^ ]+) %- (.+)$")
		return strjoin(PLAYER_SEP, character, realm == REALM and faction or factionrealm)
	end
end
