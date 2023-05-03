local name,ZGV = ...

local PointerMap = {}
ZGV.PointerMap = PointerMap

local PREVIEW_ALPHA = 0.5
local PREVIEW_SCALE = 0.5

-- list of elements we do not want visible in our preview mode
-- we will toggle their visibility when showing/hiding preview
local map_display_elements = {
	WorldMapFrameCloseButton,
	WorldMapFrame.BorderFrame,
	WorldMapFrame.NavBar,
	WorldMapFrame.MainHelpButton,
	WorldMapFrame.TitleCanvasSpacerFrame,
	WorldMapFrameBg,
	WorldMapFrame.SidePanelToggle,
	WorldMapFrame.QuestLog
	}

function PointerMap:UpdateSettings()
	if not PointerMap.PreviewVisible then return end

	WorldMapFrame:SetScale(ZGV.db.profile.preview_scale)
	WorldMapFrame:SetAlpha(ZGV.db.profile.preview_alpha)

	if PointerMap.HideTimer then
		ZGV:CancelTimer(PointerMap.HideTimer)
	end
	if ZGV.db.profile.preview_duration>0 then
		PointerMap.HideTimer = ZGV:ScheduleTimer(function() PointerMap:HidePreview("timer") end, ZGV.db.profile.preview_duration) 
	end
end

function PointerMap:DelayShowPreview()
	if PointerMap.DelayTimer then
		ZGV:CancelTimer(PointerMap.DelayTimer)
	end
	PointerMap.DelayTimer = ZGV:ScheduleTimer(function() PointerMap:ShowPreview() end, 1) 
end

-- switch world map into zygor preview mode
function PointerMap:ShowPreview()
	if InCombatLockdown() then 
		PointerMap:DelayShowPreview()
		return 
	end
	if QuestFrame:IsVisible() or GossipFrame:IsVisible() or TaxiFrame:IsVisible() then 
		PointerMap:DelayShowPreview()
		return 
	end

	if not ZGV.CurrentStep or not ZGV.CurrentStep.map then return end

	-- if user already has map out, don't change stuff
	if WorldMapFrame and WorldMapFrame:IsVisible() and not PointerMap.PreviewVisible then return end

	if ZGV.db.profile.preview_control=="manual" then ZGV.db.char.previewhidden=nil end

	if not GetCVarBool("closedInfoFrames") then SetCVarBitfield( "closedInfoFrames", LE_FRAME_TUTORIAL_WORLD_MAP_FRAME, true ) end			

	if not GetCVarBool("miniWorldMap") then 
		ZGV.db.char.restoreFullMap = true
		WorldMapFrame:Minimize()
	end

	if GetCVar("questLogOpen") then QuestMapFrame_Hide() end

	-- hide elements	
	for _,element in pairs(map_display_elements) do 
		element:Hide() 
	end

	-- Make map not interactive
	WorldMapFrame.ScrollContainer:EnableMouse(false)

	PointerMap.PreviewVisible=true

	ShowUIPanel(WorldMapFrame)

	-- hide elements again, since some get displayed after ShowUIPanel
	-- we do that twice to avoid elements flicker
	for _,element in pairs(map_display_elements) do 
		element:Hide() 
	end
	
	PointerMap:UpdateSettings()
	WorldMapFrame:EnableMouse(false)
	PlayerMovementFrameFader.RemoveFrame(WorldMapFrame)
end

function PointerMap:HidePreview(manual)
	if not PointerMap.PreviewVisible then return end
	if InCombatLockdown() then return end

	HideUIPanel(WorldMapFrame)
	PointerMap:RestoreMapSettings(manual)
end

-- restore world map into regular blizzard mode
function PointerMap:DelayRestoreMap(manual)
	if PointerMap.DelayRestoreMapTimer then
		ZGV:CancelTimer(PointerMap.DelayRestoreMapTimer)
	end
	PointerMap.DelayRestoreMapTimer = ZGV:ScheduleTimer(function() PointerMap:RestoreMapSettings(manual) end, 1) 
end

function PointerMap:RestoreMapSettings(manual)
	if not PointerMap.PreviewVisible then return end
	if InCombatLockdown() then PointerMap:DelayRestoreMap(manual) return end

	if ZGV.db.profile.preview_control=="manual" and manual then ZGV.db.char.previewhidden=true end

	if ZGV.db.char.restoreFullMap then 
		ZGV.db.char.restoreFullMap = false
		WorldMapFrame:Maximize()
	else
		WorldMapFrame.ScrollContainer.Child:SetPoint("TOPLEFT",0,0)
		if GetCVar("questLogOpen") then QuestMapFrame_Show() end
	end


	for _,element in pairs(map_display_elements) do 
		element:Show()
	end

	-- Make map interactive
	WorldMapFrame.ScrollContainer:EnableMouse(true)

	if PointerMap.HideTimer then
		ZGV:CancelTimer(PointerMap.HideTimer)
	end

	PlayerMovementFrameFader.AddDeferredFrame(WorldMapFrame, .5, 1.0, .5, function() return GetCVarBool("mapFade") and not WorldMapFrame:IsMouseOver() end);

	WORLD_MAP_MAX_ALPHA=1
	WorldMapFrame:SetScale(1)
	WorldMapFrame:SetAlpha(1)
	WorldMapFrame:EnableMouse(true)
	PointerMap.PreviewVisible = false
end

function PointerMap:FadeOut() 
	if not PointerMap.PreviewVisible then return end
	WorldMapFrame:SetAlpha(ZGV.db.profile.preview_alpha/2) 
end

function PointerMap:FadeIn() 
	if not PointerMap.PreviewVisible then return end
	WorldMapFrame:SetAlpha(ZGV.db.profile.preview_alpha) 
end

function PointerMap.EventHandler(self,event)
	if event=="PLAYER_STARTED_MOVING" then
		PointerMap:FadeOut()
	elseif event=="PLAYER_STOPPED_MOVING" then
		PointerMap:FadeIn()
	end
end

function PointerMap:ShouldShowPreview() 
	if not ZGV.db.profile.preview then return false,"disabled" end
	if not ZGV.db.profile.arrowshow then return false,"arrow disabled" end
	if not ZGV.CurrentGuide then return false,"no guide" end
	if not ZGV.Frame:IsVisible() then return false,"viewer hidden" end

	return not GetPlayerFacing()
end

function PointerMap:IsPreviewShown() 
	return ZGV.PointerMap.PreviewVisible
end

tinsert(ZGV.startups,{"Map preview",function(self)
	hooksecurefunc("ToggleWorldMap",function() PointerMap:RestoreMapSettings("manual") end)
	hooksecurefunc(GossipFrame,"Show",function() PointerMap:HidePreview() end)
	hooksecurefunc(QuestFrame,"Show",function() PointerMap:HidePreview() end)
	hooksecurefunc("CloseSpecialWindows",function() PointerMap:RestoreMapSettings("manual") end)
	
	PointerMap.TrackerFrame = ZGV.ChainCall(CreateFrame("FRAME"))
		:SetScript("OnEvent",PointerMap.EventHandler)
		:RegisterEvent("PLAYER_STARTED_MOVING")
		:RegisterEvent("PLAYER_STOPPED_MOVING")
	.__END
end})