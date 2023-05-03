--[[
Name: LibTabbedFrame-1.0
Maintainers: Sutorix <sutorix@hotmail.com>
Description: A library to handle Player sized frames with tabs.
Copyright (c) by The Software Cobbler
Licensed under a Creative Commons "Attribution Non-Commercial Share Alike" License
--]]

local MAJOR_VERSION = "LibSideTabFrame-1.0"
local MINOR_VERSION = 90000 + tonumber(("1000"):match("%d+"))

if not LibStub then error(MAJOR_VERSION .. " requires LibStub") end

local SideTabLib, oldLib = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not SideTabLib then
	return
end

local copyfuncs = {};

function SideTabLib:GetFrameInfo(f)
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

local function SideTab_OnClick(self)
	if ( self.parent.currentTab ~= self ) then
		local lasttab = self.parent.currentTab;
		if ( lasttab ) then
			lasttab:SetChecked(false);
		end
		self.parent.currentTab = self;
	end
	self:SetChecked(true);

	if (self.onclick) then
		self.onclick(self, self.name);
	end
end

function SideTabLib:UpdateTabFrame(tab)
	tab:ClearAllPoints();
	if ( self.lastTabFrame ) then
		tab:SetPoint("TOPLEFT", self.lastTabFrame, "BOTTOMLEFT", 0, -10);
	else
		tab:SetPoint("TOPLEFT", self, "TOPRIGHT", 0, -13);
	end
	self.lastTabFrame = tab;
end
tinsert(copyfuncs, "UpdateTabFrame");

function SideTabLib:ResetTabFrames()
	self.lastTabFrame = nil;
	if ( self.FirstAmongTabs ) then
		self:UpdateTabFrame(self.FirstAmongTabs);
	end
	for id,tab in ipairs(self.TabFrames) do
		if (#self.TabFrames > 1) then
			tab:Show();
		else
			tab:Hide();
		end
		if ( not tab.first and not tab.ultimate ) then
			self:UpdateTabFrame(tab);
		end
	end
	if ( self.UltimateTab ) then
		self:UpdateTabFrame(self.UltimateTab);
	end
end
tinsert(copyfuncs, "ResetTabFrames");

function SideTabLib:FindTab(target)
	for _,tab in ipairs(self.TabFrames) do
		if ( target == tab or target == tab.name ) then
			return tab;
		end
	end
end
tinsert(copyfuncs, "FindTab");

function SideTabLib:SelectTab(target)
	for _,tab in ipairs(self.TabFrames) do
		if ( target == tab or target == tab.name ) then
			self.currentTab = tab
			if ( not tab:GetChecked() ) then
				SideTab_OnClick(tab);
			end
		else
			tab:SetChecked(false);
		end
	end
end
tinsert(copyfuncs, "SelectTab");

function SideTabLib:HideTabs()
	for _,tab in ipairs(self.TabFrames) do
		tab:SetChecked(false);
		tab:Hide()
	end
end
tinsert(copyfuncs, "HideTabs");

function SideTabLib:MakePrimary(target)
	local tab = self:FindTab(target);
	if (tab) then
		tab.first = true;
		self.FirstAmongTabs = tab;
	end
end
tinsert(copyfuncs, "MakePrimary");

function SideTabLib:MakeUltimate(target)
	local tab = self:FindTab(target);
	if (tab) then
		tab.ultimate = true;
		self.UltimateTab = tab;
	end
end
tinsert(copyfuncs, "MakeUltimate");

function SideTabLib:CreateTab(tabtext, icon, onclick, tooltip)
	local _, n = self:GetFrameInfo(self);

	-- optimize if passed a string
	local id = #self.TabFrames+1;
	local framename = string.format(n.."Tab%d", id);
	local tabframe = CreateFrame("CheckButton", framename, self, "SpellBookSkillLineTabTemplate");

	tinsert(self.TabFrames, tabframe)

	tabframe.target = self
	tabframe.name = tabtext;
	tabframe.parent = self;
	tabframe.tooltip = tabtext;

	if ( tooltip ) then
		tabframe.tooltip = tooltip;
	end

	tabframe.onclick = onclick;
	tabframe:SetScript("OnClick", SideTab_OnClick);

	tabframe:SetID(id);
	tabframe:SetNormalTexture(icon);

	return tabframe;
end
tinsert(copyfuncs, "CreateTab");

function SideTabLib:GetSelected()
	if ( not self.currentTab and #self.TabFrames > 0) then
		self.currentTab = self.TabFrames[1]
	end

	return self.currentTab
end
tinsert(copyfuncs, "GetSelected");

function SideTabLib:HandleOnShow(selected)
	self:ResetTabFrames();
	self.currentTab = selected;
	self:SelectTab(self:GetSelected());
end
tinsert(copyfuncs, "HandleOnShow");

-- Based on code from the LibStub wiki page
SideTabLib.previousClients = SideTabLib.previousClients or {};
function SideTabLib:Embed(target)
	for _,name in pairs(copyfuncs) do
		target[name] = SideTabLib[name];
	end
	target.TabFrames = target.TabFrames or {};
	SideTabLib.previousClients[target] = true;
end

for target,_ in pairs(SideTabLib.previousClients) do
	SideTabLib:Embed(target)
end
