local name,ZGV = ...
if not (ZGV and ZGV.ItemScore) then return end

-- GLOBAL Spoo

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall
local Enum = ZGV.Retrofit.Enum

local tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop=tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop

local ItemScore = ZGV.ItemScore
local Upgrades = {}
ItemScore.Upgrades = Upgrades
Upgrades.BagsItems = {}
Upgrades.ToastIconArray = {}
Upgrades.ToastNewUpgrades = {}
Upgrades.ToastExistingUpgrades = {}

local strip_link = ItemScore.strip_link

local ARTIFACT_MULTIPLIER = 2

local C_Container = ZGV.Retrofit.C_Container

Upgrades.EquippedItems = {
	[INVSLOT_MAINHAND] = {},
	[INVSLOT_OFFHAND] = {},
	[INVSLOT_HEAD] = {},
	[INVSLOT_NECK] = {},
	[INVSLOT_SHOULDER] = {},
	[INVSLOT_BACK] = {},
	[INVSLOT_CHEST] = {},
	[INVSLOT_WRIST] = {},
	[INVSLOT_HAND] = {},
	[INVSLOT_WAIST] = {},
	[INVSLOT_LEGS] = {},
	[INVSLOT_FEET] = {},
	[INVSLOT_FINGER1] = {},
	[INVSLOT_FINGER2] = {},
	[INVSLOT_TRINKET1] = {},
	[INVSLOT_TRINKET2] = {},
}

if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
	Upgrades.EquippedItems[INVSLOT_RANGED] = {}
end


local GREEN = "|cff00ff00"
local RED = "|cffff0000"

Upgrades.UniqueEquipped = {}

function Upgrades:ScoreEquippedItems(forced)
	if not ZGV.db.profile.autogear then return end -- disabled
	if Upgrades.StopScanning then return end	--if scanning needs to be paused
	if Upgrades.UpgradeQueueCount == 0 then table.wipe(Upgrades.ToastExistingUpgrades) Upgrades.forcefull = false end	--stop enforcing standard popup over floaties if there are no upgrades to be processed

	ZGV:Debug("&itemscore ScoreEquippedItems")
	table.wipe(Upgrades.UniqueEquipped)
	Upgrades.ScoredEquippedItems = false

	if UnitIsDeadOrGhost("player") then return end

	local skipped = false
	local bestgearsaved = ItemScore.character.gear[ItemScore.active_set]

	for slotID,v in pairs(Upgrades.EquippedItems) do 
		table.wipe(v)
		local itemid = GetInventoryItemID("player", slotID)
		local itemlink = GetInventoryItemLink("player", slotID)
		if itemid then
			if itemlink then
				local item = ItemScore:GetItemDetails(itemlink)
				itemlink = strip_link(itemlink)
				if item and itemlink then 
					local score,success,comment = ItemScore:GetItemScore(itemlink)
					local protected, protectedslot = ItemScore.QuestItem:IsProtectedQuestItem(itemlink)
					if protected then score = 999999 end

					if success then
						if item.quality==6 then
							ZGV:Debug("&itemscore SEI Artifact equipped")
							if not item.twohander then
								item.artifactscore = item.score * ARTIFACT_MULTIPLIER
							end
						end

						local itemdata = Upgrades.EquippedItems[slotID]
						itemdata.itemlink = itemlink
						itemdata.itemid = item.itemid
						itemdata.score = score
						itemdata.artifactscore = item.artifactscore
						itemdata.quality = item.quality
						itemdata.type = item.type

						bestgearsaved[slotID] = score

						ZGV:Debug("&itemscore SEI slot %d scored %d/%d",slotID,score,item.artifactscore)

						-- cache counts of unique-equipped items
						local family, _ = Upgrades:GetItemUniqueness(item.itemid)
						if (family or 0)>0 then Upgrades.UniqueEquipped[family]=(Upgrades.UniqueEquipped[family] or 0)+1 end
					end
				else
					skipped = true
				end
			else
				skipped = true
			end
		end
	end

	if not skipped then
		Upgrades.ScoredEquippedItems = true
		if ZGV.IsRetail then
			ItemScore.playeritemlvl = GetAverageItemLevel()
		end
		Upgrades.SBICounter = 0
		bestgearsaved.Scanned = true
		for spec,specdata in pairs(ItemScore.character.gear) do
			if spec<5 and ZGV.db.char["gear_"..spec.."_score"] then
				if not specdata.Scanned then -- if other specs are not scanned yet, push current gear
					for slot,score in pairs(bestgearsaved) do
						if tonumber(score) then ItemScore.character.gear[spec][slot] = score end
					end
				end
				ItemScore.character.gear[spec].Scanned = true
			end
		end
		Upgrades:ScanBagsForUpgrades(forced)
	else
		ZGV:Debug("&itemscore SEI missed some item")
		ZGV:Debug("&itemscore SEI NOT complete")
		if Upgrades.ScoreEquippedItemsTimer then
			ZGV:CancelTimer(Upgrades.ScoreEquippedItemsTimer)
		end
		Upgrades.ScoreEquippedItemsTimer = ZGV:ScheduleTimer(Upgrades.ScoreEquippedItems,1)
	end

	if not ZGV.db.char["gear_"..ItemScore.active_set.."_score"] then
		table.wipe(bestgearsaved)
	end

	ZGV:Debug("&itemscore SEI complete")
end

local unique_equip_families = ItemScore.Unique_Equipped_Families
function Upgrades:GetItemUniqueness(id)
	for family,fitems in pairs(unique_equip_families) do
		if fitems[id] then 
			return family,fitems[id]
		end
	end
	local fam,max = GetItemUniqueness(id)
	return fam,max
end

function Upgrades:CanUseUniqueItem(itemlink,slot)
	if not itemlink then return false end
	local item = ItemScore:GetItemDetails(itemlink)

	if not item then return false end
	local uniqueness_fam,maxEquip = Upgrades:GetItemUniqueness(item.itemid)

	if not uniqueness_fam then return true, "no family" end

	local slot_1, slot_2 = item.slot, item.slot_2
	local current_itemid, equipped_item_1, equipped_item_2

	if slot_1 then 
		equipped_item_1 = Upgrades.EquippedItems[slot_1].itemid 
		if slot_1 == slot then current_itemid = equipped_item_1 end
	end

	if slot_2 then 
		equipped_item_2 = Upgrades.EquippedItems[slot_2].itemid 
		if slot_2 == slot then current_itemid = equipped_item_2 end
	end

	if uniqueness_fam<0 then
		if equipped_item_1 == item.itemid or equipped_item_2 == item.itemid then 
			-- ok, this itemid is equipped, we can only suggest it for replacement
			return current_itemid==item.itemid, "only replacement"
		else
			-- nothing from that family is equipped, do suggest
			return true, "family not equipped"
		end
	else 
		-- more than one allowed, count all and see
		local currently = Upgrades.UniqueEquipped[uniqueness_fam] or 0

		if currently >= maxEquip then
			-- we are at the threshold, suggest only if replacing other from same family
			return current_itemid and uniqueness_fam==Upgrades:GetItemUniqueness(current_itemid), "replace family "..uniqueness_fam
		else
			-- we are below threshold, do suggest
			return true, "has family "..uniqueness_fam
		end
	end
end

local function is_protected_item(item)
	if ItemScore.ProtectedGear[item.itemid] then
		if type(ItemScore.ProtectedGear[item.itemid])=="boolean" or (type(ItemScore.ProtectedGear[item.itemid])=="function" and ItemScore.ProtectedGear[item.itemid]()) then
			return true
		end
	end

	return false
end

local function get_change(old,new)
	if old and old>0 then return (new*100/old)-100 else return 100 end
end

local function get_upgrade(newitem,olditem,secondnewitem)
	local new_item_score = newitem.score or 0
	if (secondnewitem and secondnewitem.itemlink) then
		new_item_score = new_item_score + (secondnewitem.score or 0)
	end

	local arrowframe = ZGV.Pointer and ZGV.Pointer.ArrowFrame 

	if arrowframe then
		if olditem then
			pathnode = arrowframe.waypoint and arrowframe.waypoint.pathnode
			if pathnode then 
				local portkey = pathnode.item or (pathnode.link and pathnode.link.item)
				if portkey and portkey==olditem.itemid then return 0 end -- original protected by travel system
			end
		end
	end

	if is_protected_item(newitem) then return 100 end -- item protected by id

	if olditem then -- check if old item is protected
		if is_protected_item(olditem) then return 0 end -- original item protected by id
		if olditem.quality==7 and newitem.quality~=7 then -- if nonloom tries to replace loom with exp bonus
			local has_bonus, max_level = ItemScore:GetHeirloomInfo(olditem.itemlink)
			if has_bonus then return 0 end -- original heirloom protected
		end
	end


	if newitem.quality==7 and (not olditem or olditem.quality~=7) then -- if loom  with exp bonus tries to replace nonloom
		local has_bonus, max_level = ItemScore:GetHeirloomInfo(newitem.itemlink)
		if has_bonus then return 100 end -- heirloom protected
	end
	-- if it is loom replacing loom, regular scoring will take over


	if olditem and not ItemScore:IsValidItem(olditem.itemlink) then
		return 100 -- old item is not valid, spec change?
	end

	if not (olditem and olditem.itemlink) then 
		-- no item equipped, whatever it is, it is an upgrade
		return 100
	elseif olditem.quality <= 1 and olditem.score==0 then -- quest items may be low quality, but are protected by magic
		-- low quality item
		if new_item_score > 0  then
			-- and we are equipping better quality one with any score. it will be an upgrade
			return 100
		end
	elseif olditem.score and new_item_score > olditem.score then
		-- ok, non trash equipped, and it is better
		return get_change(olditem.score, new_item_score)
	end

	-- just in case
	return 0
end

-- Checks if item is valid upgrade for any of matching slots
-- params:
--   itemlink - string
--   future - anything - for checks for future upgrades. if set, level restriction is not checked
-- returns:
--   is upgrade - bool
--   slot - int or nil - slotid for what the item is upgrade for, or nil if not an upgrade
--   change - int - percentage of score change
--   score - int - score value
--   comment - string - verbose comment
--   validfuture - bool - can item be valid in players future (min level)
--   slot_2 - int or nil - optional secondary slotid for what the item is upgrade for, or nil if not an upgrade
--   change_2 - int - percentage of score change

local fishing_gear = {[19969]=true,[50287]=true,[49895]=true}
function Upgrades:IsUpgrade(itemlink,future)
	if not itemlink then return false, nil, 0, 0, "no link" end
	itemlink = strip_link(itemlink)
	if not itemlink then return false, nil, 0, 0, "no link" end

	if Upgrades.BadUpgrades[itemlink] then return false, "", 0, 0, "rejected" end
	
	local protected, protectedslot = ItemScore.QuestItem:IsProtectedQuestItem(itemlink)
	if protected then return true, protectedslot, 999999, 999999, "quest item" end

	-- check validity
	local score,success,comment = ItemScore:GetItemScore(itemlink)
	if not success then return false, nil, 0, 0, "not scored" end
	local valid, future, final, comment = ItemScore:IsValidItem(itemlink,future)
	if not valid then return false, nil, 0, 0, "not valid "..comment end

	ZGV:Debug("&itemscore Checking %s for upgrade",itemlink)

	-- ok, item is valid, let's see if it can be used anywhere as upgrade
	local item = ItemScore:GetItemDetails(itemlink)
	if not item then return false, nil, 0, 0, "no link" end

	local slot_1, slot_2, is2hnd = item.slot, item.slot_2 ,item.twohander
	local equipped_item_1, equipped_item_2
	if slot_1 then equipped_item_1 = Upgrades.EquippedItems[slot_1] end
	if slot_2 then equipped_item_2 = Upgrades.EquippedItems[slot_2] end

	-- protect fishing gear if fishing pole is equipped
	if equipped_item_1 and fishing_gear[equipped_item_1.itemid] then
		local mainhand = Upgrades.EquippedItems[INVSLOT_MAINHAND].itemlink
		if mainhand then 
			mainhand = ItemScore:GetItemDetails(mainhand)
			if mainhand.subclass==20 then return false, "", 0, 0, "gone fishing" end
		end
	end

	local upgrade_slot_1, upgrade_slot_2 = 0, 0

	-- check first slot
	local upgrade_slot_1 = get_upgrade(item,equipped_item_1)
	local can_equip_1 = Upgrades:CanUseUniqueItem(itemlink,slot_1)

	--- this item has only one possible slot. 
	if not slot_2 then
		-- if we have upgrade in it, we are good
		if can_equip_1 and upgrade_slot_1 > 0 then
			return true, slot_1, upgrade_slot_1, item.score, "ok" 
		else
			return false, slot_1, 0, item.score, "not upgrade"
		end
	end

	-- we are still here? then item has two possible slots. 

	-- check second slot
	local upgrade_slot_2 = get_upgrade(item,equipped_item_2)
	local can_equip_2 = Upgrades:CanUseUniqueItem(itemlink,slot_2)

	-- upgrade for both slots
	if upgrade_slot_1 > 0 and upgrade_slot_2 > 0 then
		return true, slot_1, upgrade_slot_1, item.score, "ok", false, slot_2, upgrade_slot_2
	else
	-- upgrade for one slot
		if can_equip_1 and upgrade_slot_1 > 0 then
			return true, slot_1, upgrade_slot_1, item.score, "ok"
		elseif can_equip_2 and upgrade_slot_2 > 0 then
			return true, slot_2, upgrade_slot_2, item.score, "ok"
		end
	end

	-- we are still here? then item did not trigger any of upgrade possibilities. exit stage left
	return false, slot_1, 0, item.score, "not upgrade"
end

-- Checks if item is upgrade for named character with given spec, in slot used by the item.
-- Doesn't use fancy weapon queues and such, just compares the score of item for given 
-- character+spec to best item recorded for that slot.
-- params:
--	itemlink - string
--	name - string - name of character to score
--	spec - int - id of spec to score
-- returns:
--	upgrade - bool - is upgrade
--	checked - bool - was item actually checked - false if no char/item data was found
--	comment - string - explanation of returned info
function Upgrades:IsUpgradeFor(itemlink,name,spec)
	local character = ItemScore.altDB[name]
	if not character then return false,false,"unknown character" end

	local gear = character.gear[spec]
	if not (gear and gear.Scanned) then return false,false,"unknown character" end

	local details = ItemScore:GetItemDetails(itemlink)
	if not details then return end

	local score = details.scores[name][spec]
	if not gear then return false,false,"unknown character" end


	local valid,_,_,comment = ItemScore:IsValidItem(itemlink, nil, name, spec)
	if not valid then return false,true,"not valid "..comment end

	local slot1,slot2 = ItemScore:GetValidSlots(details,name,spec)
	local upgrade_slot1,upgrade_slot2 = false,false
	
	if not (slot1 or slot2) then return false,true,"not equipment" end

	if slot1 then upgrade_slot1 = not gear[slot1] or gear[slot1]<score end
	if slot2 then upgrade_slot2 = not gear[slot2] or gear[slot2]<score end

	return (upgrade_slot1 or upgrade_slot2),true,"checked"
end

-- Checks if item is upgrade for any alt (but not for current character)
-- Utility function used by itemscore tooltips, inventory manager and mail tools
local alts = {}
function Upgrades:IsUpgradeForAlt(itemlink)
	if not ZGV.DEV then return false end

	table.wipe(alts)
	if Upgrades:IsUpgrade(itemlink) then return false, alts end

	for name,character in pairs(ItemScore.altDB) do
		if name ~= ItemScore.playername then
			for spec,specgear in pairs(character.gear) do
				if specgear.Scanned then
					if Upgrades:IsUpgradeFor(itemlink,name,spec) then table.insert(alts,name) break end
				end
			end
		end
	end
	return #alts>0,alts
end

-- Checks if item is upgrade for any offspec (but not current spec)
-- Utility function used by itemscore tooltips, inventory manager and mail tools
local offspecs = {}
function Upgrades:IsUpgradeForOffspec(itemlink)
	table.wipe(offspecs)
	if Upgrades:IsUpgrade(itemlink) then return false, offspecs end

	for spec,specgear in pairs(ZGV.ItemScore.character.gear) do
		if spec<5 and specgear.Scanned and ZGV.db.char["gear_"..spec.."_score"] and spec~=ItemScore.playerspec then
			if Upgrades:IsUpgradeFor(itemlink,ItemScore.playername,spec) then table.insert(offspecs,specgear.specname) end
		end
	end
	return #offspecs>0,offspecs
end

-- Calculates stat differences between given items
-- params:
--	item1 - string - itemlink of first item, always represents new item being equipped
--	item2 - string, optional - itemlink of second item (either old, old1 or new2)
--	item3 - string, optional - itemlink of third item (either old or old2)
--	mode_old - string, optional - special modes for handling more complex cases, values "equip_pair", "artifact"
--	mode_new - string, optional - special modes for handling more complex cases, values "equip_pair", "artifact"
function Upgrades:GetStatChange(item1,item2,item3,mode_new,mode_old)
	if not item1 then return false end -- something went wrong. we need at least one item
	local delta
	local changes = ""

	local item1_details = ItemScore:GetItemDetails(item1)
	local item2_details = item2 and ItemScore:GetItemDetails(item2)
	local item3_details = item3 and ItemScore:GetItemDetails(item3)

	local item1_stats = item1_details and item1_details.stats
	local item2_stats = item2_details and item2_details.stats
	local item3_stats = item3_details and item3_details.stats

	if not item1_stats then return false end
	if item2 and not item2_stats then return false end
	if item3 and not item3_stats then return false end

	if not item3 and not (mode_old or mode_new) then -- ok, we only have one or two items, and they are not artifacts, so we can just compare stats
		if item1 and item2 then
			delta = {}
			for i,v in pairs(item1_stats) do delta[i]=0 end
			for i,v in pairs(item2_stats) do delta[i]=0 end
			for i,v in pairs(delta) do delta[i] = (item1_stats[i] or 0) - (item2_stats[i] or 0) end
		else
			delta = item1_stats
		end
	else -- sigh. three items or an artifact, here comes the pain
		delta = {}
		for i,v in pairs(item1_stats) do delta[i]=0 end
		for i,v in pairs(item2_stats) do delta[i]=0 end
		for i,v in pairs(item3_stats) do delta[i]=0 end

		-- if it is a pair of artifact weapons, we need to double its stats
		if mode_old=="artifact" then for i,v in pairs(item3_stats) do item3_stats[i]=v*ARTIFACT_MULTIPLIER end end
		if mode_new=="artifact" then for i,v in pairs(item1_stats) do item1_stats[i]=v*ARTIFACT_MULTIPLIER end end

		-- calculate values
		if mode_new=="equip_pair" then
			-- item1 and item2 are new, item3 is old
			for i,v in pairs(delta) do delta[i] = (item1_stats[i] or 0) + (item2_stats[i] or 0) - (item3_stats[i] or 0) end
		else
			-- item1 is new, item2 and item3 are old
			for i,v in pairs(delta) do delta[i] = (item1_stats[i] or 0) - (item2_stats[i] or 0) - (item3_stats[i] or 0) end
		end
	end

	if not delta then return false end -- something went wrong. we should have at least single item stats

	if ZGV.IsRetail then
		for stat,value in pairs(delta) do
			-- strip stats that are not valid for given class/spec, as defined in statweights primary
			local primary = ItemScore.ActiveRuleSet.primary[stat]
			if primary and primary==0 then delta[stat] = nil end
		end
	end

	for stat,value in pairs(delta) do
		if ItemScore.KnownKeyWords[stat] then -- hide stats that do not have blizzard names (shadow sockets for example)
			local mode = "%d"
			if stat == "DAMAGE_PER_SECOND" then -- show dps as float
				mode = "%.1f"
			end
			if value>0 then
				changes = changes..("%s+"..mode.." %s\n"):format(GREEN,value,ItemScore.KnownKeyWords[stat])
			elseif value<0 then
				changes = changes..("%s"..mode.." %s\n"):format(RED,value,ItemScore.KnownKeyWords[stat])
			end
		end
	end

	local item1_details = ItemScore:GetItemDetails(item1)
	local item2_details = ItemScore:GetItemDetails(item2)
	if (item1_details and item1_details.quality==7) or (item2_details and item2_details==7) then
		local heirloom_protected1 = ItemScore:GetHeirloomInfo(item1)
		local heirloom_protected2 = ItemScore:GetHeirloomInfo(item2)
		if heirloom_protected1 and not heirloom_protected2 then
			changes = changes..("%sExp bonus\n"):format(GREEN)
		elseif not heirloom_protected1 and heirloom_protected2 then
			changes = changes..("%sExp bonus\n"):format(RED)
		end
	end

	return changes.."|r"
end

Upgrades.UpgradeQueue = {
	[INVSLOT_MAINHAND] = {},
	[INVSLOT_OFFHAND] = {},
	[INVSLOT_HEAD] = {},
	[INVSLOT_NECK] = {},
	[INVSLOT_SHOULDER] = {},
	[INVSLOT_BACK] = {},
	[INVSLOT_CHEST] = {},
	[INVSLOT_WRIST] = {},
	[INVSLOT_HAND] = {},
	[INVSLOT_WAIST] = {},
	[INVSLOT_LEGS] = {},
	[INVSLOT_FEET] = {},
	[INVSLOT_FINGER1] = {},
	[INVSLOT_FINGER2] = {},
	[INVSLOT_TRINKET1] = {},
	[INVSLOT_TRINKET2] = {},
}

if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
	Upgrades.UpgradeQueue[INVSLOT_RANGED] = {}
end

-- Checks item details for weapon types and pushes it into one of weapon arrays
-- params:
--	itemlink - string - item being tested
-- return:
--	success - bool - was item a valid weapon
local main_hand = {}
local off_hand = {}
local two_hand = {}
function Upgrades:QueueWeapon(itemlink)
	local item = ItemScore:GetItemDetails(itemlink)
	if not item then return false end

	if Upgrades.BadUpgrades[item.itemlink] then return false, "", 0, 0, "rejected" end

	if item.class ~= Enum.ItemClass.Weapon and not (item.type=="INVTYPE_HOLDABLE" or item.type=="INVTYPE_SHIELD") then return false end

	if ItemScore:IsValidItem(item.itemlink) then
		ZGV:Debug("&itemscore QueueWeapon weapon %s",itemlink)

		local slot_1, slot_2, twohand = item.slot , item.slot_2, item.twohander
		local score = ItemScore:GetItemScore(itemlink)

		-- get combined artifact score, treat t
		if item.quality==6 then
			if not twohand then
				ZGV:Debug("&itemscore SBFU two piece artifact")
				item.artifactscore = item.score * ARTIFACT_MULTIPLIER
				twohand = true
			else
				ZGV:Debug("&itemscore SBFU one piece artifact")
				item.artifactscore = item.score	
			end
		end

		if twohand then -- 2h are treated as 1h for furygrip, so no dualwield check here anymore
			ZGV:Debug("&itemscore SBFU 2h weapon")
			table.insert(two_hand,item)
		else
			if (slot_1==INVSLOT_OFFHAND or slot_2==INVSLOT_OFFHAND) and Upgrades:CanUseUniqueItem(itemlink,INVSLOT_OFFHAND) then 
				ZGV:Debug("&itemscore SBFU oh weapon")
				table.insert(off_hand,item) 
			end
			if (slot_1==INVSLOT_MAINHAND) and Upgrades:CanUseUniqueItem(itemlink,INVSLOT_MAINHAND) then 
				ZGV:Debug("&itemscore SBFU mh weapon")
				table.insert(main_hand,item) 
			end
		end
		return true
	end

	return false
end

-- Clears all weapon queue arrays
-- params:
--	onlytemp - bool - will only clear items that are not in bags
function Upgrades:ResetWeaponQueue(onlytemp)
	if onlytemp then
		for i=#main_hand,1,-1 do if not main_hand[i].bagslot then table.remove(main_hand,i) end end
		for i=#off_hand,1,-1 do if not off_hand[i].bagslot then table.remove(off_hand,i) end end
		for i=#two_hand,1,-1 do if not two_hand[i].bagslot then table.remove(two_hand,i) end end
	else
		table.wipe(main_hand)
		table.wipe(off_hand)
		table.wipe(two_hand)
	end
end

-- Checks all queued weapons for best combination of mh+oh/2h
-- no params
-- returns:
--	mh - array, nillable - item object of mainhand to be used
--	oh - array, nillable - item object of offhand to be used
--	th - array, nillable - item object of twohand to be used
function Upgrades:ProcessWeaponQueue()
	-- check for best 2*1hander or 1*twohander, including merged artifact mess
	local equipped_weapon_1 = ItemScore:GetItemDetails(Upgrades.EquippedItems[INVSLOT_MAINHAND].itemlink)
	local equipped_weapon_2 = ItemScore:GetItemDetails(Upgrades.EquippedItems[INVSLOT_OFFHAND].itemlink)

	equipped_weapon_1 = equipped_weapon_1 and ItemScore:IsValidItem(equipped_weapon_1.itemlink) and equipped_weapon_1
	equipped_weapon_2 = equipped_weapon_2 and ItemScore:IsValidItem(equipped_weapon_2.itemlink) and equipped_weapon_2

	-- check if currently equipped weapons are still valid (spec change, for example)
	if equipped_weapon_2 then
		local s1, s2 = ItemScore:GetValidSlots(equipped_weapon_1)
		if s1~=INVSLOT_MAINHAND then equipped_weapon_1 = nil end
	end

	if equipped_weapon_1 then
		local s1, s2 = ItemScore:GetValidSlots(equipped_weapon_2)
		if (s1~=INVSLOT_OFFHAND and s2~=INVSLOT_OFFHAND) then equipped_weapon_2 = nil end
	end


	local uses_artifacts = equipped_weapon_1 and equipped_weapon_1.artifactscore
	local equipped_weapon_1_score = equipped_weapon_1 and (equipped_weapon_1.artifactscore or equipped_weapon_1.score) or 0
	local equipped_weapon_2_score = equipped_weapon_2 and (equipped_weapon_2.artifactscore or equipped_weapon_2.score) or 0

	ZGV:Debug("&itemscore PWQ Weapon 1 %d",equipped_weapon_1_score or -1)
	ZGV:Debug("&itemscore PWQ Weapon 2 %d",equipped_weapon_2_score or -1)
	local twohand = equipped_weapon_1 and (equipped_weapon_1.twohander or equipped_weapon_1.artifactscore)

	if equipped_weapon_1 then
		for i=#main_hand,1,-1 do if main_hand[i].itemid==equipped_weapon_1.itemid and main_hand[i].score==equipped_weapon_1.score then table.remove(main_hand,i) end end
		for i=#two_hand,1,-1 do if two_hand[i].itemid==equipped_weapon_1.itemid and two_hand[i].score==equipped_weapon_1.score then table.remove(two_hand,i) end end
	end
	if equipped_weapon_2 then
		for i=#off_hand,1,-1 do if off_hand[i].itemid==equipped_weapon_2.itemid and off_hand[i].score==equipped_weapon_2.score then table.remove(off_hand,i) end end
	end

	-- sort all weapons by score
	table.sort(main_hand,function(a,b) return a.score>b.score end)
	table.sort(off_hand,function(a,b) return a.score>b.score end)
	table.sort(two_hand,function(a,b) return (a.artifactscore or a.score)>(b.artifactscore or b.score) end)

	--Spoo({main_hand=main_hand,off_hand=off_hand,two_hand=two_hand,equipped_weapon_1=equipped_weapon_1,equipped_weapon_2=equipped_weapon_2})
	--do return end

	-- same weapon cannot be at the same time in main and offhand
	if main_hand[1] and off_hand[1] and main_hand[1]==off_hand[1] then
		if not equipped_weapon_1 or twohand then
			ZGV:Debug("&itemscore PWQ same item, drop off, no main")
			table.remove(off_hand,1)
		elseif not equipped_weapon_2 then		
			ZGV:Debug("&itemscore PWQ same item, drop main, no off")
			table.remove(main_hand,1)
		else
			if ZGV.db.profile.devtestmhoh then
				-- if it is any upgrade for main, push it to there first, so we always have best scored item in main hand
				-- oh will follow in next cycle
				if off_hand[1].score > (equipped_weapon_1_score or 0) then table.remove(off_hand,1) end
			else
				local mh_change = get_upgrade(main_hand[1],equipped_weapon_1)
				local oh_change = get_upgrade(off_hand[1],equipped_weapon_2)

				if mh_change>oh_change then
					ZGV:Debug("&itemscore PWQ same item, keep main")
					table.remove(off_hand,1)
				else
					ZGV:Debug("&itemscore PWQ same item, keep off")
					table.remove(main_hand,1)
				end
			end
		end
	end

	local best_main = main_hand[1]
	local best_off = off_hand[1]
	local best_two = two_hand[1]
	local best_main_score = best_main and best_main.score or 0
	local best_off_score = best_off and best_off.score or 0
	local best_two_score = best_two and best_two.score or 0


	-- if current mainhand/offhand weapon is better than the best we found, do not consider it for replacement, only for pair calculations
	if (not twohand or ItemScore.playerDualTwohanders) and equipped_weapon_1 and equipped_weapon_1_score>best_main_score then
		ZGV:Debug("&itemscore PWQ Equipped MH better")
		best_main = nil
		best_main_score = equipped_weapon_1_score
	end

	if (not twohand) and equipped_weapon_2 and equipped_weapon_2_score>best_off_score then
		ZGV:Debug("&itemscore PWQ Equipped OH better")
		best_off = nil
		best_off_score = equipped_weapon_2_score
	end

	if twohand and equipped_weapon_1 and equipped_weapon_1_score>best_two_score then
		ZGV:Debug("&itemscore PWQ Equipped 2H better")
		best_two = nil
		best_two_score = equipped_weapon_1_score
	end

	ZGV:Debug("&itemscore PWQ Best MH %d %s",best_main_score,best_main and best_main.itemlink or "")
	ZGV:Debug("&itemscore PWQ Best OH %d %s",best_off_score,best_off and best_off.itemlink or "")
	ZGV:Debug("&itemscore PWQ Best 2H %d %s",best_two_score,best_two and best_two.itemlink or "")

	if best_two_score > (best_main_score + best_off_score) then -- two hander is better than main/off combination
		ZGV:Debug("&itemscore PWQ 2H better than pair")
		--if best_two and (best_two_score > (equipped_weapon_1 and equipped_weapon_1_score or 0)) and (equipped_weapon_1 and equipped_weapon_1.itemlink ~= best_two.itemlink) then
		if best_two and (best_two_score > (equipped_weapon_1 and equipped_weapon_1_score or 0)) then
			ZGV:Debug("&itemscore PWQ 2H better than equipped")
			return nil, nil, best_two
		end
	elseif uses_artifacts then
		ZGV:Debug("&itemscore PWQ artifact equipped")
		if ((best_main and best_main_score or 0) + (best_off and best_off_score or 0)) > (equipped_weapon_1 and equipped_weapon_1.artifactscore or 0) then
			ZGV:Debug("&itemscore PWQ pair better than artifact")
			return best_main, best_off, nil
		end
	else
		local mh, oh = nil, nil
		if (best_main and best_main_score or 0) > 0 then
			ZGV:Debug("&itemscore PWQ MH upgrade")
			mh = best_main
		end
		if not twohand and (best_off and best_off_score or 0) > 0 then -- do not equip only offhand if twohand is currently in use
			ZGV:Debug("&itemscore PWQ OH upgrade")
			oh = best_off
		end
		return mh, oh, nil
	end
	ZGV:Debug("&itemscore PWQ no upgrades")
	return nil, nil, nil
end

function Upgrades:ScanBagsForUpgrades(onlyscan, forced)
	ZGV:Debug("&itemscore ScanBagsForUpgrades")

	ItemScore.EquipTimer = nil
	if not ZGV.db.profile.autogear then return end -- disabled
	if not ItemScore.ActiveRuleSet then return end -- we are early, itemscore is not ready
	if not Upgrades.ScoredEquippedItems then return end  -- we are early, upgrades is not ready

	-- clear any related popups
	if Upgrades.EquipPopup then Upgrades.EquipPopup:Hide() end

	-- clear upgrade queue
	for i,v in pairs(Upgrades.UpgradeQueue) do table.wipe(v) end
	Upgrades.UpgradeQueueCount = 0
	if ZygorItemPopup then ZygorItemPopup.forcefull = false end

	-- clear weapons
	Upgrades:ResetWeaponQueue()

	table.wipe(Upgrades.BagsItems)

	for bagnum=0, NUM_BAG_SLOTS do
		for bagslot=1, C_Container.GetContainerNumSlots(bagnum) do
			local itemlink = C_Container.GetContainerItemLink(bagnum,bagslot)
			local itemid = C_Container.GetContainerItemID(bagnum,bagslot)
			if itemlink or itemid then
				Upgrades.BagsItems[itemlink or itemid]= {bagnum=bagnum, bagslot=bagslot}
			end
		end
	end
	Upgrades:ScoreBagsItems(forced)
end

Upgrades.AltUpgrades = {}
function Upgrades:ScanBagsForUpgradesForAlts()
	ZGV:Debug("&itemscore ScanBagsForUpgradesForAlts")

	table.wipe(Upgrades.AltUpgrades)
	
	for bagnum=0, NUM_BAG_SLOTS do
		for bagslot=1, C_Container.GetContainerNumSlots(bagnum) do
			local itemlinkfull = C_Container.GetContainerItemLink(bagnum,bagslot)
			if itemlinkfull then
				local itemlink = strip_link(itemlinkfull)
				local item = ItemScore:GetItemDetails(itemlink)
				ItemScore:GetItemScore(itemlink)
				if item and item.slot and not Upgrades.AltsQueue[itemlink] and not ZGV.IsItemBound(bagnum, bagslot) and Upgrades:IsUpgradeForAlt(itemlink) then
					for name,rulesets in pairs(ItemScore.ActiveRuleSets) do
						if ItemScore.playername~=name then
							for spec,ruleset in pairs(rulesets) do
								if Upgrades:IsUpgradeFor(itemlink,name,spec) then
									Upgrades.AltUpgrades[itemlinkfull] = Upgrades.AltUpgrades[itemlinkfull] or {}
									table.insert(Upgrades.AltUpgrades[itemlinkfull],{name,spec,item.slot})
								end
							end
						end
					end
				end
			end
		end
	end

	-- clear old upgrades that are no longer in inventory
	for item,data in pairs(Upgrades.AltsQueue) do
		if GetItemCount(item)==0 then Upgrades.AltsQueue[item]=nil end
	end

	return Upgrades.AltUpgrades
end

function Upgrades:ShowAltsUpgrades()
	if not (ZGV.DEV and ZGV.db.profile.n_popup_enable and ZGV.db.profile.n_popup_gear and ZGV.db.profile.n_popup_gear_alt) then return end

	local results = Upgrades:ScanBagsForUpgradesForAlts()

	for itemlink,data in pairs(results) do
		if not (Upgrades.AltsQueue[itemlink] and Upgrades.AltsQueue[itemlink].confirmed ~= 0) then
			Upgrades:ShowAltGearPopup(itemlink)
		end
	end
end

function Upgrades:ShowAltGearPopup(itemlink)
	if not Upgrades.EquipPopupAlts then
		Upgrades.EquipPopupAlts = ZGV.PopupHandler:NewPopup("ZygorItemPopup","gear")
		Upgrades.EquipPopupAlts.acceptbutton:SetText(L['itemscore_alts_accept'])
		Upgrades.EquipPopupAlts.declinebutton:SetText(L['itemscore_alts_decline'])
		Upgrades.EquipPopupAlts.OnAccept = function(self)
			self.selfHidden = true
			local CurrentItem = Upgrades.EquipPopupAlts.CurrentItem
			Upgrades.AltsQueue[CurrentItem.item] = CurrentItem
			Upgrades.AltsQueue[CurrentItem.item].confirmed = 1
			Upgrades:ShowAltsUpgrades()
		end
		Upgrades.EquipPopupAlts.OnDecline = function(self)
			self.selfHidden = true
			local CurrentItem = Upgrades.EquipPopupAlts.CurrentItem
			Upgrades.AltsQueue[CurrentItem.item] = CurrentItem
			Upgrades.AltsQueue[CurrentItem.item].confirmed = -1
			Upgrades:ShowAltsUpgrades()
		end
	end

	Upgrades.EquipPopupAlts.LayoutFull = function(self)

	end

	Upgrades.EquipPopupAlts.LayoutFloaty = function(self)

	end

	local text = L['itemscore_alts_itemfound']

	local item = Upgrades.AltUpgrades[itemlink]
	if item then
		text = text .. "\n" .. itemlink .. "\n"
		Upgrades.EquipPopupAlts.CurrentItem = {item=itemlink,characters={},confirmed=0}
		for _,data in ipairs(item) do
			local spec = ItemScore.altDB[data[1]].gear[data[2]].specname or ""
			text = text .. data[1] .. " " .. spec.. "\n"
			Upgrades.EquipPopupAlts.CurrentItem.characters[data[1]] = true
		end
	end

	Upgrades.EquipPopupAlts:SetText(text)
	Upgrades.EquipPopupAlts:Show()
end




function Upgrades:ScoreBagsItems(forced)
	local skipped = false

	for itemlink,details in pairs(Upgrades.BagsItems) do
		if not (itemlink:find("battlepet:") or details.itemlink) then
			if tonumber(itemlink) then 
				itemlink = C_Container.GetContainerItemLink(details.bagnum,details.bagslot)
				skipped = true
			else
				local item = ItemScore:GetItemDetails(itemlink)
				if item then 
					item.bagnum = details.bagnum
					item.bagslot = details.bagslot
					Upgrades.BagsItems[itemlink] = item
				else
					skipped = true
				end
			end
		end
	end

	if skipped and Upgrades.SBICounter< 5 then
		Upgrades.SBICounter = Upgrades.SBICounter + 1
		ZGV:Debug("&itemscore SBI missed some item")
		ZGV:Debug("&itemscore SBI NOT complete "..Upgrades.SBICounter)
		if Upgrades.ScoreBagsItemsTimer then
			ZGV:CancelTimer(Upgrades.ScoreBagsItemsTimer)
		end
		Upgrades.ScoreBagsItemsTimer = ZGV:ScheduleTimer(Upgrades.ScoreBagsItems,1)
		return
	end

	for itemlink,item in pairs(Upgrades.BagsItems) do
		if item.itemlink then
			itemlink = strip_link(itemlink)
			if (item.class == Enum.ItemClass.Weapon and (ZGV.IsRetail or not (item.type=="INVTYPE_THROWN" or item.type=="INVTYPE_RANGED" or item.type=="INVTYPE_RANGEDRIGHT"))) or (item.type=="INVTYPE_HOLDABLE" or item.type=="INVTYPE_SHIELD") then
				-- for weapons, we may need to switch between 2hnd and two 1hnders, or artifact and regular weapons
				-- so, we will record everything, and then look for best combination later
				Upgrades:QueueWeapon(itemlink) 
			else
				local is_upgrade, slot, change, score, validfuture, comment, slot_2, change_2 = Upgrades:IsUpgrade(item.itemlink)
				if is_upgrade then
					local upgrade_slot = Upgrades.UpgradeQueue[slot]
					if Upgrades:CanUseUniqueItem(itemlink,slot) and (((score or 0) > (upgrade_slot.score or 0)) or ((score or 0)==0 and (upgrade_slot.score or 0)==0)) then
						ZGV:Debug("&itemscore SBFU armor upgrade %d %s %d",slot,itemlink,score or 0)
						upgrade_slot.itemlink = itemlink
						upgrade_slot.score = score or 0 
						upgrade_slot.change = change or 0
						upgrade_slot.bagnum = item.bagnum
						upgrade_slot.bagslot = item.bagslot
						upgrade_slot.slot = slot
						if comment=="quest item" then upgrade_slot.quest=true end
					end
					if slot_2 then -- upgrade for both slots (rings, trinkets, weapons)
						local upgrade_slot = Upgrades.UpgradeQueue[slot_2]
						if Upgrades:CanUseUniqueItem(itemlink,slot_2) and (((score or 0) > (upgrade_slot.score or 0)) or ((score or 0)==0 and (upgrade_slot.score or 0)==0)) then
							ZGV:Debug("&itemscore SBFU second slot %d",slot_2)
							upgrade_slot.itemlink = itemlink
							upgrade_slot.score = score or 0
							upgrade_slot.change = change_2 or 0
							upgrade_slot.bagnum = item.bagnum
							upgrade_slot.bagslot = item.bagslot
							upgrade_slot.slot = slot_2
						end
					end
				end
			end
		end
	end

	-- process upgrades now, since functions that called with onlyscan may want the results
	local mh, oh, th = Upgrades:ProcessWeaponQueue()


	local equipped_weapon_1 = ItemScore:GetItemDetails(Upgrades.EquippedItems[INVSLOT_MAINHAND].itemlink)
	local equipped_weapon_2 = ItemScore:GetItemDetails(Upgrades.EquippedItems[INVSLOT_OFFHAND].itemlink)

	-- if fishing pole is equipped, then do not replace it
	if equipped_weapon_1 and equipped_weapon_1.subclass==20 then mh,oh,th=nil,nil,nil end

	if th then
		local upgrade_slot = Upgrades.UpgradeQueue[INVSLOT_MAINHAND]
		upgrade_slot.itemlink = th.itemlink
		upgrade_slot.score = th.score
		upgrade_slot.change = get_upgrade(th,equipped_weapon_1)
		upgrade_slot.bagnum = th.bagnum
		upgrade_slot.bagslot = th.bagslot
		upgrade_slot.slot = INVSLOT_MAINHAND
		upgrade_slot.twohand = true
		upgrade_slot.pair = equipped_weapon_2
		ZGV:Debug("&itemscore SBFU 2H %s",th.itemlink)
	else
		if mh then
			local upgrade_slot = Upgrades.UpgradeQueue[INVSLOT_MAINHAND]
			upgrade_slot.itemlink = mh.itemlink
			upgrade_slot.score = mh.score
			upgrade_slot.change = get_upgrade(mh,equipped_weapon_1,oh)
			upgrade_slot.bagnum = mh.bagnum
			upgrade_slot.bagslot = mh.bagslot
			upgrade_slot.slot = INVSLOT_MAINHAND
			if equipped_weapon_1 and equipped_weapon_1.twohander then
				upgrade_slot.pair = oh
			end
			ZGV:Debug("&itemscore SBFU MH %s",mh.itemlink)
		end
		if oh then
			local upgrade_slot = Upgrades.UpgradeQueue[INVSLOT_OFFHAND]
			upgrade_slot.itemlink = oh.itemlink
			upgrade_slot.score = oh.score
			upgrade_slot.change = get_upgrade(oh,equipped_weapon_2,mh)
			upgrade_slot.bagnum = oh.bagnum
			upgrade_slot.bagslot = oh.bagslot
			upgrade_slot.slot = INVSLOT_OFFHAND
			ZGV:Debug("&itemscore SBFU OH %s",oh.itemlink)
		end
	end

	for slot,newitem in pairs(Upgrades.UpgradeQueue) do 
		if newitem.itemlink then
			Upgrades.UpgradeQueueCount = Upgrades.UpgradeQueueCount + 1
		end
	end

	if onlyscan then return end

	Upgrades:ProcessPossibleUpgrades(forced)
end

function Upgrades:ProcessPossibleUpgrades(forced)
	if ZGV:IsPlayerInCombat() then return end -- nope, no can do, will retry when combat is done

	local process_slot, max_change = nil,0
	for slot,newitem in pairs(Upgrades.UpgradeQueue) do 
		if slot==17 and process_slot then ZGV:Debug("&itemscore PPU slot %d: processed, breaking",slot) break end -- don't look at offhands if we have mainhand queued

		if newitem.itemlink then
			if not Upgrades.EquippedItems[slot] then -- nothing, so equipping something in empty slot
				process_slot = slot
				break
			else
				if newitem.change and newitem.change>max_change then
					ZGV:Debug("&itemscore PPU slot %d: considering change %s",slot,newitem.change)
					max_change = newitem.change
					process_slot = slot
				end
			end
		end
	end

	if process_slot then
		ZGV:Debug("&itemscore PPU process_slot ended up %d",process_slot)
		if ZGV.db.profile.autogearauto then
			Upgrades:ShowEquipmentChangeNotification(process_slot)
		else
			local minimize = ZGV.NotificationCenter:EntryExists("ZygorItemPopup")
			Upgrades:ShowEquipmentChangePopup(process_slot, forced)
			if minimize and ZGV.db.profile.n_popup_toast and not Upgrades.forcefull then
				ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
			elseif minimize then
				self.EquipPopup.private:Minimize(self.EquipPopup)
			end
		end
	end
end

function Upgrades:SetBadUpgrade(itemlink,slot)
	Upgrades.BadUpgrades[itemlink] = true
	table.wipe(Upgrades.UpgradeQueue[slot])
	Upgrades.UpgradeQueue[slot].score = 0

	-- continue with the queue
	ZGV:ScheduleTimer(function() 
		Upgrades.SBICounter = 0
		Upgrades:ScanBagsForUpgrades()
	end,0.1)
end

function Upgrades:ShowEquipmentChangeNotification(slot)
	if not slot then return end
	local n_item = Upgrades.UpgradeQueue[slot]
	if not n_item or not n_item.itemlink then return end
	local new_item = ItemScore:GetItemDetails(n_item.itemlink)
	if not new_item then return end
--	if ZGV.NotificationCenter.FloatingToast and ZGV.NotificationCenter.FloatingToast:IsVisible() then return end

	local c_item = Upgrades.EquippedItems[slot]
	local current_item = c_item and c_item.itemlink and ItemScore:GetItemDetails(c_item.itemlink)
	if c_item and c_item.itemlink  and not current_item then return end

	local message = L['itemscore_ae_equip']:format(new_item.itemlinkfull)

	if current_item then
		message = message .. L['itemscore_ae_over']:format(current_item.itemlinkfull)
	end
	message = message.."." --add a period :D

	-- Print a message to user then equip the item!
	ZGV:Print(message)

	if ZGV.NotificationCenter then
		local texture,texcoords = ZGV.PopupHandler:GetNCTextureInfo("gear")

		local onClick,priority,poptime,quiet
		ZGV.NotificationCenter:AddEntry(
			"ZygorItemPopup",
			L['notifcenter_gear_title'],
			L['notifcenter_gear_equipped']:format(new_item.itemlinkfull,G[new_item.type]),
			texture,
			texcoords,
			onClick,
			function(self)
				local position,x,y = ZGV.NotificationCenter:GetTooltipPosition()
				GameTooltip:SetOwner(self, position or "ANCHOR_CURSOR",x or 0, y or 0)

				GameTooltip:SetHyperlink(new_item.itemlink)
				GameTooltip:SetToplevel(true)
				GameTooltip:Show()
			end,
			priority,
			poptime,
			600, -- Remove after 10m
			quiet,
			nil, -- OnOpen
			"gear" )
	end

	Upgrades:Equip(n_item)
end

function Upgrades:CreatePopup()
	if Upgrades.EquipPopup then return end

	local function make_button(index)
		local button = CHAIN(CreateFrame("Button",nil,Upgrades.EquipPopup))
			:SetFrameLevel(Upgrades.EquipPopup:GetFrameLevel()+2)
			:SetHeight(50)
			:SetPoint("LEFT")
			:SetPoint("RIGHT")
		.__END	

		button.itemicon = CHAIN(button:CreateTexture()) 
			:SetSize(30,30)
			:SetPoint("TOP",button) 
		.__END

		button.itemlink = CHAIN(button:CreateFontString())
			:SetPoint("TOP",button.itemicon,"BOTTOM",0,-5)
			:SetFont(FONT,12)
			:SetText("...button "..index)
			:SetPoint("LEFT")
			:SetPoint("RIGHT")
			:SetJustifyH("CENTER")
			:SetWordWrap(false)
		.__END

		button:SetScript("OnEnter",function() 
			if button.link then
				GameTooltip:SetOwner(button, "ANCHOR_CURSOR")
				GameTooltip:SetHyperlink(button.link)
				GameTooltip:Show()
			end
		end)
		button:SetScript("OnLeave",function()
			GameTooltip:FadeOut()
		end)

		function button:SetItem(item,index)
			if not item then return end
			button.itemicon:SetTexture(item.texture)
	--		item.texture = ZGV.ItemScore.notiftexture
			button.itemlink:SetText(item.itemlinkfull)
			button.link = item.itemlinkfull
			button:Show()
		end

		button.offset = 0
		return button
	end

	Upgrades.EquipPopup = ZGV.PopupHandler:NewPopup("ZygorItemPopup","gear")
	local F = Upgrades.EquipPopup
	F.floaty = true

	local ui = ZGV.UI
	local SkinData = ui.SkinData

	F:SetWidth(300) -- Make it bigger!

	-- set up item display objects. item1 and item2 are for 1:1 replacements
	for i=1,2 do
		F["item"..i]=make_button(i)
	end

	-- make double item button, for mh/oh<>th replacement
	local button = CHAIN(CreateFrame("Button",nil,Upgrades.EquipPopup))
		:SetFrameLevel(Upgrades.EquipPopup:GetFrameLevel()+3)
		:SetSize(240,70)
	.__END	
		F.item_double = button
		F.item_double.offset = 0

		local function show_item_1()
			if button.link1 then
				GameTooltip:SetOwner(button.linkcontainer_link1, "ANCHOR_CURSOR")
				GameTooltip:SetHyperlink(button.link1)
				GameTooltip:Show()
			end
		end

		local function show_item_2()
			if button.link2 then
				GameTooltip:SetOwner(button.linkcontainer_link2, "ANCHOR_CURSOR")
				GameTooltip:SetHyperlink(button.link2)
				GameTooltip:Show()
			end
		end

		local function hide_item() GameTooltip:FadeOut() end

		button.iconcontainer = CHAIN(CreateFrame("Frame",nil,button))
			:SetPoint("TOP",button,"TOP",0,-7)
			:SetFrameLevel(button:GetFrameLevel()+1)
			:SetSize(70,30)
		.__END	
			button.iconcontainer_icon1 = CHAIN(CreateFrame("Frame",nil,button))
				:SetFrameLevel(button:GetFrameLevel()+1)
				:SetSize(30,30)
				:SetPoint("TOPLEFT",button.iconcontainer)
				:SetScript("OnEnter",show_item_1)
				:SetScript("OnLeave",hide_item)
				.__END	
				button.itemicon1 = CHAIN(button:CreateTexture()) 
					:SetSize(30,30)
					:SetPoint("TOP",button.iconcontainer_icon1) 
				.__END
			button.iconcontainer_icon2 = CHAIN(CreateFrame("Frame",nil,button))
				:SetFrameLevel(button:GetFrameLevel()+1)
				:SetSize(30,30)
				:SetPoint("TOPRIGHT",button.iconcontainer) 
				:SetScript("OnEnter",show_item_2)
				:SetScript("OnLeave",hide_item)
				.__END	
				button.itemicon2 = CHAIN(button:CreateTexture()) 
					:SetSize(30,30)
					:SetPoint("TOP",button.iconcontainer_icon2) 
				.__END

		button.linkcontainer_link1 = CHAIN(CreateFrame("Frame",nil,button))
			:SetFrameLevel(button:GetFrameLevel()+1)
			:SetSize(200,15)
			:SetPoint("TOP",button.iconcontainer,"BOTTOM",0,-5)
			:SetScript("OnEnter",show_item_1)
			:SetScript("OnLeave",hide_item)
			.__END	
			button.itemlink1 = CHAIN(button:CreateFontString())
				:SetPoint("TOP",button.linkcontainer_link1)
				:SetFont(FONT,12)
				:SetText("...link1")
				:SetWidth(240)
				:SetJustifyH("CENTER")
				:SetWordWrap(false)
			.__END
		button.linkcontainer_link2 = CHAIN(CreateFrame("Frame",nil,button))
			:SetFrameLevel(button:GetFrameLevel()+1)
			:SetSize(200,15)
			:SetPoint("TOP",button.linkcontainer_link1,"BOTTOM")
			:SetScript("OnEnter",show_item_2)
			:SetScript("OnLeave",hide_item)
			.__END	
			button.itemlink2 = CHAIN(button:CreateFontString())
				:SetPoint("TOP",button.linkcontainer_link2)
				:SetFont(FONT,12)
				:SetText("...link2")
				:SetWidth(240)
				:SetJustifyH("CENTER")
				:SetWordWrap(false)
			.__END
	button:SetScript("OnLeave",function()
	end)

	function button:SetItem(item,index)
		if not item then return end
		button.itemicon:SetTexture(item.texture)
		button.itemlink:SetText(item.itemlinkfull)
		button.link = item.itemlinkfull
		button:Show()
	end

	F.item1:SetPoint("TOPLEFT",F.text,"BOTTOMLEFT",0,-10)

	-- simple line: "with", to be positioned later
	F.string_with=CHAIN(F:CreateFontString(nil,"ARTWORK"))
		:SetHeight(12)
		:SetFont(FONT,ZGV.db.profile.fontsecsize)
		:SetJustifyH("CENTER")
		:SetText(L['itemscore_ae_with'])
	.__END
	F.string_with.offset = 0

	-- FontString to display all of the stat differences
	F.stattext=CHAIN(F:CreateFontString(nil,"ARTWORK"))
		:SetWidth(F:GetWidth()-15)
		:SetJustifyH("CENTER")
		:SetFont(FONT,ZGV.db.profile.fontsecsize)
	.__END
	F.stattext.offset = 0

	F.OnAccept = function(self)
		self.selfHidden = true
		Upgrades:Equip(self.n_item) --equip it!
		ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
	end

	F.OnDecline = function(self)
		self.selfHidden = true

		if IsShiftKeyDown() then
			Upgrades:ShowGearReport()
		end

		self.itemdeclined = true

		-- Send it to BadUpgrades because they don't want it suggested again.
		Upgrades:SetBadUpgrade(self.n_item.itemlink,self.n_item.slot)
		ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
	end

	F.OnEscape = function(self)
		if self.manualvisible then
			self.manualvisible = nil
		end
	end

	F.OnSettings = function(self)
		ZGV:OpenOptions("gear")
	end

	F.AdjustSize = function(self) -- Need to change this because it is different for this kind of Popup
		local offsets = (self.logo:IsVisible() and (self.logo:GetHeight()+15) or 5) + 10 + 5 + 10 --Logo and top + text and buttons + buttons and bottom + more room

		local ItemsAlwaysThere = self.text:GetStringHeight() + 5 + self.stattext:GetStringHeight() + self.stattext.offset + self.acceptbutton:GetHeight() + 5
		local ItemsSometimes = ( 
			(self.item1:IsVisible() and self.item1:GetHeight() + self.item1.offset or 0) + 
			(self.item2:IsVisible() and self.item2:GetHeight() + self.item2.offset or 0) + 
			(self.item_double:IsVisible() and self.item_double:GetHeight() + self.item_double.offset or 0) + 
			(self.string_with:IsVisible() and self.string_with:GetHeight() + self.string_with.offset or 0)
			)

		self:SetHeight(offsets + ItemsAlwaysThere + ItemsSometimes)
	end

	F.returnMinimizeSettings = function(self)
		local mainText,quiet

		if Upgrades.UpgradeQueueCount > 1 then
			mainText = L['notifcenter_gear_text_pl']:format(Upgrades.UpgradeQueueCount)
		else
			mainText = L['notifcenter_gear_text_sl']:format(Upgrades.UpgradeQueueCount)
		end

		-- Table to allow popup out text to be different from normal notification text.
		local notifcationText = { mainText, L['notifcenter_gear_text'] }

		local tooltipText = L['notifcenter_gen_popup_tooltip']

		--Some special handling of this up in ScanBags for no items in Queue

		return notifcationText,L['notifcenter_gear_title'],tooltipText,nil,nil,nil,quiet,nil,ZygorItemPopup.QueueUsed
	end

	F:HookScript("OnHide",function(self)
		self.manualvisible = nil
	end)

	F:HookScript("OnShow",function(self)
		self.manualvisible = true
	end)

	F.acceptbutton:SetText(L['itemscore_ae_accept'])
	F.declinebutton:SetText(L['itemscore_ae_decline'])

	CHAIN(F.acceptbutton)
		:SetParent(F)

	CHAIN(F.declinebutton)
		--Popup.olditem is not always there. EG no item in that slot.
		:HookScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(F,"ANCHOR_BOTTOM") :SetText(L['itemscore_ae_report_tip']) :Show() end)
		:HookScript("OnLeave",function(self) GameTooltip:Hide() end)
		:SetParent(F)

	-- dump info about items in popup
	function F.debug()
		Spoo({
			new_item = F.n_item, 
			new_item_cached = ItemScore.ItemCache[F.n_item.itemlink],
			current_item = F.c_item,
			current_item_cached = F.c_item and ItemScore.ItemCache[F.c_item.itemlink],
			change = Upgrades:GetStatChange(F.n_item and F.n_item.itemlink, F.c_item and F.c_item.itemlink),
			})
	end

	function F.AnchorTo(what,to,offset)
		--what:ClearAllPoints()
		offset = offset or 3
		what.offset = offset
		what:SetPoint("TOP",to,"BOTTOM",0,-offset)
		what:Show()
	end
end


function Upgrades:ShowGearReport()
	local out = ""
	-- player data
	out = out .. "*** Player data: " 
	out = out .. "\n class " .. ItemScore.playerclassName .. " system " .. (select(1,UnitClass("player")))
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		out = out .. "\n build " .. ZGV.db.char.gear_active_build
	else
		out = out .. "\n spec " .. ItemScore.playerspecName  .. " system " .. (select(2,GetSpecializationInfo(ItemScore.playerspec)))
	end
	out = out .. "\n level " .. ItemScore.playerlevel .. " system " .. UnitLevel("player")
	out = out .. "\n faction " .. ItemScore.playerfaction .. " system " .. UnitFactionGroup("player")

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		out = out .. "\n\n*** Skills: " 
		out = out .. "\n locale " .. GetLocale()
		out = out .. "\n** registered " 
		for i,v in pairs(ItemScore.Skills) do 
			out = out .. "\n " .. i .. " = " .. v
		end

		out = out .. "\n** raw " 
		for i=1, GetNumSkillLines() do
			local skillName, _, _, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType = GetSkillLineInfo(i);
			local skillTag = ItemScore.SkillNamesRev[skillName]
			out = out .. "\n " .. skillName .. " " .. (skillTag or "")
		end
	end

	out = out .. "\n\n*** Player statweights: " 
	for i,v in pairs(ItemScore.ActiveRuleSet.stats) do 
		out = out .. "\n " .. i .. " = " .. v
	end
	out = out .. "\n Fallback weight = " .. ItemScore.ActiveRuleSet.whiteScoreWeight

	local new_item = Upgrades.EquipPopup.n_item
	local old_item = Upgrades.EquipPopup.c_item

	if new_item and new_item.itemlink then
		out = out .. "\n\n*** New item: " 
		out = out .. "\nTooltip: " 
		local tooltip = ZGV.TooltipScanner:GetTooltip(new_item.itemlink)
		for _,line in ipairs(tooltip) do
			out = out .. "\n " .. line
		end
		out = out .. "\nCache: " 
		for i,v in pairs(ZGV.ItemScore.ItemCache[new_item.itemlink]) do 
			if type(v)=="table" and i~="scores" then
				out = out .. "\n " .. i .. " : "
				for j,w in pairs(v) do
					out = out .. "\n   " .. j .. " : " .. w
				end
			else
				out = out .. "\n " .. i .. " : " .. tostring(v)
			end
		end
	end

	if old_item and old_item.itemlink then
		out = out .. "\n\n*** Old item: " 
		out = out .. "\nTooltip: " 
		local tooltip = ZGV.TooltipScanner:GetTooltip(old_item.itemlink)
		for _,line in ipairs(tooltip) do
			out = out .. "\n " .. line
		end
		out = out .. "\nCache: " 
		for i,v in pairs(ZGV.ItemScore.ItemCache[old_item.itemlink]) do 
			if type(v)=="table" and i~="scores" then
				out = out .. "\n " .. i .. " : "
				for j,w in pairs(v) do
					out = out .. "\n   " .. j .. " : " .. w
				end
			else
				out = out .. "\n " .. i .. " : " .. tostring(v)
			end
		end
	end

	out = out .. "\n\n*** Gear and queue: " 
	for slot,item in pairs(Upgrades.EquippedItems) do 
		local replacement = Upgrades.UpgradeQueue[slot]
		local replacement_details = replacement and replacement.itemlink and ItemScore:GetItemDetails(replacement.itemlink)
		local current_details = item and item.itemlink and ItemScore:GetItemDetails(item.itemlink)
		local current_text = current_details and (current_details.itemlink.." score "..item.score)
		local replacement_text = replacement_details and (" with "..replacement_details.itemlink.." score "..replacement.score)
		
		if current_text or replacement_text then
			out = out .. "\n " .. slot .. " ".. (current_text or "empty slot").." "..(replacement_text or "")
		end
	end

	ZGV:ShowDump(out,"Autoequip report")
end

function Upgrades:ShowEquipmentChangePopup(slot, forced)
	if not ZGV.db.profile.n_popup_gear then return end
	if ZygorItemPopup and ZygorItemPopup:IsVisible() then return end

	if forced == false or nil then		--exception for the 'Show Upgrades' button in the gear toast
		ZygorItemPopup.QueueUsed = ZygorItemPopup.QueueUsed or {}

		-- check if current queue was already shown
		local same = true
		for i,v in pairs(Upgrades.UpgradeQueue) do
			local queuelink = v and v.itemlink or ""
			local storelink = ZygorItemPopup.QueueUsed[i] or ""
			if queuelink~=storelink then
				same=false
				break
			end
		end	

		if same then return end -- nothing change, be quiet

		table.wipe(ZygorItemPopup.QueueUsed) -- clean up and save new queue
		for i,v in pairs(Upgrades.UpgradeQueue) do
			ZygorItemPopup.QueueUsed[i]=v and v.itemlink
		end
	end

	ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")

	if not slot then return nil,"no slot" end
	local n_item = Upgrades.UpgradeQueue[slot]
	if not n_item or not n_item.itemlink then return nil,"no upgrade for slot",slot end
	local new_item = ItemScore:GetItemDetails(n_item.itemlink)
	if not new_item then return nil,"no details for item" end

	local c_item = Upgrades.EquippedItems[slot]
	local current_item = c_item and c_item.itemlink and ItemScore:GetItemDetails(c_item.itemlink)
	if c_item and c_item.itemlink and not current_item then return nil,"not current item" end

	local pair_item
	if n_item.pair then
		pair_item = n_item.pair.itemlink and ItemScore:GetItemDetails(n_item.pair.itemlink)
		if not pair_item then return nil,"no pair link" end
	end

	local F = Upgrades.EquipPopup
	local AnchorTo = F.AnchorTo

	-- keep references for debugging
	F.n_item = n_item
	F.c_item = c_item

	-- clean up
	F.item_double:Hide()
	F.item1:Hide()
	F.item2:Hide()
	F.string_with:Hide()

	F.LayoutFull = function(self)
		self.declinebutton:Show()
		self.acceptbutton:Show()
		self.background:Show()
		self.Center:Show()
		self.text:Show()
		self.settings:Show()
		self.minimize:Show()

		if ZGV.NotificationCenter.FloatingToast then ZGV.NotificationCenter.FloatingToast:Hide() end
	

		local changes
		if current_item then
			F:SetText(L['itemscore_ae_equip1'])

			F.string_with:Show()	
			F.stattext:Show()
			local mode_old = current_item.artifactscore and "artifact"
			local mode_new = new_item.artifactscore and "artifact"

			if pair_item then 
				if n_item.twohand then
					-- we are replacing mh/oh with th. in that case pair_item in is the oh that will also be replaced, so switch them around
					F.item_double.itemicon1:SetTexture(current_item.texture)
					F.item_double.itemicon2:SetTexture(pair_item.texture)
					F.item_double.itemlink1:SetText(current_item.itemlinkfull)
					F.item_double.itemlink2:SetText(pair_item.itemlinkfull)

					F.item_double.link1 = current_item.itemlinkfull
					F.item_double.link2 = pair_item.itemlinkfull

					F.item2:SetItem(new_item)	

					--[[ items --]]	AnchorTo(F.item_double,F.text)
					--[[ with  --]]	AnchorTo(F.string_with,F.item_double)
					--[[ item2 --]]	AnchorTo(F.item2,F.string_with,7)
					--[[ stats --]]	AnchorTo(F.stattext,F.item2)

					changes = Upgrades:GetStatChange(new_item.itemlink,current_item.itemlink,pair_item.itemlink,mode_new,"equip_pair")
				else
					-- we are replacing th with mh/oh. items are it correct slots
					F.item1:SetItem(current_item)	

					F.item_double.itemicon1:SetTexture(new_item.texture)
					F.item_double.itemicon2:SetTexture(pair_item.texture)
					F.item_double.itemlink1:SetText(new_item.itemlinkfull)
					F.item_double.itemlink2:SetText(pair_item.itemlinkfull)

					F.item_double.link1 = new_item.itemlinkfull
					F.item_double.link2 = pair_item.itemlinkfull

					--[[ item1 --]]
					--[[ with  --]] AnchorTo(F.string_with,F.item1)
					--[[ items --]]	AnchorTo(F.item_double,F.string_with,3)
					--[[ stats --]]	AnchorTo(F.stattext,F.item_double,5)

					changes = Upgrades:GetStatChange(new_item.itemlink,pair_item.itemlink,current_item.itemlink,"equip_pair",mode_old)
				end
				F.item_double:Show()
			else
				F.item1:SetItem(current_item,1)
				F.item2:SetItem(new_item,2)	
				--[[ item1 --]]
				--[[ with  --]]	AnchorTo(F.string_with,F.item1)
				--[[ item2 --]]	AnchorTo(F.item2,F.string_with)
				--[[ stats --]]	AnchorTo(F.stattext,F.item2)
				F.item2:Show()
				F.item2:ClearAllPoints()
				F.item2:SetPoint("LEFT",F,"LEFT")
				F.item2:SetPoint("TOP",F.string_with,"BOTTOM",0,-7)

				changes = Upgrades:GetStatChange(new_item and new_item.itemlink,current_item and current_item.itemlink)
			end
		else
			F:SetText(L['itemscore_ae_equip2'])

			F.item1:SetItem(new_item)
			F.stattext:Show()		
			F.AnchorTo(F.stattext,F.item1)

			changes = Upgrades:GetStatChange(new_item and new_item.itemlink)
		end

		if not changes then return nil,"no changes" end-- something went wrong

		F.stattext.offset = 5
		if ZGV.IsRetail then
		if current_item and new_item and ItemScore.playerlevel>20 then
				local new_ilvl = new_item.itemlvl
				local cur_ilvl = current_item.itemlvl

			if new_ilvl and cur_ilvl and new_ilvl < cur_ilvl then
					changes = changes.."\n|cffffffffThe new item is better, but has lower item level ("..new_ilvl.." vs "..cur_ilvl.."). Keep the old item in your bags for now, as it will help keep your player item level unchanged."
					F.stattext.offset = F.stattext.offset + 10
				end
			end
		end

		if n_item.quest then
			changes = "Quest item"
		end
			
		F.stattext:SetText(changes)
	end

	F.LayoutFloaty = function(self)
		if Upgrades.UpgradeQueueCount == 0 then return end

		local popup
		popup = self

		F.item_double:Hide()
		F.item1:Hide()
		F.item2:Hide()
		F.string_with:Hide()
		F.stattext:Hide()

		self.declinebutton:Hide()
		self.acceptbutton:Hide()
		self.background:Hide()
		self.Center:Hide()
		self.text:Hide()
		self.settings:Hide()
		self.minimize:Hide()
		self.logo:Hide()
		self.logobackground:Hide()

		if not ZGV.db.profile.n_popup_gear then return end

		if not ZGV.Frame:IsVisible() then return end
		--[[
		if Upgrades.NewUpgrade then
			table.wipe(Upgrades.ToastExistingUpgrades)
			for i=1,17,1 do
				if Upgrades.ToastNewUpgrades[i] and Upgrades.ToastNewUpgrades[i].itemlink then
					Upgrades.ToastExistingUpgrades[i] = Upgrades.ToastNewUpgrades[i].itemlink
				else
					Upgrades.ToastExistingUpgrades[i] = ""
				end
			end

			Upgrades.NewUpgrade = false
		end
		--]]

		ZGV.NotificationCenter:HideIcons()
		ZGV.NotificationCenter:CreateFloatingFrame("gear",nil,nil,nil,nil,popup)

		local frame = ZGV.NotificationCenter.FloatingToast
		frame:SetHeight(85)
		if ZGV.ItemScore.Upgrades.UpgradeQueueCount == 1 then
			frame.frameFS:SetText("You have a new gear upgrade available")
		else
			frame.frameFS:SetText("You have "..ZGV.ItemScore.Upgrades.UpgradeQueueCount.." new gear upgrades available")
		end
		frame:SetWidth(frame.frameFS:GetWidth() + 60)
		frame.leftbtn:Show()
		frame.rightbtn:Show()
		frame.centerbtn:Hide()
		frame.dungeon1:Hide()
		frame.dungeon2:Hide()
		frame.message:Hide()
		frame.img:Hide()

		frame.leftbtnFS:SetText("View Upgrades")
		frame.rightbtnFS:SetText("Equip All")

		frame.leftbtn:SetScript("OnClick", function()
			Upgrades.forcefull = true
			ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
			table.wipe(Upgrades.ToastExistingUpgrades)
			Upgrades:ScoreEquippedItems(true)
		--	Upgrades:ProcessPossibleUpgrades()
			frame:Hide()
		end)
		frame.rightbtn:SetScript("OnClick", function()
			Upgrades.StopScanning = true
			if Upgrades.UpgradeQueueCount >0 then
				for i,slot in pairs(Upgrades.UpgradeQueue) do
					if slot.slot then
						Upgrades:Equip(Upgrades.UpgradeQueue[slot.slot])
					end
				end
				Upgrades.StopScanning = false
			end
			ZGV.NotificationCenter:RemoveEntry("ZygorItemPopup")
			table.wipe(Upgrades.ToastExistingUpgrades)
			frame:Hide()
		end)

		if Upgrades.ToastIconArray[1] == nil then
			Upgrades.ToastIconArray[1] = frame.icon1
			Upgrades.ToastIconArray[2] = frame.icon2
			Upgrades.ToastIconArray[3] = frame.icon3
			Upgrades.ToastIconArray[4] = frame.icon4
			Upgrades.ToastIconArray[5] = frame.icon5
		end

		for i,btn in ipairs(Upgrades.ToastIconArray) do
			btn:Hide()
		end

		Upgrades.StopScanning = true

		local  num = 1
		for count=1,17,1 do
			Upgrades.ToastNewUpgrades = Upgrades.UpgradeQueue
			if Upgrades.UpgradeQueue[count] and Upgrades.UpgradeQueue[count].itemlink then
				if num > 5 then
					num = num + 1
				else
					local xpos = ((num-1)*20)+(5*(num-1))
					frame.iconcontainer:SetWidth((num*20)+(5*(num-1)))
					local btn = Upgrades.ToastIconArray[num]
					btn.itemlink = Upgrades.UpgradeQueue[count].itemlink
					local name, _, _, _, _, _,_, _, _, texture = ZGV:GetItemInfo(btn.itemlink)
					btn:SetNormalTexture(texture)
					if num == 1 then
						btn:SetPoint("LEFT", frame.iconcontainer, "LEFT")
					else
						btn:SetPoint("LEFT", frame.iconcontainer, "LEFT", xpos, 0)
					end
					btn:Show()
					num = num + 1
				end
				
			end
		end

		Upgrades.StopScanning = false

		--Check for changes
		if Upgrades.ToastExistingUpgrades[1] then
			for i=1,17,1 do
			--If there was no suggested upgrade for a given slot before, but the player acquired one
				if (Upgrades.ToastNewUpgrades[i] and Upgrades.ToastNewUpgrades[i].itemlink) and Upgrades.ToastExistingUpgrades[i] == "" then
					Upgrades.NewUpgrade = true
					break
			--If player has an item equipped in a given slot, but has obtained an upgrade
				elseif (Upgrades.ToastNewUpgrades[i] and Upgrades.ToastNewUpgrades[i].itemlink ~= nil) and (Upgrades.ToastNewUpgrades[i].itemlink ~= Upgrades.ToastExistingUpgrades[i]) then
					Upgrades.NewUpgrade = true
					break
			--If the player equipped the upgrade and has no other upgrade for the given slot (not sure if that condition works... need to re-test)
				elseif Upgrades.ToastExistingUpgrades[i] ~= "" and (not Upgrades.ToastNewUpgrades[i] or not Upgrades.ToastNewUpgrades[i].itemlink) then
					Upgrades.NewUpgrade = false
				else
					Upgrades.NewUpgrade = false
				end
			end
		else
			Upgrades.NewUpgrade = true
		end

		if Upgrades.NewUpgrade then
			ZGV.UIFrameFade.UIFrameFadeIn(frame, ZGV.db.profile.toastfadetimer, 0, 1)
		end

		if Upgrades.NewUpgrade then
			table.wipe(Upgrades.ToastExistingUpgrades)
			for i=1,17,1 do
				if Upgrades.ToastNewUpgrades[i] and Upgrades.ToastNewUpgrades[i].itemlink then
					Upgrades.ToastExistingUpgrades[i] = Upgrades.ToastNewUpgrades[i].itemlink
				else
					Upgrades.ToastExistingUpgrades[i] = ""
				end
			end
			Upgrades.NewUpgrade = false
			
		end
	end

	if not ZGV.IsRetail and (ZGV.db.profile.n_popup_toast and not ZGV.ItemScore.Upgrades.forcefull and ZGV.Skills.SkillsPopup) then
		ZGV:ScheduleTimer(function()
			if not F:IsVisible() then
				F:Show()
			end
		end,ZGV.db.profile.toastfadetimer+5)
	else
		F:Show()
	end

	return true
end

function Upgrades:Equip(item,retry)
	if not item then return end
	if not (item.bagnum and item.bagslot) then -- we didn't get item location. shouldn't be possible
		Upgrades:ScoreEquippedItems()
		return false
	end

	local _,itemID
	
	local data = C_Container.GetContainerItemInfo(item.bagnum,item.bagslot)
	itemID = data.itemID

	if not itemID then -- item is not there. what the hell? rerun upgrade search
		Upgrades:ScoreEquippedItems()
		return false 
	end 
	
	C_Container.PickupContainerItem(item.bagnum,item.bagslot)
	EquipCursorItem(item.slot)
	if item.pair and not item.twohand then
		C_Container.PickupContainerItem(item.pair.bagnum,item.pair.bagslot)
		EquipCursorItem(item.pair.slot_2)
	end
end