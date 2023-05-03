--
-- Handle some stuff while we're in a Raid, and Fishing
--
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FL = LibStub("LibFishing-1.0");
local FWF = FBI.FWF;

local GSB = function(...) return FBI:GetSettingBool(...); end;

local MARGOSS_RETREAT = "Margoss's Retreat"

local CurLoc = GetLocale();

local RaidOptions = {
	["FishingRaid"] = {
		["text"] = FBConstants.CONFIG_FISHINGRAID_ONOFF,
		["tooltip"] = FBConstants.CONFIG_FISHINGRAID_INFO,
		["tooltipd"] = FBConstants.CONFIG_FISHINGRAID_INFOD,
		["v"] = 1,
		["default"] = true },
    ["FilterRaidLoot"] = {
        ["text"] = FBConstants.CONFIG_FILTERRAIDLOOT_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FILTERRAIDLOOT_INFO,
        ["v"] = 1,
        ["parents"] = { ["FishingRaid"] = "d", },
        ["default"] = true },
    ["RaidAction"] = {
        ["text"] = FBConstants.CONFIG_RAIDACTION_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_RAIDACTION_INFO,
        ["v"] = 1,
        ["parents"] = { ["FishingRaid"] = "d", },
        ["default"] = true },
    ["WatchRaidCurrency"] = {
        ["text"] = FBConstants.CONFIG_RAIDWATCH_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_RAIDWATCH_INFO,
        ["v"] = 1,
        ["parents"] = { ["FishingRaid"] = "d", },
        ["default"] = true },
    ["WatchQuestsOnLocation"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHLOCATION_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHLOCATION_INFO,
        ["v"] = 1,
        ["parents"] = { ["WatchRaidCurrency"] = "d", ["FishingRaid"] = "d", },
        ["default"] = true },
    }

local RaidCurrency = {}
RaidCurrency[146848] = {
	["enUS"] = "Fragmented Enchantment",
	-- zone = "Azsuna",
	limit = 100
};

RaidCurrency[146959] = {
	["enUS"] = "Corrupted Globule",
    -- zone = "Val'sharah",
	limit = 100
};

RaidCurrency[146960] = {
	["enUS"] = "Ancient Totem Fragment",
	-- zone = "Thunder Totem",
	limit = 100
};

RaidCurrency[146961] = {
	["enUS"] = "Shiny Bauble",
    -- zone = "Stormheim",
	limit = 100
};

RaidCurrency[146962] = {
	["enUS"] = "Golden Minnow",
	-- zone = "Suramar",
	limit = 100
};

RaidCurrency[146963] = {
	["enUS"] = "Desecrated Seaweed",
	-- zone = "Broken Shore",
	limit = 100
};

RaidCurrency[138777] = {
	["enUS"] = "Drowned Mana",
	-- zone = "Dalaran (Broken Isles)",
	subzone = MARGOSS_RETREAT,
	limit = 100
};

local RaidBosses = {
	{
		["faction"] = 2097,
		["ruRU"] = "Илиссия Водная",
		["zhTW"] = "“活水”伊丽西娅",
		["frFR"] = "Ilyssia des Eaux",
		["itIT"] = "Ilyssia delle Acque",
		["deDE"] = "Ilyssia von den Wassern",
		["enGB"] = "Ilyssia of the Waters",
		["esES"] = "Ilyssia de las Aguas",
		["enUS"] = "Ilyssia of the Waters",
		["zhCN"] = "“活水”伊丽西娅",
		["ptBR"] = "Ilyssia das Águas",
		["koKR"] = "물의 일리시아",
		["area"] = 630,
		["currency"] = 146848,
		["fish"] = {
			["enUS"] = "Hatecoil Spearhead",
			["id"] = 146964,
			zone = "Azsuna",
		}
	},
	{
		["faction"] = 2098,
		["ruRU"] = "Хранительница Рейна",
		["zhTW"] = "守护者蕾娜",
		["frFR"] = "Gardienne Raynae",
		["itIT"] = "Custode Raynae",
		["deDE"] = "Hüterin Raynae",
		["enGB"] = "Keeper Raynae",
		["esES"] = "Guardiana Raynae",
		["enUS"] = "Keeper Raynae",
		["zhCN"] = "守护者蕾娜",
		["ptBR"] = "Guardiã Raynae",
		["koKR"] = "수호자 레이내",
		["area"] = 641,
		["currency"] = 146959,
		["fish"] = {
			["enUS"] = "Disgusting Ooze",
			["id"] = 146965,
			zone = "Val'sharah",
		}
	},
	{
		["faction"] = 2099,
		["ruRU"] = "Акуле Речной Рог",
		["zhTW"] = "阿库勒·河角",
		["frFR"] = "Akule Ruissecorne",
		["itIT"] = "Akule Corno Sinuoso",
		["deDE"] = "Akule Flusshorn",
		["enGB"] = "Akule Riverhorn",
		["esES"] = "Akule Cuerno de Río",
		["enUS"] = "Akule Riverhorn",
		["zhCN"] = "阿库勒·河角",
		["ptBR"] = "Akule Chifre do Rio",
		["koKR"] = "아쿨레 리버혼",
		["area"] = 750,
		["currency"] = 146960,
		["fish"] = {
			["enUS"] = "Water Totem Figurine",
			["id"] = 146966,
			zone = "Thunder Totem",
		}
	},
	{
		["faction"] = 2100,
		["ruRU"] = "Корбин",
		["zhTW"] = "科尔宾",
		["frFR"] = "Corbyn",
		["itIT"] = "Corbyn",
		["deDE"] = "Corbyn",
		["enGB"] = "Corbyn",
		["esES"] = "Corbyn",
		["enUS"] = "Corbyn",
		["zhCN"] = "科尔宾",
		["ptBR"] = "Corbyn",
		["koKR"] = "코르빈",
		["area"] = 634,
		["currency"] = 146961,
		["fish"] = {
			["enUS"] = "White Sparkly Bauble",
			["id"] = 146967,
			zone = "Stormheim",
		}
	},
	{
		["faction"] = 2101,
		["ruRU"] = "Ша'лет",
		["zhTW"] = "莎乐丝",
		["frFR"] = "Sha’leth",
		["itIT"] = "Sha'leth",
		["deDE"] = "Sha'leth",
		["enGB"] = "Sha'leth",
		["esES"] = "Sha'leth",
		["enUS"] = "Sha'leth",
		["zhCN"] = "莎乐丝",
		["ptBR"] = "Sha'leth",
		["koKR"] = "샤레스",
		["area"] = 680,
		["currency"] = 146962,
		["fish"] = {
			["enUS"] = "Glowing Fish Scale",
			["id"] = 146968,
			zone = "Suramar",
		}
	},
	{
		["faction"] = 2102,
		["ruRU"] = "Бесс",
		["zhTW"] = "英帕斯",
		["frFR"] = "Diablotus",
		["itIT"] = "Impus",
		["deDE"] = "Wichtlus",
		["enGB"] = "Impus",
		["esES"] = "Diablillus",
		["enUS"] = "Impus",
		["zhCN"] = "英帕斯",
		["ptBR"] = "Diabrius",
		["koKR"] = "임푸스",
		["area"] = 646,
		["currency"] = 146963,
		["fish"] = {
			["enUS"] = "Faintly Pulsing Felstone",
			["id"] = 146969,
			zone = "Broken Shore",
		}
	},
	{
		["faction"] = 1975,
		["ruRU"] = "Кудесник Маргосс",
		["zhTW"] = "咒法师马戈斯",
		["frFR"] = "Adjurateur Margoss",
		["itIT"] = "Evocatore Margoss",
		["deDE"] = "Beschwörer Margoss",
		["enGB"] = "Conjurer Margoss",
		["esES"] = "Conjurador Margoss",
		["enUS"] = "Conjurer Margoss",
		["zhCN"] = "咒法师马戈斯",
		["ptBR"] = "Conjurador Margoss",
		["koKR"] = "창조술사 마르고스",
		["area"] = 619,
		["currency"] = 138777,
		["fish"] = {
			["enUS"] = "Mark of Aquaos",
			["id"] = 141975,
			zone = "Dalaran (Broken Isles)",
			subzone = MARGOSS_RETREAT,
		}
	},
}

local lastday = 0
local bossadex = 0
local function CurrentBoss()
	local zone, subzone = FBI:GetCurrentMapIdInfo();

	if subzone == MARGOSS_RETREAT then
		return RaidBosses[7]
	else
		-- Set initial time window to server reset time on 2018/01/01 for each region, or 00:00 UTC if unknown.
		local region = GetCurrentRegion()
		local start_time
		if region == 1 then
			start_time = 1514818800    -- NA Realm; 2018/01/01 15:00 UTC
		elseif region == 2 then
			start_time = 1514768400    -- KR Realm, 2018/01/01 01:00 UTC (guess)
		elseif region == 3 then
			start_time = 1514793600    -- EU Realm, 2018/01/01 08:00 UTC
		elseif region == 4 then
			start_time = 1514768400    -- TW Realm, 2018/01/01 01:00 UTC
		elseif region == 5 then
			start_time = 1514768400    -- CN Realm, 2018/01/01 01:00 UTC (guess)
		else
			start_time = 1514764800    -- Unknown Region, set to 2018/01/01 00:00 UTC
		end

		-- Get number of whole days (rounded down) that have elapsed since the initial date/time above
		local days = math.floor((GetServerTime() - start_time) / 86400)

		bossadex = (days % 6) + 1
		if bossadex > 0 then
			return RaidBosses[bossadex]
		end
	end
end

local function CheckMagicFish()
	local button = _G['FishingActionButton'];
	local zone, subzone = FBI:GetCurrentMapIdInfo();

	return FL:HasBuff(button.spell) or subzone == "Margoss's Retreat";
end

-- Handle display of caught Pagle fish
local function DisplayRaidFish()
	if not GSB("WatchRaidCurrency") then
		return nil
	end

    if GSB("WatchQuestsOnLocation") then
        local continent = FL:GetCurrentMapContinent()
        if (continent ~= FBConstants.BROKEN_ISLES) then
            return nil
        end
    end

	local info = CurrentBoss()
	if info then
		local label = LFG_LIST_FRIEND;
		if not info[CurLoc] then
			if CurLoc == 'esMX' then
				info[CurLoc] = info.esES;
			else
				info[CurLoc] = info.enUS;
			end
		end
		if info then
			label = label.." "..BOSS.." "..info[CurLoc]
		end
        label = label..": "
		return FWF:DisplayFishLine(RaidCurrency, label, info['area'])
	end
end

-- Thank you, p3lim ExtraQuestButton! You're in the About box!
local visibilityState = '[extrabar][petbattle] hide; show'
local onAttributeChanged = [[
	if (name == 'item') then
		if (value and not self:IsShown() and not HasExtraActionBar()) then
			self:CallMethod('FadeIn')
		elseif(not value) then
			self:CallMethod('FadeOut')
			self:ClearBindings()
		end
	elseif (name == 'state-visible') then
		self:ClearBindings()
		if(value == 'show') then
			self:CallMethod('Update')

			local key = GetBindingKey('EXTRAACTIONBUTTON1')
			if (key) then
				self:SetBindingClick(1, key, self, 'LeftButton')
			end
		else
			self:CallMethod('FadeOut')
		end
	end
]]

local FBR = {}

local copyfuncs = {};

function FBR:BAG_UPDATE_COOLDOWN()
	if self.itemID then
		local start, duration, enable = GetItemCooldown(self.itemID)
		if(duration > 0) then
			self.Cooldown:SetCooldown(start, duration)
			self.Cooldown:Show()
		else
			self.Cooldown:Hide()
        end
	end
end
tinsert(copyfuncs, "BAG_UPDATE_COOLDOWN");

function FBR:BAG_UPDATE_DELAYED()
	self:Update()
	if (self:IsShown() and self.itemLink) then
		local count = GetItemCount(self.itemLink)
		self.Count:SetText(count and count > 1 and count or '')
	end
end

function FBR:PLAYER_REGEN_ENABLED(event)
	self:SetAttribute('item', self.attribute)
	self:UnregisterEvent(event)
    self:BAG_UPDATE_COOLDOWN()
    if not self.attribute then
        self:Hide();
    end
end
tinsert(copyfuncs, "PLAYER_REGEN_ENABLED");

function FBR:UPDATE_BINDINGS()
	if(self:IsShown()) then
		self:SetItem()
		self:SetAttribute('binding', GetTime())
	end
end
tinsert(copyfuncs, "UPDATE_BINDINGS");

function FBR:SetItem(itemLink, texture)
	if(HasExtraActionBar()) then
		return
	end

	if (itemLink) then
		self.Icon:SetTexture(texture)

		if(itemLink == self.itemLink and self:IsShown()) then
			return
		end

        _, self.itemID, self.itemName = FL:SplitLink(itemLink, true);
		self.itemLink = itemLink

		local count = GetItemCount(self.itemLink)
		self.Count:SetText(count and count > 1 and count or '')
    end

	local HotKey = self.HotKey
	local key = GetBindingKey('EXTRAACTIONBUTTON1')
	if (key) then
		HotKey:SetText(GetBindingText(key, 1))
		HotKey:Show()
	elseif (itemLink and ItemHasRange(itemLink)) then
		HotKey:SetText(RANGE_INDICATOR)
		HotKey:Show()
	else
		HotKey:Hide()
	end

	if (InCombatLockdown()) then
		self.attribute = self.itemName
		self:RegisterEvent('PLAYER_REGEN_ENABLED')
	else
		self:SetAttribute('item', self.itemName)
		self:BAG_UPDATE_COOLDOWN()
	end
end
tinsert(copyfuncs, "SetItem");

function FBR:RemoveItem()
	if(InCombatLockdown()) then
		self.attribute = nil
		self:RegisterEvent('PLAYER_REGEN_ENABLED')
	else
		self:SetAttribute('item', nil)
	end
end
tinsert(copyfuncs, "RemoveItem");

function FBR:FadeIn()
	if not self:IsShown() then
		self:Show()
		self.Outro:Stop()
		self.Intro:Play()
	end
end
tinsert(copyfuncs, "FadeIn");

function FBR:FadeOut()
	if self:IsShown() then
		self.Intro:Stop()
		self.Outro:Play()
	end
end
tinsert(copyfuncs, "FadeOut");

function FBR:SafeHide()
	if not FL:InCombat() then
        self:Hide()
    else
		self.attribute = nil
		self:RegisterEvent('PLAYER_REGEN_ENABLED')
	end
end
tinsert(copyfuncs, "SafeHide");

function FBR:Clear()
	self.itemLink = nil;
	self.item = nil;
end
tinsert(copyfuncs, "Clear");

function FBR:Update()
	if CheckMagicFish() then
		local boss = CurrentBoss()
		if boss then
			local fishid = boss.fish.id;
			local numItems = GetItemCount(fishid)
			if numItems > 0 then
				local itemLink, texture = FL:GetItemInfoFields(fishid, FL.ITEM_LINK, FL.ITEM_ICON);
				self:SetItem(itemLink, texture)
				return
			end
		end
	end
	if (self:IsShown()) then
		self:FadeOut()
	end
end
tinsert(copyfuncs, "Update");

local function ClickHandled(self)
	self:Update()
end

function FBR:FishingAction_Toggle()
	if ( FishingActionButton:IsShown() ) then
		FishingActionButton:FadeOut()
	else
		FishingActionButton:FadeIn()
    end
end

local function FishingAction_OnHide(self)
	self:Clear()
    UIParent_ManageFramePositions();
end

local function FishingAction_OnShow(self)
    UIParent_ManageFramePositions();
end

-- Thanks bsmorgan!
local minRarity = 2;		-- uncommon
local function SilenceOfTheFishies(self, _, msg, author, ...)
	if not IsInRaid() or not FBI:ReadyForFishing() or author == UnitName("player") or string.match(msg,'Hbattlepet') then
		return false, msg, author, ...
	else
		local itemID = select(3, string.find(msg, "item:(%d+):"))
		local itemRarity = select(3, GetItemInfo(itemID))
		if (itemRarity < minRarity) then
			local lootmatch = string.format(LOOT_ITEM, author, "")
			if string.find(msg, lootmatch) then
				return true
			end
		end
		return false, msg, author, ...
	end
end

local RaidEvents = {}
RaidEvents["VARIABLES_LOADED"] = function(started)
    FBI.OptionsFrame.HandleOptions(GENERAL, nil, RaidOptions);
	FWF:RegisterLineHandler(DisplayRaidFish, FWF.HEADER)

	local button = _G['FishingActionButton']

	for _,name in pairs(copyfuncs) do
		button[name] = FBR[name];
	end

	button:SetPoint('CENTER', ExtraActionButton1)

	button:SetHighlightTexture([[Interface\Buttons\ButtonHilight-Square]])
	button:SetPushedTexture([[Interface\Buttons\CheckButtonHilight]])
	button:GetPushedTexture():SetBlendMode('ADD')

    button:SetFrameLevel(button:GetFrameLevel() + 2);
    button:SetScript("OnHide", FishingAction_OnHide)
    button:SetScript("OnShow", FishingAction_OnShow)
    button:SetScript('OnEvent', function(self, event, ...)
        if(self[event]) then
            self[event](self, event, ...)
        end
    end)
	RegisterStateDriver(button, 'visible', visibilityState)
	button:SetAttribute('_onattributechanged', onAttributeChanged)
	button:SetAttribute('type', 'item')
	button:SetScript("PostClick", ClickHandled);

	button:SetScript('OnEnter', function(self)
		if self.itemLink then
			GameTooltip:SetOwner(self, 'ANCHOR_LEFT');
			GameTooltip:SetHyperlink(self.itemLink);
		end
	end)
	button:SetScript('OnLeave', GameTooltip_Hide)
	button:SetClampedToScreen(true)
	button:SetToplevel(true)

	button:RegisterEvent('UPDATE_BINDINGS');
	button:RegisterEvent('BAG_UPDATE_COOLDOWN');
	button:RegisterEvent('BAG_UPDATE_DELAYED');

    -- Something's Fishy
    button.spell = 239673;

	button:SetItem()

    for _, info in ipairs(RaidBosses) do
        RaidCurrency[info['currency']]['area'] = info.area
    end

	-- Chat filter
	ChatFrame_AddMessageEventFilter("CHAT_MSG_LOOT", SilenceOfTheFishies)
end

RaidEvents[FBConstants.INVENTORY_EVT] = function(...)
	local button = _G['FishingActionButton'];
	local shown = button:IsShown()

	if CheckMagicFish() then
		local boss = CurrentBoss()
		if boss then
			local fishid = boss.fish.id;
			local numItems = GetItemCount(fishid)
			if numItems > 0 then
				if not shown then
					button:Update()
					button:FadeIn()
				end
				return
			end
		end
	end
	if shown then
		button:FadeOut()
	end
end

FBI.RegisterHandlers(RaidEvents);

