local _, PKG = ...

local Debug = PKG.Debug

-- global API for this addon
DEMODAL_ADDON = {}
DEMODAL_ADDON.VERSION_STRING = "DeModal 0.7.3"
DEMODAL_ADDON.VERSION = "0.7.3"

-- version ID stuff
PKG.gameVersion = "retail"
local tocv = select(4, GetBuildInfo())
if tocv < 20000 then
    PKG.gameVersion = "vanilla"
elseif tocv < 40000 then
    PKG.gameVersion = "wrath"
end
Debug("TOC V", tocv, PKG.gameVersion)

-- load all the things
PKG.LoadSlashCommands()
PKG.SettingsMixin.Init()
PKG.DeModalMixin.Init()
