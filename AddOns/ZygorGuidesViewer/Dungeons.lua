local name,ZGV = ...

local L = ZGV.L

local Dungeons = {}

ZGV.Dungeons = Dungeons

local DungeonProto = {}
function DungeonProto:GetName(difficulty)
	difficulty = difficulty or self.difficulty
	
	return L['dungeon_'..difficulty]:format(self.name)
end


local DungeonNamesToMapNames = {
	['Deadmines'] = "The Deadmines",
}
setmetatable(DungeonNamesToMapNames,{__index=function(t,map) return map end})  -- return the same name if no alias is found
Dungeons.DungeonNamesToMapNames  = DungeonNamesToMapNames


setmetatable(Dungeons,{
	__index=function(t,id)
		-- cache from game, to get all data in one place
		if not id then return end

		if type(id)=="string" and not Dungeons.hardcoded_dungeons[id] then return end   -- error("No function Dungeons."..id)   -- don't error, this breaks Spoo.

		local name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, min_ilevel, attunement_achieve, attunement_quest, attunement_queston, bonusRepAmount,isTimeWalker,minPlayers,name2, phase
		if Dungeons.hardcoded_dungeons[id] then
			local d=Dungeons.hardcoded_dungeons[id]
			name,expansionLevel,minLevel,min_ilevel,difficulty,phase = d.name,d.expansionLevel,d.minLevel,d.min_ilevel,d.difficulty,d.phase
		elseif GetLFGDungeonInfo then
			name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalker, name2, min_ilevel  = GetLFGDungeonInfo(id)
		end

		if name and typeID~=4 then
			local dungeon = {}

			dungeon.id = id
			dungeon.name = name
			dungeon.difficulty = difficulty
			dungeon.isHoliday = isHoliday
			dungeon.minLevel = minLevel
			dungeon.expansionLevel = expansionLevel
			dungeon.maxScaleLevel = math.max(Dungeons.ExpansionsLimits[expansionLevel],dungeon.minLevel) -- maxscale cannot be lower than minlevel (uldir hero/mythic reports being from exp6, so maxscale would be 110)
			dungeon.min_ilevel = min_ilevel
			dungeon.phase = phase

			if Dungeons.add_flags[id] then
				for flag,value in pairs(Dungeons.add_flags[id]) do
					dungeon[flag]=value
				end
			end

			dungeon.mythicplus = (Dungeons.CurrentExpansion == expansionLevel)

			if dungeon.mythicplusvalid then
				dungeon.minLevel = Dungeons.ExpansionsLimits[Dungeons.CurrentExpansion]
				dungeon.maxScaleLevel = math.max(Dungeons.ExpansionsLimits[Dungeons.CurrentExpansion],dungeon.minLevel)
				dungeon.mythicplus = true
			end

			dungeon.max_level = Dungeons.max_levels[id] -- used to disable lfr instances when outleveling them

			local map = ZGV.LibRover.data.MapIDsByName[DungeonNamesToMapNames[name]]
			dungeon.map=map

			rawset(t,id or 0,dungeon)
			setmetatable(dungeon,{__index=DungeonProto})
			return dungeon
		end
	end,
})

function Dungeons:Get(id)
	return self[id]
end

tinsert(ZGV.startups,{"Dungeons startup",function(self)
	Dungeons.CurrentExpansion = (GetClassicExpansionLevel and GetClassicExpansionLevel()) or (GetServerExpansionLevel and GetServerExpansionLevel()) or 1

	--if not LFDDungeonList then return end
	Dungeons.Faction = UnitFactionGroup("player")
	Dungeons.MaxLevelForLatestExpansion = (GetClassicExpansionLevel and GetClassicExpansionLevel()==1 and 70 or 60) or (GetMaxLevelForLatestExpansion and GetMaxLevelForLatestExpansion()) or 60

	for id=1,3000 do
		local cache_wasted = self[id]
	end
end})

ZGV.UTILS.Dungeons = {
	GetDungeonsByName = function()
		local bynames = {}
		for k,v in pairs(Dungeons) do if type(v)=="table" and v.name then
			bynames[v.name]=v
		end end
		return bynames
	end
}
