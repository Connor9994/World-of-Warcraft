local DefsCameraZoom = CreateFrame( "Frame" )
local function CameraZoom()
	if ( C_CVar.GetCVar( "cameraDistanceMaxZoomFactor" ) ~= "4" ) then
		C_CVar.SetCVar( "cameraDistanceMaxZoomFactor", 4 )
	end
end
DefsCameraZoom:SetScript( "OnEvent", function( self, event )
	if ( event == "PLAYER_ENTERING_WORLD" ) then
		if InCombatLockdown() then
			self:RegisterEvent( "PLAYER_REGEN_ENABLED" )
		else
			CameraZoom()
		end
		C_Timer.After( 60, CameraZoom )
	elseif ( event == "PLAYER_REGEN_ENABLED" ) then
		CameraZoom()
	end
	self:UnregisterEvent( event )
end )
DefsCameraZoom:RegisterEvent( "PLAYER_ENTERING_WORLD" )