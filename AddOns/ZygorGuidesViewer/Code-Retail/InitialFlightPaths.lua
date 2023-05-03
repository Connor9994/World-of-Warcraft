local name,ZGV = ...

local function loadFlightPaths()
	if not ZGV.db.char.initialFlightPathsLoaded then
		local initialPaths = {
			["Human"] = {
				[2] = true, -- Stormwind
			},
			["Dwarf"] = {
				[6] = true, -- Ironforge
			},
			["NightElf"] = {
				[457] = true, -- Darnassus
			},
			["Gnome"] = {
				[6] = true, -- Ironforge
			},
			["Draenei"] = {
				[94] = true, -- The Exodar
			},
			["Worgen"] = {
				[457] = true, -- Darnassus
			},
			["Orc"] = {
				[23] = true, -- Orgrimmar
			},
			["Scourge"] = { -- Undead
				[11] = true, -- Undercity
			},
			["Tauren"] = {
				[22] = true, -- Thunder Bluff
			},
			["Troll"] = {
				[23] = true, -- Orgrimmar
			},
			["BloodElf"] = {
				[82] = true, -- Silvermoon City
			},
			["Goblin"] = {
				[23] = true, -- Orgrimmar
			},
			["VoidElf"] = {
				[4]=true, --Sentinel Hill, Westfall
				[6]=true, --Ironforge, Dun Morogh
				[8]=true, --Thelsamar, Loch Modan
				[2]=true, --Stormwind, Elwynn
				[589]=true, --Eastvale Logging Camp, Elwynn
				[12]=true, --Darkshire, Duskwood
			},
			["LightforgedDraenei"] = {
				[4]=true, --Sentinel Hill, Westfall
				[6]=true, --Ironforge, Dun Morogh
				[8]=true, --Thelsamar, Loch Modan
				[2]=true, --Stormwind, Elwynn
				[589]=true, --Eastvale Logging Camp, Elwynn
				[12]=true, --Darkshire, Duskwood
			},
			["DarkIronDwarf"] = {
				[4]=true, --Sentinel Hill, Westfall
				[6]=true, --Ironforge, Dun Morogh
				[8]=true, --Thelsamar, Loch Modan
				[2]=true, --Stormwind, Elwynn
				[589]=true, --Eastvale Logging Camp, Elwynn
				[12]=true, --Darkshire, Duskwood
			},
			["KulTiran"] = {
				[4]=true, --Sentinel Hill, Westfall
				[6]=true, --Ironforge, Dun Morogh
				[8]=true, --Thelsamar, Loch Modan
				[2]=true, --Stormwind, Elwynn
				[589]=true, --Eastvale Logging Camp, Elwynn
				[12]=true, --Darkshire, Duskwood
			},
			["Mechagnome"] = {
				[4]=true, --Sentinel Hill, Westfall
				[6]=true, --Ironforge, Dun Morogh
				[8]=true, --Thelsamar, Loch Modan
				[2]=true, --Stormwind, Elwynn
				[589]=true, --Eastvale Logging Camp, Elwynn
				[12]=true, --Darkshire, Duskwood
			},
			["Nightborne"] = {
				[354]=true, --The Mor'Shan Ramparts, Ashenvale
				[356]=true, --Silverwind Refuge, Ashenvale
				[25]=true, --The Crossroads, Northern Barrens
				[23]=true, --Orgrimmar, Durotar
				[22]=true, --Thunder Bluff, Mulgore
				[80]=true, --Ratchet, Northern Barrens
			},
			["HighmountainTauren"] = {
				[354]=true, --The Mor'Shan Ramparts, Ashenvale
				[356]=true, --Silverwind Refuge, Ashenvale
				[25]=true, --The Crossroads, Northern Barrens
				[23]=true, --Orgrimmar, Durotar
				[22]=true, --Thunder Bluff, Mulgore
				[80]=true, --Ratchet, Northern Barrens
			},
			["MagharOrc"] = {
				[354]=true, --The Mor'Shan Ramparts, Ashenvale
				[356]=true, --Silverwind Refuge, Ashenvale
				[25]=true, --The Crossroads, Northern Barrens
				[23]=true, --Orgrimmar, Durotar
				[22]=true, --Thunder Bluff, Mulgore
				[80]=true, --Ratchet, Northern Barrens
			},
			["ZandalariTroll"] = {
				[354]=true, --The Mor'Shan Ramparts, Ashenvale
				[356]=true, --Silverwind Refuge, Ashenvale
				[25]=true, --The Crossroads, Northern Barrens
				[23]=true, --Orgrimmar, Durotar
				[22]=true, --Thunder Bluff, Mulgore
				[80]=true, --Ratchet, Northern Barrens
			},
			["Vulpera"] = {
				[354]=true, --The Mor'Shan Ramparts, Ashenvale
				[356]=true, --Silverwind Refuge, Ashenvale
				[25]=true, --The Crossroads, Northern Barrens
				[23]=true, --Orgrimmar, Durotar
				[22]=true, --Thunder Bluff, Mulgore
				[80]=true, --Ratchet, Northern Barrens
			},
			-- Nothing set for Pandaren because they are a special case.
		}
		
		local classDisplayName, class, classID = UnitClass("player")
		local raceName, raceID = UnitRace("player")
		local englishFaction, localizedFaction = UnitFactionGroup("player")
		
		-- Special handling for Pandaren: They start neutral, and select a faction later.
		if raceID == "Pandaren" then
			if englishFaction == "Neutral" then
				-- Wait for player to select the Pandaren's faction.
				ZGV:DelayedRun("NEUTRAL_FACTION_SELECT_RESULT", function()
					local englishFaction, localizedFaction = UnitFactionGroup("player")

					
					-- Assuming Pandaren start similar to Worgen and Goblins.
					if englishFaction == "Alliance" then
						ZGV.db.char.taxis = {
							[2] = true, -- Stormwind
						}
						ZGV.db.char.initialFlightPathsLoaded = true
					elseif englishFaction == "Horde" then
						ZGV.db.char.taxis = {
							[23] = true, -- Orgrimmar
						}
						ZGV.db.char.initialFlightPathsLoaded = true
					else
						-- TODO: This actually happens, figure out the proper way to handle this. ~~Jeremiah
						--error("Setting up initial flight points for Pandaren failed, please report to dev team (InitialFlightPaths.lua). (faction: "..englishFaction..")")
					end
				end)
			elseif englishFaction == "Alliance" then
				initialPaths["Pandaren"] = {
					[2] = true, -- Stormwind
				}
			elseif englishFaction == "Horde" then
				initialPaths["Pandaren"] = {
					[23] = true, -- Orgrimmar
				}
			end
		end
		
		if class == "DEATHKNIGHT" then
			-- Death knights have their own starting experience
			-- Currently assuming Death Knights start similar to pandaren ~~ Jeremiah
			if englishFaction == "Alliance" then
				initialPaths[raceID] = {
					[2] = true, -- Stormwind
				}
			elseif englishFaction == "Horde" then
				initialPaths[raceID] = {
					[23] = true, -- Orgrimmar
				}
			end
		end

		if initialPaths[raceID] then
			for i,v in pairs(initialPaths[raceID]) do
				ZGV.db.char.taxis[i] = true
			end
			ZGV.db.char.initialFlightPathsLoaded = true
		else
			ZGV:Debug("Missing initial flight paths for race: %s",raceID)
		end

		initialPaths = nil
	end
end

tinsert(ZGV.startups, {"InitialFlightPaths loading",loadFlightPaths})
