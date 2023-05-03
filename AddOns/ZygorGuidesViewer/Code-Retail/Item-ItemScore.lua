local ItemScore = ZGV.ItemScore

function ItemScore:SetDualWield()
	self.playerDualWield, self.playerDualTwohanders = ItemScore:CanPlayerDualWield()
end

-- checks if given character can dualwield
-- params:
--	name - string optional
--	spec - int optional
-- returns:
--	dualwield - boolean
--	titansgrip - boolean
function ItemScore:CanPlayerDualWield(name,spec)
	local playerclass = self.playerclass
	local playerspec = self.playerspec
	local playerlevel = self.playerlevel
	if name then
		local ruleset = self.ActiveRuleSets[name][spec]
		playerclass = ruleset.class
		playerlevel = ruleset.characterlevel
		playerspec = spec
	end
	if playerlevel>=10 then
		if playerclass=="DEATHKNIGHT" and playerspec==2 then-- Frost DK
			return true,false
		elseif playerclass=="ROGUE" then -- Rogue
			return true,false
		elseif playerclass=="DEMONHUNTER" then -- Demon Hunter
			return true,false
		elseif playerclass=="WARRIOR" and playerspec==2 and playerlevel>=14 then -- Fury Warriors
			return true,true
		elseif playerclass=="MONK" and playerspec==3 then -- Windwalker Monks
			return true,false
		elseif playerclass=="SHAMAN" and playerspec==2 then -- Enhancement Shaman
			return true,false
		elseif playerclass=="DRUID" and (playerspec==2 or playerspec==3) then -- Feral/Guardian Druid
			return true,false
		end
	end
	return false,false
end


-- checks what slots can this item be equipped to. automatically called as part of GetItemDetails, but may be called as standalone
-- params:
--	item - array - item object
-- returns:
--	first slot - int/false - main slot for this item
--	second slot - int/false - optional second slot for the item (offhand, rings, trinkets)
--	twohander - bool - is item twohander
local function get_slots_by_type(type)
	if type=="INVTYPE_WEAPON" then return INVSLOT_MAINHAND,INVSLOT_OFFHAND end
	if type=="INVTYPE_2HWEAPON" then return INVSLOT_MAINHAND,INVSLOT_OFFHAND end
	if type=="INVTYPE_FINGER" then return INVSLOT_FINGER1,INVSLOT_FINGER2 end
	if type=="INVTYPE_TRINKET" then return INVSLOT_TRINKET1,INVSLOT_TRINKET2 end
	if type=="INVTYPE_RANGED" then return INVSLOT_MAINHAND,false end
	if type=="INVTYPE_RANGEDRIGHT" then return INVSLOT_MAINHAND,false end
	if type=="INVTYPE_THROWN" then return INVSLOT_RANGED,false end
	return ItemScore.TypeToSlot[type], false
end

local rogue_offhand_only = {
	[0] = "AXE",
	[4] = "MACE",
	[7] = "SWORD",
	[13] = "FIST",
	}

function ItemScore:GetValidSlots(item,name,spec)
	if not item then return end

	local playerspec = self.playerspec
	local playerclass = self.playerclass
	local playerlevel = self.playerlevel
	local playerDualWield = self.playerDualWield
	local playerDualTwohanders = self.playerDualTwohanders
	if name and spec then
		local ruleset = self.ActiveRuleSets[name][spec]
		playerclass = ruleset.class
		playerlevel = ruleset.characterlevel
		playerspec = spec
		playerDualWield, playerDualTwohanders = ItemScore:CanPlayerDualWield(name,spec)
	end


	local s1, s2 = get_slots_by_type(item.type)

	if item.itemid==128908 then -- sigh, fury artefact needs special handling
		return s1, false, true -- main hand only, marked as two hander
	end

	-- handle special cases
	if (playerclass=="ROGUE" and playerspec==3) and item.type=="INVTYPE_WEAPON" and rogue_offhand_only[item.subclass] then -- rogue sub, non dagger 1 handed weapons are valid in offhand only
		return s2, false, false
	end
	if (playerclass=="ROGUE" and playerspec==2) and item.type=="INVTYPE_WEAPON" and item.subclass==15 then -- rogue outlaw, daggers are mainhand only for low levels
		return s2, playerlevel<10 and s1, false
	end
	if (playerclass=="SHAMAN" and playerspec==2) and item.type=="INVTYPE_WEAPON" and item.subclass==15 then -- enhancment shaman, daggers are offhand only for low levels
		return s2, playerlevel<20 and s1, false
	end

	if item.type=="INVTYPE_WEAPON" and playerDualWield then -- dual wield, 1 handed weapons are valid in offhand
		return s1, s2, false
	end
	if item.type=="INVTYPE_2HWEAPON" and playerDualTwohanders then -- titans grip, 2 handed weapons are valid in offhand
		return s1, s2, false -- also, report them as one handers for easier operations later
	end
	if item.type=="INVTYPE_2HWEAPON" or item.type=="INVTYPE_RANGED" or item.type=="INVTYPE_RANGEDRIGHT" then -- two handed items go into main hand slot
		return s1, false, true
	end
	if item.type=="INVTYPE_WEAPON" and not playerDualWield then -- no dual wield, 1 handed weapons are valid only in mainhand
		return s1, false, false
	end

	-- rest is valid in proper slots
	return s1, s2, false
end

function ItemScore:SetData()
	-- Build simpler defaults table for use in options
	ItemScore.Defaults = {}
	for class,specs in pairs(ItemScore.rules) do
		ZGV.ItemScore.Defaults[class] = {}
		for spec,data in pairs(specs) do
			ZGV.ItemScore.Defaults[class][spec] = {}

			for name,v in pairs(data.stats) do
				table.insert(ZGV.ItemScore.Defaults[class][spec],{name=name,weight=v})
			end
			sort(ZGV.ItemScore.Defaults[class][spec],function(a,b) return a.name<b.name end)
		end
	end 
end

ItemScore:SetData()