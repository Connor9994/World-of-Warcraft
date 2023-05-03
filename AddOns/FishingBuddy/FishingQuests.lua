-- Thanks to SOCD and QuickQuest for inspiration
local addonName, FBStorage = ...
local FBI = FBStorage;
local FBConstants = FBI.FBConstants;
local PagleFish = FBI.PagleFish;

local _

local LEW = LibStub("LibEventWindow-1.0");
local GSB = function(...) return FBI:GetSettingBool(...); end;

-- DragonFlight Quest Fish Tracking
QuestFish = {}
QuestFish[202072] = {
	["enUS"] = "Frigid Floe Fish",
	["limit"] = 100,
};
QuestFish[202073] = {
	["enUS"] = "Calamitous Carp",
	["limit"] = 25,
};
QuestFish[202074] = {
	["enUS"] = "Kingfin, the Wise Whiskerfish",
	["limit"] = 1,
};

-- Tuskarr Fishing Gear
QuestFish[200080] = {
	["enUS"] = "Draconium Nugget",
	["quests"] = {
		["70800"] = 3,
		["70801"] = 6,
	}
}
QuestFish[200081] = {
	["enUS"] = "Strong Seavine",
	["quests"] = {
		["70798"] = 3,
		["70799"] = 6,
	}
}
QuestFish[200082] = {
	["enUS"] = "Battered Imbu-made Net",
	["quests"] = {
		["70802"] = 3,
		["70803"] = 6,
	}
}
QuestFish[200083] = {
	["enUS"] = "Irontree Branch",
	["quests"] = {
		["70794"] = 3,
		["70795"] = 6,
	}
}
QuestFish[200084] = {
	["enUS"] = "Salinated Serevite",
	["quests"] = {
		["70797"] = 3,
		["70795"] = 6,
	}
}

local function GetNPCID()
	return tonumber(string.match(UnitGUID('npc') or UnitGUID('target') or '', 'Creature%-.-%-.-%-.-%-.-%-(.-)%-'))
end

local function procLunkerQuests(index, title, level, isTrivial, frequency, isRepeatable, isLegendary, ...)
	local isDaily = frequency == LE_QUEST_FREQUENCY_DAILY
	local isWeekly = frequency == LE_QUEST_FREQUENCY_WEEKLY

	local n = GetItemCount(title)
	if (n > 0) then
		C_GossipInfo.SelectAvailableQuest(index)
	end

	if ... then
		return procLunkerQuests(index + 1, ...)
	else
		return
	end
end

-- 109098
local _fqframe = LEW:CreateWindow()

_fqframe:Register('GOSSIP_SHOW', function()
	local npcID = GetNPCID()
	if (GSB("HandleQuests")) then

		if (npcID == 77733) then
			-- print ("Hi Ron Ashton!");
		elseif (npcID == 85984) then
			-- print ("Hi Nat Pagle at the shack!")
			if (GSB("AutoLunker")) then
				procLunkerQuests(1, C_GossipInfo.GetAvailableQuests() )
			end
		elseif (npcID == 108825) then
			local reputationInfo = C_GossipInfo.GetFriendshipReputation(1975);
			--  if max rank, don't do turn-in
			if (reputationInfo.nextThreshold  and GSB("DrownedMana")) then
				local mana = GetItemCount(138777);
				local options = C_GossipInfo.GetOptions()
				if (mana >= 10) then
					C_GossipInfo.SelectOption(options[5].gossipOptionID)
				elseif (mana >= 1) then
					C_GossipInfo.SelectOption(options[4].gossipOptionID)
				end
			end
		end
	end
end, true)

_fqframe:Register('QUEST_PROGRESS', function(_, ...)
	if (GSB("HandleQuests") and GSB("AutoLunker")) then
		local npcID = GetNPCID()

		if (npcID == 85984) then
			local title = GetTitleText()
			local n = GetItemCount(title)
			if (n > 0) then
				return CompleteQuest()
			end
		end
	end
end, true)

_fqframe:Register('QUEST_COMPLETE', function(_, ...)
	if (GSB("HandleQuests") and GSB("AutoLunker")) then
		local npcID = GetNPCID()

		if (npcID == 85984) then
			local title = GetTitleText()
			local n = GetItemCount(title)
			if (n > 0) then
				return GetQuestReward(1)
			end
		end
	end
end, true)

QuestEvents = {}
QuestEvents[FBConstants.ADD_FISHIE_EVT] = function(id, name, mapId, subzone, texture, quantity, quality, level, idx, poolhint)
	-- Play a sound on Nat Pagle rep
	if ( GSB("DingQuestFish") ) then
		local noises = false;
		if PagleFish[id] then
			noises = true
		end
		if QuestFish[id] then
			if QuestFish[id].quests or QuestFish[id].limit then
				local limit = 0;
				noises = false
				if QuestFish[id].quests then
					for quest, quest_limit in pairs(QuestFish[id].quests) do
						if not C_QuestLog.IsQuestFlaggedCompleted(quest) then
							limit = quest_limit
						end
					end
				elseif QuestFish[id].limit then
					limit = PagQuestFishleFish[id].limit
				end
				if limit > 0 then
					local fishcount = GetItemCount(id);
					local postfix = "("..fishcount.."/"..limit..")"
					FBI:QuestFishAlert(id, postfix)
					noises = fishcount >= limit
				end
			end
		end
		if noises then
			PlaySound(SOUNDKIT.IG_QUEST_LIST_COMPLETE, "master");
		end
	end
end

local QuestOptions = {
	["HandleQuests"] = {
		["text"] = FBConstants.CONFIG_HANDLEQUESTS_ONOFF,
		["tooltip"] = FBConstants.CONFIG_HANDLEQUESTS_INFO,
		["v"] = 1,
		["default"] = true },
	["AutoLunker"] = {
		["text"] = FBConstants.CONFIG_LUNKERQUESTS_ONOFF,
		["tooltip"] = FBConstants.CONFIG_LUNKERQUESTS_INFO,
		["v"] = 1,
		["default"] = true,
		["parents"] = { ["HandleQuests"] = "d", },
	},
	["DrownedMana"] = {
		["text"] = FBConstants.CONFIG_DROWNEDMANA_ONOFF,
		["tooltip"] = FBConstants.CONFIG_DROWNEDMANA_INFO,
		["v"] = 1,
		["default"] = false,
		["parents"] = { ["HandleQuests"] = "d", },
	},
	["DingQuestFish"] = {
		["text"] = FBConstants.CONFIG_DINGQUESTFISH_ONOFF,
		["tooltip"] = FBConstants.CONFIG_DINGQUESTFISH_INFO,
		["v"] = 1,
		["default"] = true,
		["parents"] = { ["HandleQuests"] = "d", },
	},
}

_fqframe:Register("VARIABLES_LOADED", function(_, ...)
	FBI.OptionsFrame.HandleOptions(GENERAL, nil, QuestOptions);
end, true)
FBI:RegisterHandlers(QuestEvents);

