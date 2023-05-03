--[[
Name: LibOptionsFrame-1.0
Maintainers: Sutorix <sutorix@hotmail.com>
Description: Layout checkboxes and such in a frame.
Copyright (c) by The Software Cobbler
Licensed under a Creative Commons "Attribution Non-Commercial Share Alike" License
--]]

local MAJOR_VERSION = "LibOptionsFrame-1.0"
local MINOR_VERSION = 90000 + tonumber(("1000"):match("%d+"))

if not LibStub then error(MAJOR_VERSION .. " requires LibStub") end

local OptionsLib, oldLib = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not OptionsLib then
    return
end

local function AddTooltipLine(l)
    if ( type(l) == "table" ) then
        -- either { t, c } or {{t1, c1}, {t2, c2}}
        if ( type(l[1]) == "table" ) then
            local c1 = SplitColor(l[1][2]) or {};
            local c2 = SplitColor(l[2][2]) or {};
            GameTooltip:AddDoubleLine(l[1][1], l[2][1],
                                              c1.r, c1.g, c1.b,
                                              c2.r, c2.g, c2.b);
        else
            local c = SplitColor(l[2]) or {};
            GameTooltip:AddLine(l[1], c.r, c.g, c.b, 1);
        end
    else
        GameTooltip:AddLine(l,nil,nil,nil,1);
    end
end

local function AddTooltip(text, tooltip)
    if ( not tooltip ) then
        tooltip = GameTooltip;
    end
    -- local c = color or {{}, {}};
    if ( text ) then
        if ( type(text) == "table" ) then
            for _,l in pairs(text) do
                AddTooltipLine(l);
            end
        else
            -- AddTooltipLine(text, color);
            tooltip:AddLine(text,nil,nil,nil,1);
        end
    end
end

-- managed control support
local function Slider_OnLoad(self, info, height, width)
    self.info = info;
    self.textfield = _G[info.name.."Text"];
    _G[info.name.."High"]:SetText();
    _G[info.name.."Low"]:SetText();
    self:SetMinMaxValues(info.min, info.max);
    self:SetValueStep(info.step or 1);
    self:SetHeight(height or 17);
    self:SetWidth(width or 130);
end

local function Slider_OnShow(self)
    local where = self.info.getter(self.info.setting);
    if (where) then
        self:SetValue(where);
        self.textfield:SetText(string.format(self.info.format, where));
    end
end

local function Slider_OnValueChanged(self)
    local where = self:GetValue();
    self.textfield:SetText(string.format(self.info.format, where));
    self.info.setter(self.info.setting, where);
    if (self.info.action) then
        self.info.action(self);
    end
end

-- info contains
-- name -- required
-- format -- how to print the value
-- min
-- max
-- step -- default to 1
-- rightextra -- extra room needed, if any
-- setting -- what this slider changes
-- action -- function to call when the value change
function OptionsLib:CreateSlider(info)
    local s = _G[info.name];
    if (not s) then
        s = CreateFrame("Slider", info.name, nil, "OptionsSliderTemplate");
    end
    Slider_OnLoad(s, info);
    s:SetScript("OnShow", Slider_OnShow);
    s:SetScript("OnValueChanged", Slider_OnValueChanged);
    s.info = info
    return s;
end

-- edit box
local function EditBox_OnLoad(self, info)
    self.info = info;
    local maxLetters = info.maxLetters or 32;
    if not info.width and info.maxLetters then
        self:SetText('M');
        local emSpace = self:GetWidth();
        self:SetWidth(maxLetters*emSpace);
    else
        self:SetWidth(184);
    end
    self:SetMaxLetters(maxLetters);
    self:SetHeight(info.height or 20);
    self:SetTextInsets(0, 0, 3, 3)
    self:SetMultiLine(false)
    self:SetAutoFocus(false)
    self:SetFontObject(ChatFontNormal)
    self:EnableMouse(true)
end

local function EditBox_OnShow(self)
    local what = self.info.getter(self.info.setting);
    if (what) then
        self:SetText(what);
    end
end

local function EditBox_OnTextChanged(self)
    local what = self:GetText();
    self.info.setter(self.info.setting, what);
    if (self.info.action) then
        self.info.action(self);
    end
end

-- info contains
-- name
-- setting -- what this edit box changes
-- action -- function to call when the value changes
-- height, width -- override defaults
function OptionsLib:CreateEditBox(info)
    local s = _G[info.name];
    if (not s) then
        s = CreateFrame("EditBox", info.name, nil, "InputBoxTemplate");
    end
    if (info.label and not s.label) then
        s.label = s:CreateFontString(nil, "BACKGROUND", "GameFontNormalSmall")
        s.label:SetPoint("RIGHT", s, "LEFT", -10, 0);
        s.label:SetPoint("CENTER", s, "CENTER", 0, 0);
        s.label:SetText(info.label)
    end
    EditBox_OnLoad(s, info)
    s:SetScript("OnShow", EditBox_OnShow);
    s:SetScript("OnTextChanged", EditBox_OnTextChanged)
    return s
end

local function ParentValue(button)
    local value = true;
    if ( button.parents ) then
        for _,b in pairs(button.parents) do
            if ( b.checkbox and not b:GetChecked() ) then
                value = false;
            end
        end
    end
    return value;
end

local function ParentEnabled(button)
    if ( button.parents ) then
        for _,b in pairs(button.parents) do
            if ( not b:IsEnabled() ) then
                return false;
            end
        end
    end
    if ( button.controlled ) then
        for _,b in pairs(button.controlled) do
            if ( not b:GetChecked() ) then
                return false;
            end
        end
    end
    return true;
end

-- we only set value if we need to force a behavior
local function CheckBox_Able(button, value)
    if ( not button ) then
        return;
    end
    if ( value == nil ) then
        value = ParentValue(button);
    end
    local color;
    if ( value ) then
        if (button.checkbox) then
            button:Enable();
        end
        color = NORMAL_FONT_COLOR;
        if (button.overlay) then
            button.overlay:Hide();
        end
    else
        if ( button.checkbox ) then
            button:Disable();
        end
        if (button.overlay) then
            button.overlay:ClearAllPoints();
            button.overlay:SetPoint("TOPLEFT", button.label, "TOPLEFT");
            button.overlay:SetSize(button:GetWidth(), button:GetHeight());
            button.overlay:SetFrameLevel(button:GetFrameLevel()+2);
            button.overlay:Show();
        end
        color = GRAY_FONT_COLOR;
    end
    local text = _G[button:GetName().."Text"];
    if ( text ) then
        text:SetTextColor(color.r, color.g, color.b);
    end
end

local function hideOrDisable(button, what)
    local enabled = ParentEnabled(button);
    local value = false;

    if ( enabled ) then
        if ( type(what) == "function" ) then
            what, value = what();
        else
            value =	ParentValue(button);
        end
    else
        what = "d";
    end
    -- "i" means ignore, but since we check explicitly...
    if ( what == "d" ) then
        CheckBox_Able(button, value);
    elseif ( what == "h" ) then
         button:Hide();
         if ( value  ) then
            if ( not button.visible or button.visible(button.option) ) then
                button:Show();
            end
        end
    end
end

local copyfuncs = {};

function OptionsLib:GetFrameInfo(framespec)
    local n = nil;
    if framespec then
        if ( type(framespec) == "string" ) then
            n = framespec;
            framespec = _G[framespec];
        else
            n = framespec:GetName();
        end
    end
    return framespec, n;
end
tinsert(copyfuncs, "GetFrameInfo");

function OptionsLib:HandleDeps(parent)
    local value = (not parent.checkbox or parent:GetChecked());
    if ( parent.children ) then
        for dep,what in pairs(parent.children) do
            hideOrDisable(dep, what);
            self:HandleDeps(dep);
        end
    end

    if ( parent.controls ) then
        for dep,what in pairs(parent.controls) do
            hideOrDisable(dep, what);
            self:HandleDeps(dep);
        end
    end
end
tinsert(copyfuncs, "HandleDeps");

function OptionsLib:_processchildren(button, parents)
    for n,what in pairs(parents) do
        local b = self.optionmap[n];
        if ( b ) then
            if ( not b.children ) then
                b.children = {};
            end
            b.children[button] = what;
            if ( not button.parents ) then
                button.parents = {};
            end
            tinsert(button.parents, b);
        end
    end
end
tinsert(copyfuncs, "_processchildren");

function OptionsLib:_processdepends(button, depends)
    for n,what in pairs(depends) do
        local b = self.optionmap[n];
        if ( b ) then
            if ( not b.controls ) then
                b.controls = {};
            end
            b.controls[button] = what;
            if ( not button.controlled ) then
                button.controlled = {};
            end
            tinsert(button.controlled, b);
        end
    end
end
tinsert(copyfuncs, "_processdepends");

function OptionsLib:_arrangebuttons(btnlist)
    if not btnlist then
        return {};
    end

    local order = {};
    local used = {};
    for idx=1,#btnlist do
        local b = btnlist[idx];
        if ( b.alone ) then
            tinsert(order, idx);
            used[b.name] = true;
        end
    end

    for idx=1,#btnlist do
        local b = btnlist[idx];
        if (b.children and not used[b.name] ) then
            local group = {};
            local last = {};
            used[b.name] = true;
            tinsert(order, idx);
            for d,_ in pairs(b.children) do
                for jdx=1,#btnlist do
                    if ( not used[d.name] and btnlist[jdx].name == d.name) then
                        used[d.name] = true;
                        if (d.custom) then
                            tinsert(last, jdx);
                        else
                            tinsert(group, jdx);
                        end
                    end
                end
            end
            -- here we should arrange order so that as many pairs as possible are
            -- an appropriate width. For now make all the odd ones the shortest ones.
            table.sort(group, function(a,b)
                a = btnlist[a];
                b = btnlist[b];
                return a.width and b.width and a.width < b.width;
            end);
            for jdx=1,#group do
                local kdx = #group-jdx+1;
                if (kdx > jdx) then
                    tinsert(order, group[jdx]);
                    tinsert(order, group[kdx]);
                elseif (kdx == jdx) then
                    tinsert(order, group[jdx]);
                end
            end
            for jdx=1,#last do
                tinsert(order, last[jdx]);
            end
        end
    end
    local last = {};
    local group = {};
    for idx=1,#btnlist do
        local b = btnlist[idx];
        if ( not used[b.name] ) then
            if (b.custom) then
                tinsert(last, idx);
            else
                tinsert(group, idx);
            end
        end
    end

    table.sort(group, function(a,b)
        a = btnlist[a];
        b = btnlist[b];
        return a.width and b.width and a.width < b.width;
    end);

    for jdx=1,#group do
        local kdx = #group-jdx+1;
        if (kdx > jdx) then
            tinsert(order, group[jdx]);
            tinsert(order, group[kdx]);
        elseif (kdx == jdx) then
            tinsert(order, group[jdx]);
        end
    end

    for jdx=1,#last do
        tinsert(order, last[jdx]);
    end

    return order;
end
tinsert(copyfuncs, "_arrangebuttons");

local RIGHT_OFFSET = 16;
local BUTTON_SEP = 8;
function OptionsLib:_layoutorder(btnlist, maxwidth)
    if not btnlist then
        return {};
    end

    local order = self:_arrangebuttons(btnlist);
    local layout = {};
    local used = {};

    local idx = 1;
    while (idx <= #order ) do
        if ( not used[idx] ) then
            local left = order[idx];
            local leftbut = btnlist[left];
            local rightbut = nil;
            if ( not leftbut.alone ) then
                local tw = RIGHT_OFFSET + BUTTON_SEP + leftbut.width;
                for jdx=#order,idx+1,-1 do
                    if ( not rightbut and not used[jdx] ) then
                        local tr = order[jdx];
                        local tb = btnlist[tr];
                        if ((tb.width + tw) <= maxwidth) then
                            used[jdx] = true;
                            rightbut = tb;
                        end
                    end
                end
            end

            tinsert(layout, { leftbut, rightbut } );
        end
        idx = idx + 1;
    end

    return layout;
end
tinsert(copyfuncs, "_layoutorder");

function OptionsLib:_firstposition(button, xoffset, yoffset)
    if button ~= self.reference then
        xoffset = xoffset or 4;
        yoffset = yoffset or -4;
        button:SetPoint("TOPLEFT", self.reference, "TOPLEFT", xoffset, yoffset);
    end
end
tinsert(copyfuncs, "_firstposition");

local SQUISH_OFF = 6;
function OptionsLib:_dolayout(layout, lastbutton, firstoff)
    firstoff = firstoff or 0;
    for idx,line in ipairs(layout) do
        local lb, rb = line[1], line[2];
        lb:ClearAllPoints()
        local yoff = nil;
        if ( lb.margin ) then
            yoff = -(lb.margin[2] or SQUISH_OFF);
            firstoff = firstoff + lb.margin[1] or 0;
        end
        if (rb) then
            local h1 = lb:GetHeight();
            local h2 = rb:GetHeight();
            firstoff = firstoff + math.abs(h1 - h2);
        end
        if ( not lastbutton ) then
            self:_firstposition(lb, firstoff, yoff);
        elseif lb ~= lastbutton then
            yoff = SQUISH_OFF;
            lb:SetPoint("TOPLEFT", lastbutton, "BOTTOMLEFT", firstoff, yoff);
            firstoff = 0;
        end
        lastbutton = lb;
        if ( rb ) then
            rb.right = 1;
            rb.adjacent = lastbutton;
            if ( rb.margin ) then
                yoff = yoff + (rb.margin[2] or 0);
            end
            rb:SetPoint("CENTER", lb, "CENTER");
            if ( rb.checkbox ) then
                rb:SetPoint("RIGHT", self.reference, "RIGHT", -rb.width, 0);
                rb:SetHitRectInsets(0, -rb.width, 0, 0);
            else
                rb:SetPoint("RIGHT", self.reference, "RIGHT", -(rb.slider or 0), 0);
            end
        end
    end

    return lastbutton;
end
tinsert(copyfuncs, "_dolayout");

local function CleanupButton(button)
    button.name = nil;
    button.alone = nil;
    button.width = 0;
    button.slider = 0;
    button.update = nil;
    button.enabled = nil;
    button.text = "";
    button.tooltipText = nil;
    button.primary = nil;
    button.right = nil;
    button.layoutright = nil;
    button.margin = nil;
    button.visible = nil;
    button.adjacent = nil;
    button.parents = nil;
    button.children = nil;
    button.controls = nil;
    button.controlled = nil;
    if (button.overlay) then
        button.overlay:Hide();
        button.overlay = nil;
    end
    CheckBox_Able(button, 0);
    button:ClearAllPoints();
    if (button.checkbox) then
        button:SetHitRectInsets(0, -100, 0, 0);
        button:SetScript("OnShow", nil);
        button:SetScript("OnClick", nil);
        button.checkbox = nil;
    end

    if not button.custom then
        local text = _G[button:GetName().."Text"];
        if (text) then
            text:SetText(button:GetName());
        end
    end

    button.custom = nil;
    button.option = nil;

    button:SetScript("OnEnter", nil);
    button:SetScript("OnLeave", nil);

    button:Hide();
    button:SetParent(nil);
end

function OptionsLib:NextButton()
    local button = self.optionbuttons[self.index];
    if ( not button ) then
        button = CreateFrame(
            "CheckButton", self.name.."Opt"..self.index,
            self.reference, "FishingBuddyCheckButtonTemplate");
        self.optionbuttons[self.index] = button;
    end
    self.index = self.index + 1;
    return button;
end
tinsert(copyfuncs, "NextButton");

-- tooltip support for disabled buttons
local function Handle_OnEnter(self)
    if(self.tooltipText ~= nil) then
        GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT", 48, 0);
        AddTooltip(self.tooltipText);
        GameTooltip:Show();
    end
end

local function Handle_OnLeave(self)
    if(self.tooltipText ~= nil) then
        GameTooltip:Hide();
    end
end

function OptionsLib:NextOverlay()
    local overlay = self.overlaybuttons[self.overlayidx];
    if ( not overlay ) then
        overlay = CreateFrame("Button");
        overlay:Hide();
        self.overlaybuttons[self.overlayidx] = overlay;
        overlay:SetParent(self);
        overlay:SetScript("OnEnter", Handle_OnEnter);
        overlay:SetScript("OnLeave", Handle_OnLeave);
    end
    self.overlayidx = self.overlayidx + 1;
    overlay:ClearAllPoints();
    return overlay;
end
tinsert(copyfuncs, "NextOverlay");

function OptionsLib:ResetButtons()
    -- Clear out all the stuff we put on the old buttons
    for name,button in pairs(self.optionmap) do
        CleanupButton(button);
    end
    for idx=1,#self.overlaybuttons do
        self.overlaybuttons[idx]:Hide()
    end

    self.optionmap = {};
    self.index = 1;
    self.overlayidx = 1;
end
tinsert(copyfuncs, "ResetButtons");

function OptionsLib:InitializeOptions(options)
    self:ResetButtons()

    for name,option in pairs(options) do
        local button = nil;
        if (not option.visible or option.visible(option)) then
            if ( option.button ) then
                if ( type(option.button) == "string" ) then
                    button = _G[option.button];
                else
                    button = option.button;
                end
                if ( button ) then
                    button.custom = true;
                end
            elseif ( option.v ) then
                button = self:NextButton();
            end
            if ( button ) then
                self.optionmap[name] = button;
                button.checkbox = (button:GetObjectType() == "CheckButton");

                button.option = option;
                button.name = name;

                button:ClearAllPoints();
                button:SetParent(self);
                button:SetFrameLevel(self:GetFrameLevel() + 2);

                if ( button.checkbox and option.v ) then
                    -- override OnShow and OnClick
                    button:SetScript("OnShow", self.onshow);
                    button:SetScript("OnClick", self.onclick);
                end

                if (option.init) then
                    option.init(option, button);
                end

                button.alone = option.alone;
                button.layoutright = option.layoutright;
                button.margin = option.margin;
                button.update = option.update;
                button.visible = option.visible;
                button.enabled = option.enabled;
                button.width = button:GetWidth();

                if ( option.text ) then
                    button.text = option.text;
                    local text = _G[button:GetName().."Text"];
                    if (text) then
                        text:SetText(option.text);
                        button.width = button.width + text:GetWidth();
                    end
                else
                    button.text = "";
                end

                if ( button.checkbox ) then
                    if (self.GetSettingBool) then
                        button:SetChecked(self.GetSettingBool(name));
                    end
                    button:SetHitRectInsets(0, -button.width, 0, 0);
                end
                -- hack for sliders (why?)
                if (button:GetObjectType() == "Slider") then
                    button.slider = 16;
                    Slider_OnShow(button)
                else
                    button.slider = 0;
                end

                button.tooltipText = option.tooltip;
                if ( option.tooltipd ) then
                    local tooltip = option.tooltipd;
                    if ( type(tooltip) == "function" ) then
                        tooltip = tooltip(option);
                    end
                    if tooltip then
                        button.tooltipText = tooltip
                    end
                end

                if ( button.tooltipText ) then
--#retail@
                    button:SetScript("OnEnter", Handle_OnEnter);
                    button:SetScript("OnLeave", Handle_OnLeave);
                end

                if ( option.setup ) then
                    option.setup(button);
                end
            end
        end
    end
end
tinsert(copyfuncs, "InitializeOptions");

function OptionsLib:LayoutOptions(options)
    self.insidewidth = self.reference:GetWidth();

    self:InitializeOptions(options)

    local toplevel = {};
    for name,option in pairs(options) do
        local button = self.optionmap[name];
        if ( button ) then
            if ( option.parents ) then
                button.primary = option.primary;
                self:_processchildren(button, option.parents);
            else
                tinsert(toplevel, name);
            end

            if (option.depends) then
                self:_processdepends(button, option.depends);
            end
        end
    end

    -- move the primaries with no dependents to the top, and stack them next to other
    -- then put everything else underneath. need to make the dep button layout code
    -- useful for the toplevel non-dep buttons then
    local pb = {};
    local maxwidth = 0;
    for _,name in pairs(toplevel) do
        local button = self.optionmap[name];
        if ( button and not button.children and not button.custom ) then
            tinsert(pb, button);
        end
    end

    local layout = self:_layoutorder(pb, self.insidewidth or 0);
    local lastbutton = self:_dolayout(layout);

    local primaries = {};
    for _,name in pairs(toplevel) do
        local button = self.optionmap[name];
        if ( button and button.children ) then
            tinsert(primaries, name);
        end
    end
    for _,name in pairs(toplevel) do
        local button = self.optionmap[name];
        if ( button and button.custom ) then
            tinsert(primaries, name);
        end
    end

    local lastoff = 0;
    for _,name in pairs(primaries) do
        local button = self.optionmap[name];
        button:ClearAllPoints()
        if ( not lastbutton ) then
            local yoff, firstoff;
            if ( button.margin ) then
                yoff = -(button.margin[2] or SQUISH_OFF);
                firstoff = button.margin[1] or 0;
            end
            self:_firstposition(button, firstoff, yoff);
        elseif button ~= lastbutton then
            local yoff = SQUISH_OFF;
            if ( button.margin ) then
                yoff = yoff - button.margin[2];
            end
            if ( lastbutton.margin ) then
                yoff = yoff - lastbutton.margin[2];
            end
            button:SetPoint("TOPLEFT", lastbutton, "BOTTOMLEFT", lastoff, yoff);
        end
        lastbutton = button;
        lastoff = 0;
        if ( button.children ) then
            local deps = {};
            for b,n in pairs(button.children) do
                if ( self.optionmap[b.name] and (not b.primary or b.primary == name) and b.name ~= button.layoutright) then
                    tinsert(deps, b);
                end
            end
            layout = self:_layoutorder(deps, self.insidewidth - RIGHT_OFFSET);
            lastbutton = self:_dolayout(layout, lastbutton, RIGHT_OFFSET);
            lastoff = -RIGHT_OFFSET;
        end
        if ( button.layoutright ) then
             local toright = self.optionmap[button.layoutright];
             if (toright) then
                 toright:ClearAllPoints();
                 toright:SetPoint("CENTER", button, "CENTER", 0, 0);
                 toright:SetPoint("RIGHT", self.reference, "RIGHT", -32, 0);
             end
        end
    end
end
tinsert(copyfuncs, "LayoutOptions");

function OptionsLib:ShowButtons()
    -- now that we've collected all of the dependencies, handle them
    for name,button in pairs(self.optionmap) do
        if ( button ) then
            local showit = true;
            if ( button.visible ) then
                showit = button.visible(button.option);
            end
            if ( showit ) then
                button:Show();
            else
                button:Hide();
            end
        end
    end
    for name, button in pairs(self.optionmap) do
        if ( not button.parents ) then
            local value = true;
            if (button.enabled) then
                value = button.enabled(button);
            end
            CheckBox_Able(button, value);
            self:HandleDeps(button);
        end
    end
end
tinsert(copyfuncs, "ShowButtons");

function OptionsLib:FitInFrame(width)
    local check = self.reference:GetWidth();
    -- Default to something that should be close in case we haven't
    -- seen the window yet
    if (check == 0) then
        check = 327;
    end
    return width < (check - RIGHT_OFFSET - BUTTON_SEP);
end
tinsert(copyfuncs, "FitInFrame");

-- Based on code from the LibStub wiki page
OptionsLib.previousClients = OptionsLib.previousClients or {};
function OptionsLib:Embed(target, onclick, onshow, reference)
    local f, n = OptionsLib:GetFrameInfo(target);
    for _,name in pairs(copyfuncs) do
        f[name] = OptionsLib[name];
    end
    OptionsLib.previousClients[f] = true;
    f.name = n;
    f.reference = reference or f:GetParent();
    f.onclick = onclick;
    f.onshow = onshow;

    f.overlaybuttons = {};
    f.optionbuttons = {};
    f.optionmap = {};
end

for target,_ in pairs(OptionsLib.previousClients) do
    OptionsLib:Embed(target)
end
