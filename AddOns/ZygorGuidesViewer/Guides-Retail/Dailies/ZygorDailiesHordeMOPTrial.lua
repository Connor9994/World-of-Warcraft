local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Mists of Pandaria Dailies\\The Anglers Dailies",{
startlevel=15,
description="\nThis guide will take you through The Anglers dailies Becoming Exalted with The Anglers allows you to purchase a companion pet, fishing poles, and water mounts.",
},[[
step
You must have fishing in order to accept dailies from this faction
confirm
step
label "dailies"
There will only be three dailies available from the following questgivers
|tip It is possible for one questgiver to give you two quests in the same day, but it is unlikely.
confirm
step
talk Fisherman Haito##59584
accept Shocking!##30584 |goto Krasarang Wilds 67.9,45.2 |or
accept Jagged Abalone##30586 |goto Krasarang Wilds 67.9,45.2  |or
If these quests are unavailable today, click here |confirm
step
talk Angler Shen##59586
accept Snapclaw##30700 |goto 67.5,43.5 |or
accept Fishing for a Bruising##30588 |goto 67.5,43.5 |or
If these quests are unavailable today, click here |confirm
step
talk John "Big Hook" Marsock##60674
accept Bright Bait##30754 |goto 68.3,43.5 |or
accept Jumping the Shark##30753 |goto 68.3,43.5 |or
If these quests are unavailable today, click here |confirm
step
talk Trawler Yotimo##60135
accept Armored Carp##30613 |goto 67.6,42.5 |or
accept Huff & Puff##30658 |goto 67.6,42.5 |or
If these quests are unavailable today, click here |confirm
step
talk Elder Fisherman Rassan##60673
accept What Lurks Below##30585 |goto 68.4,42.1 |or
accept Who Knew Fish Liked Eggs?##30598 |goto 68.4,42.1 |or
If these quests are unavailable today, click here |confirm
step
talk Fo Fook##60675
accept Piranha!##30763 |goto 67.2,41.2 |or
accept Viseclaw Soup##30701 |goto 67.2,41.2 |or
If these quests are unavailable today, click here |confirm
step
talk Fiznix##60136
accept Like Bombing Fish In A Barrel##30678 |goto 67.5,44.6 |or
accept Scavenger Hunt##30698 |goto 67.5,44.6 |or
If this quest is unavailable today, click here |confirm
step
click Goblin Fishing Raft##211596
Ride a Goblin Fishing Raft |goto 67.5,44.8 |havebuff 534592
only if haveq(30698)
step
Use your fishing skill in the Shipwreck Debris pools to fish up 15 Rusty Shipwreck Debris
collect 15 Rusty Shipwreck Debris##80830 |q 30698/1 |goto 64.3,50.7
You can find more Debris at [64.3,50.6]
only if haveq(30698)
step
clicknpc Frenzied Reef Shark##60408
Ride the shark |goto 68.4,43.1 |invehicle |c
only if haveq(30753)
step
Use the abilities on your hotbar to kill the shark, make sure not to let your grip bar reach zero
kill Frenzied Reef Shark##60408 |q 30753/1
only if haveq(30753)
step
click Jagged Abalone##211118
collect 9 Jagged Abalone Meat##80277 |q 30586/1 |goto 69.1,37.9
only if haveq(30586)
step
Enter the underwater cave here |goto 71.3,38.5 < 5
kill Snapclaw##60401
collect Snapclaw's Claw##80831 |q 30700/1 |goto 73.9,38.4
only if haveq(30700)
step
Use your fishing skill to fish up 7 Dojani Eel |cast Fishing##131474
collect 7 Dojani Eel##80260 |q 30584/1 |goto 65.6,30.5
only if haveq(30584)
step
kill 8 Riverblade Raider##59714+ |q 30588/1 |goto 62.4,40.9
only if haveq(30588)
step
kill Viseclaw Fry##61090+, Viseclaw Fisher##58880+
collect 16 Viseclaw Fisher Eye##80832+ |q 30701/1 |goto 55.1,45.7
only if haveq(30701)
step
click Suncrawler##211474
collect 7 Suncrawler##81116 |q 30754/1 |goto 59.8,38.8
only if haveq(30754)
step
Use your Goblin Fishing Bomb to kill Sting Rays |use Goblin Fishing Bomb##80599
|tip You can kill the Sting Rays by other means, using the bombs is much quicker though.
kill Sting Ray##60278+
collect 3 Stinger##80600+ |q 30678/1 |goto 59.3,46.3
only if haveq(30678)
step
Use your fishing skill to fish up 5 Wolf Piranha. |cast Fishing##7620
collect 5 Wolf Piranha##81122 |q 30763/1 |goto 36.8,43.3
only if haveq(30763)
step
Use your fishing skill in the Mysterious Whirlpool until Narjon the Gulper appears.
|tip When Narjon spawns, make sure to equip your weapon quickly. |cast Fishing##131474
|tip It's a small swirling pool of water at this location
kill Narjon the Gulper##59689 |q 30585/1 |goto 34.4,31.4
collect Beloved Ring##80262 |q 30585/2 |goto 34.4,31.4
only if haveq(30585)
step
Use your Anglers Fishing Spear near a Prickly Puffer |use Anglers Fishing Spear##80403
|tip The closer you are the easier it is to hit the fish.
kill Prickly Puffer##60037
collect 5 Prickly Puffer Spine##80529 |q 30658/1 |goto 51.4,62.2
only if haveq(30658)
step
click Pristine Crane Egg##211160
collect Pristine Crane Egg##80303 |q 30598/1 |goto 65.2,47.5
only if haveq(30598)
step
Use your Anglers Fishing Spear near an Armored Carp |use Anglers Fishing Spear##80403
|tip The closer you are the easier it is to hit the fish.
kill Armored Carp##59936+
collect 5 Armored Carp##80437 |q 30613/1 |goto 70.1,51.2
only if haveq(30613)
step
Use the Pristine Crane Egg in your bags |use Pristine Crane Egg##80303
Use your fishing skill in the Crane Yolk Pool and fish up a Silver Goby.
collect Silver Goby##80310 |q 30598/2 |goto 68.2,42.7
only if haveq(30598)
step
talk Elder Fisherman Rassan##60673
turnin What Lurks Below##30585 |goto 68.4,42.1
turnin Who Knew Fish Liked Eggs?##30598 |goto 68.4,42.1
step
talk Fiznix##60136
turnin Like Bombing Fish In A Barrel##30678 |goto 67.5,44.6
turnin Scavenger Hunt##30698 |goto 67.5,44.6
step
talk Angler Shen##59586
turnin Snapclaw##30700 |goto 67.5,43.5
turnin Fishing for a Bruising##30588 |goto 67.5,43.5
step
talk Trawler Yotimo##60135
turnin Armored Carp##30613 |goto 67.6,42.5
turnin Huff & Puff##30658 |goto 67.6,42.5
step
talk Fisherman Haito##59584
turnin Shocking!##30584 |goto 67.9,45.2
turnin Jagged Abalone##30586 |goto 67.9,45.2
step
talk John "Big Hook" Marsock##60674
turnin Bright Bait##30754 |goto 68.3,43.5
turnin Jumping the Shark##30753 |goto 68.3,43.5
step
talk Fo Fook##60675
turnin Piranha!##30763 |goto 67.2,41.2
turnin Viseclaw Soup##30701 |goto 67.2,41.2
step
talk Nat Pagle##63721
buy 1 Grand Commendation of the Anglers##93225 |n
Use the Commendation of the Anglers you just purchased |goto 68.4,43.4 |complete ZGV:GetReputation("The Anglers").hasBonus |use Grand Commendation of the Anglers##93225
only if rep("The Anglers")>=Revered
step
You have reached the end of this guide
Click here to go back to the dailies |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\The August Celestials Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\The Order of the Cloud Serpent Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\The Shado-Pan Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\The Tillers Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\The Golden Lotus Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\The Klaxxi Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\Pandaria Cooking Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\Dominance Offensive Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\Beast Master Dailies (Dominance Offensive)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\Sunreaver Onslaught Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Mists of Pandaria Dailies\\Timeless Isle Dailies")
