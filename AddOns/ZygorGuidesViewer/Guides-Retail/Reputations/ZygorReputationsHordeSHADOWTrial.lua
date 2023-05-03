local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Shadowlands\\Kyrian Covenant of Bastion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Shadowlands\\Necrolords of Maldraxxus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Shadowlands\\Night Fae of Ardenweald")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Shadowlands\\Venthyr of Revendreth")
