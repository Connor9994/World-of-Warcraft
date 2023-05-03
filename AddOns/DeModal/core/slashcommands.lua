local _, PKG = ...

local function loadSlashCommands()
    _G["SLASH_DEMODALSLASH1"] = "/demodal"
    SlashCmdList["DEMODALSLASH"] = function(msg)
        if msg == "" then
            DEFAULT_CHAT_FRAME:AddMessage("DeModal: slash commands")
        --[[
            DEFAULT_CHAT_FRAME:AddMessage("DeModal:   /demodal settings   -> open the settings window")
        elseif msg == "settings" then
            ShowUIPanel(DeModalSettings)
            UIFrameFadeIn(DeModalSettings, 0.1, 0, 1)
        --]]
        else
            DEFAULT_CHAT_FRAME:AddMessage("DeModal: invalid command")
        end
    end
end
PKG.LoadSlashCommands = loadSlashCommands
