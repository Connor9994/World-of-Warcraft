local name,ZGV = ...

local TS = ZGV.TooltipScanner
local Localizers = {}
ZGV.Localizers = Localizers

do
	--- Checks the cache for a given NpcID.
	-- @return Localized name of the NPC if cached, or nil if not.

	local NPCCache = {}

	local function GetNPCNameFromCache(NPCid)
		if not NPCCache[NPCid] then 
			local tooltip = TS:GetTooltip(("unit:Creature-%d-%d-%d-%d-%d-%x"):format(0,0,0,0,NPCid,0))
			NPCCache[NPCid] = tooltip[1]
		end
		return NPCCache[NPCid]
	end

	local npcs=ZygorGuidesViewer_L("NPCs")   assert(npcs,"No NPC data loaded")
	function Localizers:GetTranslatedNPC(id,fallbackname)
		if not id then return fallbackname end
		local name_from_cache=GetNPCNameFromCache(id)
		local npc_from_data=npcs[id]
		local name_from_data,desc
		if npc_from_data then  
			name_from_data = npc_from_data:match("(.-)|(.*)")  
			name_from_data = name_from_data or npc_from_data
		end
		if name_from_cache and name_from_cache~=name_from_data then
			npcs[id] = name_from_cache.."|"..(desc or "")
			ZGV:SendMessage("ZGV_NPC_TRANSLATED")
		end
		
		local name = name_from_cache or name_from_data or fallbackname or "(npc "..id..")"
		if desc=="" then desc=nil end
		return name,desc
	end

	function Localizers:FindNPCIdByName(testname)
		for id,name in pairs(npcs) do
			local n=name:match("(.-)|")  if n then name=n end
			if name==testname then
				return id
			end
		end
	end

	-- DO NOT USE for now.
	function Localizers:PruneNPCs()
		error("DON'T prune NPCs.")
		if not npcs then return end
		local faction,_ = UnitFactionGroup("player")
		if not faction then return end
		local badf = (faction=="Alliance") and "H" or "A"
		for i,d in pairs(npcs) do
			if d:sub(1,1)==badf then npcs[i]=nil end
		end
	end

end

do
	function Localizers:GetQuestDataFromTooltip(qid)
		if not qid then return end
		if not ZGV.db.char.maint_fetchquestdata then return nil end

		local tooltip = TS:GetTooltip("quest:"..qid..":1")

		if #tooltip==0 then return false end

		local title, objs

		for i,line in ipairs(tooltip) do
			if i == 1 then
				title = line
			else
				local line=line:match("^%s+%- (.+)$")
				if line then
					local o, n = line:match("^(.-) x.?.?(%d+)$")
					if not o then o = line end
					if not objs then
						objs = {}
					end
					table.insert(objs,{item=o,needed=tonumber(n)})
				end
			end
		end

		return title, objs, color
	end

	local function PruneCachedQuestData()
		local t=time()
		for id,q in pairs(ZGV.questsbyid) do  if not q.time then q.time=t elseif t-q.time>1800 and not q.inlog then ZGV.questsbyid[id]=nil end end
	end

	function Localizers:GetQuestData(qid)
		if not qid then return end
		local t=time()
		local q = ZGV.questsbyid[qid]
		if q then  q.time=t  return q,q.inlog  end

		-- unknown?
		local title,objs
		
		if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
			title = C_QuestLog.GetQuestInfo(qid)
		else
			title,objs = Localizers:GetQuestDataFromTooltip(qid)
			local still_incomplete=false
			if objs then
				-- quest returned, but is its data complete? Might have "" as items!
				for gi,goal in ipairs(objs) do
					if goal.item:match("^%s*$") then  still_incomplete=true  end  -- retry.
				end
			end
		end

		if title and title~="" then
			if math.random()<0.01 then PruneCachedQuestData() end
			local quest = { title=title, id=qid, complete=ZGV.completedQuests[qid], goals=objs, time=t }

			-- if some objectives are known as incomplete, return the data, but don't save it.
			if not still_incomplete then  ZGV.questsbyid[qid]=quest  end

			return quest,false
		end
	end
end
