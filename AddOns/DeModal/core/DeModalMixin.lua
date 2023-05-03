local _, PKG = ...

local Debug = PKG.Debug
local AFP = PKG.AddProfiling

local DeModalMixin = {}
AFP("DeModalMixin", DeModalMixin)
PKG.DeModalMixin = DeModalMixin

function DeModalMixin:SetInternals()
    -- flag tracking whether addon has finished addon loading
    self.loaded = false

    -- flag tracking whether addon has finished initial load/login event
    self.entered = false

    -- normal frames that we always try to mass-close
    self.uiClosableFrames = {}

    -- protected frames that we only try to mass-close out of combat
    self.uiProtectedFrames = {}

    -- protected frames that need deferred hook because they were initially loaded in combat
    self.fixProtectedFrames = {}

    -- frames that will need initial positioning
    self.positionFrames = {}

    -- track certain frame hooks to make sure they are not nested/repeated
    self.hookedMergeFrames = {}
end

local function protectedRaise_OnShow(self)
    if not InCombatLockdown() then
         self:Raise()
    end
end
AFP("protectedRaise_OnShow", protectedRaise_OnShow)

local function protectedDebug(self, ...)
    Debug(...)
end
AFP("protectedDebug", protectedDebug)

local protectedEsc_OnShow = [=[
    local keyEsc = GetBindingKey("TOGGLEGAMEMENU")
    local clsBtn = self:GetAttribute("CloseButtonName")
    if clsBtn and keyEsc ~= nil then
        --self:CallMethod("Debug", "set close button", clsBtn)
        self:SetBindingClick(false, keyEsc, clsBtn, "ESC")
    end
]=]

local protectedEsc_OnHide = [=[
    self:ClearBindings()
]=]

local function hook_closeOnClick(self, button, down)
    if button == "ESC" then
        -- TODO: not 100% sure this is taint-safe; might need an incombat wrap
        CloseWindows()
    end
end
AFP("hook_closeOnClick", hook_closeOnClick)

local function hook_closeGossip_onShow(self)
    if GossipFrame and GossipFrame:IsShown() then
        GossipFrameCloseButton:Click()
    end
end
AFP("hook_closeGossip_onShow", hook_closeGossip_onShow)

-- fix various quirks unique to specific frames
function DeModalMixin:FixQuirks(fName, f)
    if fName == "WardrobeFrame" then
        -- prevent circular setpoint refs between transmog and collection frames
        -- this might cause issues/overlap with the page label in other languages
        -- but it should be minor and I can't think of an alternative way to do it
        local wtf = _G.WardrobeTransmogFrame
        if wtf then
            if PKG.gameVersion == "retail" then
                wtf.ToggleSecondaryAppearanceCheckbox.Label:ClearPoint("RIGHT")
            else
                wtf.ToggleSecondaryAppearanceCheckbox.Label:ClearPointByName("RIGHT")
            end
            wtf.ToggleSecondaryAppearanceCheckbox.Label:SetWidth(110)
        end
    elseif fName == "CollectionsJournal" then
        -- collection journal is on the "HIGH" strata by default
        f:SetFrameStrata("MEDIUM")
    elseif fName == "EncounterJournal" then
        -- prevent circular setpoint refs on EJ's tooltip; seems to get
        -- positioned properly anyway OnEnter/Show
        local ejt = _G.EncounterJournalTooltip
        if ejt then
            ejt:ClearAllPoints()
        end
    elseif fName == "OrderHallTalentFrame" or fName == "MajorFactionRenownFrame" then
        f:HookScript("OnShow", hook_closeGossip_onShow)
    end
end

local function isMergedFrame(fName)
    if not DEMODAL_DB["merge_frames"] then
        return false
    end
    if fName == "GossipFrame"
      or fName == "MerchantFrame"
      or fName == "QuestFrame"
      or fName == "ClassTrainerFrame"
      then
        return true
    end
    return false
end
AFP("isMergedFrame", isMergedFrame)

local function hook_merged_onShow(self)
    local fName = self:GetName()
    if fName ~= "GossipFrame" and GossipFrame:IsShown() then
        GossipFrameCloseButton:Click()
    end
    if fName ~= "QuestFrame" and QuestFrame:IsShown() then
        QuestFrameCloseButton:Click()
    end
    if fName ~= "MerchantFrame" and MerchantFrame:IsShown() then
        MerchantFrameCloseButton:Click()
    end
    if fName ~= "ClassTrainerFrame" and ClassTrainerFrame and ClassTrainerFrame:IsShown() then
        ClassTrainerFrameCloseButton:Click()
    end
end
AFP("hook_merged_onShow", hook_merged_onShow)

local function restore_position(f, fName, frameDb)
    if not frameDb[fName] or #(frameDb[fName]) == 0 then
        return
    end
    f:ClearAllPoints()
    local pts = frameDb[fName]
    for i = 1, #(pts) do
        local relF = _G[pts[i][2]] or UIParent
        Debug("point:", pts[i][1], pts[i][2], pts[i][3], pts[i][4], pts[i][5])
        f:SetPoint(pts[i][1], relF, pts[i][3], pts[i][4], pts[i][5])
    end
end
AFP("restore_position", restore_position)

function DeModalMixin:PositionFrame(f, fName)
    Debug("position frame:", fName)
    -- set default frame scale based on the original UI window manager stuff (UpdateScale et al)
    local fitWidth = 20
    local fitHeight = 20
    if not f:GetAttribute("UIPanelLayout-defined") then
	    local def_attrs = UIPanelWindows[f:GetName()];
	    if def_attrs then
            fitWidth = def_attrs["checkFitExtraWidth"] or fitWidth
            fitHeight = def_attrs["checkFitExtraHeight"] or fitHeight
	    end
    else
        fitWidth = f:GetAttribute("UIPanelLayout-checkFitExtraWidth") or fitWidth
        fitHeight = f:GetAttribute("UIPanelLayout-checkFitExtraHeight") or fitHeight
    end
    UpdateScaleForFit(f, fitWidth, fitHeight);
    Debug("fit to scale:", fitWidth, fitHeight, f:GetScale())

    -- restore saved frame position
    local frameDb = DEMODAL_DB["frames"]
    if DEMODAL_CHAR_DB["per_char_positions"] then
        frameDb = DEMODAL_CHAR_DB["frames"]
    end
    local fName_to_restore = fName
    -- check if we've already hooked this; if not, add the hook
    -- I don't think I ever re-call frame positioning currently, but it should be safe to do so
    if isMergedFrame(fName) and not self.hookedMergeFrames[fName] then
        fName_to_restore = "GossipFrame"
        f:HookScript("OnShow", hook_merged_onShow)
        self.hookedMergeFrames[fName] = true
    end
    restore_position(f, fName_to_restore, frameDb)
end

local function hook_onDragStop(self)
    local fName = self:GetName()
    local fName_to_save = fName
    Debug("update saved frame position:", fName)

    -- special-handling for merged frames
    if isMergedFrame(fName) then
        fName_to_save = "GossipFrame"
    end

    -- don't use WTF layout cache
    self:SetUserPlaced(false)

    -- update stored frame position in char or global table
    local frameDb = DEMODAL_DB["frames"]
    if DEMODAL_CHAR_DB["per_char_positions"] then
        frameDb = DEMODAL_CHAR_DB["frames"]
    end
    if frameDb[fName_to_save] then
        table.wipe(frameDb[fName_to_save])
    else
        frameDb[fName_to_save] = {}
    end
    for i = 1, self:GetNumPoints() do
        local pt, relTo, relPt, xOfs, yOfs = self:GetPoint(i)
        local relName = (relTo and relTo:GetName()) or "UIParent"
        Debug("point:", pt, relName, relPt, xOfs, yOfs)
        frameDb[fName_to_save][i] = {pt, relName, relPt, xOfs, yOfs}
    end

    -- re-position other merged frames too
    if isMergedFrame(fName) then
        if fName ~= "GossipFrame" and GossipFrame then
            restore_position(GossipFrame, fName_to_save, frameDb)
        end
        if fName ~= "QuestFrame" and QuestFrame then
            restore_position(QuestFrame, fName_to_save, frameDb)
        end
        if fName ~= "MerchantFrame" and MerchantFrame then
            restore_position(MerchantFrame, fName_to_save, frameDb)
        end
        if fName ~= "ClassTrainerFrame" and ClassTrainerFrame then
            restore_position(ClassTrainerFrame, fName_to_save, frameDb)
        end
    end
end
AFP("hook_onDragStop", hook_onDragStop)

function DeModalMixin:HookMovable(f, fName, wasArea)
    local UIPW = _G.UIPanelWindows
    if f:IsProtected() and InCombatLockdown() then
        Debug("defer hook of movable frame:", fName)
        local setWasArea = false
        if UIPW[fName] and UIPW[fName]["area"] then
            -- disable default panel positioning for this frame
            UIPW[fName]["area"] = nil
            setWasArea = true
        end
        tinsert(self.fixProtectedFrames, {f, fName, setWasArea})
        self:RegisterEvent("PLAYER_REGEN_ENABLED")
        return
    else
        Debug("hook movable frame:", fName)
    end

    self:FixQuirks(fName, f)

    f:SetMovable(true)
    f:SetToplevel(true)
    f:SetClampedToScreen(true)
    f:EnableMouse(true)
    f:HookScript("OnDragStart", f.StartMoving)
    f:HookScript("OnDragStop", f.StopMovingOrSizing)
    f:HookScript("OnDragStop", hook_onDragStop)
    if f:IsProtected() then
        f:HookScript("OnShow", protectedRaise_OnShow)
    else
        f:HookScript("OnShow", f.Raise)
    end
    f:RegisterForDrag("LeftButton")
    if f:GetNumPoints() == 0 then
        Debug("frame with 0 points, setting anchor:", fName)
        f:SetPoint("CENTER", UIParent)
    end

    if wasArea or (UIPW[fName] and UIPW[fName]["area"]) then
        -- disable default panel positioning for this frame
        UIPW[fName]["area"] = nil
        if not f:IsProtected() then
            -- add to list of frames that get closed with ESC
            Debug("frame added to closable frames:", fName)
            -- add to this list so the generic window manager knows stuff was open
            -- (and therefore doesn't show the ESC menu)
            tinsert(UISpecialFrames, fName)
            -- add to this list so we can also "click" close buttons to cleanup in
            -- our CloseWindows hook, as some frames need extra processing to close
            -- properly (e.g. AnimaDiversionFrame) that is not otherwise run
            tinsert(self.uiClosableFrames, f)
        else
            -- special handling required for ESC on protected frames
            Debug("frame is protected, need special ESC handler:", fName)
            tinsert(self.uiProtectedFrames, fName)
            local lp = CreateFrame("Frame", nil, f, "SecureHandlerShowHideTemplate")
            lp:ClearAllPoints()
            lp:SetPoint("TOPLEFT", f, "TOPLEFT", 0, 0)
            lp:SetSize(2, 2)
            lp.Debug = protectedDebug
            local btnClose = PKG.frameCloseButtons[fName]
            if btnClose then
                local btnName = btnClose[PKG.gameVersion]
                if not btnName then
                    btnName = btnClose.name
                end
                if btnName and _G[btnName] then
                    lp:SetAttribute("CloseButtonName", btnName)
                    _G[btnName]:HookScript("OnClick", hook_closeOnClick)
                else
                    Debug("uh oh, close button did not exist:", btnName, fName)
                end
            else
                Debug("uh oh, missing close button name for protected frame:", fName)
            end
            lp:SetAttribute("_onshow", protectedEsc_OnShow)
            lp:SetAttribute("_onhide", protectedEsc_OnHide)
        end
    end

    if self.entered then
        self:PositionFrame(f, fName)
    else
        -- put the frame into the list of frames that still need scale/position applied
        tinsert(self.positionFrames, {f, fName})
    end
end

function DeModalMixin:HookMovableHeader(f, hf)
    if not f or not hf then
        return
    end
    Debug("hook movable header for frame:", hf:GetName())
    hf:EnableMouse(true)
    hf:HookScript("OnDragStart", function () f:StartMoving() end)
    hf:HookScript("OnDragStop", function () f:StopMovingOrSizing() end)
    hf:HookScript("OnDragStop", function () hook_onDragStop(f) end)
    hf:RegisterForDrag("LeftButton")
end

function DeModalMixin:CloseWindowsHook(ignoreCenter, frameToIgnore)
    for i, f in ipairs(self.uiClosableFrames) do
        local fName = f:GetName()
        local fBtn = f.CloseButton or _G[fName .. "CloseButton"]
        if fBtn and fBtn.Click then
            fBtn:Click()
        end
    end
    if InCombatLockdown() then
        return
    end
    for i, fName in ipairs(self.uiProtectedFrames) do
        local f = _G[ fName ]
        if f and (not frameToIgnore or frameToIgnore ~= f) then
            f:Hide()
        end
    end
end

function DeModalMixin:LoadSelf()
    -- check/init settings
    if not DEMODAL_CHAR_DB then
        Debug("init char settings DB")
        DEMODAL_CHAR_DB = {
            ["setting_ver"] = 1,
            ["frames"] = {}
        }
    end
    if not DEMODAL_DB then
        Debug("init global settings DB")
        DEMODAL_DB = {
            ["setting_ver"] = 1,
            ["frames"] = {}
        }
    end

    -- finish setting up options panel now that variables are loaded
    PKG.SettingsMixin.Init():SetOptionValues()

    -- hook CloseWindows for special handling of protected frames
    hooksecurefunc("CloseWindows", function() self:CloseWindowsHook() end)

    -- hook pre-loaded simple frames
    local gv = PKG.gameVersion
    for i = 1, #PKG.frameXML do
        if PKG.frameXML[i][gv] then
            local fName = PKG.frameXML[i].f
            local f = _G[ fName ]
            if f then
                self:HookMovable(f, fName)
            else
                Debug("missing frame that should not be missing:", fName)
            end
        end
    end

    -- hook addon-based frames that might already be loaded
    for addonName, addonInfo in pairs(PKG.addonFrames) do
        self:LoadAddon(addonInfo, true)
    end

    self.loaded = true

    Debug("DeModal loaded")
end

function DeModalMixin:LoadAddon(addonInfo, ignoreMissing)
    for _, fName in ipairs(addonInfo) do
        local f = _G[ fName ]
        if f then
            self:HookMovable(f, fName)
            if PKG.headerFrames[fName] then
                -- dumb way to handle special frames that need extra work
                if (f.Header) then
                    self:HookMovableHeader(f, f.Header)
                else
                    self:HookMovableHeader(f, _G[ PKG.headerFrames[fName] ])
                end
            end
        elseif not ignoreMissing then
            Debug("missing frame that should not be missing:", fName)
        end
    end
end

function DeModalMixin:AddonLoadedEvent(addOnName)
    if addOnName == "DeModal" then
        Debug("DeModal ADDON_LOADED event")
        if self.loaded then
            return
        end
        self:LoadSelf()
    elseif PKG.addonFrames[addOnName] then
        if not self.loaded then
            return
        end
        Debug("addon load event for:", addOnName)
        self:LoadAddon(PKG.addonFrames[addOnName])
    end
end

function DeModalMixin:PlayerRegenEnabledEvent()
    if InCombatLockdown() then
        return
    end
    self:UnregisterEvent("PLAYER_REGEN_ENABLED")
    if #self.fixProtectedFrames > 0 then
        for i, fixMe in ipairs(self.fixProtectedFrames) do
            local f = fixMe[1]
            f:Hide()
            self:HookMovable(f, fixMe[2], fixMe[3])
        end
        wipe(self.fixProtectedFrames)
    end
end

function DeModalMixin:PlayerEnteringWorldEvent(isLogin, isReload)
    if (not isLogin and not isReload) then
        return
    end
    Debug("PLAYER_ENTERING_WORLD event")
    if #self.positionFrames > 0 then
        for i, moveMe in ipairs(self.positionFrames) do
            local f = moveMe[1]
            local fName = moveMe[2]
            self:PositionFrame(f, fName)
        end
        wipe(self.positionFrames)
    end
    self.entered = true
end

function DeModalMixin:OnEvent(event, ...)
    if event == "ADDON_LOADED" then
        self:AddonLoadedEvent(...)
    elseif event == "PLAYER_REGEN_ENABLED" then
        self:PlayerRegenEnabledEvent()
    elseif event == "PLAYER_ENTERING_WORLD" then
        self:PlayerEnteringWorldEvent(...)
    end
end

local SF = nil
DeModalMixin.Init = function()
    if SF then
        return SF
    end
    SF = CreateFrame("Frame", nil, UIParent)
    Mixin(SF, DeModalMixin)
    SF:SetInternals()
    SF:SetScript("OnEvent", SF.OnEvent)
    SF:RegisterEvent("ADDON_LOADED")
    SF:RegisterEvent("PLAYER_ENTERING_WORLD")
    return SF
end
