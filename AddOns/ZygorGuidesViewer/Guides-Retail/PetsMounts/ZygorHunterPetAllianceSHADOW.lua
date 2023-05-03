local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("HunterPetASHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
