local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
