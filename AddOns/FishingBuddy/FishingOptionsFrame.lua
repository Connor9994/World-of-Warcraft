-- Handle all the option settings
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

local FL = LibStub("LibFishing-1.0");
local LO = LibStub("LibOptionsFrame-1.0");
local LS = LibStub("LibSideTabFrame-1.0");

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FBOptionsTable = {};

local function FindOptionInfo (setting)
    for _,info in pairs(FBOptionsTable) do
        if ( info.options and info.options[setting] ) then
            return info;
        end
    end
    -- return nil;
end

function FBI:GetSettingOption(setting)
    if ( setting ) then
        local info = FindOptionInfo(setting);
        if info and info.options then
            return info.options[setting];
        end
    end
    -- return nil;
end

function FBI:GetDefault(setting)
    local opt = self:GetSettingOption(setting);
    if ( opt ) then
        if ( opt.check and opt.checkfail ) then
            if ( not opt.check() ) then
                return opt.checkfail;
            end
        end
        return opt.default;
    end
    -- return nil;
end

function FBI:OptionGetSetting(setting)
    local info = self:GetSettingOption(setting)
    local val = nil
    if info then
        if ( info.global ) then
            val = self:GlobalGetSetting(setting);
        else
            val = self:BaseGetSetting(setting);
        end
    end
    return val
end

function FBI:GetSetting(setting)
    local val = nil;
    if ( setting ) then
        local info = FindOptionInfo(setting);
        if ( info ) then
            if ( info.getter) then
                val = info.getter(setting);
                if ( val == nil ) then
                    val = self:GetDefault(setting);
                end
            else
                val = self:OptionGetSetting(setting)
            end
        end
    end
    return val;
end

function FBI:GetSettingBool(setting)
    local val = self:GetSetting(setting);
    return val ~= nil and (val == true or val == 1);
end

function FBI:OptionSetSetting(setting, value)
    local info = self:GetSettingOption(setting)
    if info then
        if ( info.global ) then
            self:GlobalSetSetting(setting, value);
        else
            self:BaseSetSetting(setting, value);
        end
    end
end

function FBI:SetSetting(setting, value)
    if ( setting ) then
        local info = FindOptionInfo(setting);
        if ( info) then
            if ( info.setter ) then
                local val = self:GetDefault(setting);
                if ( val == value ) then
                    info.setter(setting, nil);
                else
                    info.setter(setting, value);
                end
            else
                self:OptionSetSetting(setting, value)
            end
        end
    end
end

function FBI:ActiveSetting(setting)
    local info = self:GetSettingOption(setting);
    if info then
        local active = self:GetSettingBool(setting);
        if info.active then
            return info.active(info, setting, active);
        end
        return active;
    end
    -- Let's pretend we're good, even if we don't have the setting
    return true
end

-- display all the option settings
FBI.OptionsFrame = {};

local function CheckButton_OnShow(button)
    button:SetChecked(FBI:GetSettingBool(button.name));
end

local function CheckButton_OnClick(button, quiet)
    if ( not button ) then
        return;
    end
    local value = true;
    if ( button.checkbox ) then
        if ( not button:GetChecked() ) then
            value = false;
        end
        if ( not quiet ) then
            if ( value ) then
                PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
            else
                PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF);
            end
        end
    end
    FBI:SetSetting(button.name, value);
    FBI:OptionsUpdate();
    if ( button.update ) then
        button.update(button);
    end
    FishingOptionsFrame:HandleDeps(button);
end

-- handle option panel tabs
local tabbuttons = {};
local tabmap = {};

local function Handle_OptionsTabClick(tabframe, tabname)
    local target;
    if tabframe.target.handoff then
        target = tabframe.target.handoff
    else
        target = tabframe.target
    end
    if target.ontabclick then
        target.ontabclick(tabframe, tabname)
    end
    FBI:OptionsUpdate();
    target:LayoutOptions(FBOptionsTable[tabname].options);
    target:ShowButtons();
end

local INV_MISC_QUESTIONMARK = "Interface\\Icons\\INV_Misc_QuestionMark";
local function ProcessOptions(name, icon, options, setter, getter, last, frame)
    local index = #tabbuttons + 1;
    local handler = {};
    local maketab = true;
    if ( not frame ) then
        frame = FishingOptionsFrame
    end

    if ( not name ) then
        name = "FBHIDDEN";
        handler.index = 0;
        -- handle option buttons that show up outside of option frames
        for _,option in pairs(options) do
            local button = FL:GetFrameInfo(option.button)
            if (option.init) then
                option.init(option, button);
            end
            if ( option.setup ) then
                option.setup(button);
            end
        end
        maketab = false;
    elseif ( name == GENERAL ) then
        handler.first = true;
        handler.icon = "Interface\\Icons\\inv_gauntlets_18";
    else
        handler.icon = icon or INV_MISC_QUESTIONMARK;
    end

    handler.last = last;
    handler.name = name;
    handler.options = FL:copytable(options);
    handler.setter = setter;
    handler.getter = getter;
    handler.visible = maketab;
    if ( FBOptionsTable[name] ) then
        for optname,info in pairs(FBOptionsTable[name].options) do
            handler.options[optname] = FL:copytable(info);
        end
        handler.icon = FBOptionsTable[name].icon;
        handler.index = FBOptionsTable[name].index;
        handler.getter = handler.getter or FBOptionsTable[name].getter;
        handler.setter = handler.setter or FBOptionsTable[name].setter;
    end
    FBOptionsTable[name] = handler;

    -- just handle the setting and getting if no name supplied
    if ( maketab ) then
        local optiontab = tabmap[name];
        if ( not optiontab ) then
            optiontab = frame:CreateTab(name, handler.icon, Handle_OptionsTabClick, name);
            tinsert(tabbuttons, optiontab);
            tabmap[name] = optiontab;
            handler.index = index;
        end

        -- if we show this one, then check to see if it has
        -- any options for the drop down menu
        for _,option in pairs(handler.options) do
            if ( option.m ) then
                handler.hasdd = true;
            end
        end

        if (handler.first) then
            frame:MakePrimary(optiontab);
        elseif (handler.last) then
            frame:MakeUltimate(optiontab);
        end
    end
end

local _delayedframe = nil;
local _delayedoptions = nil;
local function HandleOptions(name, icon, options, setter, getter, last, frame)
    if (not frame) then
        frame = FishingOptionsFrame;
    end
    if (not _delayedoptions) then
        _delayedoptions = {};
        if (not _delayedframe) then
            _delayedframe = CreateFrame("Frame");
            _delayedframe:SetScript("OnUpdate",
                function()
                    if (_delayedoptions) then
                        for _,rec in ipairs(_delayedoptions) do
                            ProcessOptions(rec.name, rec.icon, rec.options, rec.setter, rec.getter, rec.last, rec.frame);
                        end
                        _delayedoptions = nil;
                        FBI:OptionsUpdate(true, false)
                    end
                    _delayedframe:Hide();
                end);
        end
        _delayedframe:Show();
    end
    tinsert(_delayedoptions, { name = name, icon = icon, options = options, setter = setter, getter = getter, last = last, frame = frame } );
end
FBI.OptionsFrame.HandleOptions = HandleOptions;

function FBEnvironment:HideOptionsTab(name)
    if ( FBOptionsTable[name] and FBOptionsTable[name].visible ) then
        FBOptionsTable[name].visible = nil;
    end
end

function FBEnvironment:ShowOptionsTab(name)
    if ( FBOptionsTable[name] and not FBOptionsTable[name].visible ) then
        FBOptionsTable[name].visible = true;
    end
end

local function OptionsFrame_OnShow(self)
    local selected = self.selected;
    local first = nil;
    for name,handler in pairs(FBOptionsTable) do
        if ( handler.visible ) then
            if ( not first or handler.first ) then
                first = name;
            end
        else
            if ( selected == name ) then
                selected = nil;
            end
        end
    end
    if ( not selected and first ) then
        selected = first;
    end
    self:HandleOnShow(selected);
    self:ShowButtons();
end

-- Drop-down menu support
function FBI:ToggleSetting(setting)
    local value = self:GetSetting(setting);
    if ( not value ) then
        value = false;
    end
    self:SetSetting(setting, not value);
    FBI:OptionsUpdate(true);
end

-- save some memory by keeping one copy of each one
local ToggleFunctions = {};
-- let's use closures
function FBI:MakeToggle(name, callme)
    if ( not ToggleFunctions[name] ) then
        local n = name;
        local c = callme;
        ToggleFunctions[name] = function() FBI:ToggleSetting(n); if (c) then c() end; end;
    end
    return ToggleFunctions[name];
end

function FBI:MakeClickToSwitchEntry(switchText, switchSetting, level, keepShowing, callMe)
    local entry = {};
    entry.text = switchText;
    entry.func = self:MakeToggle(switchSetting, callMe);
    entry.checked = self:GetSettingBool(switchSetting);
    entry.keepShownOnClick = keepShowing;
    UIDropDownMenu_AddButton(entry, level);
end

local function MakeDropDownSep(level)
    local entry = {};
    entry.disabled = true;
    UIDropDownMenu_AddButton(entry, level);
end

local function MakeDropDownEntry(name, option, level)
    local addthis = true;
    if ( option.check ) then
        addthis = option.check();
    end
    if ( addthis ) then
        local entry = {};
        entry.text = option.text;
        entry.func = FBI:MakeToggle(name);
        entry.checked = FBI:GetSettingBool(name);
        entry.keepShownOnClick = true;
        UIDropDownMenu_AddButton(entry, level);
    end
end

function FBI:DropDownInitFunc(level)
    if ( level == 1) then
        local entry = {};
        if ( self.title ) then
            entry.isTitle = 1;
            entry.text = self.title;
            entry.notCheckable = 1;
            UIDropDownMenu_AddButton(entry, level);
        end

        -- If no outfit frame, we can't switch outfits...
        if ( FBEnvironment.OutfitManager.HasManager() ) then
            self:MakeClickToSwitchEntry(self.switchText, self.switchSetting, level, 1);
            MakeDropDownSep(level);
        end

        table.wipe(entry);
        for tabname,handler in pairs(FBOptionsTable) do
            if (handler.hasdd) then
                entry.text = tabname;
                entry.func = self.UncheckHack;
                entry.hasArrow = 1;
                entry.value = handler.options;
                UIDropDownMenu_AddButton(entry, level);
            end
        end
    elseif (level == 2 and type(UIDROPDOWNMENU_MENU_VALUE) == "table") then
        for name,option in pairs(UIDROPDOWNMENU_MENU_VALUE) do
            if ( option.m1 ) then
                MakeDropDownEntry(name, option, level);
            end
        end
        for name,option in pairs(UIDROPDOWNMENU_MENU_VALUE) do
            if ( option.m ) then
                MakeDropDownEntry(name, option, level);
            end
        end
    end
end

local FB_DropDownMenu = CreateFrame("Frame", "FB_DropDownMenu");
local function UncheckHack(dropdownbutton)
    _G[dropdownbutton:GetName().."Check"]:Hide()
end

-- Old style drop down handling, which will add taint
-- Everything happens at level 1
function FBI:MakeDropDown(switchText, switchSetting)
    -- If no outfit frame, we can't switch outfits...
    if ( FBEnvironment.OutfitManager.HasManager() ) then
        self:MakeClickToSwitchEntry(switchText, switchSetting, 1, 1);
        MakeDropDownSep(1);
    end

    for _,info in pairs(FBOptionsTable) do
        for name,option in pairs(info.options) do
            if ( option.p ) then
                MakeDropDownEntry(name, option);
            end
        end
    end
end

function FBI:CreateLabeledThing(holdername, label, thing, thingname)
    local holder = CreateFrame("Frame", holdername);
    thingname = thingname or 'thing';
    holder[thingname] = thing;

    thing:ClearAllPoints();
    thing:SetParent(holder)
    thing:SetPoint("TOPRIGHT", holder, "TOPRIGHT", 0, -4);
    thing.label:ClearAllPoints();
    thing.label:SetParent(holder)
    local offset = thing.label:GetHeight() - thing:GetHeight();
    thing.label:SetPoint("TOPLEFT", holder, "TOPLEFT", 0, 0)

    function holder:FixSizes()
        self:SetWidth(thing:GetWidth() + thing.label:GetWidth() + (holder.width_adjust or 8));
        self:SetHeight(thing:GetHeight() + (holder.height_adjust or 8));
        local offset = (thing.label:GetHeight() - thing:GetHeight())/2;
        thing.label:SetPoint("TOPLEFT", holder, "TOPLEFT", 0, offset - 4)
    end

    function holder:SetLabel(text)
        if (text) then
            thing.label:Show();
            thing.label:SetText(text);
        else
            thing.label:SetText("");
            thing.label:Hide();
        end
        self:FixSizes();
    end

    return holder;
end

-- menuname has to be set regardless, or UI drop down doesn't work
function FBI:CreateFBDropDownMenu(holdername, menuname)
    if (not menuname) then
        menuname = holdername.."Menu"
    end
    local menu = CreateFrame("Frame", menuname, nil, "FishingBuddyDropDownMenuTemplate");
    local holder = self:CreateLabeledThing(holdername, '', menu, 'menu')
    menu:SetParent(holder)
    holder.width_adjust = -12;
    holder.html = CreateFrame("SimpleHTML", nil, holder);
    holder.html:ClearAllPoints();
    holder.html:SetAllPoints(holder);
    holder.fontstring = holder.html:CreateFontString(nil, nil, "GameFontNormalSmall");
    holder.fontstring:SetAllPoints(holder.html);
    holder:FixSizes();

    return holder;
end

-- handle menu with a mapping table for settings to displayed values
local function SetMappedValue(self, what, value)
    local show = self.Mapping[value];
    FBI:SetSetting(what, value);
    UIDropDownMenu_SetSelectedValue(self, show);
    UIDropDownMenu_SetText(self, show);
    FBI:OptionsUpdate();
end

local function LoadMappedMenu(keymenu)
    local menu = keymenu.menu;
    local menuwidth = 0;
    local setting = FBI:GetSetting(keymenu.Setting);
    for value,label in pairs(menu.Mapping) do
        local info = {};
        local v = value;
        local w = keymenu.Setting;
        local m = menu;
        info.text = label;
        info.func = function() SetMappedValue(m, w, v); end;
        if ( setting == value ) then
            info.checked = true;
        else
            info.checked = false;
        end
        UIDropDownMenu_AddButton(info);
        menu.label:SetText(label);
        local width = menu.label:GetWidth();
        if (width > menuwidth) then
            menuwidth = width;
        end
    end
    UIDropDownMenu_SetWidth(menu, menuwidth + 32);
    keymenu:SetLabel(keymenu.Label);
end

local function InitMappedMenu(option, button)
    UIDropDownMenu_Initialize(button.menu, function()
                                      LoadMappedMenu(button);
                                  end);
end

function FBI:CreateFBMappedDropDown(holdername, setting, label, mapping, menuname)
    local keymenu = FBI:CreateFBDropDownMenu(holdername, menuname);
    keymenu.html:Hide();
    keymenu.menu.label:SetText(label);
    keymenu.Label = label;
    keymenu.Setting = setting;
    keymenu.menu.Mapping = mapping;
    keymenu.menu.SetMappedValue = SetMappedValue;
    keymenu.InitMappedMenu = InitMappedMenu;
    keymenu:FixSizes()
    return keymenu;
end

function FBI:GetOptionList()
    local options = {};
    for _,info in pairs(FBOptionsTable) do
        for name,option in pairs(info.options) do
            options[name] = option;
        end
    end
    return options;
end

-- Helper function
function FBI:FitInOptionFrame(width)
    return FishingOptionsFrame:FitInFrame(width);
end

function FBI:EmbeddedOptions(frame)
    frame.GetSettingBool = function(...) return FBI:GetSettingBool(...); end;
    LO:Embed(frame, CheckButton_OnClick, CheckButton_OnShow, FishingBuddyFrameInset);
end

-- Create the options frame, unmanaged -- we get managed specially later
local f = FishingBuddyFrame:CreateManagedFrame("FishingOptionsFrame");

FBI:EmbeddedOptions(f);
LS:Embed(f);

f:SetScript("OnShow", OptionsFrame_OnShow);
f:SetScript("OnHide", function (self) self:HideTabs(); end);

