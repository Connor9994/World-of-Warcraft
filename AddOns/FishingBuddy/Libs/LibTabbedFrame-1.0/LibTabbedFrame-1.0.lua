--[[
Name: LibTabbedFrame-1.0
Maintainers: Sutorix <sutorix@hotmail.com>
Description: A library to handle Player sized frames with tabs.
Copyright (c) by The Software Cobbler
Licensed under a Creative Commons "Attribution Non-Commercial Share Alike" License
--]]

local MAJOR_VERSION = "LibTabbedFrame-1.0"
local MINOR_VERSION = 90000 + tonumber(("1603"):match("%d+"))

if not LibStub then error(MAJOR_VERSION .. " requires LibStub") end

local FrameLib, oldLib = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not FrameLib then
    return
end

local copyfuncs = {};

function FrameLib:GetFrameInfo(f)
    local n;
    if ( type(f) == "string" ) then
        n = f;
        f = _G[f];
    else
        n = f:GetName();
    end
    return f, n;
end
tinsert(copyfuncs, "GetFrameInfo");

local function FrameTab_Onclick(self)
    PanelTemplates_Tab_OnClick(self, self.parent);
    self.parent.currentTab = self;
    self.parent:ResetTabFrames();
    PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB);
end

local function FrameTab_OnShow(self)
    PanelTemplates_TabResize(self, 0, nil, 36, self:GetParent().maxTabWidth or 88);
end

function FrameLib:CreateTabFrame(tabtext)
    local id = #self.Tabs+1;
    local framename = self.name.."Tab"..id;
    local frametype = "PanelTabButtonTemplate";
    local tabframe = CreateFrame("Button", framename, self, frametype);

    tabframe.name = tabtext;
    tabframe.enabled = true;
    tabframe.parent = self;

    tabframe:SetScript("OnClick", FrameTab_Onclick);
    tabframe:SetScript("OnShow", FrameTab_OnShow);

    tabframe:SetID(id);

    tabframe.Text:SetText(tabtext);
    local text = _G[tabframe:GetName()].Text;
    text:SetWidth(0);

    PanelTemplates_SetNumTabs(self, id);
    self.maxTabWidth = self:GetWidth() / id;
    PanelTemplates_TabResize(tabframe, 0, nil, 36, self.maxTabWidth or 88);
    tabframe:SetFrameLevel(self:GetFrameLevel());

    return tabframe, id;
end
tinsert(copyfuncs, "CreateTabFrame");

function FrameLib:UpdateTabFrame(tab)
    if ( tab.enabled ) then
        tab:ClearAllPoints();
        if ( self.lastTabFrame ) then
            tab:SetPoint("TOPLEFT", self.lastTabFrame, "TOPRIGHT", 1, 0);
        else
            tab:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 11, 2);
        end
        tab:Show();
        self.lastTabFrame = tab;
    else
        if ( tab == self.currentTab ) then
            self.currentTab = nil;
        end
        tab:Hide();
    end
    if ( tab.assocFrame ) then
        tab.assocFrame:Hide();
    end
end
tinsert(copyfuncs, "UpdateTabFrame");

function FrameLib:ResetTabFrames()
    self.lastTabFrame = nil;
    if ( self.FirstAmongTabs ) then
        self:UpdateTabFrame(self.FirstAmongTabs);
    end
    for id=1,#self.Tabs do
        local tab = self.Tabs[id];
        if ( not tab.first and not tab.ultimate ) then
            self:UpdateTabFrame(tab);
        end
        if ( tab.assocFrame ) then
            tab.assocFrame:Hide();
        end
    end
    if ( self.UltimateTab ) then
        self:UpdateTabFrame(self.UltimateTab);
    end

    if ( #self.Tabs > 0 ) then
        self.currentTab = self.currentTab or self.Tabs[1].frame;
        if ( self.currentTab ) then
            PanelTemplates_SetTab(self, self.currentTab:GetID());
            self.currentTab:Show();
            if ( self.currentTab.assocFrame ) then
                self.currentTab.assocFrame:Show();
            end
        end
    end
end
tinsert(copyfuncs, "ResetTabFrames");

function FrameLib:DisableSubFrame(target)
    local frame, frameName = self:GetFrameInfo(target);
    local tab = self.ManagedFrames[frameName];
    if ( tab and tab.enabled ) then
        tab.enabled = false;
        self:ResetTabFrames();
    end
end
tinsert(copyfuncs, "DisableSubFrame");

function FrameLib:EnableSubFrame(target)
    local frame, frameName = self:GetFrameInfo(target);
    local tab = self.ManagedFrames[frameName];
    if ( tab and not tab.enabled ) then
        tab.enabled = true;
        self:ResetTabFrames();
    end
end
tinsert(copyfuncs, "EnableSubFrame");

function FrameLib:IsAssigned(target)
    local frame, frameName = self:GetFrameInfo(target);
    return (self.ManagedFrames[frameName] ~= nil);
end
tinsert(copyfuncs, "IsAssigned");

function FrameLib:ShowSubFrame(target)
    local frame, frameName = self:GetFrameInfo(target);
    local ctab;
    for id=1,#self.Tabs do
        local tab = self.Tabs[id];
        if ( tab.enabled and tab.assocFrame ) then
            if ( tab.assocFrame == frame ) then
                ctab = tab;
            end
        end
    end
    if ( not ctab ) then
        ctab = self.Tabs[1];
    end
    self.currentTab = ctab;
    self:ResetTabFrames();
end
tinsert(copyfuncs, "ShowSubFrame");

function FrameLib:FindTab(target)
    local _, name = self:GetFrameInfo(target);
    return self.ManagedFrames[name];
end
tinsert(copyfuncs, "FindTab");

function FrameLib:MakeFrameTab(target, tabname, tooltip, toggle)
    local tabframe, id = self:CreateTabFrame(tabname);
    if ( tooltip ) then
        tabframe.tooltip = tooltip;
    end
    if ( toggle ) then
        tabframe.toggle = "TOGGLE"..self.toggle..toggle;
    end

    -- optimize if passed a string
    local frame, frameName = self:GetFrameInfo(target);
    self.ManagedFrames[frameName] = tabframe;
    tabframe.assocFrame = frame;

    self:EnableSubFrame(frame);

    return tabframe;
end
tinsert(copyfuncs, "MakeFrameTab");

function FrameLib:ManageFrame(target, tabname, tooltip, toggle)
    if ( not self:IsAssigned(target) ) then
        self:MakeFrameTab(target, tabname, tooltip, toggle);
    end
end
tinsert(copyfuncs, "ManageFrame");

-- take up all of the "empty" space in a frame we created
local function Expand(self, target)
    local tf, _ = self:GetFrameInfo(target);

    tf:SetParent(self);
    tf:ClearAllPoints();
    tf:SetAllPoints();
end

function FrameLib:Expand(child, parent)
    Expand(child, parent)
end

local function CreateEmbeddedScrollFrame(self)
    -- Create the parent frame that will contain the inner scroll child,
    -- all buttons, and the scroll bar slider.
    local scrollFrame = CreateFrame("ScrollFrame", nil, self);

    -- This is a bare-bones frame is used to encapsulate the contents of
    -- the scroll frame.  Each scrollframe can have one scroll child.
    local scrollChild = CreateFrame("Frame");
    scrollFrame:SetScrollChild(scrollChild);

    -- Create the slider that will be used to scroll through the results
    local scrollBar = CreateFrame("Slider", nil, scrollFrame);
    scrollBar:SetWidth(16);
    scrollBar:SetPoint("TOP", scrollFrame, "TOP");
    scrollBar:SetPoint("RIGHT", scrollFrame, "RIGHT");
    scrollBar:SetPoint("BOTTOM", scrollFrame, "BOTTOM");

    -- Set up internal textures for the scrollbar, background and thumb texture
    scrollBar.top = scrollBar:CreateTexture(nil, "ARTWORK");
    scrollBar.top:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ScrollBar");
    scrollBar.top:SetTexCoord(0, 0.45, 0, .20);
    scrollBar.top:SetSize(24, 48);
    scrollBar.top:SetPoint("TOPLEFT", -4, 17);

    scrollBar.bot = scrollBar:CreateTexture(nil, "ARTWORK");
    scrollBar.bot:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ScrollBar");
    scrollBar.bot:SetTexCoord(0.515625, 0.97, 0.1440625, 0.4140625);
    scrollBar.bot:SetSize(24, 64);
    scrollBar.bot:SetPoint("BOTTOMLEFT", -4, -15);

    scrollBar.mid = scrollBar:CreateTexture(nil, "ARTWORK");
    scrollBar.mid:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ScrollBar");
    scrollBar.top:SetTexCoord(0, 0.45, 0.1640625, 1);
    scrollBar.mid:SetSize(24, 64);
    scrollBar.mid:SetPoint("TOPLEFT", scrollBar.top, "BOTTOMLEFT");
    scrollBar.mid:SetPoint("BOTTOMRIGHT", scrollBar.bot, "TOPRIGHT");

    scrollBar.bg = scrollBar:CreateTexture(nil, "BACKGROUND")
    scrollBar.bg:SetAllPoints(true)
    scrollBar.bg:SetTexture(0, 0, 0, 0.5)

    scrollBar.thumb = scrollBar:CreateTexture(nil, "OVERLAY")
    scrollBar.thumb:SetTexture("Interface\\Buttons\\UI-ScrollBar-Knob")
    scrollBar.thumb:SetSize(25, 25)
    scrollBar:SetThumbTexture(scrollBar.thumb)

    scrollBar:SetScript("OnValueChanged", function(self)
          scrollFrame:SetVerticalScroll(self:GetValue())
    end)

    function scrollFrame:GetScrollBar()
        return scrollBar;
    end

    function scrollFrame:GetScrollChild()
        return scrollChild;
    end

    function scrollFrame:UpdateScrollBar()
        -- Set up the scrollbar to work properly
        local sch = scrollChild:GetHeight();
        local scrollMax = sch - self:GetHeight();
        if (scrollMax > sch) then
            scrollMax = sch;
        end
        scrollBar:SetOrientation("VERTICAL");
        scrollBar:SetMinMaxValues(0, scrollMax);
        scrollBar:SetValue(0);
        -- scrollBar:SetFrameLevel(scrollFrame:GetFrameLevel()+1);
    end

    -- Enable mousewheel scrolling
    scrollFrame:EnableMouseWheel(true)
    scrollFrame:SetScript("OnMouseWheel", function(self, delta)
        local current = scrollBar:GetValue();
        local sch = scrollChild:GetHeight();
        local scrollMax = sch - self:GetHeight();
        if (height > sch) then
            scrollMax = sch;
        end

        if IsShiftKeyDown() and (delta > 0) then
            scrollBar:SetValue(0);
        elseif IsShiftKeyDown() and (delta < 0) then
            scrollBar:SetValue(scrollMax);
        elseif (delta < 0) and (current < scrollMax) then
            scrollBar:SetValue(current + 20);
        elseif (delta > 0) and (current > 1) then
            scrollBar:SetValue(current - 20);
        end
    end);

    self:Expand(scrollFrame);

    scrollChild:SetWidth(scrollFrame:GetWidth());

    return scrollFrame;
end

function FrameLib:CreateManagedFrame(framename, tabname, tooltip, toggle)
    local f = CreateFrame("FRAME", framename, self);
    f:SetAllPoints(self);
    f:SetHitRectInsets(0, 30, 0, 75);
    if ( tabname ) then
        self:ManageFrame(f, tabname, tooltip, toggle);
    end

    -- client helper to take up all of the "space"
    f.GetFrameInfo = self.GetFrameInfo;
    f.Expand = Expand;
    f.CreateEmbeddedScrollFrame = CreateEmbeddedScrollFrame;

    return f;
end
tinsert(copyfuncs, "CreateManagedFrame");

function FrameLib:MakePrimary(target)
    local tab = self:FindTab(target);
    if (tab) then
        tab.first = true;
        self.FirstAmongTabs = tab;
        self.currentTab = tab;
        self:ResetTabFrames();
    end
end
tinsert(copyfuncs, "MakePrimary");

function FrameLib:GetPrimary()
    return self.FirstAmongTabs;
end
tinsert(copyfuncs, "GetPrimary");

function FrameLib:MakeUltimate(target)
    local tab = self:FindTab(target);
    if (tab) then
        tab.ultimate = true;
        self.UltimateTab = tab;
    end
end
tinsert(copyfuncs, "MakeUltimate");

function FrameLib:GetUltimate()
    return self.UltimateTab;
end
tinsert(copyfuncs, "GetUltimate");

function FrameLib:ToggleTab(target)
    local frame, frameName = self:GetFrameInfo(target);
    local tab = self:FindTab(frame);
    if ( tab ) then
        self.currentTab = tab;
        if ( self:IsVisible() ) then
            if ( frame:IsVisible() ) then
                HideUIPanel(self);
            end
        else
            ShowUIPanel(self);
        end
        self:ResetTabFrames();
    end
end
tinsert(copyfuncs, "ToggleTab");

local function HandlerFrame_OnShow(self)
    self:ResetTabFrames();
    return self.onshow and self.onshow(self);
end

function HandlerFrame_OnHide(self)
    return self.onhide and self.onhide(self);
end

function HandlerFrame_OnEvent(self, event, ...)
    if (event == "VARIABLES_LOADED") then
        self:UnregisterEvent("VARIABLES_LOADED");
        return self.onevent and self.onevent(self, event, ...);
    end
end

function FrameLib:CreateFrameHandler(frameName, icon, title, toggle, onshow, onhide, onvarload)
    local frame = CreateFrame("FRAME", frameName, UIParent, "ButtonFrameTemplate");
    self:Embed(frame);

    -- Standard options
    frame:Hide();
    frame:SetToplevel(true);
    frame:EnableMouse(true);
    frame:SetMovable(true);
    ButtonFrameTemplate_HideButtonBar(frame);

    -- Act like Blizzard windows
    UIPanelWindows[frameName] = { area = "left", pushable = 6 };
    -- Close with escape key
    tinsert(UISpecialFrames, frameName);

    _G[frameName.."Portrait"]:SetTexture(icon);
    _G[frameName.."TitleText"]:SetText(title);

    -- set up some frame local values
    frame.name = frameName;
    frame.toggle = toggle;

    frame.maxTabWidth = frame:GetWidth() / 3;

    if (onvarload) then
        frame.onevent = onvarload;
        frame:SetScript("OnEvent", HandlerFrame_OnEvent);
        frame:RegisterEvent("VARIABLES_LOADED");
    end

    frame.onshow = onshow;
    frame:SetScript("OnShow", HandlerFrame_OnShow);

    frame.onhide = onhide;
    frame:SetScript("OnHide", HandlerFrame_OnHide);

    return frame;
end

-- Based on code from the LibStub wiki page
FrameLib.previousClients = FrameLib.previousClients or {};
function FrameLib:Embed(target)
    for _,name in pairs(copyfuncs) do
        target[name] = FrameLib[name];
    end
    FrameLib.previousClients[target] = true;
    target.ManagedFrames = target.ManagedFrames or {}
    target.Tabs = target.Tabs or {}
end

for target,_ in pairs(FrameLib.previousClients) do
    FrameLib:Embed(target)
end
