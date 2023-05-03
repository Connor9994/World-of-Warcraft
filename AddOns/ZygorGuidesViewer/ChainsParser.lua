
local ZGV=ZGV

local tinsert,tremove=tinsert,tremove

local function split(str,sep)
	local fields = {}
	str = str..sep
	local tinsert=tinsert
	str:gsub("(.-)"..sep, function(c) tinsert(fields, c) end)
	return fields
end

ZGV.ChainsSiblings={}
ZGV.ChainsInProgress={}
-- in: text
-- out: 
--  stripped text
--  stripped text as number
--  bread - bool
--  inlog - bool
local function parse_entry(text)
	text = string.lower(text)

	local bread = text:find(" breadcrumb")
	local inlog = text:find(" inlog")
	local text1 = text:gsub(" breadcrumb",""):gsub(" inlog"," ")
	local text2 = text1:gsub("h ",""):gsub("a "," ")
	
	return text1,tonumber(text2),bread,inlog
end

local function _ParseCond(text)
	local ptext,number,bread,inlog = parse_entry(text)

	if number then -- single quest entry
		if bread then ZGV.ChainsBreadcrumbs[number]=true end
		if inlog then ZGV.ChainsInProgress[number]=true end
		return ptext
	end

	if text.sub(1,5)=="func " then 	-- CODE! God help us.
		text=text.sub(6)
		local func,err = loadstring(text)
		return func
	end

	 -- something more complicated
	text=text:gsub("%s* and %s*"," and "):gsub("%s* or %s*"," or ")
	local conds = split(text," or ")

	if #conds>1 then -- 1 or 2 or 3
		local siblings = {}
		for c,co in ipairs(conds) do 
			local co,number,bread,inlog = parse_entry(co)
			conds[c]=co
			if bread then ZGV.ChainsBreadcrumbs[number]=true end
			if inlog then ZGV.ChainsInProgress[number]=true end

			ZGV.ChainsSiblings[number] = siblings
			table.insert(siblings,co)
		end
		tinsert(conds,1,"OR")
		
		return conds
	else 
		conds = split(text," and ")
		if #conds>1 then -- 1 and 2 and 3
			local siblings = {}
			for c,co in ipairs(conds) do 
				local co,number,bread,inlog = parse_entry(co)
				conds[c]=co
				if bread then ZGV.ChainsBreadcrumbs[number]=true end
				if inlog then ZGV.ChainsInProgress[number]=true end
			end
			
			tinsert(conds,1,"AND")
			return conds
		end
	end
end

ZGV.ChainsRaw = ""
function ZGV:RegisterQuestChains(text)
	self.ChainsRaw = self.ChainsRaw .. text .."\n"
	--print("registered "..#text.." bytes of chains")
end

local yield=coroutine.yield

ZGV.Chains={}
ZGV.ChainsBreadcrumbs={}
function ZGV:ParseQuestChains_yielding(text,Chains)
	if not text then  text = self.ChainsRaw  self.ChainsRaw=nil  end
	if not Chains then Chains = self.Chains end

	if not text then return end

	text=text:gsub("%s*//.-\n","\n"):gsub("\r",""):gsub("%s*\n%s*\n","\n"):gsub("%s*=%s*","="):gsub("%s*,%s*",",")

	local linecount = 0

	local maxlines=1
	local index=1
	while index do
		index=strfind(text,"\n",index+1)
		maxlines=maxlines+1
	end

	index = 1
	ZGV:Debug("Starting parsing quest chains; "..maxlines.." lines")

	debug_chunks={}

	while (index<#text) do
		local st,en,line=strfind(text,"%s*(.-)%s*\n",index)
		--if debug then print(line) end
		if not en then break end
		index = en + 1

		linecount=linecount+1
		if linecount>1000000 then
			return nil,linecount,"More than 1000000 lines!?"
		end

		--line = line:gsub("%s*//.*$","")	-- cut out comments

		-- and here we go.

		local id,data = line:match("^(%d+)=(.*)")
		if id then
			-- that's the 1234=1235 case
			local cond = _ParseCond(data)
			Chains[tonumber(id)]=cond

			--tinsert(ZGV.Chains3,id)
			--tinsert(ZGV.Chains3,cond)
		else
			local chunks=split(line,",")
			if #chunks>1 then
				-- woohoo, mass-chaining!
				for i,chunk in ipairs(chunks) do chunks[i]=_ParseCond(chunk) end

				--tinsert(ZGV.Chains3,line)
				--tinsert(ZGV.Chains3,chunks)

				table.insert(debug_chunks,chunks)

				for i,cond in ipairs(chunks) do
					if i==#chunks then break end
					local post=chunks[i+1]
					if type(cond)=="number" or type(cond)=="string" then cond={cond} end
					if type(post)=="number" or type(post)=="string" then post={post} end
					for j,postq in ipairs(post) do
						if type(postq)=="number" or (type(postq)=="string" and postq~="AND" and postq~="OR") then
							for k,preq in ipairs(cond) do
								if type(preq)=="number" or (type(preq)=="string" and preq~="AND" and preq~="OR") then
									-- adding preq as prerequisite for postq
									if not Chains[postq] then  -- new data
										Chains[postq]=preq
									elseif type(Chains[postq])~="table" then  -- single prereq
										Chains[postq]={"AND",Chains[postq]}
										tinsert(Chains[postq],preq)
										if cond[1]=="AND" or cond[1]=="OR" then Chains[postq][1]=cond[1] end
									else -- existing prereqs
										tinsert(Chains[postq],preq)
										if cond[1]=="AND" or cond[1]=="OR" then Chains[postq][1]=cond[1] end
									end
								end
							end
						end
					end

				end
			else
				ZGV:Print("Parsing chains failed at line "..linecount..": "..line)
			end
		end

		self.loadprogress = linecount/maxlines

		yield()
	end

	ZGV:Debug("Pruning duplicates in quest chains")
	-- now prune it; no dupes allowed!
	for q,req in pairs(Chains) do
		if type(req)=="table" then
			--self:Debug("checking table: "..table.concat(req,",")) yield()
			local i=2
			while i<#req do
				local j=i+1
				while j<=#req do
					if req[i]==req[j] then
						--self:Debug("pruned dupe "..req[i].." in "..q) yield()
						tremove(req,j)
					else
						j=j+1
					end
					assert(j<100,"Overflow 'j' in pruning quest chain dupes")
				end
				i=i+1
				assert(j<100,"Overflow 'i' in pruning quest chain dupes")
			end

			-- down to a number? strip the table.
			if #req==2 then Chains[q]=req[2] end

			--if type(Chains[q])=="table" then self:Debug("result table: "..table.concat(req,",")) else self:Debug("result number: "..Chains[q]) end yield()
		end
	end

	ZGV:Debug("Parsed quest chains.")
end

function ZGV:CreateReverseQuestChains_yielding()
	-- reverse for 'who needs me' lookups
	self.RevChains = {}
	for post,pre in pairs(self.Chains) do
		if type(pre)=="number" then
			if not self.RevChains[pre] then self.RevChains[pre] = {post} else tinsert(self.RevChains[pre],post) end
		elseif type(pre)=="table" then
			for q,pr in ipairs(pre) do
				if type(pr)=="number" then
					if not self.RevChains[pr] then self.RevChains[pr] = {post} else tinsert(self.RevChains[pr],post) end
				end
			end
		end
		yield()
	end
end

function ZGV:CleanupChains()
	local faction_name = (UnitFactionGroup("player")=="Alliance" and "a ") or (UnitFactionGroup("player")=="Horde" and "h ") or ""
	local function get_id(value)
		if tonumber(value) then return tonumber(value) end
		if type(value)=="string" and value=="AND" or value=="OR" then return value end
		if value:find(faction_name) then 
			local sanitised = value:gsub(faction_name,"")
			return tonumber(sanitised)
		end
		return
	end

	local new_chains = {}

	for post,pre in pairs(ZGV.Chains) do
		local target = get_id(post)
		if target then
			new_chains[target] = {}
			local target_array = new_chains[target]

			if type(pre)=="table" then
				for _,preq in pairs(pre) do 
					local sanitised = get_id(preq)
					table.insert(target_array,sanitised)
				end
			else
				local sanitised = get_id(pre)
				table.insert(target_array,sanitised)
			end
		end
	end

	for post,pre in pairs(new_chains) do
		for i,q in pairs(pre) do if q==post then table.remove(pre,i) end end -- remove self loops
		if #pre==2 then table.remove(pre,1) end -- trim empty tables
		if #pre==0 then new_chains[post]=nil end
		if #pre==1 then new_chains[post]=pre[1] end
	end

	ZGV.Chains = new_chains

	for quest,siblings in pairs(ZGV.ChainsSiblings) do
		for i,q in pairs(siblings) do
			siblings[i] = get_id(q)
		end
	end

end

tinsert(ZGV.startups,{"Chain Parser",function(self)
	ZGV:ParseQuestChains_yielding()
	ZGV:CleanupChains()
	ZGV:CreateReverseQuestChains_yielding()
end})


-- ([0-9]+)`([0-9]+)",\n  to  \1",\n[\2]=\1,\n
