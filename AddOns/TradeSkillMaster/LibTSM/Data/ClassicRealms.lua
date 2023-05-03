-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ClassicRealms = TSM.Init("Data.ClassicRealms") ---@class Data.ClassicRealms



-- ============================================================================
-- Classic Realm Data
-- ============================================================================

-- Generated with the following query:
-- SELECT TRIM(TRAILING '-Alliance' FROM r.localizedName) as localizedName, g.value
-- FROM RealmsClassic r INNER JOIN RegionsClassic g ON g.id = r.regionId
-- WHERE r.localizedName LIKE '%-Alliance';
local CLASSIC_REALM_INFO = {
	["Amnennar"] = { region = "EU" },
	["Ashbringer"] = { region = "EU" },
	["Auberdine"] = { region = "EU" },
	["Bloodfang"] = { region = "EU" },
	["Хроми"] = { region = "EU" },
	["Dragon's Call"] = { region = "EU" },
	["Dreadmist"] = { region = "EU" },
	["Everlook"] = { region = "EU" },
	["Finkle"] = { region = "EU" },
	["Firemaw"] = { region = "EU" },
	["Пламегор"] = { region = "EU" },
	["Flamelash"] = { region = "EU" },
	["Gandling"] = { region = "EU" },
	["Gehennas"] = { region = "EU" },
	["Golemagg"] = { region = "EU" },
	["Hydraxian Waterlords"] = { region = "EU" },
	["Judgement"] = { region = "EU" },
	["Lakeshire"] = { region = "EU" },
	["Lucifron"] = { region = "EU" },
	["Mirage Raceway"] = { region = "EU" },
	["Mograine"] = { region = "EU" },
	["Nethergarde Keep"] = { region = "EU" },
	["Noggenfogger"] = { region = "EU" },
	["Patchwerk"] = { region = "EU" },
	["Pyrewood Village"] = { region = "EU" },
	["Razorfen"] = { region = "EU" },
	["Razorgore"] = { region = "EU" },
	["Рок-Делар"] = { region = "EU" },
	["Shazzrah"] = { region = "EU" },
	["Skullflame"] = { region = "EU" },
	["Stonespine"] = { region = "EU" },
	["Sulfuron"] = { region = "EU" },
	["Ten Storms"] = { region = "EU" },
	["Transcendence"] = { region = "EU" },
	["Venoxis"] = { region = "EU" },
	["Змейталак"] = { region = "EU" },
	["Zandalar Tribe"] = { region = "EU" },
	["Dragonfang"] = { region = "EU" },
	["Earthshaker"] = { region = "EU" },
	["Heartstriker"] = { region = "EU" },
	["Вестник Рока"] = { region = "EU" },
	["Mandokir"] = { region = "EU" },
	["Anathema"] = { region = "US" },
	["Arugal"] = { region = "US" },
	["Ashkandi"] = { region = "US" },
	["Atiesh"] = { region = "US" },
	["Azuresong"] = { region = "US" },
	["Benediction"] = { region = "US" },
	["Bigglesworth"] = { region = "US" },
	["Blaumeux"] = { region = "US" },
	["Bloodsail Buccaneers"] = { region = "US" },
	["Deviate Delight"] = { region = "US" },
	["Faerlina"] = { region = "US" },
	["Fairbanks"] = { region = "US" },
	["Felstriker"] = { region = "US" },
	["Grobbulus"] = { region = "US" },
	["Herod"] = { region = "US" },
	["Incendius"] = { region = "US" },
	["Kirtonos"] = { region = "US" },
	["Kromcrush"] = { region = "US" },
	["Kurinnaxx"] = { region = "US" },
	["Mankrik"] = { region = "US" },
	["Myzrael"] = { region = "US" },
	["Netherwind"] = { region = "US" },
	["Old Blanchy"] = { region = "US" },
	["Pagle"] = { region = "US" },
	["Rattlegore"] = { region = "US" },
	["Remulos"] = { region = "US" },
	["Skeram"] = { region = "US" },
	["Smolderweb"] = { region = "US" },
	["Stalagg"] = { region = "US" },
	["Sulfuras"] = { region = "US" },
	["Thalnos"] = { region = "US" },
	["Thunderfury"] = { region = "US" },
	["Westfall"] = { region = "US" },
	["Whitemane"] = { region = "US" },
	["Windseeker"] = { region = "US" },
	["Yojamba"] = { region = "US" },
	["Arcanite Reaper"] = { region = "US" },
	["Earthfury"] = { region = "US" },
	["Heartseeker"] = { region = "US" },
	["Loatheb"] = { region = "US" },
	["Sul'thraze"] = { region = "US" },
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function ClassicRealms.GetRegion(realmName)
	local info = CLASSIC_REALM_INFO[realmName]
	return info and info.region or nil
end
