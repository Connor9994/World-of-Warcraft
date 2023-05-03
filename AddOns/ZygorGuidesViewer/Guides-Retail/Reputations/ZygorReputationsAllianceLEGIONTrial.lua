local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Fishing\\Ilyssia of the Waters")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Fishing\\Impus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Fishing\\Corbyn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Fishing\\Keeper Raynae")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Fishing\\Sha'leth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Fishing\\Akule Riverhorn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Argussian Reach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Armies of Legionfall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Army of the Light")
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Conjurer Margoss",{
author="support@zygorguides.com",
keywords={"Conjurer","Margoss"},
description="\nThis guide will walk you through becoming exalted with the Conjurer Margoss faction.",
},[[
step
collect Goblin Glider Kit##109076 |c |complete rep("Conjurer Margoss")>=BestFriend
|tip You can create these, if you have Engineering.
|tip You can also purchase them from the Auction House.
step
Follow the path |goto Dalaran L/10 38.13,45.34 < 20 |only if walking
Follow the path |goto Dalaran L/10 30.75,32.64 < 20 |only if walking
Jump off toward the floating island |goto Dalaran L/10 26.22,20.40 < 20 |only if walking
|tip Use the Goblin Glider Kit immediately after jumping.
Fish in the Water
collect Mark of Aquaos##141975 |n
|tip There's a chance to get these when fishing here.
Use the Mark of Aquaos |use Mark of Aquaos##141975
|tip This will summon Aquaos the Unleashed in the pond.
|tip Killing him will buff the pond to have a 100% catch chance for Drowned Mana for about 2-3 minutes.
collect Drowned Mana##138777 |n
talk Conjurer Margoss##108825
|tip Use the dialogue options to give him the Drowned Mana.
Gain Best Friend Reputation with Conjurer Margoss |complete rep("Conjurer Margoss")>=BestFriend |goto Dalaran L/10 23.10,-11.40 |region dalaran_margosss_retreat
step
_Congratulations!_
You earned Best Friend reputation with the "Conjurer Margoss" faction.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Court of Farondis")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Dreamweavers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Highmountain Tribe")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\The Nightfallen")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\Valarjar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Legion Reputations\\The Wardens")
