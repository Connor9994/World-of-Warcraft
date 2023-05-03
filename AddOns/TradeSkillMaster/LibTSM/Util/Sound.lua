-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Sound = TSM.Init("Util.Sound") ---@class Util.Sound
local L = TSM.Include("Locale").GetTable()
local NO_SOUND_KEY = "TSM_NO_SOUND" -- this can never change
---@alias SoundKey
---|'"TSM_NO_SOUND"'
---|'"AuctionWindowOpen"'
---|'"AuctionWindowClose"'
---|'"alarmclockwarning3"'
---|'"UI_AutoQuestComplete"'
---|'"TSM_CASH_REGISTER"'
---|'"HumanExploration"'
---|'"Fishing Reel in"'
---|'"LevelUp"'
---|'"MapPing"'
---|'"MONEYFRAMEOPEN"'
---|'"IgPlayerInviteAccept"'
---|'"QUESTADDED"'
---|'"QUESTCOMPLETED"'
---|'"UI_QuestObjectivesComplete"'
---|'"RaidWarning"'
---|'"ReadyCheck"'
---|'"UnwrapGift"'
---@type table<SoundKey,string>
local SOUNDS = {
	[NO_SOUND_KEY] = "<"..L["No Sound"]..">",
	["AuctionWindowOpen"] = L["Auction Window Open"],
	["AuctionWindowClose"] = L["Auction Window Close"],
	["alarmclockwarning3"] = L["Alarm Clock"],
	["UI_AutoQuestComplete"] = L["Auto Quest Complete"],
	["TSM_CASH_REGISTER"] = L["Cash Register"],
	["HumanExploration"] = L["Exploration"],
	["Fishing Reel in"] = L["Fishing Reel In"],
	["LevelUp"] = L["Level Up"],
	["MapPing"] = L["Map Ping"],
	["MONEYFRAMEOPEN"] = L["Money Frame Open"],
	["IgPlayerInviteAccept"] = L["Player Invite Accept"],
	["QUESTADDED"] = L["Quest Added"],
	["QUESTCOMPLETED"] = L["Quest Completed"],
	["UI_QuestObjectivesComplete"] = L["Quest Objectives Complete"],
	["RaidWarning"] = L["Raid Warning"],
	["ReadyCheck"] = L["Ready Check"],
	["UnwrapGift"] = L["Unwrap Gift"],
}
local SOUNDKITIDS = {
	["AuctionWindowOpen"] = 5274,
	["AuctionWindowClose"] = 5275,
	["alarmclockwarning3"] = 12889,
	["UI_AutoQuestComplete"] = 23404,
	["HumanExploration"] = 4140,
	["Fishing Reel in"] = 3407,
	["LevelUp"] = 888,
	["MapPing"] = 3175,
	["MONEYFRAMEOPEN"] = 891,
	["IgPlayerInviteAccept"] = 880,
	["QUESTADDED"] = 618,
	["QUESTCOMPLETED"] = 878,
	["UI_QuestObjectivesComplete"] = 26905,
	["RaidWarning"] = 8959,
	["ReadyCheck"] = 8960,
	["UnwrapGift"] = 64329,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Gets the key used to represent no sound.
---@return SoundKey @The key used to represent no sound
function Sound.GetNoSoundKey()
	return NO_SOUND_KEY
end

---Iterates over the available sounds.
---@return fun():SoundKey, string @An iterator with two fields, the sound key and a localized description
function Sound.Iterator()
	return pairs(SOUNDS)
end

---Plays a sound and flashes the client icon.
---@param soundKey SoundKey The sound key to play
function Sound.PlaySound(soundKey)
	if soundKey == NO_SOUND_KEY then
		-- do nothing
	elseif soundKey == "TSM_CASH_REGISTER" then
		PlaySoundFile("Interface\\Addons\\TradeSkillMaster\\Media\\register.mp3", "Master")
		FlashClientIcon()
	else
		PlaySound(SOUNDKITIDS[soundKey], "Master")
		FlashClientIcon()
	end
end
