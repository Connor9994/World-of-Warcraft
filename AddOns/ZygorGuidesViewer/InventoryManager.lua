-- Inventory Manager panel for the upcoming Gold Guide.
-- note: refactored in zgv9

local name,ZGV = ...

-- GLOBAL AdiBagsContainer1,ARKINV_Frame1,Bagnon,BagnonFrameinventory,OneBagFrame
-- GLOBAL InventoryManagerFrame,InventoryMeterBarFrame,InventoryMeterFrame

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local CONTAINER_SCALE=0.75 -- blizz removed this from globals
local CHAIN = ZGV.ChainCall

local db = {} -- ZGV.db.profile not available yet

local HBD=ZGV.HBD

local C_Container = ZGV.Retrofit.C_Container
local Enum = ZGV.Retrofit.Enum

local IM = {
	IM_DEBUG = false,
	isPopupShowing = false, -- let's not spam the player, it only needs to ask once . . .
	isDragging = false,
	iconsHidden = false,

	displayHeight = 22,

	-- Blizzard actually has a rather complicated algorithm in ContainerFrame.lua for positioning the backpack and bags . . .
	-- function UpdateContainerFrameAnchors has the algorithm.
	defaultRight = CONTAINER_OFFSET_X / (CONTAINER_SCALE or 1),
	defaultBottom = CONTAINER_OFFSET_Y / (CONTAINER_SCALE or 1),

	-- Backpack: Copied from SavedVariables file and modified. 
	defaultPoint = {"TOPLEFT", ContainerFrame1, "BOTTOMLEFT", 15, 4},


	defaultWidth = 169,
	
	minWidth = 100, -- minimum width
	displayWidth = 169, -- current width
	useAlternateHooks = false,
	strata = "HIGH",
	isNearVendor = false,
	
}

function IM:AttachViewerVendor()
	if not ZGV.db.profile.repositionviewer then return end

	local frame = ZGV.Frame:GetParent()

	if (frame:GetLeft() < MerchantFrame:GetRight()) and (frame:GetTop()<MerchantFrame:GetTop() and frame:GetTop()>MerchantFrame:GetBottom()) then
		ZGV.F.SaveFrameAnchor(ZGV.Frame:GetParent(),"frame_anchor_prevendor")
	end
end

function IM:DetachViewerVendor()
	if not ZGV.db.profile.repositionviewer then return end

	if ZGV.db.profile.frame_anchor_prevendor then
		ZGV.F.SetFrameAnchor(ZGV.Frame:GetParent(),ZGV.db.profile.frame_anchor_prevendor)
	end
end


local startupSuppress = 100 -- Suppress showing popups on start 


ZGV.IM=IM
local L = ZGV.L

local lastPosition

local SkinData = ZGV.UI.SkinData
-------------------------------------------------------------------------------
-- CreateFrames is where all of the frames are created for all of the various
-- parts of IM. No return value.
-------------------------------------------------------------------------------
function IM:CreateFrames()
	-- Set up for tooltip scanning.
	--_G.CreateFrame( "GameTooltip", "TooltipFrame", nil, "GameTooltipTemplate" ); -- Tooltip name cannot be nil
	--local TooltipFrame = _G.TooltipFrame
	--TooltipFrame:SetOwner( WorldFrame, "ANCHOR_NONE" );

	local bagAddonFrame, bagAddon

	--[[if db.im_lastPosition == nil then  
		bagAddonFrame = ContainerFrame1;
		bagAddon = "Blizzard"
		db.lastParentName = "Blizzard"
		db.lastParent = ContainerFrame1
		bagAddon = "Blizzard"
		db.isSnapped = true
		isSnappedSize = IM.defaultWidth
		IM.defaultPoint = {"BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom}
	elseif db.isSnapped == true and db.lastParent==nil then
		bagAddonFrame = ContainerFrame1;
		-- Default to Blizzard's backpack.
		db.lastParentName = "Blizzard"
		db.lastParent = ContainerFrame1
		bagAddon = "Blizzard"
		db.isSnapped = true
		isSnappedSize = IM.defaultWidth
		IM.defaultPoint = {"BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom}

		-- Detect loaded addons
		bagAddon = IM:GetCurrentBagAddon()
		if bagAddon=="AdiBags" then bagAddonFrame = AdiBagsContainer1 end
		if bagAddon=="ArkInventory" then bagAddonFrame = ARKINV_Frame1 end
		if bagAddon=="OneBag3" then bagAddonFrame = OneBagFrame end
		
		-- Bagnon is a special case: its frame is not available immediately. 
		if bagAddon=="Bagnon" then bagAddonFrame = ContainerFrame1 end	
		
		-- If the player isn't using Blizzard's bags, use the guessed position.
		if bagAddon ~= "Blizzard" then
			IM.defaultPoint = {"BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom}
		end
	end]]--
	
	bagAddon = IM:GetCurrentBagAddon()

	local SkinData = SkinData

	if db.im_lastWidth == nil then db.im_lastWidth = IM.defaultWidth end
	IM.displayWidth = db.im_lastWidth
	
	if db.isSnapped == nil then
		db.isSnapped = true
		db.lastParentName = "Blizzard"
		bagAddonFrame = ContainerFrame1
		local isSnappedSize = IM.defaultWidth
		IM.defaultPoint = {"BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom}
		-- Detect loaded addons
		bagAddon = IM:GetCurrentBagAddon()
		if bagAddon=="AdiBags" then bagAddonFrame = AdiBagsContainer1 end
		if bagAddon=="ArkInventory" then bagAddonFrame = ARKINV_Frame1 end
		if bagAddon=="OneBag3" then bagAddonFrame = OneBagFrame end
		
		-- Bagnon is a special case: its frame is not available immediately. 
		if bagAddon=="Bagnon" then
			bagAddonFrame = ContainerFrame1;
			db.isSnapped = false -- We don't have a way to start it as snapped on first load if the player is using Bagnon.
		end	
		
		-- If the player isn't using Blizzard's bags, use the guessed position.
		if bagAddon ~= "Blizzard" then
			IM.defaultPoint = {"BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom}
		else
			--IM.InventoryManagerFrame:SnapTo(ContainerFrame1, "Blizzard")
		end
	end
	
	if db.isSnappedSize == nil then db.isSnappedSize = IM.displayWidth end
	
	
	-- Hooks used by the frame. Indented to allow folding in jEdit.
	--IM.InventoryManagerFrame--
		IM.InventoryManagerFrame = CHAIN(ZGV.CreateFrameWithBG("Frame","InventoryManagerFrame",UIParent))
			:SetSize(IM.displayWidth,IM.displayHeight)
			--:SetPoint(db.im_lastPosition)
			:SetBackdrop(SkinData("Backdrop"))
			:SetBackdropColor(unpack(SkinData("BackdropColor")))
			:SetBackdropBorderColor(unpack(SkinData("BackdropBorderColor")))
			:SetFrameStrata(IM.strata)
			:SetFrameLevel(1)
			:SetClampedToScreen(true)
			:SetMovable(true) :SetResizable(true) :EnableMouse(true) :RegisterForDrag("LeftButton")
			:Show()
		.__END
		
		if db.isSnapped then
			IM.InventoryManagerFrame:SetWidth(db.isSnappedSize)
		end
		
		local lastParentName -- unused?
		if db.visible and lastParentName == "Zygor Guide" and ZGV.db.profile.im_enable and ZGV.db.profile.enable_vendor_tools then
			IM.InventoryManagerFrame:Show()
		end
		
		function IM.InventoryManagerFrame:OnMouseDown()
			if db.isSnapped == true then
				IM.InventoryManagerFrame:SetParent(UIParent)
			end
			IM.mouseX, IM.mouseY = GetCursorPosition()	-- I'm actually moving the frame manually with the mouse movement.
			IM.mouseX = IM.mouseX / UIParent:GetEffectiveScale()
			IM.mouseY = IM.mouseY / UIParent:GetEffectiveScale()
			IM.dragDeltaX = IM.mouseX - IM.InventoryManagerFrame:GetLeft()
			IM.dragDeltaY = IM.mouseY - IM.InventoryManagerFrame:GetBottom()
			
			if IM.InventoryManagerFrame:GetRight() - IM.InventoryManagerFrame:GetLeft() > IM.displayWidth then IM.dragDeltaX = IM.displayWidth/2 end
		end
		
		function IM.InventoryManagerFrame:OnMouseUp()
		end

		
		function IM.InventoryManagerFrame:OnDragStart()
			GameTooltip:Hide()
			IM.isDragging = true
			IM:UpdateBar()
		end
	
		function IM.InventoryManagerFrame:OnDragStop()
			IM.isDragging = false
			local anchor = {IM.InventoryManagerFrame:GetPoint()}
			anchor[2] = nil
			db.im_lastPosition = anchor
			db.im_lastWidth = IM.displayWidth
		end
	
		function IM.InventoryManagerFrame:OnUpdate()
			local size = IM.InventoryManagerFrame:GetWidth()
			if size ~= IM.displayWidth and IM.isResizing then
				if size < IM.minWidth then
					size = IM.minWidth
					--IM.displayWidth = size
					IM.InventoryManagerFrame:SetWidth(IM.minWidth)
				end
				--IM.InventoryMeterFrame:SetWidth(size - 65)
				--IM.InventoryClickFrame:SetSize(size-65,12)
				if db.isSnapped == false then
					IM.displayWidth = size	-- The snapping code takes care of its own size;
				end				--  we want it to "snap back" to its old size when finished.
				IM:UpdateBar()
			end
				
			-- Snap to stuff
			if IM.isDragging then
				--local point, relativeTo, relativePoint, xOfs, yOfs = IM.InventoryManagerFrame:GetPoint()
				-- Note that relativeTo is sometimes nil.
				IM.mouseX, IM.mouseY = 	GetCursorPosition()
				IM.mouseX = IM.mouseX / UIParent:GetEffectiveScale()
				IM.mouseY = IM.mouseY / UIParent:GetEffectiveScale()
				
				IM.InventoryManagerFrame:SetPoint("BOTTOMLEFT",UIParent,"BOTTOMLEFT",IM.mouseX - IM.dragDeltaX,IM.mouseY - IM.dragDeltaY)
				IM.InventoryManagerFrame:SetPoint("TOPLEFT",UIParent,"BOTTOMLEFT",IM.mouseX - IM.dragDeltaX,IM.mouseY - IM.dragDeltaY + IM.displayHeight)
				IM.InventoryManagerFrame:SetPoint("BOTTOMRIGHT",UIParent,"BOTTOMLEFT",IM.mouseX+IM.displayWidth- IM.dragDeltaX,IM.mouseY - IM.dragDeltaY)
				IM.InventoryManagerFrame:SetPoint("TOPRIGHT",UIParent,"BOTTOMLEFT",IM.mouseX+IM.displayWidth - IM.dragDeltaX,IM.mouseY - IM.dragDeltaY + IM.displayHeight)

				db.isSnapped = false
				
				if IM.InventoryManagerFrame:SnapTo(ContainerFrame1, "Blizzard") then return end
				if IM.InventoryManagerFrame:SnapTo(ZGV.Frame, "Zygor Guide") then return end
				
				-- Third party snapping support
				if IM.InventoryManagerFrame:SnapTo(AdiBagsContainer1, "AdiBags") then return end -- Theoretically we have support, but doesn't work.
				if IM.InventoryManagerFrame:SnapTo(ARKINV_Frame1, "ArkInventory") then return end
				if IM.InventoryManagerFrame:SnapTo(BagnonFrameinventory, "Bagnon") then return end
				if IM.InventoryManagerFrame:SnapTo(OneBagFrame, "OneBag3") then return end
				
				
				--if size ~= IM.displayWidth then
				--	if size < IM.minWidth then
				--		size = IM.minWidth
				--		--IM.displayWidth = size
				--		IM.InventoryManagerFrame:SetWidth(IM.minWidth)
				--	end
				--	IM.InventoryManagerFrame:SetWidth(size)
				--	IM.InventoryMeterFrame:SetWidth(size - 65)
				--	IM.InventoryClickFrame:SetSize(size-65,12)
				--	--if db.isSnapped == false then
				--	--	IM.displayWidth = size	-- The snapping code takes care of its own size;
				--	--end				--  we want it to "snap back" to its old size when finished.
					--IM:UpdateBar()
				--end

			end
		end
		
		function IM.InventoryManagerFrame:OnEnter()
			IM:OnEnter()
		end
		
		function IM.InventoryManagerFrame:OnLeave()
			IM:OnLeave()
		end

		-- attempts to snap InventoryManagerFrame to "parent." Only snaps when in range.
		-- force: Forces frame to snap, regardless (usually used when first loading)
		-- returns true if frame is snapped.
		function IM.InventoryManagerFrame:SnapTo(parent, parentName, force)
			if force == nil then force = false end
			
			if not parent then return false end
			if not parent.GetLeft then error("must be able to call GetLeft on parent") end

			if bagAddon == "Bagnon" and parent:GetName() == "ContainerFrame1" then
				-- Don't snap if Bagnon's frame hasn't loaded yet.
				return
			end
			--Spoo(nil,0,parent)
			
			if not parent:IsVisible() and force~=true then return end -- Don't snap if it's not visible.
			
			local me = IM.InventoryManagerFrame
			local parentLeft = parent:GetLeft()
			local parentRight = parent:GetRight()
			local parentBottom = parent:GetBottom()
			local parentTop = parent:GetTop() -- unused, but could be useful for the future.
			
			local myLeft = IM.InventoryManagerFrame:GetLeft()
			local myTop = IM.InventoryManagerFrame:GetTop()
			local myRight = IM.InventoryManagerFrame:GetRight()
			local myBottom = IM.InventoryManagerFrame:GetBottom()
			
			-- Adjust frame to fit bottom of parent, depending on the addon.			
			local adjustLeft = 0
			local adjustTop = 0
			local adjustRight = 0
			-- There is no adjustBottom because the IM frame is always the same height. 
			
			--------------------------------------------------------
			if parent == ContainerFrame1 then
				adjustLeft = 15
				adjustRight = -8
				adjustTop = 4
			end
			
			if parent == ARKINV_Frame1 then
				adjustLeft = 6
				adjustRight = -6
				adjustTop = 15 -- ArkInventory's frame extends well below its visible parts?
				
				-- apparently sets the frame strata of everything else, thanks to parenting :)
				IM.strata = "HIGH"
				IM.InventoryManagerFrame:SetFrameStrata(IM.strata)

			end
			
			if parent == BagnonFrameinventory then
				adjustLeft = 5
				adjustRight = -5
				adjustTop = 2
				
				if force==true then -- Bagnon lies to us when it first starts.
					parentRight = parentLeft + db.isSnappedSize + adjustLeft - adjustRight
				end
			end
			
			if parent == OneBagFrame then
				adjustLeft = 5
				adjustRight = -5
				adjustTop = 2
			end
			
			if parentName=="Zygor Guide" then
				adjustTop = 1
			end

			IM:UpdateBar()
			-- TODO: Nasty bugs.
			if parentRight == nil then
				parentRight = db.im_startRight
				parentBottom = db.im_startBottom
				parentTop = db.im_startBottom + IM.displayHeight
				parentLeft = db.im_startRight - IM.displayWidth
				--return
			end
			if myTop == nil then
				--error("Can't find me?")
				return false
			end
			local snapDistance = 20
			
			IM.mouseX, IM.mouseY = 	GetCursorPosition()
			IM.mouseX = IM.mouseX / UIParent:GetEffectiveScale()
			IM.mouseY = IM.mouseY / UIParent:GetEffectiveScale()
			--Spoo(nil, 0, parent)
			if (IM.mouseX > parentLeft - snapDistance and IM.mouseX < parentRight + snapDistance and abs(IM.mouseY - parentBottom) < snapDistance) or force==true then
				db.isSnapped = true
				--if parent == nil then error("nil parent") end
				--db.lastParent = parent
				db.lastParentName = parentName
				me:SetPoint("BOTTOMLEFT",parent,"BOTTOMLEFT",adjustLeft,-IM.displayHeight+adjustTop)
				me:SetPoint("TOPLEFT",parent,"BOTTOMLEFT",adjustLeft,adjustTop)
				me:SetPoint("BOTTOMRIGHT",parent,"BOTTOMLEFT",parentRight-parentLeft+adjustRight,-IM.displayHeight+adjustTop)
				me:SetPoint("TOPRIGHT",parent,"BOTTOMLEFT",parentRight-parentLeft+adjustRight,adjustTop)
				
				db.isSnappedSize = (parentRight-parentLeft+adjustRight)-adjustLeft
				db.im_startRight = IM.InventoryManagerFrame:GetRight()
				db.im_startBottom = IM.InventoryManagerFrame:GetBottom()
				
				IM:SetHooks(parent, parentName)
				IM:UpdateBar()
				return true
			else
				--db.lastParent = nil
				db.lastParentName = nil
				local anchor = {IM.InventoryManagerFrame:GetPoint()}
				anchor[2] = nil
				db.im_lastPosition = anchor

				-- Release the hooks when not snapped.
				IM:SetHooks()
				return false
			end
		end
	
		-- Called when the player is done moving the frame. 
		-- snapped: Whether or not the movement ends with the bar snapped to something.
		--function IM.InventoryManagerFrame:endMovement(snapped)
		--	self:StopMovingOrSizing()
		--	db.im_lastPosition = {IM.InventoryManagerFrame:GetPoint()}
		--end
		
		IM.InventoryManagerFrame:SetScript("OnMouseDown", IM.InventoryManagerFrame.OnMouseDown)
		IM.InventoryManagerFrame:SetScript("OnMouseUp", IM.InventoryManagerFrame.OnMouseUp)
		IM.InventoryManagerFrame:SetScript("OnDragStart", IM.InventoryManagerFrame.OnDragStart)
		IM.InventoryManagerFrame:SetScript("OnDragStop", IM.InventoryManagerFrame.OnDragStop)
		IM.InventoryManagerFrame:SetScript("OnUpdate", IM.InventoryManagerFrame.OnUpdate)
		IM.InventoryManagerFrame:SetScript("OnEnter", IM.InventoryManagerFrame.OnEnter)
		IM.InventoryManagerFrame:SetScript("OnLeave", IM.InventoryManagerFrame.OnLeave)

	--end IM.InventoryManagerFrame--


	-- last position was attached to a bag.
	
	-- Note that if the player changes addons when the
	-- bar was previously snapped, it may not be accurate!

	--print(db.lastParentName)
	--print(bagAddon)
	
	if db.isSnapped then
		-- First time start
		if db.im_lastPosition == nil then
			IM.InventoryManagerFrame:SetPoint("BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom)
			IM.displayWidth = IM.defaultWidth
			IM.InventoryManagerFrame:SetWidth(IM.displayWidth)
			--db.isSnapped = false
			lastPosition = IM.InventoryManagerFrame:GetPoint()
		--Zygor
		elseif db.lastParentName=="Zygor Guide" then
			lastPosition = db.im_lastPosition
			lastPosition[2] = ZGV.Frame
			--db.lastParent = ZGV.Frame
			IM.InventoryManagerFrame:SetPoint(unpack(lastPosition))
			if ZGV.db.profile.im_enable and ZGV.db.profile.enable_vendor_tools then -- Never show frame when IM is disabled.
				IM.InventoryManagerFrame:Show()
			end 
		--Blizzard
		elseif db.lastParentName=="Blizzard" then
			--and not (db.im_lastPosition[2].handler and db.im_lastPosition[2].handler.baseName == "OneBag3") then
			if bagAddon == "Blizzard" then
				lastPosition = db.im_lastPosition
				lastPosition[2] = ContainerFrame1
				--db.lastParent = ContainerFrame1
				bagAddonFrame = ContainerFrame1
				IM.InventoryManagerFrame:SetPoint(unpack(lastPosition))
			else -- Player has switched to an addon - don't keep it hooked to the Backpack!
				IM.InventoryManagerFrame:SetPoint("BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom)
				IM.displayWidth = IM.defaultWidth
				IM.InventoryManagerFrame:SetWidth(IM.displayWidth)
				db.isSnapped = false
			end
		--ArkInventory
		elseif db.lastParentName=="ArkInventory" then
			if bagAddon == "ArkInventory" then
				lastPosition = db.im_lastPosition
				lastPosition[2] = ARKINV_Frame1
				bagAddonFrame = ARKINV_Frame1
				--db.lastParent = ARKINV_Frame1
				IM.InventoryManagerFrame:SetPoint(unpack(lastPosition))
				--IM:SetHooks(ARKINV_Frame1,"ArkInventory")
			else -- Player has stopped using ArkInventory
				IM.InventoryManagerFrame:SetPoint("BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom)
				IM.displayWidth = IM.defaultWidth
				IM.InventoryManagerFrame:SetWidth(IM.displayWidth)
				db.isSnapped = false
			end
		-- Bagnon
		elseif db.lastParentName=="Bagnon" then
			if bagAddon == "Bagnon" then
				IM.InventoryManagerFrame:SetPoint(unpack(IM.defaultPoint))
				db.isSnapped = true
				IM.displayWidth = IM.defaultWidth
				
				lastPosition = db.im_lastPosition
				lastPosition[2] = BagnonFrameinventory
				IM.InventoryManagerFrame:SetPoint(unpack(lastPosition))
				IM.InventoryManagerFrame:SetWidth(IM.displayWidth)
				--IM.InventoryManagerFrame:SetWidth(BagnonFrameinventory.bagFrame:GetWidth())
			else
				IM.InventoryManagerFrame:SetPoint("BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom)
				IM.displayWidth = IM.defaultWidth
				IM.InventoryManagerFrame:SetWidth(IM.displayWidth)
				db.isSnapped = false
			end
		-- OneBag3
		elseif db.lastParentName=="OneBag3" then
			if bagAddon == "OneBag3" then
				lastPosition = db.im_lastPosition
				lastPosition[2] = OneBagFrame
				--db.lastParent = OneBagFrame
				IM.InventoryManagerFrame:SetPoint(unpack(lastPosition))
			else
				IM.InventoryManagerFrame:SetPoint("BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom)
				IM.displayWidth = IM.defaultWidth
				IM.InventoryManagerFrame:SetWidth(IM.displayWidth)
				db.isSnapped = false
			end
		-- Unknown parent
		else
			IM.InventoryManagerFrame:SetPoint(unpack(IM.defaultPoint))
		end
	elseif db.im_lastPosition then
		ZGV.F.SetFrameAnchor(IM.InventoryManagerFrame,db.im_lastPosition)
	else
		IM.InventoryManagerFrame:SetPoint("BOTTOMRIGHT", nil, "BOTTOMRIGHT", IM.defaultRight, IM.defaultBottom)
		IM.displayWidth = IM.defaultWidth
		IM.InventoryManagerFrame:SetWidth(IM.displayWidth)
		db.isSnapped = false

	end	

	--Spoo(nil, 0, ZGV.db.profile["Inventory Manager"])
	
	-- Bag hooking code to make IM appear/disappear when bags are
	-- opened or closed.

	-- Didn't find a reliable event, so - yes, I'm hooking the Hide and Show events . . .
	if db.isSnapped==true then
		IM:SetHooks(bagAddonFrame)
	end

	-- Yeah, I'm hooking Zygor itself.
	-- TODO: Is adding events perhaps a more proper way of doing it?
	-- GuideMenu.lua, lines 1164 and 1184 are the current menu show/hide hooks
	if db.lastParentName == "Zygor Guide" then
		IM:SetHooks(ZGV.Frame)
	end
	
	-- /spoo BagnonFrameinventoryCloseButton
	
	-- Crazy hack to hook Bagnon's "Hide" function. It's actually two nested hooks . . .
	if Bagnon and Bagnon.Frame.CreateBagFrame and db.lastParentName == "Bagnon" then
		local oldCreateFrame = Bagnon.Frame.CreateBagFrame
		Bagnon.Frame.CreateBagFrame = function(...)
			--error("Create now plz!")

			bagAddonFrame = oldCreateFrame(...)
			
			local oldBagnonHide = BagnonFrameinventory.Hide
			BagnonFrameinventory.Hide = function(...)
				IM.HideFrame(BagnonFrameinventory)
				oldBagnonHide(...)
			end

			
			IM.InventoryManagerFrame:SnapTo(BagnonFrameinventory, "Bagnon")

			IM.NotFirstShow = false
			local oldBagnonShow = BagnonFrameinventory.Show
			BagnonFrameinventory.Show = function(...)
				--NOTE: Snaps to the window on first load. Unfortunately, the size isn't set until later.
				oldBagnonShow(...)
				IM.ShowFrame()

				if not IM.NotFirstShow then
					IM.InventoryManagerFrame:SnapTo(BagnonFrameinventory, "Bagnon", true)
					IM.NotFirstShow = true
				end

			end

			--print(BagnonFrameinventory:GetLeft()) -- nil on first load . . .
			--Spoo(nil,0,BagnonFrameinventory)
			-- Snap to it, if needed.
			
			--TODO: Problem is, even at this point, the frame doesn't
			--have all of its information available yet.
			--IM.InventoryManagerFrame:SnapTo(BagnonFrameinventory, "Bagnon", true)
			return bagAddonFrame
		end
		
		--local oldPlaceFrame = Bagnon.Frame.Layout
		--Bagnon.Frame.Layout = function(...)
		--	returns = {oldPlaceFrame(...)}
		--	IM.InventoryManagerFrame:SnapTo(BagnonFrameinventory, true)
		--	return unpack(returns)
		--end
		
	end
	
	-- Bagnon only loads its frame on first use, so we need an alternative
	-- method of hooking it.
	if Bagnon then
		IM.useAlternateHooks = true
	end

	-- Alternative low level hooks for addons that don't load their bag frame immediately.
	if IM.useAlternateHooks then
		
		local oldOpenBackpack = OpenBackpack
		OpenBackpack = function(...)
			IM:Debug("OpenBackpack")
			IM.ShowFrame()
			oldOpenBackpack(...)
		end
		
		local oldOpenBag = OpenBag
		OpenBag = function(bagNum, ...)
			IM:Debug("OpenBag #%d",bagNum)
			if bagNum == 0 then -- only for backpack
				IM.ShowFrame()
			end
			oldOpenBag(bagNum,...)
		end
	
		local oldOpenAllBags = OpenAllBags
		OpenAllBags = function(forceOpen, ...)
			IM:Debug("OpenAllBags")
			if forceOpen then
				IM.ShowFrame()
			else
				IM.ToggleFrame() -- It's actually normally a toggle . . .
			end
			oldOpenAllBags(forceOpen, ...)
		end
		
		local oldCloseAllBags = CloseAllBags
		CloseAllBags = function(...)
			IM:Debug("CloseAllBags")
			IM.HideFrame()
			oldCloseAllBags(...)
		end
	
		local oldCloseBackpack = CloseBackpack
		CloseBackpack = function(...)
			IM:Debug("CloseBackpack")
			IM.HideFrame()
			oldCloseBackpack(...)
		end
	
		local oldCloseBag = CloseBag
		CloseBag = function(bagNum, ...)
			IM:Debug("CloseBag")
			if bagNum == 0 then -- only for backpack
				IM.HideFrame()
			end
			oldCloseBag(bagNum, ...)
		end
		
		local oldToggleAllBags = ToggleAllBags
		ToggleAllBags = function(...)
			IM:Debug("ToggleAllBags")
			IM:ToggleFrame()
			oldToggleAllBags(...)
		end
	
		local oldToggleBag = ToggleBag
		ToggleBag = function(bagNum, ...)
			IM:Debug("ToggleBag #%d",bagNum)
			if bagNum == 0 then -- only for backpack
				IM.ToggleFrame()
			end
			oldToggleBag(bagNum, ...)
		end
	
		local oldToggleBackpack = ToggleBackpack
		ToggleBackpack = function(...)
			IM:Debug("ToggleBackpack")
			IM.ToggleFrame()
			oldToggleBackpack(...)
		end
	end
	
	function IM.ShowFrame(frame)
		do return end
		if not (ZGV.db.profile.im_enable and ZGV.db.profile.enable_vendor_tools) then return end -- Never show frame when IM is disabled.
		if frame and db.lastParent == frame then
			InventoryManagerFrame:Show()
		elseif frame==nil then
			InventoryManagerFrame:Show()
		end

	end
	
	-- frame = frame that is hiding or showing.
	function IM.HideFrame(frame)
		do return end
		if db.isSnapped and db.lastParent == frame then
			InventoryManagerFrame:Hide()
		end
	end
	
	function IM.ToggleFrame()
		if InventoryManagerFrame:IsShown() then
			IM.HideFrame()
		else
			IM.ShowFrame()
		end
	end
	
	-----------------------------------------------------------------------
	-- Create frames for the various components 
	-----------------------------------------------------------------------
	
	local InventoryManagerFrame=InventoryManagerFrame

	IM.ResizeButton = CHAIN(ZGV.CreateFrameWithBG("Button","ResizeButton",InventoryManagerFrame))
		:SetSize(3,IM.displayHeight)
		:SetPoint("TOPRIGHT",InventoryManagerFrame,"TOPRIGHT",0,0)
		--:SetPoint("CENTER",UIParent,"CENTER",25,0)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(1,1,1,0.0) -- Normally invisible, but you can make it visible here for debugging.
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(2)
		:EnableMouse(true)
		:SetScript("OnEnter", function(self)
			IM:OnEnter()
			if not db.isSnapped then -- Don't resize when snapped
				IM:ShowTooltip("Resize")
			end
		end)
		:SetScript("OnLeave", function(self)
			IM:OnLeave()
			GameTooltip:Hide()
		end)
		:EnableMouse(true) :RegisterForDrag("LeftButton")
		--:SetScript("OnClick",function() ZygorGuidesViewer:OpenOptions("display") end)
		:SetScript("OnDragStart",function(self) 
			IM.isResizing = true
			if not db.isSnapped then -- Don't resize when snapped
				InventoryManagerFrame:StartSizing("RIGHT")
			end
		end)
		:SetScript("OnDragStop",function(self)
			IM.isResizing = false
			if not db.isSnapped then -- Don't resize when snapped
				InventoryManagerFrame:StopMovingOrSizing()
				db.im_lastWidth = IM.displayWidth
			end
		end)
		:Show()
		
	.__END	

	IM.ConfigButton = CHAIN(CreateFrame("Button","ConfigButton",InventoryManagerFrame))
		:SetSize(16,16)
		:SetPoint("TOPRIGHT",InventoryManagerFrame,"TOPRIGHT",-3,-3)
		--:SetPoint("CENTER",UIParent,"CENTER",25,0)
		--:SetBackdrop({bgFile=ZGV.DIR.."\\GoldGuide\\config-gear"})
		--:SetBackdropColor(1,1,1,1.0)
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(2)
		:EnableMouse(true)
		:SetScript("OnEnter", function(self)
			IM:OnEnter()
			IM:ShowTooltip("Options")
		end)
		:SetScript("OnLeave", function(self)
			IM:OnLeave()
			GameTooltip:Hide()
		end)
		:SetScript("OnClick",function() ZGV:OpenOptions("gold") end)
		:Show()
		
		-- Make the frame draggable from anywhere.
		:EnableMouse(true) :RegisterForDrag("LeftButton")
		:SetScript("OnMouseDown",function(self) InventoryManagerFrame:OnMouseDown() end)
		:SetScript("OnMouseUp",function(self) InventoryManagerFrame:OnMouseUp() end)
		:SetScript("OnDragStart",function(self) InventoryManagerFrame:OnDragStart() end)
		:SetScript("OnDragStop",function(self)	InventoryManagerFrame:OnDragStop() end)

	.__END
	
	IM.ConfigButton.icon = CHAIN(IM.ConfigButton:CreateTexture()) :SetPoint("CENTER",IM.ConfigButton,"CENTER",0,0)
		:SetSize(16,16)
		:SetTexture(ZGV.DIR.."\\Skins\\Default\\Stealth\\titlebuttons")
		--ZGV.F.AssignButtonTexture(IM.ConfigButton.icon,(SkinData("TitleButtons")),5,32)
		--:SetTexture()
		:SetTexCoord(4/32,5/32,0,1/4)
	.__END
	
	IM.SearchButton = CHAIN(CreateFrame("Button","SearchButton",InventoryManagerFrame))
		:SetSize(16,16)
		:SetPoint("TOPLEFT",InventoryManagerFrame,"TOPLEFT",3,-3)
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(2)
		
		-- NOTE: FindNPC currently finds holiday vendors, even when it isn't the holiday.
		
		-- Also picks up Katie Hunter in Elwynn Forest as a vendor.
		-- She has requirements: Must be level 20 (able to use mounts)
		-- and also must have the Exalted reputation with Stormwind.
		-- She is a proper vendor when the requirements are met, though.
		-- I suspect there are a lot of exceptional cases like this.
		:SetScript("OnClick",function()
		
		
			if not ZGV.Frame:IsShown() then ZGV.Frame:Show() end
			if ZGV.db.profile.im_prefer_repair and ZGV.db.profile.enable_vendor_tools then
				ZGV.WhoWhere:FindNPC("R")
			else
				ZGV.WhoWhere:FindNPC("IVR")
			end
		end)

		:SetScript("OnEnter", function(self)
			IM:OnEnter()
			IM:ShowTooltip("Find vendor")
		end)
		:SetScript("OnLeave", function(self)
			IM:OnLeave()
			GameTooltip:Hide()
		end)

		:Show()

		-- Make the frame draggable from anywhere.
		:EnableMouse(true) :RegisterForDrag("LeftButton")
		:SetScript("OnMouseDown",function(self) InventoryManagerFrame:OnMouseDown() end)
		:SetScript("OnMouseUp",function(self) InventoryManagerFrame:OnMouseUp() end)
		:SetScript("OnDragStart",function(self) InventoryManagerFrame:OnDragStart() end)
		:SetScript("OnDragStop",function(self) InventoryManagerFrame:OnDragStop() end)
	.__END
	
	IM.SearchButton.icon = CHAIN(IM.SearchButton:CreateTexture()) :SetPoint("CENTER",IM.SearchButton,"CENTER",0,0)
		:SetSize(16,16)
		:SetTexture(ZGV.DIR.."\\Skins\\icons-inventorymanager")
		:SetTexCoord(0,0.125,0,0.5)
	.__END
	
	IM.TrashButton = CHAIN(CreateFrame("Button","TrashButton",InventoryManagerFrame))
		:SetSize(16,16)
		:SetPoint("TOPRIGHT",InventoryManagerFrame,"TOPRIGHT",-22,-3)
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(2)
		
		:SetScript("OnClick",function(self)
			IM:GetCurrentBagAddon()
			
			if not self.Popup then
				self.Popup = ZGV.PopupHandler:NewPopup("ZygorDestroyPopup","default")
				self.Popup:SetText("|cFFffcc42WARNING|r|nThis cannot be undone!","Dump trash?")
				self.Popup.OnAccept = function(self)
					-- Destroy trash.
					IM.destroyTrash()
				end
				-- No notification needed - the player can always click the trash again.
				self.Popup.returnMinimizeSettings = function(self)
					local notifcationText = "Destroy items?"
					local tooltipText = "Click to confirm removal of items"
					local priority = 0
					local removetime = 0
					local poptime = 0
					local quiet = true
					local onShow = nil--function...
				
					return notifcationText,ZGV.L["notifcenter_inventory_manager_title"],tooltipText,priority,poptime,removetime,quiet,onShow
				end
			end
			
			local destroyString = "The following items will be destroyed:\n"
			
			local itemList = IM:getGrayItems()
			--itemList = IM:getItemsBelowValue(10)
			for k, v in pairs(itemList) do
				destroyString = destroyString .. v[3] .. "\n"
			end
			self.Popup:SetText(destroyString,"|cFFffcc42WARNING|r|nThis cannot be undone!")
			self.Popup:Show()
		end)
		:SetScript("OnEnter", function(self)
			IM:OnEnter()
			IM:ShowTooltip("Drop Junk")
		end)
		:SetScript("OnLeave", function(self)
			IM:OnLeave()
			GameTooltip:Hide()
		end)
		:Show()

		-- Make the frame draggable from anywhere.
		:EnableMouse(true) :RegisterForDrag("LeftButton")
		:SetScript("OnMouseDown",function(self) InventoryManagerFrame:OnMouseDown() end)
		:SetScript("OnMouseUp",function(self) InventoryManagerFrame:OnMouseUp() end)
		:SetScript("OnDragStart",function(self) InventoryManagerFrame:OnDragStart() end)
		:SetScript("OnDragStop",function(self) InventoryManagerFrame:OnDragStop() end)
	.__END
	
	IM.TrashButton.icon = CHAIN(IM.TrashButton:CreateTexture()) :SetPoint("CENTER",IM.TrashButton,"CENTER",0,0)
		:SetSize(16,16)
		:SetTexture(ZGV.DIR.."\\Skins\\icons-inventorymanager")
		:SetTexCoord(0.125,0.25,0,0.5)
	.__END
	
	
	-- Now for the progress bar.
	IM.InventoryMeterFrame = CHAIN(ZGV.CreateFrameWithBG("Frame","InventoryMeterFrame",InventoryManagerFrame))
		:SetBackdrop(SkinData("ProgressBarBackdrop"))
		:SetBackdropColor(unpack(SkinData("ProgressBarBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("ProgressBarBackdropBorderColor")))
		:SetHeight(SkinData("ProgressBarHeight"))
		:SetWidth(IM.displayWidth - 65)
		:SetPoint("CENTER",InventoryManagerFrame,"CENTER",-10.5,0)
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(2)
		:Show()
	.__END
	
	IM.InventoryMeterBarFrame = CHAIN(CreateFrame("Frame","InventoryMeterBarFrame",InventoryManagerFrame))
		:SetSize(64,7)
		:SetHeight(SkinData("ProgressBarHeight"))
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(3)
		:Show()
	.__END
	
	IM.InventoryMeterBarFrame.tex = CHAIN(IM.InventoryMeterBarFrame:CreateTexture())
		:SetHeight(SkinData("ProgressBarHeight")-2)
		:SetPoint("TOPLEFT",InventoryMeterFrame,"TOPLEFT",1,-1)
		:SetColorTexture(unpack(SkinData("ProgressBarTexture")))
		:SetVertexColor(unpack(SkinData("ProgressBarColor") or {0,1,0,1}))
	.__END 
	
	IM.InventoryMeterText = InventoryManagerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	local InventoryMeterText = IM.InventoryMeterText
	InventoryMeterText:SetText("N/A")
	InventoryMeterText:SetPoint("CENTER", InventoryMeterFrame, "CENTER", 0, 0)
	InventoryMeterText:SetTextColor(1, 1, 1)
	InventoryMeterText:Hide()
	
	IM.InventoryClickFrame = CHAIN(ZGV.CreateFrameWithBG("Button","InventoryClickFrame",InventoryManagerFrame))
		:SetSize(IM.displayWidth-65,12)
		:SetPoint("TOPLEFT",InventoryMeterFrame,"TOPLEFT",0,2)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
		:SetBackdropColor(1,1,1,0.0)
		:SetFrameStrata(IM.strata)
		:SetFrameLevel(4)
		
		-- Make the frame draggable from anywhere.
		:EnableMouse(true) :RegisterForDrag("LeftButton")
		:SetScript("OnMouseDown",function(self) InventoryManagerFrame:OnMouseDown() end)
		:SetScript("OnMouseUp",function(self) InventoryManagerFrame:OnMouseUp() end)
		:SetScript("OnDragStart",function(self) InventoryManagerFrame:OnDragStart() end)
		:SetScript("OnDragStop",function(self) InventoryManagerFrame:OnDragStop() end)
		
		:SetScript("OnClick",function(self)
			-- Swap bar and text
			if IM.InventoryMeterText:IsShown() then
				IM.InventoryMeterText:Hide()
				InventoryMeterFrame:Show()
				InventoryMeterBarFrame:Show()
				db.showText = false
			else
				InventoryMeterText:Show()
				InventoryMeterFrame:Hide()
				InventoryMeterBarFrame:Hide()
				db.showText = true
			end
			
		end)
		:SetScript("OnEnter", function(self)
			IM:OnEnter()
			IM:ShowTooltip("Inventory:  "..IM.InventoryMeterText:GetText())
		end)
		:SetScript("OnLeave", function(self)
			IM:OnLeave()
			GameTooltip:Hide()
		end)
		:Show()
	.__END

	IM:UpdateBar()


end

----------------------------------

-- OnEnter for entire thing. 
function IM:OnEnter()
	IM.TrashButton:Show()
	IM.ConfigButton:Show()
	IM.SearchButton:Show()
	IM.iconsHidden = false
	IM:UpdateBar()
end

function IM:OnLeave()
	if ZGV.db.profile.im_autohide_icons and ZGV.db.profile.enable_vendor_tools then
		IM.TrashButton:Hide()
		IM.ConfigButton:Hide()
		IM.SearchButton:Hide()
		IM.iconsHidden = true
		IM:UpdateBar()
	end
end

function IM:ShowTooltip(text)
	if not IM.isDragging then -- Don't show a tooltip when dragging!
		if db.isSnapped then -- When snapped to the bottom of a frame, don't obstruct it with the tooltip.
			GameTooltip:SetOwner(IM.InventoryManagerFrame, "ANCHOR_BOTTOM")
		else
			GameTooltip:SetOwner(IM.InventoryManagerFrame, "ANCHOR_TOP")
		end
		GameTooltip:SetText(text)
		GameTooltip:Show()
	end
end

function IM:countItemsInBags()
	local numItems, numSlots = 0, 0
	for bagID=0, NUM_BAG_SLOTS do
		for bagSlotID=1,C_Container.GetContainerNumSlots(bagID) do
			local itemLink = C_Container.GetContainerItemLink(bagID,bagSlotID)
			numSlots = numSlots + 1
			if itemLink then
				numItems = numItems + 1
			end
		end
	end
	return numItems, numSlots
end

function IM:getItemsBelowValue(value)
	local itemsList = {}
	for bagID=0, NUM_BAG_SLOTS do
		for bagSlotID=1,C_Container.GetContainerNumSlots(bagID) do
			local itemLink = C_Container.GetContainerItemLink(bagID,bagSlotID)
			if itemLink then
				local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4, Suffix, Unique, LinkLvl, Name = string.find(itemLink,"|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*):?(%-?%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?") -- Blame WoWWiki
				local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = ZGV:GetItemInfo(Id)
				if itemSellPrice and itemSellPrice < value and itemSellPrice > 0 then
					table.insert(itemsList, {bagID, bagSlotID, itemName})
				end
			end
		end
	end
	return itemsList
end

function IM:getGrayItems()
	local itemsList = {}
	for bagID=0, NUM_BAG_SLOTS do
		for bagSlotID=1,C_Container.GetContainerNumSlots(bagID) do
			local itemLink = C_Container.GetContainerItemLink(bagID,bagSlotID)
			if itemLink then
				local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4, Suffix, Unique, LinkLvl, Name = string.find(itemLink,"|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*):?(%-?%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?") -- Blame WoWWiki
				local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = ZGV:GetItemInfo(Id)
				if itemRarity==0 then
					table.insert(itemsList, {bagID, bagSlotID, itemName})
				end
			end
		end
	end
	return itemsList
end

-- Require regions from {tooltip:GetRegions()} to save memory
function IM:TooltipsContain(tooltip, string)
	-- initialize outside loop to prevent creating losts of copies that take lots of memory.
	local text;
	for i = 1, TooltipFrame:NumLines() do
	
	if _G["TooltipFrameTextLeft"..i] then
		local left = _G["TooltipFrameTextLeft"..i]:GetText()
			if left and string.find(left, string)~=nil then
				return true
			end
		end
		
		if _G["TooltipFrameTextRight"..i] then
			local right = _G["TooltipFrameTextRight"..i]:GetText()
				if right and string.find(right, string)~=nil then
					return true
				end
			end
		end
	return false
end



local blacklist = {
	[2901] = true,  -- mining pick
	[1819] = true,  -- gouging pick
	[5956] = true,  -- blacksmith hammer
	[6367] = true,  -- big iron fishing pole
	[19970] = true, -- arcanite fishing pole
	[6365] = true,  -- strong fishing pole
	[6256] = true,  -- fishing pole
	[6366] = true,  -- darkwood fishing pole
	[12225] = true, -- blump family fishing pole
	[7005] = true,  -- skinning knife
	[2709] = true,  -- pips skinner
	[9901] = true,  -- zulian slicer
}

-- Returns items deemed to be unusable.
function IM:GetUnusableItems()
	local itemsList = {}
	local onlyscan
	ZGV.ItemScore.Upgrades:ScanBagsForUpgrades(onlyscan)

	for bagID=0, NUM_BAG_SLOTS do
		for bagSlotID=1,C_Container.GetContainerNumSlots(bagID) do repeat
			if not (C_Container and C_Container.GetContainerItemEquipmentSetInfo and C_Container.GetContainerItemEquipmentSetInfo(bagID,bagSlotID)) then -- don't sell equipment sets
				local itemLink = C_Container.GetContainerItemLink(bagID,bagSlotID)
				if itemLink then
					local itemdetails = ZGV.ItemScore:GetItemDetails(itemLink)
					if not itemdetails then break end  --continue
					local stripped_itemlink = ZGV.ItemScore.strip_link(itemLink)
					local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = ZGV:GetItemInfo(itemLink)

					local isSoulbound = ZGV.IsItemBound(bagID, bagSlotID)
					local id = ZGV.ItemLink.GetItemID(itemLink)

					local isUpgrade,_,_,_,rejectedUpgrade = ZGV.ItemScore.Upgrades:IsUpgrade(stripped_itemlink)

					local fam,fmax=0,0
					if id then fam,fmax = GetItemUniqueness(id) end
					
					if id	and ((isSoulbound  and not (isUpgrade or rejectedUpgrade=="rejected")) or (itemRarity==1 and not isUpgrade))		-- sell non-upgrades that are bound or white
						and (itemSellPrice or 0) > 0								-- that have sell price
						and (itemdetails.class==Enum.ItemClass.Weapon or itemdetails.class==Enum.ItemClass.Armor) -- are weapon/armor
						and ((not db.keptItems) or db.keptItems[id]==nil)					-- not blacklisted by user
						and (not blacklist[id])									-- nor by us
						and itemRarity<5									-- and don't even look at legendaries
						and fam~=473										-- or their precursors
					then
						local item = {}
						item.ID=id
						item.bagID=bagID
						item.bagSlotID=bagSlotID
						item.itemName=itemName
						item.itemLink=itemLink
						item.itemQuality=itemRarity
						table.insert(itemsList, item)
					end
				end
			end
		until true  end
	end
	
	return itemsList
end

function IM:ResetKeptItems()
	db.keptItems = {}
end

-- Completely resets IM.
function IM:ResetIM()
	ZGV.db.profile.load_im = true
	ZGV.db.profile.dev_loadIM = true
	ZGV.db.profile.im_enable = nil
	ZGV.db.profile.im_always_wait = nil
	ZGV.db.profile.im_town_alert = nil
	ZGV.db.profile.im_prefer_repair = nil
	ZGV.db.profile.im_autohide_icons = nil
	ZGV.db.profile.fullness_search = nil
	ZGV.db.profile["Inventory Manager"] = nil
	ReloadUI()
end

function IM:destroyTrash()

	local trashItems = IM:getGrayItems()
	--trashItems = IM:getItemsBelowValue(10)
	for i, v in pairs(trashItems) do
		local bagID = v[1]
		local bagSlotID = v[2]
		C_Container.PickupContainerItem(bagID, bagSlotID)
		DeleteCursorItem()
	end
	
end

--[[function IM:GetItemstToTrash()
{
	local lowValue = IM:getItemsBelowValue(10)
	local whiteItems = IM:getWhiteItems()
	--local soulboundItems = 
}]]--

function IM:AutoRepair()
	if CanMerchantRepair() then
		local zgvgoldneeded = GetRepairAllCost()
		local zgvmoneyheld = GetMoney()
		local zgvcangbrepair = CanGuildBankRepair()
		local zgvgbankamount = GetGuildBankWithdrawMoney()

		if zgvgoldneeded==0 or ZGV.db.profile.autorepair==1 then return end
		if ZGV.db.profile.autorepair==2 or (not IsInGuild() and ZGV.db.profile.autorepair>2) then
			if (zgvgoldneeded <=zgvmoneyheld) then								---Use own money: has money
				RepairAllItems()
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..".")
			else																---Use own money: no money
				ZGV:Print(L['im_ar_cannotar'])
			end
		elseif ZGV.db.profile.autorepair==3 then
			if zgvcangbrepair and (zgvgbankamount >= zgvgoldneeded) then			---Use guild money, then own: can guild repair
				RepairAllItems(1)
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..L['im_ar_guild'])
			elseif zgvgoldneeded <=zgvmoneyheld then								---Use guild money, then own: cannot guild repair but has money
				RepairAllItems()
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..".")
			elseif not zgvcangbrepair then ZGV:Print(L['im_ar_noguildrepairs'])		---Use guild money, then own: no money, guild not allowed
			else																---Use guild money, then own: no guild, no money
				ZGV:Print(L['im_ar_cannotar2'])
			end
		elseif ZGV.db.profile.autorepair==4 then
			if zgvgoldneeded <=zgvmoneyheld then									---Use own money, then guild: has money
				RepairAllItems()
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..".")
			elseif zgvcangbrepair and (zgvgbankamount >= zgvgoldneeded) then		---Use own money, then guild: no money but has guild
				RepairAllItems(1)
				ZGV:Print(L['im_ar_repairamount']..ZGV.GetMoneyString(zgvgoldneeded)..L['im_ar_guild'])
			elseif not zgvcangbrepair then ZGV:Print(L['im_ar_noguildrepairs'])		---Use own money, then guild: no money, guild not allowed
			else																---Use own money, then guild: no money, no guild
				ZGV:Print(L['im_ar_cannotar2'])
			end
		end
	end
end

local function OnEvent(self, event)
--	 if not (ZGV.db.profile.im_enable and ZGV.db.profile.enable_vendor_tools) then return end -- No event handling when disabled.

	if event=="MERCHANT_CLOSED" then 
		IM:DetachViewerVendor()

	elseif event=="MERCHANT_SHOW" then
		IM:AutoRepair()
--[[
		ZGV.Pointer:ClearWaypoints("manual") -- Clear manual waypoints and resume last route.
		ZGV:ShowWaypoints()

	elseif event=="BAG_UPDATE_DELAYED" or event == "QUEST_LOG_UPDATE" or event=="ITEM_PUSH" or event=="PLAYERBANKSLOTS_CHANGED" then --ZGV.db.profile.im_always_wait
	if event == "QUEST_LOG_UPDATE" or event=="ITEM_PUSH" or event=="PLAYERBANKSLOTS_CHANGED" then --ZGV.db.profile.im_always_wait
		
		IM:BagFullCheck(event)
		IM:UpdateBar()
	elseif event == "MERCHANT_CLOSED" then
		-- Decline to sell items if the merchant window is closed.
		if ZGV.Loot.Popup then ZGV.Loot.Popup:OnDecline() end
	elseif event=="ZGV_STEP_CHANGED" then
		--print("ZGV_STEP_CHANGED")
		IM:BagFullCheck(event)
		IM:OnThreadedEvent(event) -- TODO: Temporary hack
	elseif event=="ZONE_CHANGED_NEW_AREA" then
		if ZGV.db.profile.im_town_alert then
			IM:BagFullCheck(event)
		end
		IM:recordZones()
	elseif event=="BAG_UPDATE_DELAYED" then -- update bar on every bag change.
		IM:UpdateBar()
		IM:BagFullCheck(event)
	elseif event=="ZONE_CHANGED" or event=="ZONE_CHANGED_INDOORS" then
		IM:recordZones()
	elseif event=="PET_BATTLE_OPENING_START" then -- hide during pet battles.
		if not db.isSnapped then
			InventoryManagerFrame:Hide()
		end
	elseif event=="PET_BATTLE_CLOSE" then
		if (not db.isSnapped) and ZGV.db.profile.im_enable and ZGV.db.profile.enable_vendor_tools then
			InventoryManagerFrame:Show()
		end
	else
		error("No handler made for event: "..event..". Create a new handler in InventoryManager.lua.")
]]--	
	end
	
end

local function OnUpdate(self, event)
	-- Resume any yielded threads
	IM:OnThreadedEvent()
end

function IM:recordZones()

	-- We're not doing this anymore.
	if ZGV.db.global.zone_db then ZGV.db.global.zone_db = nil end

	--[[if db.im_DEBUG_record_zones and db.debug then
		IM:Debug("\nZone: "..GetZoneText().."\nRealZone: "..GetRealZoneText().."\nSubZone: "..GetSubZoneText().."\nMinimapZone: "..GetMinimapZoneText())
		
		
		local zoneText = GetZoneText()
		if zoneText == nil then zoneText="OTHER" end
		
		local realZoneText = GetRealZoneText()
		if realZoneText == nil then realZoneText="OTHER" end
		
		local subZoneText = GetSubZoneText()
		if subZoneText == nil then subZoneText="OTHER" end

		local minimapZoneText = GetMinimapZoneText()
		if minimapZoneText == nil then minimapZoneText="OTHER" end

		local zonePVPInfo = GetZonePVPInfo()
		if zonePVPInfo == nil then zonePVPInfo="OTHER" end

		if not ZGV.db.global.zone_db then ZGV.db.global.zone_db = {} end
		if not ZGV.db.global.zone_db[zoneText] then ZGV.db.global.zone_db[zoneText] = {} end
		if not ZGV.db.global.zone_db[zoneText][realZoneText] then ZGV.db.global.zone_db[zoneText][realZoneText] = {} end
		if not ZGV.db.global.zone_db[zoneText][realZoneText][subZoneText] then ZGV.db.global.zone_db[zoneText][realZoneText][subZoneText] = {} end
		if not ZGV.db.global.zone_db[zoneText][realZoneText][subZoneText][minimapZoneText] then ZGV.db.global.zone_db[zoneText][realZoneText][subZoneText][minimapZoneText] = {} end
		
		
		ZGV.db.global.zone_db[zoneText][realZoneText][subZoneText][minimapZoneText]=zonePVPInfo -- Don't really plan on using ZonePVPInfo, but why not? 
	end]]--
end

-- Gets the current bag addon - preferably using AceAddon, may use heuristics if a bag addon doesn't register itself with Ace.
function IM:GetCurrentBagAddon()
	local AceAddon = LibStub("AceAddon-3.0")
	local currentAddon = nil
	
	-- Print a list of all installed AceAddons
	--for name, addon in AceAddon:IterateAddons() do
	--  print("Addon: " .. name)
	--end
	
	if AceAddon:GetAddon("AdiBags", true) then currentAddon = "AdiBags" end
	if AceAddon:GetAddon("ArkInventory", true) then currentAddon = "ArkInventory" end
	if AceAddon:GetAddon("OneBag3", true) then currentAddon = "OneBag3" end
	if AceAddon:GetAddon("Bagnon", true) then currentAddon = "Bagnon" end

	-- Thankfuly, all of the addons we support register with Ace. However, 
	-- in the future if an addon doesn't register with Ace, heuristics for
	-- determining the current bag addon would go here.
	
	-- When no addons are detected, default to Blizzard.
	if  currentAddon == nil then
		currentAddon = "Blizzard"
	end
	return currentAddon
end

-- Also called by ZygorQuestGuidesViewer.lua (TODO: Maybe should be an event?)
-- event is optional

IM.previousNumberOfItems = 0

local lastbagcheck = time()
local lastbagcheck_interval = 15

function IM:BagFullCheck(event)

	-- TODO: In the long run, I don't want to completely disable the feature when there's no guide.
	if not ZGV.CurrentGuide then return end -- For now, need the current guide to do a bag check.

	if ZGV.db.profile.im_always_wait and event ~= "ZYGORGV_STEP_CHANGED" then return end
	
	if time()-lastbagcheck < lastbagcheck_interval then return end  -- throttle
	lastbagcheck = time()

	--IM:GetDistanceToNearestVendor(point)
	local distanceToVendor
	local point = {}
	point.x,point.y,point.m,point.f=ZGV.LibRover:GetPlayerPosition()

	--Spoo(nil, 0, point)
	if point.x and point.y then
		IM:Debug("Vendor distance check starts")
		local gotoCoords = {
			done=false,
			map=point.map,
			floor=point.floor,
			x=point.x,
			y=point.y,
			distance=999999
		}	
		distanceToVendor = IM:GetDistanceToNearestVendor(point)
		local nextStep = ZGV.CurrentGuide.steps[ZGV.CurrentGuide.CurrentStepNum+1]
		local distanceToNextGoal
		if nextStep ~= nil then
			distanceToNextGoal = 999999
			for goalNum, goal in pairs(nextStep.goals) do
				if goal.x and goal.y then
					distanceToNextGoal = IM:GetDistanceToNearestVendor(goal)
				end
			end
		end
		
		if distanceToNextGoal and distanceToVendor then
			if distanceToVendor > distanceToNextGoal then return end -- requirement by Andrew
		end
		IM:Debug("Vendor distance check ends")
	end
	
	IM:Debug("BAG FULL CHECK starts")
	local numItems, numSlots = IM:countItemsInBags()

	local barFraction = numItems / numSlots

	if event == nil then event = "" end
	
	if not IM.BagsFullPopup then
		IM.BagsFullPopup = ZGV.PopupHandler:NewPopup("ZygorBagsFullPopup","default")
		IM.BagsFullPopup.OnAccept = function(self)
			if ZGV.db.profile.im_prefer_repair and ZGV.db.profile.enable_vendor_tools then
				ZGV.WhoWhere:FindNPC("R")
			else
				ZGV.WhoWhere:FindNPC("IVR")
			end
			ZGV.IM.isPopupShowing = false
		end
		
		--IM.BagsFullPopup.OnDecline = function(self) ZGV.IM.isPopupShowing = false end
		--IM.BagsFullPopup.OnEscape = function(self) ZGV.IM.isPopupShowing = false end
		--IM.BagsFullPopup.OnClose = function(self) ZGV.IM.isPopupShowing = false end
		IM.BagsFullPopup.returnMinimizeSettings = function(self)
			local notifcationText = "Bags Full"
			local tooltipText = "Click to select an action"
			local priority = 100
			local removetime = nil
			local poptime = 0.5
			local quiet = nil
			local onShow = nil--function...
			return notifcationText,ZGV.L["notifcenter_inventory_manager_title"],tooltipText,priority,poptime,removetime,quiet,onShow
		end
	end
	local BagsFullPopup = IM.BagsFullPopup
	BagsFullPopup:SetText("Your bags are nearly full!","Find vendor?")
	
	
	--if not (db.im_always_wait and event == "BAG_UPDATE_DELAYED") then
	--	self.Popup:SetText("Your bags are nearly full!","Find vendor?")
	--	self.Popup:Show()
	--end
	
	--Check next 3 steps, only if next 3 are near a vendor, pop up?
	if ZGV.CurrentGuide then	
		--if IM:isStepNearVendor(ZGV.CurrentGuide.CurrentStepNum+1) and
		--	IM:isStepNearVendor(ZGV.CurrentGuide.CurrentStepNum+2) and
		--	IM:isStepNearVendor(ZGV.CurrentGuide.CurrentStepNum+3) then
		--and not IM.isNearVendor 
			if ZGV.db.profile.fullness_search and ZGV.db.profile.fullness_search ~= 0 and barFraction > ZGV.db.profile.fullness_search and numItems > IM.previousNumberOfItems and distanceToVendor > 50 then -- check if bags are truly full
				IM.previousNumberOfItems = numItems
				if IM.IM_DEBUG then BagsFullPopup:SetText("Your bags are nearly full!","EVENT: "..event) end
				if ZGV.IM.isPopupShowing == false then --Don't spam, only needs to show once!
					ZGV.IM.isPopupShowing = true
					BagsFullPopup:Show()
				end
			end
		--end
	else -- Sometimes it's called before the current guide is loaded.
		if ZGV.db.profile.fullness_search and ZGV.db.profile.fullness_search ~= 0 and barFraction > ZGV.db.profile.fullness_search and numItems > IM.previousNumberOfItems and not IM.isNearVendor and distanceToVendor > 50 then -- check if bags are truly full
			IM.previousNumberOfItems = numItems
			if IM.IM_DEBUG then BagsFullPopup:SetText("Your bags are nearly full!","EVENT: "..event) end
			if ZGV.IM.isPopupShowing == false then --Don't spam, only needs to show once!
				ZGV.IM.isPopupShowing = true
				BagsFullPopup:Show()
			end
		end
	end
	
	-- Bags no longer full. Don't show popup.
	if barFraction < (ZGV.db.profile.fullness_search or 0) then
		BagsFullPopup:Hide()
		ZGV.IM.isPopupShowing = false
	end

	IM:Debug("BAG FULL CHECK ends")
end

-- Added so this can be accessed outside of IM.
function IM:GetBarPercentage()
	local numItems, numSlots = IM:countItemsInBags()
	return numItems / numSlots
end

-- Added so this can be accessed outside of IM. Returns a table.
function IM:GetBarColor()
	local numItems, numSlots = IM:countItemsInBags()
	local barFraction = numItems / max(numSlots,1)
	
	if barFraction < 0.5 then
		return SkinData("ProgressBarColor") or {0,1,0,1}
	elseif ZGV.db.profile.fullness_search and barFraction >= 0.5 and barFraction <= ZGV.db.profile.fullness_search then
		return {1,1,0,1}
	else
		return {1,0,0,1}
	end
end

-- Added so this can be accessed outside of IM.
function IM:GetBarText()
	local numItems, numSlots = IM:countItemsInBags()
	local barFraction = numItems / numSlots
	return (numSlots - numItems).." free   "..floor(barFraction*100).."% full"
end

function IM:UpdateBar()
	ZGV.ProgressBar:Update()
	if not InventoryMeterBarFrame then return end -- Can't update until the frame exists.
	local numItems, numSlots = IM:countItemsInBags()

	local barFraction = numItems / numSlots
	
	if IM.InventoryMeterText then IM.InventoryMeterText:SetText((numSlots - numItems).." free   "..floor(barFraction*100).."% full") end
	
	if barFraction < 0.5 then
		IM.InventoryMeterBarFrame.tex:SetVertexColor(unpack(SkinData("ProgressBarColor") or {0,1,0,1}))
		--self:SetBackdropColor(0,0.8,0,1.0)
	elseif barFraction >= 0.5 and barFraction <= 1.0 then
		IM.InventoryMeterBarFrame.tex:SetVertexColor(1,1,0,1)
		--self:SetBackdropColor(0.8,0.8,0,1.0)
	else
		IM.InventoryMeterBarFrame.tex:SetVertexColor(1,0,0,1)
		--self:SetBackdropColor(0.8,0,0,1.0)
	end

	-- Adjust for icons
	local margin = 16
	local iconsAdjust

	if IM.iconsHidden == false then
		iconsAdjust = IM.ConfigButton:GetWidth()+IM.SearchButton:GetWidth()+IM.TrashButton:GetWidth()+IM.ResizeButton:GetWidth() + margin
	else
		iconsAdjust = margin
	end
		
	--print(IM.ConfigButton:GetWidth()+IM.SearchButton:GetWidth()+IM.TrashButton:GetWidth()+IM.ResizeButton:GetWidth())
	local barSize,size
	if IM.iconsHidden == false then
		if db.isSnapped then
			barSize = barFraction * (db.isSnappedSize - iconsAdjust)
			size = db.isSnappedSize - iconsAdjust
			--ZGV:Debug("IS "..size)
		else
			barSize = barFraction * (IM.displayWidth - iconsAdjust)
			size = IM.displayWidth - iconsAdjust
		end
	else
		if db.isSnapped then
			barSize = barFraction * (db.isSnappedSize - iconsAdjust)
			size = db.isSnappedSize - iconsAdjust
			--ZGV:Debug("IS "..size)
		else
			barSize = barFraction * (IM.displayWidth - iconsAdjust)
			size = IM.displayWidth - iconsAdjust
		end
	end
	--barSize = barFraction * IM.InventoryManagerFrame:GetWidth()
	--ZGV:Debug(""..size)
	IM.InventoryMeterFrame:SetWidth(size)
	IM.InventoryClickFrame:SetSize(size,12)
	
	if IM.iconsHidden == false then
		IM.InventoryMeterFrame:SetPoint("CENTER",InventoryManagerFrame,"CENTER",-10.5,0)
	else
		IM.InventoryMeterFrame:SetPoint("CENTER",InventoryManagerFrame,"CENTER",0,0)
	end


	-- Apparently a frame's dimensions can't be set to 0,
	-- so simply hide it if the player has nothing.
	if barSize == 0 then
		IM.InventoryMeterBarFrame.tex:SetVertexColor(0,0,0,0)
		--self:SetBackdropColor(0,0,0,0.0)
	end
	IM.InventoryMeterBarFrame.tex:SetSize(barSize,5)

end

function IM:RegisterEvents()
	IM.Events = CreateFrame("Frame")
	
	-- Note that WoW seems to send BAG_UPDATE and BAG_UPDATE_DELAYED when crossing major city boundaries.
	IM.Events:RegisterEvent("BAG_UPDATE_DELAYED") -- BAG_UPDATE is far too spammy!
	IM.Events:RegisterEvent("ITEM_PUSH")
	IM.Events:RegisterEvent("PLAYERBANKSLOTS_CHANGED")
	IM.Events:RegisterEvent("MERCHANT_SHOW")
	IM.Events:RegisterEvent("MERCHANT_CLOSED")
	--IM.Events:RegisterEvent("QUEST_LOG_UPDATE")
	IM.Events:SetScript("OnEvent", OnEvent)
	
	ZGV:AddMessageHandler("ZGV_STEP_CHANGED",OnEvent)
	IM.Events:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	--ZONE_CHANGED_NEW_AREA
	
	IM.Events:RegisterEvent("ZONE_CHANGED")
	IM.Events:RegisterEvent("ZONE_CHANGED_INDOORS")
	
	if ZGV.IsRetail then
		IM.Events:RegisterEvent("PET_BATTLE_OPENING_START")
		IM.Events:RegisterEvent("PET_BATTLE_CLOSE")
	end
	
	IM.Events:SetScript("OnUpdate", OnUpdate)
end

function IM:SetFrameStrata(strata) -- sets the strata for all components of the frame
	
	if not strata then strata = IM.strata end

	if IM.InventoryManagerFrame then IM.InventoryManagerFrame:SetFrameStrata(strata) end

	if not IM.ResizeButton then return end -- If there's no resize button, then none of them are likely to exist.
	IM.ResizeButton:SetFrameStrata(strata)
	IM.ConfigButton:SetFrameStrata(strata)
	IM.ConfigButton.icon:SetFrameStrata(strata)
	IM.SearchButton:SetFrameStrata(strata)
	IM.SearchButton.icon:SetFrameStrata(strata)
	IM.TrashButton:SetFrameStrata(strata)
	IM.TrashButton.icon:SetFrameStrata(strata)
	IM.InventoryMeterFrame:SetFrameStrata(strata)
	IM.InventoryMeterBarFrame:SetFrameStrata(strata)
	IM.InventoryMeterBarFrame.tex:SetFrameStrata(strata)
	IM.InventoryClickFrame:SetFrameStrata(strata)
end

-- Didn't find a reliable event, so - yes, I'm hooking the Hide and Show events . . .
local oldHooks = {}
function IM:SetHooks(parent, parentName)

	-- If old hooks exist, reset them before proceeding
	if oldHooks.oldParent then
		oldHooks.oldParent.Hide = oldHooks.oldHide
		oldHooks.oldParent.Show = oldHooks.oldShow
		oldHooks.oldParent = nil
	end

	-- No hooks to create - just release the old hooks.
	if not parent then
		return
	end
	
	-- Set new hooks
	oldHooks.oldParent = parent
	oldHooks.oldHide = parent.Hide
	parent.Hide = function(...)
		IM.HideFrame(parent)
		oldHooks.oldHide(...)
	end
	
	oldHooks.oldShow = parent.Show
	parent.Show = function(...)
		--Spoo(nil, 0, db.lastParent)
		IM.ShowFrame(parent)
		oldHooks.oldShow(...)
	end
	
end

-- Items to keep, at user's request.
function IM:addKeptItem(itemID, itemData)
	if not db.keptItems then
		db.keptItems = {}
	end
	db.keptItems[itemID]=itemData
end

function IM:getKeptItems()
	if not db.keptItems then
		db.keptItems = {}
	end
	return db.keptItems
end

function IM:clearKeptItems()
	db.keptItems = {}
end

tinsert(ZGV.startups,{"InventoryManager setup",function(self)
	-- /zgdev
	if not ZGV.db.profile.load_im then return end -- don't load if we don't have the option set.

	--ZGV.Loot:RegisterEvents()
	--ZGV.Loot:ToggleFrame()
	--ZGV.InventoryManager:loadInventoryManager()
	if ZGV.db.profile["Inventory Manager"] == nil then ZGV.db.profile["Inventory Manager"] = {} end 
	db = ZGV.db.profile["Inventory Manager"]
	ZGV.IM:CreateFrames()	
	ZGV.IM:RegisterEvents()

	-- Make sure it shows / hides properly on startup.	
	--if db.im_always_show then
	if not db.isSnapped and ZGV.db.profile.im_enable and ZGV.db.profile.enable_vendor_tools then
		ZGV.IM.InventoryManagerFrame:Show()
	else
		ZGV.IM.InventoryManagerFrame:Hide()
	end
	
	IM:Debug(type(ZGV.db.profile.enable_viewer))
	if db.lastParentName == "Zygor Guide" and ZGV.db.profile.enable_viewer ~= false and ZGV.db.profile.im_enable and ZGV.db.profile.enable_vendor_tools then
		ZGV.IM.InventoryManagerFrame:Show()
	end
	
	
	if db.showText == nil then
		db.showText = false
	end
	
	if db.showText == true then
		IM.InventoryMeterText:Show()
		InventoryMeterFrame:Hide()
		InventoryMeterBarFrame:Hide()
	end
	
	if ZGV.db.profile.im_autohide_icons and ZGV.db.profile.enable_vendor_tools then
		IM:OnLeave()	
	end
	
	-- Force an update to show properly.
	--IM.InventoryManagerFrame:OnUpdate()
	
	-- TODO: Temporarily disable all popups.
	ZGV.db.profile.fullness_search=1.0
	ZGV.db.profile.im_always_wait=false
	ZGV.db.profile.im_town_alert=false
end})

function IM:Debug(msg,...)
	ZGV:Debug("&IM "..(msg or ""),...)
end

function IM:ToggleEnabled()
	if ZGV.db.profile.im_enable and ZGV.db.profile.enable_vendor_tools and not db.isSnapped then
		IM.ShowFrame()
	else
		InventoryManagerFrame:Hide()
		-- Events also disabled.
	end
end


-- Remind player to empty bags. 
do -- limit scope of variables used for threading
	local currentStep
	local currentGoal
	local numberOfStepsToNextVendor=0
	local sleepCount=0
	local checkDistance = 50 -- distance to check for to see if vendor is close enough.
	local lastPopupStep = 0
	-- we will override later . . .

	local lastPoint = {distance=999999}

	local function GetDistanceToNearestVendorFunction(point)
		local typ 
		local m,f,x,y = point.map, point.floor, point.x, point.y
		--assert(x)
		
		if ZGV.db.profile.im_prefer_repair and ZGV.db.profile.enable_vendor_tools then
			typ = "R"
		else
			typ = "IVR"
		end		
		
		local parse=ZGV.NPCData.parseNPC
		local mindist,minid,minm,minf,minx,miny=999999
		local count=0
		for id,data in ZGV.NPCData:iterate(typ) do
			local npc=parse(data)
			if npc.m>0 then
				npc.x=npc.x*0.01
				npc.y=npc.y*0.01
				local dist=HBD:GetZoneDistance(m,f,x,y,npc.m,npc.f or 0,npc.x,npc.y)
				if dist and dist<mindist then
					mindist=dist
					minid,minm,minf,minx,miny=tonumber(id),npc.m,npc.f,npc.x,npc.y
				end
			end
			count=count+1
			
			-- Higher than what's found in WhoWhere.lua. but needed
			-- to keep processing time down in some areas
			-- such as the Worgen starting zone, when you first
			-- create a character.
			if count%300==0 then  ZGV.F.safe_yield()  end
		end
		if minid then
			point.distance = mindist
		end
		point.done = true
	end

	-- Coroutine behavior: Blocks current current thread, but yields to prevent WoW from locking up.
	function IM:GetDistanceToNearestVendor(point)
		if point==nil then
			error("point nil (check that you are not using \".\" when you intend to use \":\")")
		end
	
		if not IM.GetDistanceToNearestVendorThread then
			IM.GetDistanceToNearestVendorThread = coroutine.create(GetDistanceToNearestVendorFunction)
		end
		coroutine.resume(IM.GetDistanceToNearestVendorThread, point)
		return point.distance
	end

	local IM_info1 = {}
	local IM_info2= {}
	local IM_coords= {}
	
	function IM:OnThreadedEvent(event)
		local success=false
		local errorText
		sleepCount = sleepCount + 1
		
		-- Suppress dialogs for a while on startup.
		if startupSuppress > 0 then
			startupSuppress = startupSuppress - 1
		end

		if IM.IterateStepsThread then
			success, errorText = coroutine.resume(IM.IterateStepsThread)
			if not success then 
				--error(errorText) 
			end
			
		end
		
		if IM.GetDistanceToNearestVendorThread then
			success, errorText = coroutine.resume(IM.GetDistanceToNearestVendorThread)
			if not success then -- Actually, I don't really care if if errors out . . .
				--print(debugstack(IM.GetDistanceToNearestVendorThread))
				--error(errorText)
			end
		end
		
		if sleepCount >= 30 or (event and event == "ZYGORGV_STEP_CHANGED") then
		
		
			sleepCount = 0
			-- Keep in mind lastPoint updates asynchronously with the last time GetDistanceToNearestVendor was called.
			if lastPoint.distance < checkDistance and IM.isNearVendor == false then -- player moves into vendor's range
				IM:Debug("near")
				IM.isNearVendor = true
			elseif lastPoint.distance < checkDistance and IM.isNearVendor == true then
			elseif lastPoint.distance > checkDistance and IM.isNearVendor == false then
			elseif lastPoint.distance > checkDistance and IM.isNearVendor == true then -- player moves out of vendor's range
				table.wipe(IM_info1)
				IM:Debug("far")
				IM.isNearVendor = false
				if event and event == "ZYGORGV_STEP_CHANGED" then
					IM:FindRecommendedSpaceInBags(IM_info1)
				end
			end
	
			table.wipe(IM_info2)
			if event and event == "ZYGORGV_STEP_CHANGED" and startupSuppress <= 0 then
				IM:FindRecommendedSpaceInBags(IM_info2)
			end

			
			-- Not supposed to be required, but I am getting some reports that
			-- there are sometimes errors with "point" ending up being nil.

			local x,y,map,floor=ZGV.LibRover:GetPlayerPosition()
			
			if x and y then
				table.wipe(IM_coords)
				IM_coords.done=false
				IM_coords.map=map
				IM_coords.floor=floor
				IM_coords.x=x
				IM_coords.y=y
				IM_coords.distance=999999
				IM:GetDistanceToNearestVendor(IM_coords)
			end
		end

	end
	
	local function RequestVendorVisit(percent)
		local info={
			popupLine1="Zygor Inventory Manager",
			popupLine2="|nWould you like to visit a|nvendor to free up space in|nyour inventory?|n|nCurrently "..percent.."% full",
			popupNotificationText="Would you like to visit a vendor to free up space in your inventory?",
			popupNotificationTooltipText="Zygor Inventory Manager",
			percent=percent
		}
		IM.Reminder:CreateReminderPopup()
		IM.Reminder:SetInformation(info)
		IM.Reminder:Show()
	end

	-- WARNING: Threads!
	local function Finish(returns)
		IM.IterateStepsThread = nil
		IM.GetDistanceToNearestVendorThread = nil
		
		returns.done = true
		
		local numItems, numSlots = IM:countItemsInBags()
		local numFree = numSlots-numItems
		local percent = math.floor(numItems / numSlots * 100)
		
		local point = {}
		point.x,point.y,point.map,point.floor=ZGV.LibRover:GetPlayerPosition()
		--Spoo(nil, 0, point)
		if point.x and point.y then
			local gotoCoords = {
				done=false,
				map=point.map,
				floor=point.floor,
				x=point.x,
				y=point.y,
				distance=999999
			}	
			local distanceToVendor = IM:GetDistanceToNearestVendor(point)
			local nextStep = ZGV.CurrentGuide.steps[ZGV.CurrentGuide.CurrentStepNum]
			local distanceToNextGoal=999999
			if nextStep ~= nil then
				for goalNum, goal in pairs(nextStep.goals) do
					if goal.x and goal.y then
						distanceToNextGoal = IM:GetDistanceToNearestVendor(goal)
					end
				end
			end
			
			if distanceToNextGoal and distanceToVendor < 50 and distanceToNextGoal > 50 and percent > 50 then 
				lastPopupStep = ZGV.CurrentGuide.CurrentStepNum
				--RequestVendorVisit(percent) -- TODO: Disabled on request	
			end
		end
	end

	local function iterateSteps(returns)
		numberOfStepsToNextVendor = 0

		while returns.done == false do
			local StepInfo = ZGV.CurrentGuide.steps[currentStep]
			if StepInfo == nil then -- End of guide
				Finish(returns)
				return
			end
			local GoalInfo = ZGV.CurrentGuide.steps[currentStep].goals[currentGoal]
			if GoalInfo == nil then -- No more goals for this step. Continue to the next step.
				currentStep = currentStep + 1
				currentGoal = 1
				numberOfStepsToNextVendor = numberOfStepsToNextVendor + 1
			else
				currentGoal = currentGoal + 1 -- next goal
			end
			if GoalInfo ~= nil and GoalInfo.action == "goto" and GoalInfo.x ~= nil and GoalInfo.y ~= nil then
				local gotoCoords = {
					done=false,
					map=GoalInfo.map,
					floor=GoalInfo.floor,
					x=GoalInfo.x,
					y=GoalInfo.y,
					distance=999999
				}
				IM:GetDistanceToNearestVendor(gotoCoords)
				-- Find nearest vendor to coords
				if gotoCoords.distance < checkDistance then -- This step is near a vendor.
					Finish(returns)
				end
			end
		end
		IM.IterateStepsThread = nil
	end

	function IM:FindRecommendedSpaceInBags(returns)
		returns.done=false
		currentStep = ZGV.CurrentGuide.CurrentStepNum
		currentGoal = 1
		
		-- Create thread to iterate the steps
		IM.IterateStepsThread = coroutine.create(iterateSteps)
		
		-- Start the thread
		local success, errorText = coroutine.resume(IM.IterateStepsThread, returns)
		if not success then error(errorText) end
	end
	
	function IM:isStepNearVendor(stepNumber)
		local StepInfo = ZGV.CurrentGuide.steps[stepNumber]
		for goalNumber, goalInfo in pairs(StepInfo.goals) do
			local gotoCoords
			if goalInfo.action == "goto" then  -- check distance
				gotoCoords = {
					done=false,
					map=goalInfo.map,
					floor=goalInfo.floor,
					x=goalInfo.x,
					y=goalInfo.y,
					distance=999999
				}
			end

			if gotoCoords.x and gotoCoords.y then -- Only if we have x, y coordinates.
				IM:GetDistanceToNearestVendor(gotoCoords)
				-- Find nearest vendor to coords
				if gotoCoords.distance < checkDistance then -- This step is near a vendor.
					return true
				end
			end
		end
		return false
	end
end
--QUEST_LOG_UPDATE fires whenever a player finishes a quest or accepts a new one.
