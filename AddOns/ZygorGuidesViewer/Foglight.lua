local _,ZGV = ...

-- GLOBAL ZygorFogLightPinMixin

local Foglight = {}
ZGV.Foglight = Foglight

function Foglight:Startup()
	if ZGV.db.profile.foglight then
		Foglight:ShowOverlay()
	end
end

function Foglight:ShowOverlay()
	if ZGV.IsDataProviderRegistered(WorldMapFrame,Foglight.DataProvider.name) then return end
	WorldMapFrame:AddDataProvider(ZGV.Foglight.DataProvider)
end

function Foglight:HideOverlay()
	if not ZGV.IsDataProviderRegistered(WorldMapFrame,Foglight.DataProvider.name) then return end
	WorldMapFrame:RemoveDataProvider(ZGV.Foglight.DataProvider)
end

function Foglight:ToggleOverlay()
	if ZGV.IsDataProviderRegistered(WorldMapFrame,Foglight.DataProvider.name) then 
		WorldMapFrame:RemoveDataProvider(ZGV.Foglight.DataProvider)
	else
		WorldMapFrame:AddDataProvider(ZGV.Foglight.DataProvider)
		-- todo - get a better fix for overlays not showing if provider is added while map frame is visible.
		-- no, RefreshAllData is not working
		if WorldMapFrame:IsVisible() then
			local map = WorldMapFrame:GetMapID()
			if map then
				WorldMapFrame:Hide()
				OpenWorldMap(map)
			end
		end
	end
end


Foglight.DataProvider = CreateFromMixins(MapCanvasDataProviderMixin);


Foglight.DataProvider.blizz_overlays = {}

Foglight.DataProvider.name = "ZygorFoglightDataProvider"


function Foglight.DataProvider:OnAdded(mapCanvas)
	MapCanvasDataProviderMixin.OnAdded(self, mapCanvas);
	-- a single permanent pin
	local pin = self:GetMap():AcquirePin("ZygorFogLightPinTemplate");
	pin:SetPosition(0.5, 0.5);
	self.pin = pin;

end

function Foglight.DataProvider:OnRemoved(mapCanvas)
	MapCanvasDataProviderMixin.OnRemoved(self, mapCanvas);
	--self:GetMap():RemoveAllPinsByTemplate("ZygorFogLightPinTemplate"); -- for some reason this errors out, and if disabled overlays hide fine...
end

function Foglight.DataProvider:OnShow()
	self:RegisterEvent("MAP_EXPLORATION_UPDATED");
end

function Foglight.DataProvider:OnHide()
	self:UnregisterEvent("MAP_EXPLORATION_UPDATED");
	self.pin:RemoveAllData()
end

function Foglight.DataProvider:OnEvent(event, ...)
	if event == "MAP_EXPLORATION_UPDATED" then
		self:RefreshAllData();
	end
end

function Foglight.DataProvider:OnMapChanged()
	local fullUpdate = true;
	self.pin:RefreshOverlays(fullUpdate);
end

function Foglight.DataProvider:RemoveAllData()
	self.pin:RemoveAllData();
end

function Foglight.DataProvider:RefreshAllData(fromOnShow)
	self.pin:RefreshOverlays(fromOnShow);
end

function Foglight.DataProvider:OnGlobalAlphaChanged()
	if not self.isWaitingForLoad then
		self.pin:RefreshAlpha();
	end
end

--[[ THE Pin ]]--
ZygorFogLightPinMixin = CreateFromMixins(MapCanvasPinMixin);

function ZygorFogLightPinMixin:OnLoad()
	self:SetIgnoreGlobalPinScale(true);
	self:UseFrameLevelType("PIN_FRAME_LEVEL_MAP_EXPLORATION");
	self.overlayTexturePool = CreateTexturePool(self, "ARTWORK", 0);
	self.highlightRectPool = CreateTexturePool(self, "ARTWORK", 0);		-- could be frames, but textures are lighter
	self.textureLoadGroup = CreateFromMixins(TextureLoadingGroupMixin);
end

function ZygorFogLightPinMixin:RemoveAllData()
	self.overlayTexturePool:ReleaseAll();
	self.highlightRectPool:ReleaseAll();
	self.textureLoadGroup:Reset();
	self.isWaitingForLoad = nil;
end

function ZygorFogLightPinMixin:RefreshAlpha()
	self:SetAlpha(self:GetMap():GetGlobalAlpha());
end

function ZygorFogLightPinMixin:OnUpdate(elapsed)
	if self.isWaitingForLoad and self:GetMap():AreDetailLayersLoaded() and self.textureLoadGroup:IsFullyLoaded() then
		self:RefreshAlpha();
		self.isWaitingForLoad = nil;
		self.textureLoadGroup:Reset();
	end
end

function ZygorFogLightPinMixin:RefreshOverlays(fullUpdate)
	self:RemoveAllData();
	if fullUpdate then
		self.isWaitingForLoad = true;
		self:SetAlpha(0);
	end

	local mapID = self:GetMap():GetMapID();

	local our_overlays = Foglight.DataProvider.data[mapID]
	if not our_overlays then return end

	-- Get Blizzard overlays
	local exploredMapTextures = C_MapExplorationInfo.GetExploredMapTextures(mapID);

	-- Mark already used overlays
	table.wipe(Foglight.DataProvider.blizz_overlays)
	if exploredMapTextures then
		for i,v in pairs(exploredMapTextures) do
			if v.fileDataIDs[1] then
				Foglight.DataProvider.blizz_overlays[v.fileDataIDs[1]] = true
			end
		end
	end
	
	-- remove them from our data, since they are already visible
	for i,overlay in pairs(our_overlays) do
		if Foglight.DataProvider.blizz_overlays[overlay[1][1]] then
			table.remove(our_overlays,i)
		end
	end

	
	self.layerIndex = self:GetMap():GetCanvasContainer():GetCurrentLayerIndex();
	local layers = C_Map.GetMapArtLayers(mapID);
	local layerInfo = layers[self.layerIndex];
	local TILE_SIZE_WIDTH = layerInfo.tileWidth;
	local TILE_SIZE_HEIGHT = layerInfo.tileHeight;

	for i, exploredTextureInfo in ipairs(our_overlays) do
		local numTexturesWide = ceil(exploredTextureInfo[2]/TILE_SIZE_WIDTH);
		local numTexturesTall = ceil(exploredTextureInfo[3]/TILE_SIZE_HEIGHT);
		local texturePixelWidth, textureFileWidth, texturePixelHeight, textureFileHeight;
		if not exploredTextureInfo.phase or ZGV.InPhase(exploredTextureInfo.phase) then
			for j = 1, numTexturesTall do
				if ( j < numTexturesTall ) then
					texturePixelHeight = TILE_SIZE_HEIGHT;
					textureFileHeight = TILE_SIZE_HEIGHT;
				else
					texturePixelHeight = mod(exploredTextureInfo[3], TILE_SIZE_HEIGHT);
					if ( texturePixelHeight == 0 ) then
						texturePixelHeight = TILE_SIZE_HEIGHT;
					end
					textureFileHeight = 16;
					while(textureFileHeight < texturePixelHeight) do
						textureFileHeight = textureFileHeight * 2;
					end
				end
				for k = 1, numTexturesWide do
					local texture = self.overlayTexturePool:Acquire();
					if ( k < numTexturesWide ) then
						texturePixelWidth = TILE_SIZE_WIDTH;
						textureFileWidth = TILE_SIZE_WIDTH;
					else
						texturePixelWidth = mod(exploredTextureInfo[2], TILE_SIZE_WIDTH);
						if ( texturePixelWidth == 0 ) then
							texturePixelWidth = TILE_SIZE_WIDTH;
						end
						textureFileWidth = 16;
						while(textureFileWidth < texturePixelWidth) do
							textureFileWidth = textureFileWidth * 2;
						end
					end
					texture:SetWidth(texturePixelWidth);
					texture:SetHeight(texturePixelHeight);
					texture:SetTexCoord(0, texturePixelWidth/textureFileWidth, 0, texturePixelHeight/textureFileHeight);
					texture:SetPoint("TOPLEFT", exploredTextureInfo[4] + (TILE_SIZE_WIDTH * (k-1)), -(exploredTextureInfo[5] + (TILE_SIZE_HEIGHT * (j - 1))));
					texture:SetTexture(exploredTextureInfo[1][((j - 1) * numTexturesWide) + k]);

					texture:SetDrawLayer("ARTWORK", 0);
					texture:Show();
				end
			end
		end
	end
end

function ZygorFogLightPinMixin:OnCanvasScaleChanged()
	if self.layerIndex ~= self:GetMap():GetCanvasContainer():GetCurrentLayerIndex() then
		self:RefreshOverlays();
	end
end

function ZygorFogLightPinMixin:OnCanvasSizeChanged()
	self:SetSize(self:GetMap():DenormalizeHorizontalSize(1.0), self:GetMap():DenormalizeVerticalSize(1.0));
end