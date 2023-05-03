local _, PKG = ...

local Debug = PKG.Debug
local AFP = PKG.AddProfiling

local SettingsMixin = {}
AFP("SettingsMixin", SettingsMixin)
PKG.SettingsMixin = SettingsMixin

function SettingsMixin:SetTitle()
    self.Header.DefaultsButton:Hide()
    self.Header.Title:SetText("DeModal")
end

function SettingsMixin:AddToSettings()
    -- manually creating options until vertical frame taint bugs are sorted
    local category = Settings.RegisterCanvasLayoutCategory(self, "DeModal")
    Settings.RegisterAddOnCategory(category)
end

local function resetFrames_onClick(btn)
    Debug("reset saved frame data")
    table.wipe(DEMODAL_CHAR_DB["frames"])
    table.wipe(DEMODAL_DB["frames"])
    ReloadUI()
end
AFP("resetFrames_onClick", resetFrames_onClick)

function SettingsMixin:AddOptions()
    -- manually creating options until Blizzard's vertical frame taint bugs are sorted
    local f = self.ScrollBox.ScrollTarget

    local btn = CreateFrame("Frame", nil, f, "SettingsCheckBoxControlTemplate")
    f.PerCharOption = btn
    btn:SetPoint("TOPLEFT", f, "TOPLEFT", 0, -10)
    btn.Text:SetText("Save windows only for this character")
    btn.CheckBox:ClearAllPoints()
    btn.CheckBox:SetPoint("TOPLEFT", btn, "TOPRIGHT")

    local btnReset = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    btnReset:SetText("Reset All Saved Window Settings")
    btnReset:SetWidth(300)
    btnReset:SetPoint("TOPLEFT", btn, "BOTTOMLEFT", 0, -10)
    btnReset:HookScript("OnClick", resetFrames_onClick)

    local btnMerge = CreateFrame("Frame", nil, f, "SettingsCheckBoxControlTemplate")
    f.MergeFramesOption = btnMerge
    btnMerge:SetPoint("TOPLEFT", btnReset, "BOTTOMLEFT", 0, -10)
    btnMerge.Text:SetText("Merge quest, gossip, and merchant frames")
    btnMerge.CheckBox:ClearAllPoints()
    btnMerge.CheckBox:SetPoint("TOPLEFT", btnMerge, "TOPRIGHT")
end

local function perCharPos_onClick(btn)
    DEMODAL_CHAR_DB["per_char_positions"] = btn:GetChecked()
end
AFP("perCharPos_onClick", perCharPos_onClick)

local function mergeFrames_onClick(btn)
    DEMODAL_DB["merge_frames"] = btn:GetChecked()
end
AFP("mergeFrames_onClick", mergeFrames_onClick)

local function setOptionDefaults()
    -- TODO: put this in a shared place

    -- set char option defaults
    if DEMODAL_CHAR_DB["per_char_positions"] == nil then
        DEMODAL_CHAR_DB["per_char_positions"] = false
    end

    -- set global option defaults
    if DEMODAL_DB["merge_frames"] == nil then
        DEMODAL_DB["merge_frames"] = true
    end
end
AFP("setOptionDefaults", setOptionDefaults)

function SettingsMixin:SetOptionValues()
    setOptionDefaults()
    
    local f = self.ScrollBox.ScrollTarget

    f.PerCharOption.CheckBox:HookScript("OnClick", perCharPos_onClick)
    if DEMODAL_CHAR_DB["per_char_positions"] then
        f.PerCharOption.CheckBox:SetChecked(true)
    else
        f.PerCharOption.CheckBox:SetChecked(false)
    end

    f.MergeFramesOption.CheckBox:HookScript("OnClick", mergeFrames_onClick)
    if DEMODAL_DB["merge_frames"] then
        f.MergeFramesOption.CheckBox:SetChecked(true)
    else
        f.MergeFramesOption.CheckBox:SetChecked(false)
    end
end

local SF = nil
SettingsMixin.Init = function()
    if SF then
        return SF
    end
    SF = CreateFrame("Frame", nil, nil, "SettingsListTemplate")
    Mixin(SF, SettingsMixin)
    SF:SetTitle()
    SF:AddOptions()
    SF:AddToSettings()
    return SF
end
