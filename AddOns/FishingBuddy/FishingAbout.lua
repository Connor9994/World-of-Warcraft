-- Display some information about the people who helped
-- Some information about whom to thank
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

local credits = {};

-- Translation help
credits[FBConstants.ROLE_TRANSLATE_ZHTW] = {
	["machihchung"] = { "V0.9.9e4" },
	["Indra (Eastern.Stories)"] = { "v0.9.3", "v0.9.3i", "v0.9.4", "v0.9.4b", "v0.9.7d", },
	["Whocare"] = { "bahamut, an influential gamer forum in Taiwan 11/24/2007", },
	["smartdavislin"] = { "V1.0.2", },
	["Andyca"] = { "V1.0.7a" },
	["zhTW"] = { "V1.0.9e", },
	["titanium0107"] = { "V1.1e", "V1.2", "V1.2a", "V1.2c", "V1.2e", },
	["alec65 "] = { "V1.4u", },
	["gaspy10"] = { "V1.7.13c" }
};

credits[FBConstants.ROLE_TRANSLATE_ITIT] = {
	["bER92"] = { "V1.0.9f" },
	["Impaler"] = { "V1.0.9f" },
	["_YuSaKu_"] = { "V1.4d", },
};

credits[FBConstants.ROLE_TRANSLATE_ZHCN] = {
	["biAji"] = { "v0.9.3d" },
	["wowuicon"] = { "V0.9.9e4", "V1.0.2", },
	["yahooor"] = { "V0.9.9e4" },
	["foxdodo"] = { "V1.0.2" },
	["dh0000"] = { "V1.0.7a", "V1.0.7e", "V1.0.7h", },
	["yuningning520}"] = { "V1.5" },
};

credits[FBConstants.ROLE_TRANSLATE_DEDE] = {
	["Leidbringer"] = { "v0.9.7d", },
	["Chinkuwaila"] = { "v0.8.9", },
	["blackrat"] = { "v0.8.1d", },
	["RustyXXL"] = { "V1.0.4", },
	["Ithilrandir"] = { "V1.0.5", },
	["DirtyHarryGermany"] = { "V1.0.7h", "V1.0.9e", "V1.1e", "V1.2a", "V1.2c", "V1.2d", "V1.2f", "V1.2g", "v1.3c" },
	["Freydis88"] = { "V1.0.9e", },
	["Frontiii"] = { "V1.0.9e", },
};

credits[FBConstants.ROLE_TRANSLATE_FRFR] = {
	["krogh"] = { "v0.8.7", },
	["Corwin Whitehorn"] = { "v0.8.5", },
	["PierrotIV"] = { "V1.0.9e", },
	["boidan01"] = { "V1.0.9e", },
	["Matisk"] = { "V1.2a", "V1.4n" },
	["ckeurk"] = { "V1.4n" },
	["Mips"] = { "V1.4n" },
	["Dabeuliou"] = { "V1.4d", "V1.4g" },
	["gurki35 "] = { "V1.7.7" },
};

credits[FBConstants.ROLE_TRANSLATE_ESES] = {
	["Fili"] = { "v0.8.6b", "v0.9.7d", },
	["Valdesca"] = { "v0.9.9e6", },
	["Winderfind Drakkari"] = { "v1.0.7a" },
	["jmaister"] = { "V1.0.9e", },
	["karrash76"] = { "V1.2f", "V1.2g", },
	["Magire"] = { "V1.2j", },
};

credits[FBConstants.ROLE_TRANSLATE_KOKR] = {
	["maknae"] = { "V0.9.9e4" },
	["post"] = { "V0.9.9e4" },
	["seashop"] = { "V1.0.2" },
};

credits[FBConstants.ROLE_TRANSLATE_RURU] = {
	["StingerSoft"] = { "v0.9.8l", "V0.9.9e4" },
	["hellquister"] = { "V0.9.9e4" },
	["D_Angel"] = { "V0.9.9e4", "V1.0.2", "V1.1c" },
	["AlenaM"] = { "V1.0" },
	["KVVV"] = { "V1.0" },
	["frodo10"] = { "V1.0" },
	["DVK"] = { "V1.1f" },
	["Ant1dotE"] = { "V1.0.1", "V1.0.2", "V1.0.4" },
	["BloodyFess"] = { "V1.2d", "V1.2h" },
	["Turbid121"] = { "V1.2h", "V1.2i" },
	["PocoMaxa"] = { "V1.6b", },
	["Arrogant_Dreamer"] = { "V1.10..9", },
};

credits[FBConstants.ROLE_TRANSLATE_PTBR] = {
	["nomadbr"] = { "V1.0.7a" },
	["tiagopl"] = { "V1.2j", },
};

-- Testers/bug fixers
credits[FBConstants.ROLE_HELP_BUGS] = {
	["Goose"] = { "Fishing skill-up help", },
	["Moleculor"] = { "Fishing skill-up help", },
	["Shadrin"] = { "Text cleanup and bug fixes", },
	["ZeroKnowledge"] = { "Automatic lure improvements", },
	["dwex"] = { "Bug fixes", },
	["Saur"] = { "Nat Pagle's Fishing Terminator", },
	["Draznar"] = { "for the Fishing FAQ and style!", },
	["bsmorgan"] = { "Minimap button radius improvements", "Auto-lure improvments", "Skill-up tabulation", "Checking for usable toys." },
	["Wildcard_25"] = { "Fish watcher displays days!", },
	["Bodar"] = { "GetProfessions change in 4.0.6", "Watch Bobber fix", "Deprecated Blizz acution APIs", "Better Nat's quest handling", "Watch Bobber fix", },
	["Exaid"] = { "Fix for uncertain gear manager set on login" },
	["x87bliss"] = { "Help with tracking down exit with pole crashes" },
	["oscarucb"] = { "Help with the fix for repeat lure bug" },
	["callumw"] = { "Typo identification in fishing lib" },
	["Ninmah"] = { "Beta tester", "Auto-loot reset bug" },
	["WildCard_25"] = { "Fish Watcher update bug" },
	["Grizzly_UK"] = { "Forum support and understanding", "Debugging watcher location", "Tuskarr spear bug help!" },
	["Badmunkay@Shadow Council"] = { "Better Extravaganza time handling", },
	["esiemiat"] = { "Minimap icon move bug help", },
	["DirtyHarryGermany"] = { "Beta tester", },
	["Alindrios"] = { "Fish Watcher bugs", },
	["Dehvid"] = { "64-bit crash bug", },
	["ProphetV"] = { "Fish Watcher accounting errors", },
	["miss_kallistra"] = { "Pet handling fixes for Legion", },
	["Baconslicer"] = { "Lure managment bug"},
	["Gulduka"] = { "German language testing for LibBabble-SubZone" },
	["Mastigophoran"] = { "Help with Truthseeker/Oathbreaker issue" },
	["Resike"] = { "Help fix leaking globals, potentional taint hazards" },
	["HarlequinBonse"] = { "Found the Tuskarr spear bug!" },
    ["chadcloman"] = { "Most detailed bug ever!", },
    ["robgha01"] = { "No pets bug" },
    ["bolerro619"] = { "Titan and Broker issues", "Fix for max lure fix" },
	["Seamhas"] = { "Much help with rafts." },
	["Globe"] = { "https://www.townlong-yak.com/globe"},
	["Zwixx"] = { "Help with Classic skill fix" },
	["PierrotIV"] = { "Help with Classic skill fix" },
	["TheSpanishinq"] = { "SubZone fishing skill update" },
	["MisterFox9"] = { "Play nicely with other mouse watchers!" },
	["iWolf1976"] = { "Frame backdrop fix" },
	["javier_himura"] = { "Frame backdrop fix" },
	["Dakhran"] = { "Frame backdrop fix" },
	["RatiaSnowFur"] = { "Fix for Fishing skill lookup" },
	["CptTibas"] = { "Gossip options fix" },
	["hanzo79"] = { "Auto-interact value fix" },
	["Zilom"] = { "Fast loot addon compat fix" },
	["gryphon63"] = { "AboutBox alpha fixes", "Conjurer Margoss turn-in fix", },
	["jleafey"] = { "Typo hunting" },
	["Spiritwlf"] = { "Major fixes for Dragonflight, like, major!" },
};

-- Ideas and suggestions
credits[FBConstants.ROLE_HELP_SUGGESTIONS] = {
	["secutanudu"] = { "Turn on sound in background while fishing", },
	["Lufunpsy"] = { "Turn up particle density when fishing", "Turn on sound if it's off", },
	["mysticalos"] = { "Turn off PvP while fishing", },
	["Lrdx"] = { "Count tastyfish in your bag instead of as you catch them",
				 "Only fish in schools during Extravaganza", },
	["Alcasius"] = { "multi-machine database merge", },
	["SBaL"] = { "Mute everything but bobber sounds", },
	["Xantandor"] = { "More summary information while fishing", },
	["zino"] = { "Remove quest items from the list of things caught", },
	["Daisyvondoom"] = { "Separate out Pygmy fish from counts", },
	["Dark Imakuni"] = { "Save the show fish/locations choice",
						"Force item slot empty in ODF",
						"Titan Panel support",
						"Only show counts -- no percentages", },
	["LBlaze"] = { "Display both lifetime and current fish info in the watcher", },
	["Valzic"] = { "Save helm/cloak settings per outfit", "Show current skill level in watcher", },
	["KayJayDK"] = { "Remember tastyfish pool locations", },
	["Bruntlief"] = { "Track cycle fish", },
	["Buio"] = { "Show current zone in watcher", },
	["Tarklash"] = { "Minimap icon", },
	["Anakar"] = { "Elapsed fishing time", },
	["Vreejack"] = { "Gatherer integration", },
	["truefreak"] = { "Display total fish caught all time and this session", },
	["Yeoman and RamahP"] = { "Save fishing level information", },
	["RamahP"] = { "Lost fish count", },
	["Ravynne"] = { "ZOMG *all* the pets!", },
	["El's Extreme Anglin'"] = { "Subzone fishing levels", "Fishing skill up table" },
	["brykrys"] = { "Corpse Worm" },
	["Ross"] = { "Improved action button" },
	["p3lim"] = { "For the ExtraQuestButton addon!" },
    ["Zeglar"] = { "Raid Boss and server reset time" },
    ["bsmorgan"] = { "Group size specific locations for watcher.", "Classic specific TOC handling" },
    ["peterwooley"] = { "Mana turn-in gossip API fix." },
};

credits[FBConstants.ROLE_ADDON_AUTHORS] = {
	["x87bliss"] = { "FishWarden", },
	["Mundocani"] = { "Outfitter", },
	["The Cosmos Team"] = { "TackleBox", },
	["Impp"] = { "Impp's Fishing DB", },
	["Iriel"] = { "QuickWeaponSwap", "DevTools", },
	["Esamynn"] = { "Astrolabe", },
	["ckknight"] = { "LibTourist-3.0", "LibBabble-Zone-3.0", "LibCrayon-3.0", },
	["Arrowmaster"] = { "LibTourist-3.0", },
	["Odica_Jaedenar"] = { "LibTourist-3.0", },
	["Odica"] = { "LibTourist-3.0", },
	["Ackis"] = { "LibBabble-Zone-3.0", },
	["Nevcairiel"] = { "LibBabble-Zone-3.0", "LibStub", "LibBabble-SubZone-3.0", "CallbackHandler-1.0",  "HereBeDragons" },
	["Kaelten"] = { "LibStub", },
	["Ammo"] = { "LibStub", },
	["Cladhaire"] = { "LibStub", },
	["mikk"] = { "LibStub", "CallbackHandler-1.0", },
	["arith"] = { "LibBabble-SubZone-3.0", },
	["Dynaletik"] = { "LibBabble-SubZone-3.0", },
	["Tekkub"] = { "LibDataBroker-1.1", },
	["Cryect (cryect@gmail.com)"] = { "LibGraph-2.0", },
	["Xinhuan"] = { "LibGraph-2.0", },
	["KarlKFI"] = { "MobileMinimapButtons" },
	["endx7"] = { "LibPetJournal-2.0" },
};

local CREDITSKIP = 7;

local function UpdateCreditPanel(self, elapsed)
	if ( not self.started ) then
		self.started = true;
		self.fadestate = 5;
		self.fadevalue = 0;
		self.whatidx = 1;
		self.currenttime = math.random()*2.5 + elapsed + 0.5;
	end
	self.currenttime = self.currenttime - elapsed;
	if (self.currenttime > 0) then
		return;
	end

	if (self.fadestate == 0) then
		-- pick a new thing to display, and fade it in
		self.data = self.credits[self.idx]
		self.lines[1]:SetText(self.categories[self.data.title])
		self.lines[2]:SetText(self.data.who)
		local what = self.data.what[self.whatidx];
		if (string.sub(what,1,1) == "v") then
			what = "Version "..string.sub(what,2);
		elseif (string.sub(what,1,1) == "V") then
			what = "Version "..string.sub(what,2).." (CurseForge)";
		end

		self.lines[3]:SetText(what)
		self:SetHeight(self.lines[1]:GetHeight()*4)
		self:SetPoint("TOP", self.parent.Thanks, "BOTTOM", 0, -(self.offset-1)*self:GetHeight()-self.lines[1]:GetHeight());
		-- Fade in everything
		if ( self.fadevalue < 1.0) then
			self.fadevalue = self.fadevalue + 0.05
			self.currenttime = 0.1
		else
			self.fadestate = 1
			self.currenttime = 5.0 + math.random()*1.0;
			self.fadevalue = 1.0
		end
		for _,line in ipairs(self.lines) do
			line:SetAlpha(self.fadevalue)
		end
	elseif (self.fadestate == 1) then
		-- Pause for display
		-- check for detail change
		self.whatidx = self.whatidx + 1
		if ( self.data.what[self.whatidx] ) then
			self.fadestate = 2
		else
			self.idx = self.idx + CREDITSKIP
			if ( self.idx > #self.credits ) then
				self.idx = self.idx % CREDITSKIP
			end
			if ( self.idx == 0 ) then
				self.idx = 1
			end
			self.whatidx = 1
			self.fadestate = 4
		end
	elseif (self.fadestate == 2) then
		-- Fade out detail
		if ( self.fadevalue > 0.0) then
			self.fadevalue = self.fadevalue - 0.05
			if self.fadevalue < 0.0 then
				self.fadevalue = 0.0
			end
			self.currenttime = 0.1
		else
			self.fadestate = 3
			self.fadevalue = 0.0
		end
		self.lines[3]:SetAlpha(self.fadevalue);
	elseif (self.fadestate == 3) then
		-- Fade in detail
		self.lines[3]:SetText(self.data.what[self.whatidx])
		self.lines[3]:SetAlpha(self.fadevalue);
		if ( self.fadevalue < 1.0) then
			self.fadevalue = self.fadevalue + 0.05
			self.currenttime = 0.1
		else
			self.fadestate = 1
			self.currenttime = 5.0 + math.random()*1.0;
			self.fadevalue = 1.0
		end
	elseif (self.fadestate == 4) then
		-- Fade out everything
		if ( self.fadevalue > 0.0) then
			self.fadevalue = self.fadevalue - 0.05
			if self.fadevalue < 0.0 then
				self.fadevalue = 0.0
			end
			self.currenttime = 0.1
		else
			self.fadestate = 5
			self.fadevalue = 0.0
		end
		for _,line in pairs(self.lines) do
			line:SetAlpha(self.fadevalue)
		end
	elseif (self.fadestate == 5) then
		-- Pause after fading out
		self.fadestate = 0
		self.currenttime = math.random()*0.15;
	end
	-- all the reset times are offset
	self.currenttime = self.currenttime + elapsed;
end

local function MakeCreditPanel(parent, alignment, offset)
	local panel = CreateFrame("FRAME", nil, parent)
	panel.lines = {};
	local point = panel
	local where = "TOP"
	for _=1,3 do
		local line = panel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		line:SetPoint("TOPLEFT", point, where.."LEFT", 0, 0)
		line:SetPoint("TOPRIGHT", point, where.."RIGHT", 0, 0)
		tinsert(panel.lines, line)
		point = line
		where = "BOTTOM"
	end
	panel.display = {}
	panel.started = false
	panel.parent = parent
	panel:SetScript("OnUpdate", UpdateCreditPanel);
	panel:ClearAllPoints()
	panel.offset = offset
	panel:SetPoint("LEFT", alignment, "LEFT", 0, 0);
	panel:SetPoint("RIGHT", alignment, "RIGHT", 0, 0);
	return panel
end

local function AboutSetup(self)
	if (not self.Author) then
		self.Author = self:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		self.Author:SetPoint("TOP", self, "TOP", -4, 0)
		self.Author:SetPoint("LEFT", self, "LEFT", 0, 0)
		self.Author:SetPoint("RIGHT", self, "RIGHT", -48, 0)
		self.Author:SetText(FBConstants.AUTHOR)
		self.Author:Show()

		self.Copyright = self:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
		self.Copyright:SetPoint("TOP", self.Author, "BOTTOM", 0, -10)
		self.Copyright:SetPoint("LEFT", self, "LEFT", 0, 0)
		self.Copyright:SetPoint("RIGHT", self, "RIGHT", -48, 0)
		self.Copyright:SetJustifyH("CENTER")
		self.Copyright:SetText(FBConstants.COPYRIGHT)
		self.Copyright:Show()

		self.Thanks = self:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
		self.Thanks:SetPoint("TOP", self.Copyright, "BOTTOM", 0, -10)
		self.Thanks:SetPoint("LEFT", self, "LEFT", 0, 0)
		self.Thanks:SetPoint("RIGHT", self, "RIGHT", -48, 0)
		self.Thanks:SetJustifyH("CENTER")
		self.Thanks:SetText(FBConstants.THANKS)
		self.Thanks:Show()
		self.Thanks.idx = -1;

		self.categories = {}
		for what,_ in pairs(credits) do
			tinsert(self.categories, what)
		end
		self.credits = {}
		for idx,shownext in ipairs(self.categories) do
			for who,what in pairs(credits[shownext]) do
				tinsert(self.credits, { title=idx, who=who, what=what, sort=math.random() })
			end
		end

		self.Panels = {};
		for idx=1,5 do
			local panel = MakeCreditPanel(self, self.Thanks, idx)
			panel.idx = idx
			panel.credits = self.credits
			panel.categories = self.categories
			tinsert(self.Panels, panel)
		end

		-- Dump the storage, now that we have a better table
		credits = nil;
		table.sort(self.credits, function (a, b) return a.sort < b.sort; end)
		self:ClearAllPoints();
		self:SetAllPoints(FishingBuddyFrameInset);
	end
end

local AboutOptions = {
	["AboutFrame"] = {
		["button"] = "FishingAboutFrame",
		["setup"] = AboutSetup,
		["margin"] = { 32, 16 },
	},
};

local function OnEvent(self, _, ...)
	FBI.OptionsFrame.HandleOptions(FBConstants.ABOUT_TAB, "Interface\\Icons\\Inv_Misc_Questionmark", AboutOptions, nil, nil, true);
	self:UnregisterEvent("VARIABLES_LOADED");
end

local frame = CreateFrame("FRAME", "FishingAboutFrame", FishingBuddyFrame)
frame:SetScript("OnEvent", OnEvent)
frame:RegisterEvent("VARIABLES_LOADED")
