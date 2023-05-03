local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Council of Exarchs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Hand of the Prophet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Order of the Awakened")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\The Saberstalkers")
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Warlords of Draenor\\Sha'tari Defense",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Sha'tari Defense faction.",
achieveid={9476},
patch='60001',
},[[
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
stickystart "info"
step
label "menu"
Killing enemies in Talador gives you Sha'tari Defense reputation:
Shattrath City |next "shattrath" |confirm
Bladefury Hold |next "bladefury" |confirm
step
label "shattrath"
kill Imp Charmer##83017+, Sargerei Felbringer##84334+, Gorebound Insurgent##87337+, Shadowbourne Felcaster##84871+, Fel Seer##84873+
Kill mobs around _Shattrath City_ for Sha'tari Defense reputation |goto Talador 45.1,35.4
Return to the main menu |next "menu" |confirm
step
label "bladefury"
kill Grom'kar Bulwark##85454+, Grom'kar Punisher##85458+, Grom'kar Deadeye##85450+, Grom'kar Blademaster##85456+
Kill mobs around _Bladefury Hold_ for Sha'tari Defense reputation |goto Talador 68.8,3.5
Return to the main menu |next "menu" |confirm
step
label "info"
Your current reputation rank is:
_Neutral_ |only if rep("Sha'tari Defense")==Neutral
_Friendly_ |only if rep("Sha'tari Defense")==Friendly
_Honored_ |only if rep("Sha'tari Defense")==Honored
_Revered_ |only if rep("Sha'tari Defense")==Revered
_Exalted_ |only if rep("Sha'tari Defense")==Exalted
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Sha'tari Defense reputation!
|tip Use the Garrison Buildings guide to accomplish this.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Warlords of Draenor\\Wrynn's Vanguard")
