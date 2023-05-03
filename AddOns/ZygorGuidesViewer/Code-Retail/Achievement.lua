local name,ZGV = ...

local Achievement = {
	Icons = {},
	AvailGuides = {},
}

ZGV.Achievement = Achievement

tinsert(ZGV.startups,{"Achievement: frame hook",function(self)
	hooksecurefunc("ToggleAchievementFrame",function() Achievement:IconSetup() end)
end})

local CHAIN = ZGV.ChainCall
local L = ZGV.L

--Zygor button for the Achievement Journal

function Achievement.Icon_OnClick(self,but)
	local achievebut=self:GetParent()
	local achieveID = achievebut.id
	if achieveID and Achievement.AvailGuides[achieveID] then
		ZGV.Tabs:LoadGuideToTab(Achievement.AvailGuides[achieveID],1,"achieveid")
		return
	end
	ZGV:Error("How odd. Achievement Zygor Button clicked, but we don't seem to have a guide for %s",achievebut.label:GetText())
end

function Achievement.ScheduleUpdate()
	ZGV:ScheduleTimer(function() Achievement.UpdateIcons() end, 0.0001)
end

function Achievement.UpdateIcons()
	ZGV.SearchIconPool:ReleaseAll()

	local i, blizzbutton
	for i,blizzbutton in ipairs(AchievementFrameAchievements.ScrollBox.view.frames) do
		local button = ZGV.SearchIconPool:Acquire()
		button:SetParent(blizzbutton)
		button:SetPoint("TOPRIGHT",blizzbutton,"TOPRIGHT",-5,-5)
		button:SetFrameLevel(blizzbutton.Shield:GetFrameLevel()+1)
		button.tooltiptext = L['achieveframe_button']:format(blizzbutton.Label:GetText())
		button:SetScript("OnClick", function(...) ZGV.Achievement.Icon_OnClick(...) end)

		local achieveID = blizzbutton.id
	
		if achieveID and Achievement.AvailGuides[achieveID] and blizzbutton:IsShown() then
			ZGV:Debug("&achieveguides Showing icon for achievement %d",achieveID,blizzbutton.Label:GetText())
			button:Show()
		else
			if ZGV.db.profile.debug then
				if not blizzbutton:IsShown() then
					ZGV:Debug("&achieveguides Not showing icon for achievement button %d... hidden",i)
				elseif not achieveID then
					ZGV:Debug("&achieveguides Not showing icon for achievement %s... unknown??",blizzbutton.Label:GetText())
				elseif not Achievement.AvailGuides[achieveID] then
					ZGV:Debug("&achieveguides Not showing icon for achievement %d %s: no guide",achieveID,blizzbutton.Label:GetText())
				elseif blizzbutton.completed then
					ZGV:Debug("&achieveguides Not showing icon for achievement %d %s: completed",achieveID,blizzbutton.Label:GetText())
				end
			end
			button:Hide()
		end
	end
	--]]
end

function Achievement:IconSetup()
	if self.loaded then return end

	for g,guide in ipairs(ZGV.registeredguides) do
		if guide.headerdata.achieveid then
			if type(guide.headerdata.achieveid) == "table" then
				local id
				for _,id in pairs(guide.headerdata.achieveid) do
					self.AvailGuides[id]=guide 
				end
			elseif type(guide.headerdata.achieveid) == "number" then
				self.AvailGuides[guide.headerdata.achieveid]=guide 
			end
		end
	end

	ZGV.SearchIconPool = ZGV.SearchIconPool or CreateFramePool("BUTTON",nil,"ZygorSearchButton")
	hooksecurefunc(AchievementFrameAchievements.ScrollBox,"Update",Achievement.ScheduleUpdate)

	Achievement.loaded=true
end