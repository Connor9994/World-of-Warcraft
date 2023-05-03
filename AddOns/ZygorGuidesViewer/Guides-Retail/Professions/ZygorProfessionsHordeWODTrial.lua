local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Alchemy\\Leveling Guides\\Draenor Alchemy 1-100")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 600-700")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Blacksmithing\\Leveling Guides\\Draenor Blacksmithing 1-100")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Leveling Guides\\Draenor Cooking 1-100")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Leveling Guides\\Draenor Enchanting 1-100")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Engineering\\Leveling Guides\\Draenor Engineering 1-100")
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Leveling Guides\\Draenor Fishing 1-100")
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Leveling Guides\\Draenor Herbalism 1-100")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Inscription\\Leveling Guides\\Draenor Inscription 1-100")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Jewelcrafting\\Leveling Guides\\Draenor Jewelcrafting 1-100")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Leatherworking\\Leveling Guides\\Draenor Leatherworking 1-100")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Blackrock")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\True Iron")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Leveling Guides\\Draenor Mining 1-100")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Leveling Guides\\Draenor Tailoring 1-100")
