--- Keep track of all the fishies and their Locations
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

local FL = LibStub("LibFishing-1.0");

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local zmto = function(...) return FBI:ZoneMarkerTo(...); end;
local zmex = function(...) return FBI:ZoneMarkerEx(...); end;

FishingLocations = {}
FishingLocations.lines = {}
FishingLocations.count = 1;
FishingLocations.collapsed = 0;

--
-- #####	  X	 X		 X
--							level
--				 expanded
--		 collapsible
--
-- number * 1000
--		 negative --> zone marker
--		 positive --> fish

-- level is 0 for zones
-- level is 1 for subzones, or 0 if not showing zones
-- level is 2 for fish, or 1 if not showing zones

function FishingLocations:pack(zonemarker, id, collapsible, expanded, level)
    local val;
    if ( zonemarker > 0 ) then
        val = zonemarker;
    else
        val = id;
    end
    val = val * 10 + level;
    val = val * 10 + collapsible;
    val = val * 10 + expanded;		 -- expanded
    if ( zonemarker > 0 ) then
        val = val * -1;
    end
    return val;
end

function FishingLocations:unpack(marker)
    if ( not marker ) then
        return 0, 0, 0, 0, 0;
    end
    local val = marker;
    if ( val < 0 ) then
        val = val * -1;
    end
    local subzone, id, collapsible, expanded, level;
    local mod = math.fmod;
    expanded = mod(val, 10);
    val = floor(val / 10);
    collapsible = mod(val, 10);
    val = floor(val / 10);
    level = mod(val, 10);
    val = floor(val / 10);
    if ( marker < 0 ) then
        return val, 0, collapsible, expanded, level;
    else
        return 0, val, collapsible, expanded, level;
    end
end

function FishingLocations:togglemarker(marker)
    local z,i,c,e,l = self:unpack(marker);
    e = 1 - e;
    return self:pack(z,i,c,e,l);
end

function FishingLocations:MakeFishRecord(line, zid, fid, collapsible, level)
    self.lines[line] = self:pack(zid, fid, collapsible, collapsible, level);
end

function FishingLocations:FishiesChanged()
    local fishcount = table.getn(FBI.SortedFishies);
    local line = 1;

    for i=1,fishcount,1 do
        local fishid = FBI.SortedFishies[i].id;
        local locsort = {};
        for idx,count in pairs(FBI.ByFishie[fishid]) do
            local info = {};
            info.marker = idx;
            info.count = count;
            tinsert(locsort, info);
        end
        self:MakeFishRecord(line, 0, fishid, 1, 0);
        line = line + 1;
        FBI:FishSort(locsort);
        for j=1,table.getn(locsort),1 do
            self:MakeFishRecord(line, locsort[j].marker, 0, 0, 1);
            line = line + 1;
        end
    end
    self.count = line;
end

function FishingLocations:FishCount(idx)
    local count = 0;
    local total = 0;
    local fh = FishingBuddy_Info["FishingHoles"];
    if ( fh[idx] ) then
        for _,val in pairs(fh[idx]) do
            count = count + 1;
            total = total + val;
        end
    end
    return count, total;
end

function FishingLocations:BothLocationsChanged()
    local loc = GetLocale();
    local fh = FishingBuddy_Info["FishingHoles"];
    local ff = FishingBuddy_Info["Fishies"];
    local sorted = FBI.SortedZones;
    local line = 1;
    local zonecount = table.getn(sorted);
    for i=1,zonecount,1 do
        local zone = sorted[i];
        local mapId = FBI.MappedZones[zone];
        if ( mapId ) then
            local addedzone = false;
            local subsorted = FBI.SortedByZone[zone];
            local subcount = table.getn(subsorted);
            for s=1,subcount,1 do
                local subzone = subsorted[s];
                local where = FBI:GetZoneIndex(mapId, subzone, true);
                local count, total = self:FishCount(where);
                if ( total > 0 ) then
                    if ( not addedzone ) then
                        self:MakeFishRecord(line, zmto(mapId, 0), 0, 1, 0);
                        line = line + 1;
                        addedzone = true;
                    end
                    if ( fh[where] ) then
                        self:MakeFishRecord(line, where, 0, 1, 1);
                        line = line + 1;
                        local fishsort = {};
                        for fishid,fishcount in pairs(fh[where]) do
                            local info = {};
                            info.id = fishid;
                            _, _, _, _, _, info.text, _ = FBI:GetFishie(fishid, 1);
                            info.count = fishcount;
                            tinsert(fishsort, info);
                        end
                        FBI.FishSort(fishsort);
                        for j=1,table.getn(fishsort),1 do
                            local id = fishsort[j].id;
                            self:MakeFishRecord(line, 0, id, 0, 2);
                            line = line + 1;
                        end
                    end
                end
            end
        end
    end
    self.count = line;
end

function FishingLocations:SubZonesChanged()
    local loc = GetLocale();
    local fh = FishingBuddy_Info["FishingHoles"];
    local ff = FishingBuddy_Info["Fishies"];
    local line = 1;
    local zonecount = table.getn(FBI.SortedSubZones);
    for i=1,zonecount,1 do
        local subzone = FBI.SortedSubZones[i];
        local ztab = FBI.SubZoneMap[subzone];
        if ( ztab ) then
            local oneidx;
            local uniquify = {};
            local fishsort = {};
            for idx,_ in pairs(ztab) do
                if ( fh[idx] ) then
                    oneidx = idx;
                    for fishid,_ in pairs(fh[idx]) do
                        if ( not uniquify[fishid] ) then
                            local _, _, _, _, _, name, _ = FBI:GetFishie(fishid, 1);
                            tinsert(fishsort, { id=fishid, text=name });
                            uniquify[fishid] = 1;
                        end
                    end
                end
            end
            if ( oneidx ) then
                self:MakeFishRecord(line, oneidx, 0, 1, 0);
                line = line + 1;
                FBI.FishSort(fishsort);
                for j=1,table.getn(fishsort),1 do
                    local id = fishsort[j].id;
                    self:MakeFishRecord(line, 0, id, 0, 1);
                    line = line + 1;
                end
            end
        end
    end
    self.count = line;
end

function FishingLocations:LinesChanged()
    if ( FBI:GetSettingBool("GroupByLocation") ) then
        if ( FBI:GetSettingBool("ShowLocationZones") ) then
            self:BothLocationsChanged();
        else
            self:SubZonesChanged();
        end
    else
        self:FishiesChanged();
    end
    for i=self.count,table.getn(self.lines) do
        self.lines[i] = 0;
    end
    FishingLocationsFrame.valid = true;
end

function FishingLocations:GetVisible(index)
    -- get the visible line at index
    local idx = self:GetLineIndex(index)
    if idx < self.count then
        return self.lines[idx]
    else
        return 0
    end
end

function FishingLocations:GetLineIndex(index)
    local skipping = false;
    local skiplevel = 0;
    local line = 0;
    for idx=1,self.count,1 do
        local info = self.lines[idx];
        if ( info and info ~= 0 ) then
            local zid,fid,c,e,level = self:unpack(info);
            if skipping and level <= skiplevel then
                skipping = false
            end
            if not skipping then
                if c == 1 and e == 0 then
                    skipping = true
                    skiplevel = level
                end
                line = line + 1
            end
            if line == index then
                return idx
            end
        end
    end
    return line
end

function FishingLocations:Lines()
    -- get the number of lines to be shown
    return self:GetLineIndex(0)
end

function FishingLocations:Toggle(index)
    -- toggle the expansion of the specified visible line
    local idx = self:GetLineIndex(index)
    if idx < self.count then
        self.lines[idx] = self:togglemarker(self.lines[idx])
        EventRegistry:TriggerEvent("FishingLocatons.Update")
    end
end

function FishingLocations:SetExpandCollapse(value)
    if value then
        value = 1
    else
        value = 0
    end
    for idx=1,self.count,1 do
        local check = self.lines[idx];
        if ( check ~= 0 ) then
            local e;
            local z,i,c,_,l = unpack(check);
            e = value;
            self.lines[idx] = pack(z,i,c,e,l);
        end
    end
end

FishingLocationsMixin = {}

function FishingLocationsMixin:OnLoad()
end

function FishingLocationsMixin:OnClick(button, down)
	if ( FishingLocationDetailFrame:IsShown() and (GetSelectedFaction() == self.index) ) then
		PlaySound(SOUNDKIT.IG_CHARACTER_INFO_CLOSE);
		FishingLocationDetailFrame:Hide();
	else
		if ( self.hasRep ) then
			PlaySound(SOUNDKIT.IG_CHARACTER_INFO_OPEN);
			SetSelectedFaction(self.index);
			FishingLocationDetailFrame:Show();
		end
	end
end

function FishingLocationsMixin:OnEnter()
    if( GameTooltip.locbutfini ) then
        return;
    end
    if ( self.item or self.tooltip ) then
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
    end
    if( self.item or self.tooltip ) then
        if ( self.item and self.item ~= "" ) then
            if ( FL:IsLinkableItem(self.item) ) then
                GameTooltip:SetHyperlink("item:"..self.item);
            else
                local tip = {};
                tip[1] = self.name;
                tip[2] = { FBConstants.NOTLINKABLE, "ff"..FL.COLOR_HEX_RED };
                if ( self.tooltip ) then
                    if ( type(self.tooltip) == "table" ) then
                        for _,l in pairs(self.tooltip) do
                            tinsert(tip, l);
                        end
                    else
                        tinsert(tip, self.tooltip);
                    end
                end
                self.tooltip = tip;
                self.item = nil;
            end
        end
        if ( self.tooltip ) then
            FL:AddTooltip(self.tooltip);
        end
    end
    if ( self.item or self.tooltip or self.tipinfo ) then
        GameTooltip.locbutfini = 1;
        GameTooltip:Show();
    end
end

function FishingLocationsMixin:OnLeave()
    if( self.item or self.tooltip ) then
        GameTooltip:Hide();
    end
    GameTooltip.locbutfini = nil;
end

function FBI:FishCount(idx)
    return FishingLocations:FishCount(idx)
end
