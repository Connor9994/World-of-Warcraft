local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHMoP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Leveling Guides\\Pandaria Blacksmithing 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Leveling Guides\\Pandaria Fishing 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Leveling Guides\\Pandaria Herbalism 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Leveling Guides\\Pandaria Mining 1-75")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Leveling Guides\\Pandaria Tailoring 1-75")
