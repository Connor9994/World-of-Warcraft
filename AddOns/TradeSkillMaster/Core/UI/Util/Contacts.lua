-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Contacts = TSM.UI.Util:NewPackage("Contacts")
local L = TSM.Include("Locale").GetTable()
local String = TSM.Include("Util.String")
local UIElements = TSM.Include("UI.UIElements")
local private = {
	listElements = {},
}
local PLAYER_NAME = UnitName("player")
local PLAYER_NAME_REALM = gsub(PLAYER_NAME.."-"..GetRealmName(), "%s+", "")
local LIST_ENTRIES = {L["Recent"], L["Alts"], L["Friends"], L["Guild"]}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Contacts.ShowDialog(button, input, callback)
	input:SetFocused(false)
		:Draw()
	button:GetBaseElement():ShowDialogFrame(UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(152, 90)
		:AddAnchor("TOP", button:_GetBaseFrame(), "BOTTOM", 0, -6)
		:SetBackgroundColor("FRAME_BG", true)
		:SetBorderColor("ACTIVE_BG")
		:SetContext(input)
		:AddChild(UIElements.New("ViewContainer", "contacts")
			:SetNavCallback(private.GetContactsContentFrame)
			:SetContext(callback)
			:AddPath("menu", true)
			:AddPath("list")
		)
	)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.GetContactsContentFrame(viewContainer, path)
	if path == "menu" then
		return private.GetContactsMenuFrame()
	elseif path == "list" then
		return private.GetContactListFrame()
	else
		error("Unexpected path: "..tostring(path))
	end
end

function private.GetContactsMenuFrame()
	return UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetPadding(1, 1, 5, 5)
		:AddChild(UIElements.New("SelectionList", "list")
			:SetBackgroundColor("FRAME_BG")
			:SetEntries(LIST_ENTRIES)
			:SetScript("OnEntrySelected", private.MenuOnEntrySelected)
		)
end

function private.GetContactListFrame()
	return UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetPadding(1, 1, 5, 5)
		:AddChild(UIElements.New("Button", "back")
			:SetHeight(20)
			:SetMargin(8, 0, 0, 0)
			:SetFont("BODY_BODY2_BOLD")
			:SetJustifyH("LEFT")
			:SetText(L["Back"])
			:SetScript("OnClick", private.ListBackButtonOnClick)
		)
		:AddChild(UIElements.New("SelectionList", "list")
			:SetBackgroundColor("FRAME_BG")
			:SetEntries(private.listElements)
			:SetScript("OnEntrySelected", private.ListOnEntrySelected)
		)
end

function private.MenuOnEntrySelected(list, name)
	private.GenerateListElements(name)

	list:GetElement("__parent.__parent.__parent")
		:SetHeight(min((#private.listElements + 1) * 20 + 10, 130))
		:Draw()

	list:GetElement("__parent.__parent")
		:SetPath("list", true)
end

function private.ListBackButtonOnClick(button)
	button:GetElement("__parent.__parent.__parent")
		:SetHeight(90)
		:Draw()

	button:GetElement("__parent.__parent")
		:SetPath("menu", true)
end

function private.ListOnEntrySelected(list, name)
	local callback = list:GetElement("__parent.__parent"):GetContext()
	local input = list:GetElement("__parent.__parent.__parent"):GetContext()
	input:SetValue(name)
		:Draw()

	if callback then
		callback(input)
	end

	list:GetBaseElement():HideDialog()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GenerateListElements(category)
	wipe(private.listElements)
	if category == L["Recent"] then
		for k in pairs(TSM.db.global.mailingOptions.recentlyMailedList) do
			local character = Ambiguate(k, "none")
			tinsert(private.listElements, character)
		end
	elseif category == L["Alts"] then
		for factionrealm in TSM.db:GetConnectedRealmIterator("realm") do
			for _, character in TSM.db:FactionrealmCharacterIterator(factionrealm) do
				character = Ambiguate(gsub(strmatch(character, "(.*) "..String.Escape("-")).."-"..gsub(factionrealm, String.Escape("-"), ""), " ", ""), "none")
				if character ~= UnitName("player") then
					tinsert(private.listElements, character)
				end
			end
		end
	elseif category == L["Friends"] then
		for i = 1, C_FriendList.GetNumFriends() do
			local info = C_FriendList.GetFriendInfoByIndex(i)
			if info.name ~= PLAYER_NAME_REALM then
				local character = Ambiguate(info.name, "none")
				tinsert(private.listElements, character)
			end
		end
	elseif category == L["Guild"] then
		for i = 1, GetNumGuildMembers() do
			local name = GetGuildRosterInfo(i)
			if name ~= PLAYER_NAME_REALM then
				local character = Ambiguate(name, "none")
				tinsert(private.listElements, character)
			end
		end
	end
	sort(private.listElements)
end
