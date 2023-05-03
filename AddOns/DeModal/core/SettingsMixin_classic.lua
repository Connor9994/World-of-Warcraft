local _, PKG = ...

local Debug = PKG.Debug
local AFP = PKG.AddProfiling

local SettingsMixin = {}
AFP("SettingsMixin", SettingsMixin)
PKG.SettingsMixin = SettingsMixin

function SettingsMixin:SetTitle()
    local title = self:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText("DeModal")
    self.title = title
end

function SettingsMixin:AddToSettings()
    self.name = "DeModal"
    InterfaceOptions_AddCategory(self)
end

local function resetFrames_onClick(btn)
    Debug("reset saved frame data")
    table.wipe(DEMODAL_CHAR_DB["frames"])
    table.wipe(DEMODAL_DB["frames"])
    ReloadUI()
end
AFP("resetFrames_onClickk", resetFrames_onClick)

function SettingsMixin:AddOptions()
    local btn = CreateFrame("CheckButton", nil, self, "InterfaceOptionsCheckButtonTemplate")
    self.PerCharOption = btn
    btn:SetPoint("TOPLEFT", self.title, "BOTTOMLEFT", -2, -16)
    btn.label = btn:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    btn.label:SetPoint("TOPLEFT", 30, -6)
    btn.label:SetText("Save windows only for this character")

    local btnReset = CreateFrame("Button", nil, self, "UIPanelButtonTemplate")
    btnReset:SetText("Reset All Saved Window Settings")
    btnReset:SetWidth(300)
    btnReset:SetPoint("TOPLEFT", btn, "BOTTOMLEFT", 0, -10)
    btnReset:HookScript("OnClick", resetFrames_onClick)

    local btnMerge = CreateFrame("CheckButton", nil, self, "InterfaceOptionsCheckButtonTemplate")
    self.MergeFramesOption = btnMerge
    btnMerge:SetPoint("TOPLEFT", btnReset, "BOTTOMLEFT", 0, -10)
    btnMerge.label = btnMerge:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    btnMerge.label:SetPoint("TOPLEFT", 30, -6)
    btnMerge.label:SetText("Merge quest, gossip, and merchant frames")
end

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
end

function SettingsMixin:okay()
    Debug("update setting PerCharOption:", self.PerCharOption:GetChecked())
    DEMODAL_CHAR_DB["per_char_positions"] = self.PerCharOption:GetChecked()

    Debug("update setting MergeFrames:", self.MergeFramesOption:GetChecked())
    DEMODAL_DB["merge_frames"] = self.MergeFramesOption:GetChecked()
end

function SettingsMixin:OnShow()
    if DEMODAL_CHAR_DB["per_char_positions"] then
        self.PerCharOption:SetChecked(true)
    else
        self.PerCharOption:SetChecked(false)
    end

    if DEMODAL_DB["merge_frames"] then
        self.MergeFramesOption:SetChecked(true)
    else
        self.MergeFramesOption:SetChecked(false)
    end
end

local SF = nil
SettingsMixin.Init = function()
    if SF then
        return SF
    end
    SF = CreateFrame("Frame")
    SF:Hide()
    Mixin(SF, SettingsMixin)
    SF:HookScript("OnShow", SF.OnShow)
    SF:SetTitle()
    SF:AddOptions()
    SF:AddToSettings()
    return SF
end
