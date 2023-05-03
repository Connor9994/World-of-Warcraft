local name,ZGV = ...

ZGV.TalentAdvisor = {}

local TA = ZGV.TalentAdvisor
local CHAIN = ZGV.ChainCall

function TA.Initialise()
	if TA.Initialised then return end
	-- hook functions
	ClassTalentFrame.SpecTab:HookScript("OnShow",TA.SetSpec)
	ClassTalentFrame.TalentsTab:HookScript("OnShow",TA.SetTalents)
	ClassTalentFrame.TalentsTab.SelectionChoiceFrame:HookScript("OnShow",TA.SetSelectionTalents)
	--ZGV:AddEventHandler("TRAIT_NODE_CHANGED",TA.DelayedSetTalents)
	ZGV:AddEventHandler("TRAIT_TREE_CURRENCY_INFO_UPDATED",TA.DelayedSetTalents)

	-- set up icons
	TA.IconPool = CreateFramePool("BUTTON",nil,"ZygorTalentIconButton")
	TA.IconSelectionPool = CreateFramePool("BUTTON",nil,"ZygorTalentIconButton")

	TA.SpecIcon  = CHAIN(CreateFrame("Button"))
		:SetSize(30,30)
		:SetPoint("TOPRIGHT")
		:SetNormalTexture(ZGV.DIR.."\\Skins\\zygor-round")
		:SetFrameStrata("HIGH")
		:SetFrameLevel(76)
		:SetScript("OnEnter", function() TA.ShowTooltip(TA.SpecIcon) end)
		:SetScript("OnLeave", function() GameTooltip:Hide() end)
		:Hide()
	.__END
	TA.SpecIcon:GetNormalTexture():SetTexCoord(0,0,0,1/2 , 1,0,1,1/2)

	-- add menu button
	local mapbuttonsize=20
	TA.MenuButton = CHAIN(ZGV.CreateFrameWithBG("Button", nil , ClassTalentFrame.TalentsTab))
		:SetSize(26,26)
		:SetPoint("RIGHT",ClassTalentFrame.TalentsTab.ApplyButton,"LEFT", -20, 0)
		:SetNormalTexture(ZGV.SKINSDIR.."zygor-round")
		:SetFrameLevel(611)
		:SetScript("OnClick", function() TA:ShowMenu() end)
		:Show()
	.__END
	TA.MenuButton:GetNormalTexture():SetTexCoord(0,0,0,1/2 , 1,0,1,1/2)

	-- record class
	TA.PlayerClass = select(2,UnitClass("player"))
	TA.ClassBuilds = TA.Builds[TA.PlayerClass]

	TA.Initialised = true
end

function TA.ShowTooltip(object)
	GameTooltip:SetOwner(object,"ANCHOR_TOP")
	GameTooltip:SetText("Zygor recommendation")
	GameTooltip:Show()
end

function TA.SetSpec()
	if not ZGV.db.profile.talenton then return end

	local suggested_spec
	for _,specdata in pairs(TA.Builds[TA.PlayerClass]) do
		if specdata[2]==true then
			suggested_spec = specdata[1]
		end
	end
	
	for frame in ClassTalentFrame.SpecTab.SpecContentFramePool:EnumerateActive() do
		if frame.specIndex == suggested_spec then
			TA.SpecIcon:SetParent(frame)
			TA.SpecIcon:ClearAllPoints()
			TA.SpecIcon:SetPoint("TOPRIGHT",frame.SpecImage)
			TA.SpecIcon:Show()
		end
	end
end

function TA.DelayedSetTalents()
	C_Timer.After(0,function() TA.SetTalents()  end)
end

function TA.SetTalents() 
	if not ZGV.db.profile.talenton then return end
	if not ZGV.db.profile.ta_toggle_icons then return end

	-- get build
	TA.ActiveBuild = TA:GetBuild() 

	-- get build status
	local status = TA:GetBuildStatus() 

	-- map blizzard talent buttons to entryIDs
	local blizzbuttons = {}
	for _,blizzbutton in pairs(ClassTalentFrame.TalentsTab.nodeIDToButton) do
		local nodeInfo = blizzbutton.nodeInfo
		for _,entryID in ipairs(nodeInfo.entryIDs) do
			blizzbuttons[entryID] = blizzbutton
		end
	end

	-- for each talent in build, find node, show icons
	TA.IconPool:ReleaseAll()
	for entryID,value in pairs(status) do
		local blizzbutton = blizzbuttons[entryID]
		if blizzbutton then
			local zygorbutton = TA.IconPool:Acquire()
			CHAIN(zygorbutton)
				:SetParent(blizzbutton)
				:SetPoint("TOPRIGHT",blizzbutton,"TOPRIGHT",18,18)
				:SetFrameStrata("HIGH")
				:SetFrameLevel(2000)
				:SetValue(value)
				:Show()
			local nodeinfo = blizzbutton.nodeInfo
			zygorbutton:SetAvailable(nodeinfo.meetsEdgeRequirements)
		end
	end

	if TA.Learning then
		if TA.LearningTimer then
			ZGV:CancelTimer(TA.LearningTimer)
		end
		TA.LearningTimer = ZGV:ScheduleTimer(TA.LearnNextTalent,0.1)
	end
end

function TA.SetSelectionTalents()
	if not ZGV.db.profile.talenton then return end
	if not ZGV.db.profile.ta_toggle_icons then return end

	local blizzbuttons = {}
	for _,blizzbutton in pairs(ClassTalentFrame.TalentsTab.SelectionChoiceFrame.selectionFrameArray) do
		blizzbuttons[blizzbutton.entryID] = blizzbutton
	end

	local status = TA:GetBuildStatus() 
	TA.IconSelectionPool:ReleaseAll()
	for entryID,value in pairs(status) do
		local blizzbutton = blizzbuttons[entryID]
		if blizzbutton then
			local zygorbutton = TA.IconSelectionPool:Acquire()
			CHAIN(zygorbutton)
				:SetParent(blizzbutton)
				:SetPoint("TOPRIGHT",blizzbutton,"TOPRIGHT",10,10)
				:SetFrameStrata("HIGH")
				:SetFrameLevel(2000)
				:SetValue(value)
				:Show()
		end
	end
end

function TA:ParseLines(text)
	local table={}
	local index=1
	local st,en,line
	text = text .. "\n"
	local count
	while (index<#text) do
		st,en,line=string.find(text,"(.-)\n",index)
		if not en then break end
		index = en + 1
		line = line:gsub("//.*$",""):gsub("%-%-.*$","")  -- comments away
		line = line:gsub("^[%s	]+",""):gsub("[%s	]+$","")  -- whitespace away
		line = line:gsub("||","|")
		line = line:gsub("/[0-9]+","")  -- /3 are just fluff, remove

		local name = line
		local id

		if line:find("##") then
			name,id = line:match("(.*)##([0-9]+)")
		end

		local co,na = name:match("([1-9]+)[%s%*x]+(.+)")
		if co then
			count=co
			name=na
		else
			count=1
		end

		if (#line>0) then
			for i=1,count do tinsert(table,{name=name,id=tonumber(id)}) end
		end
	end
	return table
end

function TA:GetBuild() 
	-- get current spec
	local spec = GetSpecialization()
	if not spec then return end

	-- get build data
	local build
	for i,v in pairs(TA.ClassBuilds) do
		if v[1] == spec then
			build = v
		end
	end			

	-- parse build, explode to one point per entry
	if not build.parsed then 
		build.class = TA:ParseLines(build[3]) 
		build.spec = TA:ParseLines(build[4]) 
	end
	
	return build
end

function TA:GetBuildStatus() 
	local build = TA.ActiveBuild
	local status = {}

	local currencyInfo = ClassTalentFrame.TalentsTab.treeCurrencyInfo
	if not currencyInfo then return status end

	local total_points = {}
	for _,talent in ipairs(build.class) do
		if not talent.id then return status end
		total_points[talent.id] = (total_points[talent.id] or 0) + 1
	end
	for _,talent in ipairs(build.spec) do
		if not talent.id then return status end
		total_points[talent.id] = (total_points[talent.id] or 0) + 1
	end

	-- check if nodes have correct amount of points spent
	for _,blizzbutton in pairs(ClassTalentFrame.TalentsTab.nodeIDToButton) do
		local nodeInfo = blizzbutton.nodeInfo
		local activeEntry = nodeInfo.activeEntry 
		local activeEntryID = activeEntry and activeEntry.entryID
		local currentRank = activeEntry and activeEntry.rank or nodeInfo.activeRank

		if activeEntryID then
			if not total_points[activeEntryID] then
				if currentRank>0 then
					status[activeEntryID] = "BAD"
				end
			elseif total_points[activeEntryID]==currentRank then
				status[activeEntryID] = "GOOD"
			elseif total_points[activeEntryID]<currentRank then
				status[activeEntryID] = "BAD"
			else
				status[activeEntryID] = total_points[activeEntryID] - currentRank
			end
		else
			for _,entryID in ipairs(nodeInfo.entryIDs) do
				if not total_points[entryID] then
					if currentRank>0 then
						status[entryID] = "BAD"
					end
				elseif total_points[entryID]==currentRank  then
					status[entryID] = "GOOD"
				elseif total_points[entryID]<currentRank then
					status[entryID] = "BAD"
				else
					status[entryID] = total_points[entryID] - currentRank
				end
			end
		end
	end
			
	-- return array of etries-status for current level
	return status
end

function TA:LearnBuild()
	local build = TA.ActiveBuild
	if not build then return end

	local configID = ClassTalentFrame.TalentsTab.configID
	local treeID = ClassTalentFrame.TalentsTab.talentTreeID
	C_Traits.ResetTree(configID,treeID)

	TA.Learning = true
end


local currency_to_build = {
	[1] = "class",
	[2] = "spec",
}

function TA:LearnNextTalent()
	local build = TA.ActiveBuild
	if not build then return end

	local configID = ClassTalentFrame.TalentsTab.configID
	local treeID = ClassTalentFrame.TalentsTab.talentTreeID

	local entry_to_node = {}
	for _,blizzbutton in pairs(ClassTalentFrame.TalentsTab.nodeIDToButton) do
		local nodeInfo = blizzbutton.nodeInfo
		for _,entryID in ipairs(nodeInfo.entryIDs) do
			entry_to_node[entryID] = nodeInfo
		end
	end

			
	local points_at_level = {}
	local currencyInfo = ClassTalentFrame.TalentsTab.treeCurrencyInfo
	for currency,buildtype in ipairs(currency_to_build) do
		local pointsMax = currencyInfo[currency].maxQuantity
		local builddata = build[buildtype]
		for i=1,pointsMax do
			if builddata[i] then
				local entryID = builddata[i].id
				if entryID then
					points_at_level[entryID] = (points_at_level[entryID] or 0) + 1
					local node = entry_to_node[entryID]
					if node then 
						local activeEntry = node.activeEntry 
						local node_entryID = activeEntry and activeEntry.entryID or node.entryIDs[1]
						local currentRank = activeEntry and activeEntry.rank or node.activeRank or 0

						if node_entryID~=entryID or points_at_level[entryID] > currentRank then
							node.activeEntry = node.activeEntry or {}
							node.activeEntry.entryID = entryID
							node.activeEntry.rank = points_at_level[entryID]
							if #node.entryIDs>1 then
								C_Traits.SetSelection(configID,node.ID,entryID)
							else
								C_Traits.PurchaseRank(configID,node.ID)
							end
							return
						end
					else
						TA.Learning = false
						return
					end
				else
					TA.Learning = false
					return
				end
			end
		end
	end
	TA.Learning = false
	return
end

function TA:Toggle(mode)
	-- show/hide icons
	if not TA.Initialised then return end

	if mode then
		TA.SetSpec()
		TA.SetTalents()
		TA.SpecIcon:Show()
	else
		TA.IconPool:ReleaseAll()
		TA.IconSelectionPool:ReleaseAll()
		TA.SpecIcon:Hide()
	end
end

function TA:ShowMenu()
	local L=ZygorGuidesViewer_L("zta")
	local parent=TA.MenuButton
	if not TA.MenuDropdown then TA.MenuDropdown = CreateFrame("FRAME",nil,TA.MenuButton,"UIDropDownForkTemplate") end
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==TA.MenuDropdown then CloseDropDownForks() return end
	UIDropDownFork_SetAnchor(TA.MenuDropdown, 0, 0, "BOTTOMLEFT", TA.MenuButton, "BOTTOMRIGHT")

	local menu = {
		{ 
			text = L['ta_toggle_icons'],
			keepShownOnClick=true, 
			checked = function() return ZGV.db.profile.ta_toggle_icons end, 
			func = function() 
				ZGV.db.profile.ta_toggle_icons = not ZGV.db.profile.ta_toggle_icons
				TA:Toggle(ZGV.db.profile.ta_toggle_icons)
				UIDropDownFork_Refresh(TA.MenuDropdown) 
			end 
		},
		{
			text = L['ta_select_suggested'],
			func = function() TA:LearnBuild() end,
			notCheckable=0,
		}
	}

	EasyFork(menu,TA.MenuDropdown,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(TA.MenuDropdown, 300)
end

ZygorTalentIconButton_Mixin = {}
function ZygorTalentIconButton_Mixin:SetValue(value)
	ZGV.IconSets.TalentPoints[value]:AssignToTexture(self:GetNormalTexture())
end

function ZygorTalentIconButton_Mixin:SetAvailable(mode)
	self:GetNormalTexture():SetDesaturated(not mode)
end

tinsert(ZGV.startups,{"Talent Advisor",function(self)
	EventUtil.ContinueOnAddOnLoaded("Blizzard_ClassTalentUI", TA.Initialise);
end})