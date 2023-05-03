-- Handle a hybrid scroll menu to handle various options

-- Take an array of menu items
--    Simple -- text for the menu, the name of a setting, the value for this menu item
--    Complex -- a table of values, the name of a setting

-- For Simple settings, the menu item will be checked if the value matches
-- For Complex settings, the menu item will be checked if any of the values has been selected
local addonName, FBStorage = ...
local  FBI = FBStorage

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FL = LibStub("LibFishing-1.0")

-- wrap settings
local SSR = function(...) FBI:SetSetting(...); end;
local GSR = function(...) return FBI:GetSetting(...); end;
local GSB = function(...) return FBI:GetSettingBool(...); end;

--local function SSR(setting, value)
--    print("SSR1", setting, FL:printable(value))
--    FBI.SetSetting(setting, value)
--    print("SSR2", setting, FL:printable(GSR(setting)))
--end

local FSF = {}
-- Scrolling menu handling
FSF.HM_DISPLAYED_LINES = 14;
FSF.HM_LINE_HEIGHT = 16;

local function FishingMenuFrame_OnHide(self)
	local name = self:GetName()
	local holder = _G[name.."Holder"]
	if ( holder:IsShown() ) then
		holder:Hide();
	end
end

function FSF:SetChecked(choices, entry, checked)
    if (entry) then
        if (entry.index) then
            if (choices[entry.index]) then
                choices[entry.index].checked = checked
            end
        else
            for _,data in ipairs(entry) do
                self:SetChecked(choices, data, checked)
            end
        end
    end
end

function FSF:SetAllOrNone(choices, data, text, all)
    self:SetChecked(choices, data.all, all)
    self:SetChecked(choices, data.none, not all)
    self:SetChecked(choices, data.groups, false)
    self:SetChecked(choices, data.table, all)

    if (all) then
        SSR(data.setting, data.all.value)
        text:SetText(data.all.menutext)
    else
        SSR(data.setting, data.none.value)
        text:SetText(data.none.menutext)
    end
end

function FSF:InitMenuItems(holder)
    local choices = holder.choices
    local mapping = holder.mapping
    local text = _G[holder:GetParent():GetName().."Text"]
    for setting,data in pairs(mapping) do
        local current = GSR(setting)
        if ( data.raw ) then
            if ( data.bool ) then
                current = GSB(setting)
            end
            choices[data.index].checked = (current == data.value)
        else
            if (data.all and data.all.value == current) then
                self:SetAllOrNone(choices, data, text, true)
            elseif (data.none and data.none.value == current) then
                self:SetAllOrNone(choices, data, text, false)
            else
                -- if all the entries in the table are set, then set to ALL
                -- if all of the entries in a group are set, the set to GROUP
                -- else just set the choices to the current value
                if (data.groups) then
                    for _,group in ipairs(data.groups) do
                        group["total"] = FL:tablecount(group.valueset)
                        group["count"] = 0
                        if (group.value == current) then
                            self:SetChecked(choices, group, text, true)
                            current = group.valueset
                        else
                            self:SetChecked(choices, group, text, false)
                        end
                    end
                end

                local map = FL:tablemap(current)
                local total = FL:tablecount(data.table)
                local count = 0
                for _,entry in pairs(data.table) do
                    if (map[entry.value]) then
                        choices[entry.index].checked = true
                        count = count + 1
                        if (data.groups) then
                            for _,group in ipairs(data.groups) do
                                if (group.valueset[entry.value]) then
                                    group.count = group.count + 1
                                end
                            end
                        end
                    end
                end

                if (count == total) then
                    self:SetAllOrNone(choices, data, text, true)
                elseif (count == 0) then
                    self:SetAllOrNone(choices, data, text, false)
                else
                    local set = false
                    self:SetChecked(choices, data.all, false)
                    self:SetChecked(choices, data.none, false)
                    if (data.groups) then
                        for _,group in ipairs(data.groups) do
                            if (count == group.total and count == group.count) then
                                self:SetChecked(choices, group, true)
                                text:SetText(group.menutext)
                                set = true
                            else
                                self:SetChecked(choices, group, false)
                            end
                        end
                    end
                    if (not set and data.menutext) then
                        text:SetText(data.menutext)
                    end
                end
            end
        end
    end
end

function FSF:ProcessMenuItems(holder, choice)
    local choices = holder.choices
    local mapping = holder.mapping
    local text = _G[holder:GetParent():GetName().."Text"]
    local entry = choice.entry
    local data = mapping[entry.setting]

    choice.checked = not choice.checked
    if ( data.raw ) then
        if data.bool then
            SSR(entry.setting, choices[data.index].checked)
        else
            SSR(entry.setting, entry.value)
        end
    else
        if (data.all and data.all.value == entry.value) then
            self:SetAllOrNone(choices, data, text, true)
        elseif (data.none and data.none.value == entry.value) then
            self:SetAllOrNone(choices, data, text, false)
        elseif (entry.valueset) then
            self:SetChecked(choices, data.all, false)
            self:SetChecked(choices, data.none, false)
            self:SetChecked(choices, data.groups, false)
            self:SetChecked(choices, data.table, false)

            local total = FL:tablecount(entry.valueset)
            local count = 0
            for _,item in pairs(data.table) do
                choice = choices[item.index]
                if (entry.valueset[item.value]) then
                    choice.checked = true
                    count = count + 1
                else
                    choice.checked = false
                end
            end

            for _,group in ipairs(data.groups) do
                if (group.value == entry.value) then
                    self:SetChecked(choices, group, true)
                    text:SetText(group.menutext)
                end
            end
            SSR(entry.setting, entry.value)
        else
            if (data.groups) then
                for _,group in ipairs(data.groups) do
                    group["total"] = FL:tablecount(group.valueset)
                    group["count"] = 0
                end
            end

            local total = FL:tablecount(data.table)
            local count = 0
            local value = {}
            for _,item in pairs(data.table) do
                if (choices[item.index].checked) then
                    local id = item.value
                    tinsert(value, id)
                    count = count + 1
                    if (data.groups) then
                        for _,group in ipairs(data.groups) do
                            if (group.valueset[id]) then
                                group.count = group.count + 1
                            end
                        end
                    end
                end
            end

            if (count == total) then
                self:SetAllOrNone(choices, data, text, true)
                SSR(entry.setting, data.all.value)
            elseif (count == 0) then
                self:SetAllOrNone(choices, data, text, false)
                SSR(entry.setting, data.none.value)
            else
                self:SetChecked(choices, data.all, false)
                self:SetChecked(choices, data.none, false)
                local set = false
                if (data.groups) then
                    for _,group in ipairs(data.groups) do
                        if (count == group.total and count == group.count) then
                            self:SetChecked(choices, group, true)
                            SSR(entry.setting, group.value)
                            text:SetText(group.menutext)
                            set = true
                        else
                            self:SetChecked(choices, group, false)
                        end
                    end
                end
                if (not set) then
                    SSR(entry.setting, value)
                    text:SetText(data.menutext)
                end
            end
        end
    end
end

local function FishingMenu_OnClick(self)
    FSF:HandleOnClick(self)
end

local function FishingMenu_Update(self)
	local parent = self:GetParent()
	local buttons = self.buttons;
	local choices = parent.choices;
	local numButtons = #buttons;
	local scrollOffset = HybridScrollFrame_GetOffset(self);
	local choice;
	for i = 1, numButtons do
		local idx = i + scrollOffset;
        choice = choices[idx];
        buttons[i].holder = parent
		if ( choice ) then
			buttons[i].text:SetText(choice.name);
			buttons[i].choice = choice
			buttons[i].onclick = FishingMenu_OnClick
			if ( choice.checked ) then
				buttons[i].check:Show();
			else
				buttons[i].check:Hide();
			end
			if ( choice.disabled ) then
				buttons[i].text:SetFontObject(GameFontDisableSmall);
				buttons[i]:Disable();
			else
				buttons[i].text:SetFontObject(GameFontNormalSmall);
				buttons[i]:Enable();
			end
			buttons[i].idx = idx;
		else
			buttons[i].choice = nil
			buttons[i].onclick = nil
		end
	end
end

function FSF:HandleOnClick(button)
    FSF:ProcessMenuItems(button.holder, button.choice)
    local name = button.holder:GetParent():GetName()
    FishingMenu_Update(_G[name.."HolderMenu"])
end

local function FishingMenu_Toggle(self)
    local name = self:GetName()
	if ( self:IsShown() ) then
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF);
		self:Hide();
	else
		local menu = _G[name.."Menu"]
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
        FishingMenu_Update(menu);
		self:Show();
	end
end

function FSF:CreateMenuChoices(scrollmenu, simple, complex)
    local choices = {}
    local mapping = {}
    local needbreak = false
    if (simple) then
        for _,entry in ipairs(simple) do
            local choice = {
                ["name"] = entry.name,
                ["entry"] = entry,
                ["menutext"] = entry.menutext
            }
            tinsert(choices, choice)
            local idx = #choices

            local map = mapping[entry.setting]
            if (not map) then
                map = {}
                mapping[entry.setting] = map
            end

            map["setting"] = entry.setting
            if (entry.all) then
                map["all"] = { ["value"] = entry.value, ["index"] = idx, ["menutext"] = entry.menutext }
            elseif (entry.none) then
                map["none"] = { ["value"] = entry.value, ["index"] = idx, ["menutext"] = entry.menutext }
            elseif (entry.valueset) then
                if (not map["groups"]) then
                    map["groups"] = {}
                end
                tinsert(map["groups"], { ["value"] = entry.value, ["index"] = idx, ["menutext"] = entry.menutext, ["valueset"] = entry.valueset })
            else
                map["raw"] = true
                map["value"] = entry.value
                map["index"] = idx
                map["bool"] = entry.bool
            end
        end
        needbreak = true
    end

    if (complex) then
        local idx = #choices
        for _,table in ipairs(complex) do
            if (needbreak) then
                tinsert(choices, { ["name"] = "--------------", ["disabled"] = true})
            end
            local map = mapping[table.setting]
            if (not map) then
                map = {}
                mapping[table.setting] = map
            end
            if (not map["table"]) then
                map["table"] = {}
            end
            map["menutext"] = table.menutext
            local unsorted = {}
            for _,entry in ipairs(table.value) do
                entry["table"] = true
                local choice = {
                    ["name"] = entry.name,
                    ["entry"] = entry
                }
                tinsert(unsorted, choice)
            end
            sort(unsorted, function(a,b) return a.name<b.name; end)
            for _,choice in ipairs(unsorted) do
                tinsert(choices, choice)
                local entry = { ["value"] = choice.entry.value, ["index"] = #choices }
                tinsert(map["table"], entry)
            end
            needbreak = true
        end
    end

    return choices, mapping
end

local function FishingMenuFrame_OnShow(self)
	local name = self:GetName()
    local holder = _G[name.."Holder"]
    local onshow = _G[name.."_OnShow"]
    if (onshow) then
        onshow(self)
    end
    FSF:InitMenuItems(holder);
end

function FSF:UpdateScrollMenu(scrollmenu, simple, complex)
	local name = scrollmenu:GetName()
    local holder = _G[name.."Holder"]
    local choices, mapping = self:CreateMenuChoices(scrollmenu, simple, complex)
    holder.choices = choices
    holder.mapping = mapping
    holder:SetFrameLevel(FishingBuddyFrame:GetFrameLevel()+1)
    local text = _G[name.."Text"];
    local original = text:GetText()
    local menuwidth = 0;
    local topwidth = 0
	for _,entry in ipairs(choices) do
		text:SetText(entry.name);
		if (text:GetWidth() > menuwidth) then
			menuwidth = text:GetWidth();
        end
        if (entry.menutext) then
            text:SetText(entry.menutext);
            if (text:GetWidth() > topwidth) then
                topwidth = text:GetWidth();
            end
        end
    end
    text:SetText(original)

    local menu = _G[name.."HolderMenu"]
	menu:SetWidth(menuwidth + 32);
    HybridScrollFrame_CreateButtons(menu, "FishingMenuButtonTemplate");
    HybridScrollFrame_Update(menu, #choices * FSF.HM_LINE_HEIGHT, menu:GetHeight());
    holder:SetSize(menu:GetWidth() + 38, menu:GetHeight() + 24);

    if (topwidth == 0) then
        topwidth = menuwidth
    end
    UIDropDownMenu_SetWidth(scrollmenu, topwidth + 32);

    return choices, mapping
end

-- simple -- an array of entries, [text, setting, entry value]
-- complex -- an array of entries [setting, values, all text, none text]
function FSF:CreateScrollMenu(name, label, simple, complex)
    local toplevel = CreateFrame("Frame", name, UIParent, "FishingMenuFrameTemplate")
    toplevel:Hide()
    toplevel:SetScript("OnShow", FishingMenuFrame_OnShow);
    toplevel:SetScript("OnHide", FishingMenuFrame_OnHide);
	toplevel:SetHeight(32);
	toplevel:SetHeight(32);

    -- Set up pieces
    local menu = _G[name.."HolderMenu"]
    menu.update = function() FishingMenu_Update(menu); end
    menu:SetScript("OnShow", FishingMenu_Update);
	menu:SetHeight(FSF.HM_DISPLAYED_LINES * FSF.HM_LINE_HEIGHT + 1);

    local holder = _G[name.."Holder"]
    holder:SetScript("OnShow", function(holder) FishingMenu_Update(menu); end);

    local button = _G[name.."Button"]
	button:SetScript("OnClick", function() FishingMenu_Toggle(holder); end);

    local choices, mapping = self:UpdateScrollMenu(toplevel, simple, complex)

    if (label) then
        local tag = _G[name.."Label"]
        tag:SetText(label..": ");
    end

    -- Handle external onload override
	local onload = _G[name.."_OnLoad"];
	if (onload) then
		onload(toplevel)
    end

    return toplevel
end

FBI.FSF = FSF

-- Referenced by FishingMenuButtonTemplate
FBEnvironment.FishingMenuButton_OnClick = function(self)
    if (self.onclick) then
        self.onclick(self)
    end
end
