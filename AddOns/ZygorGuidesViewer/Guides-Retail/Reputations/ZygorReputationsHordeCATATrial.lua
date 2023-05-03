local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Argent Dawn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Bloodsail Buccaneers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Brood of Nozdormu")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Cenarion Circle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Darkmoon Faire")
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Darkspear Trolls",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Darkspear Trolls faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Darkspear Trolls') < Exalted end,
},[[
step
talk Champion Uru'zin##50477
buy Darkspear Tabard##45582 |goto Orgrimmar,50.0,58.1
Equip your Darkspear Trolls Tabard |equipped Darkspear Tabard##45582 |use Darkspear Tabard##45582 |future
You can run any dungeon that grants experience to gain reputation for the Darkspear Trolls
Become Exalted with Darkspear Trolls |complete rep('Darkspear Trolls')==Exalted
step
Congratulations, you have reached exalted with the Darkspear Trolls!
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\The Defilers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Frostwolf Clan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Hydraxian Waterlords")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Orgrimmar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Ravenholdt")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\The Steamwheedle Cartel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Thorium Brotherhood")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Thunder Bluff")
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Timbermaw Hold",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Timbermaw Hold faction.",
achieveid={944},
patch='30001',
},[[
step
talk Nafien##15395
accept Deadwood of the North##28338 |goto Felwood,64.0,10.3
accept Disarming Bears##28366 |goto Felwood,64.0,10.3
step
talk Ferli##48461
accept Stupid Drizle!##28362 |goto 64.1,10.3
step
talk Drizle##47556
turnin Stupid Drizle!##28362 |goto 60.6,9.5
accept The Chieftain's Key##28364 |goto 60.6,9.5
step
kill Chieftain Bloodmaw##9462
collect Drizle's Key##63695 |q 28364/1 |goto 62.1,9.9
step
talk Drizle##47556
turnin The Chieftain's Key##28364 |goto 60.6,9.5
step
kill Deadwood Den Watcher##7156+, Deadwood Avenger##7157+, Deadwood Shaman##7158+
Kill 15 Deadwood Furbolg |q 28338/1 |goto 62.0,12.8
click Deadwood Weapon Pile##207126
collect 7 Deadwood Weapons##63689 |q 28366/1 |goto 62.0,12.8
collect 1 Deadwood Ritual Totem##20741 |n
accept Deadwood Ritual Totem##8470
You can find more around [Felwood,59.7,9.8].
step
talk Nafien##15395
turnin Deadwood of the North##28338 |goto 64.0,10.3
turnin Disarming Bears##28366 |goto 64.0,10.3
accept Speak to Salfa##28521 |goto 64.0,10.3
You should be able to turn in Feathers for Nafien, a repeatable reputation quest.
step
talk Kernda##11558
turnin Deadwood Ritual Totem##8470 |goto 64.7,5.7
You should be friendly with Timbermaw after completing this quest.
only if rep('Timbermaw Hold')>=Neutral
step
talk Meilosh##11557
accept Runecloth##6031 |goto 64.9,5.2
only if rep ('Timbermaw Hold')>=Friendly
step
talk Salfa##11556
turnin Speak to Salfa##28521 |goto Winterspring,21.1,46.2
accept Delivery for Donova##28524 |goto Winterspring,21.1,46.2
accept Winterfall Activity##28522 |goto Winterspring,21.1,46.2
step
talk Donova Snowden##9298
turnin Delivery for Donova##28524 |goto 25.1,58.5
accept Threat of the Winterfall##28460 |goto 25.1,58.5
accept Falling to Corruption##28464 |goto 25.1,58.5
step
Click the Winterfall Cauldron.
turnin Falling to Corruption##28464 |goto 24.5,47.6
accept Mystery Goo##28467 |goto 24.5,47.6
step
kill Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+
Kill 15 Winterfall Furbolg |q 28460/1 |goto 24.5,47.6
collect 10 Winterfall Spirit Beads##21383 |q 28522/1 |goto 24.5,47.6
You can find more mobs around [Winterspring,27.3,49.3].
step
talk Donova Snowden##9298
turnin Mystery Goo##28467 |goto 25.1,58.5
turnin Threat of the Winterfall##28460 |goto 25.1,58.5
accept Winterfall Runners##28469 |goto 25.1,58.5
accept Scalding Signs##28530 |goto 25.1,58.5
stickystart "scaldspring"
step
kill Winterfall Runner##10916
collect Winterfall Crate##12829 |q 28469/1 |goto 29.3,54.8
They walk along the road so some searching may be required.
step
label "scaldspring"
kill Scalding Springsurge##48767+,Boiling Springbubble##48768+
collect 7 Suspicious Green Sludge##64449 |q 28530/1 |goto 32.7,50.6
step
talk Donova Snowden##9298
turnin Winterfall Runners##28469 |goto 25.1,58.5
turnin Scalding Signs##28530 |goto 25.1,58.5
accept High Chief Winterfall##28470 |goto 25.1,58.5
You should be honored with Timbermaw Hold at this point.
step
kill High Chief Winterfall##10738 |q 28470/1 |goto 37.0,55.6
step
talk Donova Snowden##9298
turnin High Chief Winterfall##28470 |goto 25.1,58.5
step
talk Salfa##11556
turnin Winterfall Activity##28522 |goto 21.1,46.2
You should now be able to do the quest More Beads for Salfa.
step
talk Burndl##48722
accept Bearzerker##28614 |goto 65.3,46.2
step
talk Tanrir##48723
accept Turning the Earth##28615 |goto 65.4,46.2
stickystart "overtotem"
step
kill Grolnar the Berserk##49178 |q 28614/1 |goto 69.3,50.6
step
label "overtotem"
Use Tanrir's Overcharged Totem to overload Winterfall Earth Totems. |use Tanrir's Overcharged Totem##64637
Overload 4 Winterfall Earth Totems |q 28615/1 |goto 67.0,47.7
step
talk Tanrir##48723
turnin Turning the Earth##28615 |goto Winterspring,65.4,46.2
step
talk Burndl##48722
turnin Bearzerker##28614 |goto 65.3,46.2
step
label "the_grind"
At this point, you can do two repeatable quests, as well as grind to earn rep.
More Beads for Salfa requires that you grind in Winterspring.  You collect 5 Winterfall Spirit Beads, which are worth 2,000 Reputation per turn in.  Click here to farm at the Winterspring location. |confirm |next "winterfall"
or
Feathers for Nafien requires that you grind in Felwood. You collect 5 Deadwood Headdress Feathers, which are worth 2,000 Reputation per turn in.  Click here to farm at the Felwood location. |confirm |next "deadwood" |tip
Collecting 65 Beads/Feathers will get you from Honored to Exalted.
step
label "winterfall"
kill Winterfall Shaman##7439+,Winterfall Ursa##7438+
collect Winterfall Spirit Beads##21383 |n |goto 67.5,49.8
|tip You need to collect at least 5.
5 Winterfall Spirit Beads = 2,000 Reputation. You're aiming for at least 60 to 65 Winterfall Spirit Beads in total.
More can be found at [Winterspring,35.6,56.3]
Click here to turn in your beads |confirm
step
talk Salfa##11556
accept More Beads for Salfa##28523 |n |goto 21.1,46.2
Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
or
Exalted with Timbermaw Hold |next "exalted" |complete rep('Timbermaw Hold')==Exalted
step
label "deadwood"
kill Deadwood Avenger##7157+,Deadwood Den Watcher##7156+,Deadwood Shaman##7158+
collect Deadwood Headdress Feather##21377 |n |goto Felwood,61.9,12.3
|tip You need to collect at least 5.
5 Feather Headresses = 2,000 Reputation.  You're aiming for at least 60 to 65 Feather Headresses in total.
More can be found at [Felwood,59.6,8.9]
Click here to turn in your feathers |confirm |next "turnin"
step
label "turnin"
talk Nafien##15395
accept Feathers for Nafien##28395 |n |goto 64.0,10.3
Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
or
Exalted with Timbermaw Hold |next "exalted" |complete rep('Timbermaw Hold')==Exalted
step
label "exalted"
Congratulations, you are now Exalted with Timbermaw Hold!
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Undercity")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Classic Reputations\\Warsong Outriders")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Netherwing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\The Aldor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Ashtongue Deathsworn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Cenarion Expedition")
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\The Consortium",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Consortium faction.",
achieveid={902},
patch='30003',
},[[
step
From neutral, you have a few options as to how to earn your reputation
The first way is running the Mana Tombs, although it will stop giving you reputation on Normal Mode as soon as you hit Honored
The second way is by doing repeatable quests in Nagrand until you hit friendly
Click here to continue. |confirm
step
talk Consortium Recruiter##18335
accept The Consortium Need You!##9913 |goto Nagrand,52.0,34.8
step
kill Wild Elekk##18334+
collect 3 Pair of Ivory Tusks##25463+ |future |q 9914 |goto 50.8,40.1
They are scattered all over Nagrand.  Don't confuse them with Bull Elekks
More can be found at the locations below:
[55.2,44.9]
[61.4,41.5]
[67.2,39.9]
[69.9,46.0]
step
talk Shadrek##18333
accept A Head Full of Ivory##9914 |goto Nagrand,31.8,56.8
step
talk Gezhe##18265
turnin The Consortium Needs You!##9913 |goto 31.4,57.8
accept Stealing from Thieves##9882 |goto 31.4,57.8
step
talk Zerid##18276
accept Gava'xi##9900 |goto Nagrand,30.8,58.1
accept Matters of Security##9925 |goto Nagrand,30.8,58.1
step
Once you have accepted A Head Full of Ivory and Stealing from Thieves, you will want to complete both, but only turn one in
Click here to confirm. |confirm
stickystart "viraani"
step
kill Voidspawn##17981+ |q 9925/1 |goto Nagrand,36.2,65.5
More can be found around [37.9,66.1]
step
label "viraani"
kill Vir'aani Raider##17149+
collect 10 Oshu'gun Crystal Fragment##25416 |q 9882/1 |goto Nagrand,34.0,63.4
You can keep collecting more if you wish. You can turn them in multiples of ten.
step
kill Gava'xi##18298 |q 9900/1 |goto 42.6,73.6
He patrols around [42.1,71.2], so you might find him there.
step
talk Gezhe##18265
turnin Stealing from Thieves##9882 |goto Nagrand,31.4,57.8
step
talk Zerid##18276
turnin Gava'xi##9900 |goto 30.8,58.1
turnin Matters of Security##9925 |goto 30.8,58.1
Click here to farm Crystals. |next crystal |confirm |only if rep("The Consortium")<=Neutral
|next friend |only if rep("The Consortium")>=Friendly
step
label "crystal"
kill Vir'aani Raider##17149+
collect 10 Oshu'gun Crystal Fragment##25416 |q 9882/1 |goto Nagrand,34.0,63.4
You can keep collecting more if you wish. You can turn them in multiples of ten
step
talk Gezhe##18265
accept More Crystal Fragments##9883 |n |goto Nagrand,31.4,57.8
Click here to go back to farming. |next "crystal" |confirm |only if rep("The Consortium")<=Neutral
|next friend |only if rep("The Consortium")>=Friendly
step
label "friend"
talk Shadrek##18333
turnin A Head Full of Ivory##9914 |goto 31.8,56.8
step
talk Gezhe##18265
accept Membership Benefits##9886 |goto Nagrand,31.4,57.8
accept Obsidian Warbeads##9893 |goto Nagrand,31.4,57.8
step
kill Boulderfist Warrior##17136+, Boulderfist Mage##17137+
collect 10 Obsidian Warbeads##25433 |q 9893/1 |goto Nagrand,49.9,56.7
You can collect more than 10
Be sure to collected multiples of 10
step
talk Gezhe##18265
turnin Obsidian Warbeads##9893 |goto Nagrand,31.4,57.8
step
label "bead_farm"
kill Boulderfist Warrior##17136+, Boulderfist Mage##17137+
collect 10 Obsidian Warbeads##25433 |goto Nagrand,49.9,56.7
You can collect more than 10
To get from Friendly to Honored, you will need 240 Obsidian Warbeads
Be sure to collected multiples of 10
|only if rep("The Consortium")<=Friendly
step
talk Gezhe##18265
accept More Obsidian Warbeads##9892 |n |goto Nagrand,31.4,57.8
Click here to continue farming Warbeads. |next bead_farm |confirm
|only if rep("The Consortium")<Friendly
step
label "nsquest"
talk Nether-Stalker Khay'ji##19880
accept Consortium Crystal Collection##10265 |goto Netherstorm 32.4,64.2
step
kill Pentatharon##20215
|tip To the right as you enter the ruins, up on a small stage looking platform.
collect Arklon Crystal Artifact##28829 |q 10265/1
step
talk Nether-Stalker Khay'ji##19880
turnin Consortium Crystal Collection##10265 |goto 32.4,64.2
accept A Heap of Ethereals##10262 |goto 32.4,64.2
step
kill Zaxxis Stalker##19642+, Zaxxis Raider##18875+
collect 10 Zaxxis Insignia##29209 |q 10262/1 |goto 30.2,75.5
step
talk Nether-Stalker Khay'ji##19880
turnin A Heap of Ethereals##10262 |goto 32.4,64.2
accept Warp-Raider Nesaad##10205 |goto 32.4,64.2
A Heap of Ethereals becomes a daily after you turn the quest in
step
kill Warp-Raider Nesaad##19641 |q 10205/1 |goto 28.2,79.4
|tip In a small camp.
step
talk Nether-Stalker Khay'ji##19880
turnin Warp-Raider Nesaad##10205 |goto 32.4,64.2
accept Request for Assistance##10266 |goto 32.4,64.2
step
talk Gahruj##20066
turnin Request for Assistance##10266 |goto 46.7,56.9
accept Rightful Repossession##10267 |goto 46.7,56.9
accept Drijya Needs Your Help##10311 |goto 46.7,56.9
step
talk Mehrdad##20810
accept Run a Diagnostic!##10417 |goto 46.4,56.4
accept New Opportunities##10348 |goto 46.4,56.4
stickystart "ivorybell"
stickystart "surveyingequip"
step
click Diagnostic Equipment##184589
collect Diagnostic Results##29741 |q 10417/1 |goto 48.2,55.0
step
label "ivorybell"
click Ivory Bell##184443
collect 15 Ivory Bell##29474 |q 10348/1 |goto 48.2,53.9
step
label "surveyingequip"
click Box Surveying Equipment##6881
collect 10 Box of Surveying Equipment##28913 |q 10267/1 |goto 57.6,63.9
step
talk Mehrdad##20810
turnin New Opportunities##10348 |goto 46.4,56.4
turnin Run a Diagnostic!##10417 |goto 46.4,56.4
accept Deal With the Saboteurs##10418 |goto 46.4,56.4
step
kill 8 Barbscale Crocolisk##20773+ |q 10418/1 |goto 46.8,53.9
step
talk Mehrdad##20810
turnin Deal With the Saboteurs##10418 |goto 46.4,56.4
accept To the Stormspire##10423 |goto 46.4,56.4
step
talk Gahruj##20066
turnin Rightful Repossession##10267 |goto 46.7,56.9
accept An Audience with the Prince##10268 |goto 46.7,56.9
step
talk Drijya##20281
turnin Drijya Needs Your Help##10311 |goto 48.1,63.5
accept Sabotage the Warp-Gate!##10310 |goto 48.1,63.5
step
Escort Drijya while he sabotages the warp-gate
Burning Legion warp-gate sabotaged |q 10310/1
step
talk Gahruj##20066
turnin Sabotage the Warp-Gate!##10310 |goto 46.7,56.9
step
talk Ghabar##20811
turnin To the Stormspire##10423 |goto 43.5,35.1
accept Diagnosis: Critical##10424 |goto 43.5,35.1
step
talk Image of Nexus-Prince Haramad##20084
turnin An Audience with the Prince##10268 |goto 45.9,36.0
accept Triangulation Point One##10269 |goto 45.9,36.0
step
Use Diagnostic Device next to the generator |use Diagnostic Device##29803
Get the Diagnostic Results |q 10424/1 |goto 47.6,26.8
step
talk Ghabar##20811
turnin Diagnosis: Critical##10424 |goto 43.5,35.2
accept Testing the Prototype##10430 |goto 43.5,35.2
step
talk Tashar##20913
turnin Testing the Prototype##10430 |goto 44.7,14.6
accept All Clear!##10436 |goto 44.7,14.6
step
kill 12 Scythetooth Raptor##20634+ |q 10436/1 |goto 45.6,11.2
step
talk Tashar##20913
turnin All Clear!##10436 |goto 44.7,14.6
accept Success!##10440 |goto 44.7,14.6
step
talk Ghabar##20811
turnin Success!##10440 |goto 43.5,35.2
step
Use the Triangulation Device in your bags |use Triangulation Device##28962
A red arrow will appear showing you where to go
Discover the first triangulation point |q 10269/1 |goto 66.8,34.8
step
talk Dealer Hazzin##20092
turnin Triangulation Point One##10269 |goto Netherstorm,58.3,31.3
accept Triangulation Point Two##10275 |goto Netherstorm,58.3,31.3
step
talk Wind Trader Marid##20071
accept A Not-So-Modest Proposal##10270 |goto 58.3,31.7
step
talk Flesh Handler Viridius##20450
|tip He walks along this path. Some searching may be required.
accept Captain Tyralius##10422 |goto 59.2,32.1
step
talk Researcher Navuud##20449
accept Electro-Shock Goodness!##10411 |goto Netherstorm,59.2,32.6
step
talk Commander Ameer##20448
accept The Ethereum##10339 |goto 59.5,32.4
step
talk Professor Dabiri##20907
accept Recipe for Destruction##10437 |goto 60.1,31.7
step
kill Captain Zovax##20727 |q 10339/4 |goto 57.1,36.5
|tip He walks around this area.
kill 5 Ethereum Assassin##20452+ |q 10339/1 |goto 57.1,36.5
kill 5 Ethereum Shocktrooper##20453+ |q 10339/2 |goto 57.1,36.5
kill 2 Ethereum Researcher##20456+ |q 10339/3 |goto 57.1,36.5
step
Click the Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin The Ethereum##10339 |goto 56.8,38.7
accept Ethereum Data##10384 |goto 56.8,38.7
step
click Ethereum Data Cell##184560
collect Ethereum Data Cell##29582 |q 10384/1 |goto 55.8,39.9
step
kill Warden Icoshock##20770+
collect The Warden's Key##29742 |q 10422 |goto 54.5,41.1
step
Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
While under the effects of the Electro-Shock Therapy buff do the following:
|tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
kill Void Waste##20778+
kill 30 Void Waste Globule##20805+ |q 10411/2 |goto 55.2,42.8
step
Click Captain Tyralius's Prison
|tip It looks like a glowing pink orb
Free Captain Tyralius |q 10422/1 |goto 53.3,41.5
step
Click the Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin Ethereum Data##10384 |goto 56.8,38.7
accept Potential for Brain Damage = High##10385 |goto 56.8,38.7
step
kill Ethereum Shocktrooper##20453+, Ethereum Assassin##20452+
collect Ethereum Essence##29482 |n
Use Ethereum Essence in your bags to see Ethereum Relays |use Ethereum Essence##29482
kill Ethereum Relay##20619+
collect 15 Ethereum Relay Data##29459 |q 10385/1 |goto 56.5,38.6
step
Click the Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin Potential for Brain Damage = High##10385 |goto 56.8,38.7
accept S-A-B-O-T-A-G-E##10405 |goto 56.8,38.7
step
kill Ethereum Assassin##20452+, Ethereum Archon##20458+
collect Prepared Ethereum Wrapping##29591 |q 10405/1 |goto 55.8,40.5
step
Click the Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin S-A-B-O-T-A-G-E##10405 |goto 56.8,38.7
accept Delivering the Message##10406 |goto 56.8,38.7
step
Escort the Ethereum Demolishinist while he sabotages the Ethereum Conduit
|tip If you have trouble with this, clear the path first before accepting the escort quest.
Sabotage Ethereum Conduit |q 10406/1 |goto 56.8,38.6
step
Click the Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin Delivering the Message##10406 |goto 56.8,38.7
step
kill Ethereum Gladiator##20854
|tip He is fighting a Captured Protectorate Vanguard. Killing him will unlock an escort quest If he is not here you will have to wait for him to respawn.
talk Captured Protectorate Vanguard##20763
accept Escape from the Staging Grounds##10425 |goto 57.1,37.6
step
Escort the Captured Protectorate Vanguard to Protectorate Watch Post
Escort Captured Protectorate Vanguard |q 10425/1
step
talk Commander Ameer##20448
turnin Escape from the Staging Grounds##10425 |goto 59.5,32.4
step
talk Flesh Handler Viridius##20450
turnin Captain Tyralius##10422 |goto 59.3,32.0
step
kill Voidshrieker##18870+, Unstable Voidwraith##18869+
collect 8 Fragment of Dimensius##29822 |q 10437/1 |goto 62.5,34.7
step
Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
While under the effects of the Electro-Shock Therapy buff do the following:
|tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
kill 30 Seeping Sludge Globule##20806+ |q 10411/1 |goto 59.5,39.9
step
talk Agent Araxes##20551
accept The Flesh Lies...##10345 |goto 59.4,45.0
step
The entrance to the Access Shaft Zeon cave starts here. |goto 61.0,45.6 < 5 |q 10345
Go inside the cave |goto 59.8,42.6 |walk
Use the Protectorate Igniter in your bags on Withered Corpses |use Protectorate Igniter##29473
Use 12 Withered Corpses Burned |q 10345/1 |tip If you get to close they will turn into fleshbeasts. There are more corpses inside the cave.
step
talk Agent Ya-six##20552
accept Arconus the Insatiable##10353 |goto 60.9,41.5
step
click Teleporter Power Pack##184075
collect Teleporter Power Pack##28969 |q 10270/1 |goto 61.0,41.5
step
kill Arconus the Insatiable##20554 |q 10353/1 |goto 60.1,40.1
step
Leave the Access Shaft Zeon |goto 61.1,45.4 < 5 |q 10345
talk Agent Araxes##20551
turnin The Flesh Lies...##10345 |goto 59.4,45.0
step
talk Researcher Navuud##20449
turnin Electro-Shock Goodness!##10411 |goto 59.2,32.6
step
talk Commander Ameer##20448
turnin Arconus the Insatiable##10353 |goto 59.5,32.4
step
talk Professor Dabiri##20907
turnin Recipe for Destruction##10437 |goto 60.1,31.7
accept On Nethery Wings##10438 |goto 60.1,31.7
step
talk Protectorate Nether Drake##20903
Tell the dragon you are ready to fly
Use the Phase Disruptor in your bags while flying around the Void Conduit |use Phase Disruptor##29778
Destroy the Void Conduit |q 10438/1 |goto 60.2,31.7
step
talk Professor Dabiri##20907
turnin On Nethery Wings##10438 |goto 60.1,31.7
accept Dimensius the All-Devouring##10439 |goto 60.1,31.7
step
talk Captain Saeed##20985
Speak to Captain Saeed |q 10439/2 |goto 60.6,32.1
Tell him, "Let's go!"
step
Follow Captain Saeed and his men |goto 60.8,39.3
talk Captain Saeed##20985
Tell him, "I am ready"
kill Dimensius the All-Devouring##19554 |q 10439/1
step
talk Professor Dabiri##20907
turnin Dimensius the All-Devouring##10439 |goto 60.1,31.7
step
Click the Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
accept Nexus-King Salhadaar##10408 |goto 56.8,38.7
step
Use Protectorate Disruptor next to each of the three huge force fields protecting Nexus-King Salhadaar. |use Protectorate Disruptor##29618
kill Nexus-King Salhadaar##20454+ |q 10408/1 |goto 53.7,42.4
step
Click the Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin Nexus-King Salhadaar##10408 |goto 56.8,38.7
step
talk Zuben Elgenubi##20067
turnin In Search of Farahlite##10290 |goto 44.1,36.1
step
Click the Ethereum Transponder Zeta
Attempt to contact Wind Trader Marid.
talk Image of Wind Trader Marid##20518
turnin A Not-So-Modest Proposal##10270 |goto 71.1,39.0
step
Use the Triangulation Device in your bags |use Triangulation Device##29018
A red arrow will appear showing you where to go
Discover the second triangulation point |q 10275/1 |goto 29.1,40.5
step
talk Wind Trader Tuluman##20112
turnin Triangulation Point Two##10275 |goto 34.6,38.0
accept Full Triangle##10276 |goto 34.6,38.0
step
kill Farahlon Breaker##18886+
|tip If you're careful you can avoid having to fight the Farahkib Shardlings
collect 4 Raw Farahlite##29163 |q 10290/1 |goto 44.5,21.6
step
talk Zuben Elgenubi##20067
accept In Search of Farahlite##10290 |goto 44.0,36.0
step
kill Culuthas##20138+
collect Ata'mal Crystal##29026 |q 10276/1 |goto 53.5,21.5
step
talk Image of Nexus-Prince Haramad##20084
turnin Full Triangle##10276 |goto 45.9,36.0
step
talk Zephyrion##20470
accept Surveying the Ruins##10335 |goto 44.7,34.9
step
talk Nether-Stalker Nauthis##20471
accept The Minions of Culuthas##10336 |goto 44.7,34.9
accept Fel Reavers, No Thanks!##10855 |goto 44.7,34.9
step
kill Gan'arg Mekgineer##16949+
collect 5 Condensed Nether Gas##31653 |q 10855 |goto 39.1,28.9
step
talk Inactive Fel Reaver##22293
turnin Nether Gas In a Fel Fire Engine##10850 |n |goto 38.0,25.5
Destroy Inactive Fel Reaver |q 10855/1 |goto 38.0,25.5
step
kill 10 Hound of Culuthas##20141+ |q 10336/1 |goto 51.7,20.4
kill 5 Eye of Culuthas##20394+ |q 10336/2 |goto 51.7,20.4
step
talk Nether-Stalker Nauthis##20471
turnin The Minions of Culuthas##10336 |goto 44.7,34.9
turnin Fel Reavers, No Thanks!##10855 |goto 44.7,34.9
accept The Best Defense##10856 |goto 44.7,34.9
step
kill 12 Wrathbringer##18858+ |q 10856/1 |goto 41.9,23.6
step
talk Nether-Stalker Nauthis##20471
turnin The Best Defense##10856 |goto 44.7,34.9
accept Teleport This!##10857 |goto 44.7,34.9
step
Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
Use the Detonate Teleporter ability next to teleporters at [39.1,20.5]
Destroy the Western Teleporter |q 10857/1 |goto 39.2,20.0
step
Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
Use the Detonate Teleporter ability next to teleporters at [41.2,19.4]
Destroy the Central Teleporter |q 10857/2 |goto 41.2,19.4
step
Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
Use the Detonate Teleporter ability next to teleporters at [42.2,20.9]
Destroy the Eastern Teleporter |q 10857/3 |goto 42.2,20.9
step
talk Nether-Stalker Nauthis##20471
turnin Teleport This!##10857 |goto 44.7,34.9
step
Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
Place Surveying Marker One |q 10335/1 |goto 51.6,20.5
step
Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
Place Surveying Marker Two |q 10335/2 |goto 54.5,22.8
step
Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
Place Surveying Marker Three |q 10335/3 |goto 55.8,20.0
step
talk Zephyrion##20470
turnin Surveying the Ruins##10335 |goto 44.7,34.9
step
talk Commander Ameer##20448
accept A Mission of Mercy##10970 |goto 59.5,32.4
step
kill Ethereum Assassin##20452+, Captain Zovax##20727+, Ethereum Researcher##20456+
collect Salvaged Ethereum Prison Key##31956 |q 10970/1 |goto 56.6,37.7
step
talk Commander Ameer##20448
turnin A Mission of Mercy##10970 |goto 59.5,32.4
step
talk Commander Ameer##20448
turnin A Mission of Mercy##10970 |goto 59.5,32.4
accept Ethereum Secrets##10971 |goto 59.5,32.4
step
kill Ethereum Overlord##20459+, Ethereum Nexus-Stalker##20474+, Ethereum Overlord##20459+
collect Ethereum Prison Key##29460 |goto 56.6,37.7
|tip This has a really low drop rate.
step
click Ethereum Prison##7183
Kill whatever comes out of the prison
collect Ethereum Prisoner I.D. Tag##31957 |q 10971/1 |goto Netherstorm 54.7,46.2
step
talk Commander Ameer##20448
turnin Ethereum Secrets##10971 |goto 59.5,32.4
step
After these quests are done, you will need to grind reputation to Exalted.
You can either do Heroic Mana Tombs and kill everything in the instance.
You can do the Obsidian Warbeads in Nagrand. |next "bead" |confirm
You can farm Ethereal in Netherstorm. |next "heap" |confirm
Or you turn in Ethereum Prisoner I.D. Tag's |next "keys" |confirm
|tip We do not recommend this last option due to a very low drop rate for Ethereum Prison Keys.
step
label "keys"
talk Commander Ameer##20448
accept Ethereum Prisoner I.D. Catalogue##10972 |goto 59.5,32.4
step
kill Ethereum Overlord##20459+, Ethereum Nexus-Stalker##20474+, Ethereum Overlord##20459+
collect Ethereum Prison Key##29460 |goto 56.6,37.7
|tip This has a really low drop rate.
step
click Ethereum Prison##7183
Kill whatever comes out of the prison
collect Ethereum Prisoner I.D. Tag##31957 |q 10972/1 |goto Netherstorm 54.7,46.2
step
talk Commander Ameer##20448
turnin Ethereum Prisoner I.D. Catalogue##10972 |goto 59.5,32.4
step
label "heap"
kill Zaxxis Raider##18875+, Zaxxis Stalker##19642+
collect Zaxxis Insignia##29209+ |n |goto Netherstorm,30.8,75.0
You will need multiples of 10
You gain 250 reputation per 10
|confirm
step
talk Nether-Stalker Khay'ji##19880
turnin Another Heap of Ethereals##10308 |n |goto 32.4,64.2
Click here to return to Insignia farming. |next heap |confirm |only if rep("The Consortium")<=Revered
Click here to farm Obsidian Warbeads. |next bead |confirm |only if rep("The Consortium")<=Revered
|next "exalted" |only if rep("The Consortium")==Exalted
step
label "bead"
kill Boulderfist Warrior##17136+, Boulderfist Mage##17137+
collect Obsidian Warbeads##25433 |n |goto Nagrand,49.9,56.7
You will need multiples of 10
You gain 250 reputation per 10
|confirm
step
talk Gezhe##18265
accept More Obsidian Warbeads##9892 |n |goto Nagrand,31.4,57.8
Click here to return to Insignia farming. |next heap |confirm |only if rep("The Consortium")<=Revered
Click here to farm Obsidian Warbeads. |next bead |confirm |only if rep("The Consortium")<=Revered
|next "exalted" |only if rep("The Consortium")==Exalted
step
label "exalted"
Congratulations, you are now Exalted with The Consortium.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Keepers of Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Lower City")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Mag'har")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Ogri'la")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\The Scale of the Sands")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\The Scryers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\The Sha'tar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Sha'tari Skyguard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Shattered Sun Offensive")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Silvermoon City")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Sporeggar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Thrallmar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\Tranquillien")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Burning Crusade Reputations\\The Violet Eye")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\Argent Tournament\\Aspirant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\Argent Tournament\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\Argent Crusade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\Ashen Verdict")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\The Frenzyheart Tribe")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\The Horde Expedition")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\Kalu'ak")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\Kirin Tor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\Knights of the Ebon Blade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\The Oracles")
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\The Sons of Hodir",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Sons of Hodir faction.",
},[[
step
Proceeding to Prequests next step |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
Proceeding to Honored Dailies |next "Daily2" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered Dailies |next "Daily3" |only if rep('The Sons of Hodir')==Revered
step
talk Jeer Sparksocket##29431
turnin Luxurious Getaway!##12853 |goto The Storm Peaks,41,86.4
accept Clean Up##12818 |goto The Storm Peaks,41,86.4
step
talk Smilin' Slirk Brassknob##29904
home K3 |goto The Storm Peaks 41.1,85.9
step
talk Gretchen Fizzlespark##29473
|tip She's inside the inn.
accept They Took Our Men!##12843 |goto 41.1,86.1
accept Equipment Recovery##12844 |goto 41.1,86.1
step
talk Ricket##29428
accept Reclaimed Rations##12827 |goto 40.9,85.3
accept Expression of Gratitude##12836 |goto 40.9,85.3
step
talk Skizzle Slickslide##29721
fpath K3 |goto 40.8,84.5
stickystart "driedrations"
step
click Charred Wreckage##191535
collect 10 Charred Wreckage##40603 |q 12818/1 |goto 39.8,86.4
step
label "driedrations"
kill Savage Hill Scavenger##29404+, Savage Hill Brute##29623+
click Dried Gnoll Rations##191843
collect 16 Dried Gnoll Rations##40645|q 12827/1 |goto 35,83.8
step
kill Gnarlhide##30003|q 12836/1 |goto 30.3,85.7
step
talk Jeer Sparksocket##29431
turnin Clean Up##12818 |goto 41,86.4
accept Just Around the Corner##12819 |goto 41,86.4
step
talk Ricket##29428
turnin Reclaimed Rations##12827 |goto 40.9,85.3
turnin Expression of Gratitude##12836 |goto 40.9,85.3
accept Ample Inspiration##12828 |goto 40.9,85.3
step
click Sparksocket's Tools##191519
collect Sparksocket's Tools##40642|q 12819/1 |goto 35.1,87.8
step
talk Jeer Sparksocket##29431
turnin Just Around the Corner##12819 |goto 41,86.4
accept Slightly Unstable##12826 |goto 41,86.4
step
talk Ricket##29428
turnin Slightly Unstable##12826 |goto 40.9,85.3
accept A Delicate Touch##12820 |goto 40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Attackers|q 12820/1 |goto 43.1,81.2
step
talk Tore Rumblewrench##29430
accept Moving In##12829 |goto 41.7,80
accept Ore Repossession##12830 |goto 41.7,80
step
click the U.D.E.D. Dispenser##191553
Retrieve a bomb from the dispenser
collect U.D.E.D.##40686
|q 12828 |goto 41.7,80
step
Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686
|tip They walk around this area spread out.
click  Mammoth Meat##191567
collect 8 Hearty Mammoth Meat##40728|q 12828/1 |goto 43.9,79.0
step
Go into the cave |goto 40.4,77.8 < 10 |walk
talk Injured Goblin Miner##29434
accept Only Partly Forgotten##12831 |goto 41.5,74.9
stickystart "crystalweb"
step
kill Snowblind Diggers##29413 |n
collect 5 Impure Saronite Ore##40744|q 12830/1 |goto 44,75.9
step
kill Icetip Crawler##29461
collect 1 Icetip Venom Sac##40944|q 12831/1 |goto 47.1,72.3
step
label "crystalweb"
kill 12 Crystalweb Spiders |q 12829/1 |goto 44,75.9
step
talk Injured Goblin Miner##29434
turnin Only Partly Forgotten##12831 |goto 43.5,75.2
accept Bitter Departure##12832 |goto 43.5,75.2
step
talk Injured Goblin Miner##29434
Tell the miner you're ready
Escort the Injured Goblin Miner to K3 |q 12832/1 |goto 43.5,75.2
step
Fly up to [39.8,73.3]
kill Sifreldar Storm Maiden##29323+ |n
collect 5 Cold Iron Key##40641|n
click Rusty Cage##191544
Free 5 Goblin Prisoners |q 12843/1
click K3 Equipment##191568
collect 8 K3 Equipment##40726 |q 12844/1
step
talk Tore Rumblewrench##29430
turnin Moving In##12829 |goto 41.7,80
turnin Ore Repossession##12830 |goto 41.7,80
step
talk Ricket##29428
turnin A Delicate Touch##12820 |goto 40.9,85.3
turnin Ample Inspiration##12828 |goto 40.9,85.3
turnin Bitter Departure##12832 |goto 40.9,85.3
accept Cell Block Tango##12821 |goto 40.9,85.3
step
talk Gretchen Fizzlespark##29473
turnin They Took Our Men!##12843 |goto 41.1,86.1
accept Leave No Goblin Behind##12846|goto 41.1,86.1
turnin Equipment Recovery##12844 |goto 41.1,86.1
step
click Transporter Power Cell##191576
collect Transporter Power Cell##40731|q 12821/1 |goto 45.1,82.4
step
Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731
|tip It looks like a tall machine with a fan in the bottom of it.
Activate the Garm Teleporter |q 12821/2 |goto 50.7,81.9
step
talk Ricket##29428
turnin Cell Block Tango##12821 |goto 40.9,85.3
accept Know No Fear##12822 |goto 40.9,85.3
step
talk Gino##29432
accept A Flawless Plan##12823 |goto 50.0,81.8
step
Go inside the cave |goto 50.5,77.8
Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431
|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
kill Tormar Frostgut##29626 |q 12823/2 |goto 50.5,77.8
step
kill 6 Garm Watcher##29409+ |q 12822/1 |goto 48.1,81.9
kill 8 Snowblind Devotee##29407+ |q 12822/2 |goto 48.1,81.9
step
Go outside
talk Gino##29432
turnin A Flawless Plan##12823 |goto 50.0,81.8
accept Demolitionist Extraordinaire##12824 |goto 50.0,81.8
step
Fly up into the cave |goto 42.8,68.9
talk Lok'lira the Crone##29481
turnin Leave No Goblin Behind##12846
accept The Crone's Bargain##12841
step
kill Overseer Syra##29518
collect 1 Runes of the Yrkvinn##40690|q 12841/1 |goto 44.2,68.9
step
talk Lok'lira the Crone##29481
turnin The Crone's Bargain##12841 |goto 42.8,68.9
accept Mildred the Cruel##12905 |goto 42.8,68.9
step
talk Mildred the Cruel##29885
turnin Mildred the Cruel##12905 |goto 44.4,68.9
accept Discipline##12906 |goto 44.4,68.9
step
Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837
|tip They are sitting on the ground inside these side tunnels inside this mine.
Discipline 6 Exhausted Vrykul |q 12906/1 |goto 44.8,70.3
step
talk Mildred the Cruel##29885
turnin Discipline##12906 |goto 44.4,68.9
accept Examples to be Made##12907 |goto 44.4,68.9
step
kill 1 Garhal##30147 |q 12907/1 |goto 45.4,69.1
step
talk Mildred the Cruel##29885
turnin Examples to be Made##12907 |goto 44.4,68.9
accept A Certain Prisoner##12908 |goto 44.4,68.9
step
talk Lok'lira the Crone##29481
turnin A Certain Prisoner##12908 |goto 42.8,68.9
accept A Change of Scenery##12921 |goto 42.8,68.9
step
Follow the path in the mine east out to the other side
talk Lok'lira the Crone##29975
turnin A Change of Scenery##12921 |goto 47.5,69.1
accept Is That Your Goblin?##12969 |goto 47.5,69.1
step
talk Agnetta Tyrsdottar##30154
Tell her to skip the warmup
kill Agnetta Tyrsdottar##30154 |q 12969/1 |goto 48.2,69.8
step
talk Lok'lira the Crone##29975
turnin Is That Your Goblin?##12969 |goto 47.5,69.1
accept The Hyldsmeet##12970 |goto 47.5,69.1
step
talk Lok'lira the Crone##29975
Ask her about her proposal
Listen to Lok'lira's proposal |q 12970/1 |goto 47.5,69.1
step
talk Lok'lira the Crone##29975
turnin The Hyldsmeet##12970 |goto 47.5,69.1
accept Taking on All Challengers##12971 |goto 47.5,69.1
step
talk Victorious Challenger##30012
kill 6 Victorious Challenger##30012+ |q 12971/1 |goto 51,66.4
step
talk Lok'lira the Crone##29975
turnin Taking on All Challengers##12971 |goto 47.5,69.1
accept You'll Need a Bear##12972 |goto 47.5,69.1
step
talk Iva the Vengeful##29997
accept Off With Their Black Wings##12942 |goto 48.4,72.1
accept Yulda's Folly##12968 |goto 48.4,72.1
step
talk Thyra Kvinnshal##30041
accept Aberrations##12925 |goto 48.4,72.1
step
talk Brijana##29592
turnin You'll Need a Bear##12972 |goto 53.1,65.7
accept Bearly Hanging On##12851 |goto 53.1,65.7
step
clicknpc Icefang##29598
While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
Burn 7 Frostworgs |q 12851/1 |goto 53.1,65.7
Burn 15 Frost Giants |q 12851/2 |goto 53.1,65.7
step
talk Brijana##29592
turnin Bearly Hanging On##12851 |goto 53.1,65.7
accept Cold Hearted##12856 |goto 53.1,65.7
step
Fly to |goto 63.9,62.5
clicknpc Captive Proto-Drake##29708
Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard
|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village at [The Storm Peaks 59.9,61.2], the drake will eventually go on autopilot.  Repeat this process 2 more times.
Rescue 9 Brunnhildar Prisoners |q 12856/1
Free 3 Proto-Drakes |q 12856/2
step
talk Brijana##29592
turnin Cold Hearted##12856 |goto 53.1,65.7
accept Deemed Worthy##13063 |goto 53.1,65.7
step
talk Astrid Bjornrittar##29839
turnin Deemed Worthy##13063 |goto 49.7,71.8
accept Making a Harness##12900 |goto 49.7,71.8
step
kill Icemane Yeti##29875+|n
collect 3 Icemane Yeti Hide##41424|q 12900/1 |goto 47.9,74.7
step
talk Astrid Bjornrittar##29839
turnin Making a Harness##12900 |goto 49.7,71.8
accept The Last of Her Kind##12983 |goto 49.7,71.8
accept The Slithering Darkness##12989 |goto 49.7,71.8
step
kill 8 Ravenous Jormungar##29605+ |q 12989/1 |goto 55.8,63.9
|tip They are inside the cave.
step
clicknpc Injured Icemaw Matriarch##29563
The bear runs back to Brunnhildar Village
Rescue the Icemaw Matriarch |q 12983/1 |goto 54.8,60.4
step
talk Astrid Bjornrittar##29839
turnin The Last of Her Kind##12983 |goto 49.7,71.8
accept The Warm-Up##12996 |goto 49.7,71.8
turnin The Slithering Darkness##12989 |goto 49.7,71.8
step
Use your Reins of the Warbear Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
step
Use the abilities on your hotbar to fight Kirgaraak
|tip He's a big white yeti.
Defeat Kirgaraak |q 12996/1 |goto 50.8,67.7
step
Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
talk Astrid Bjornrittar##29839
turnin The Warm-Up##12996 |goto 49.7,71.8
accept Into the Pit##12997 |goto 49.7,71.8
step
Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42499
Use the abilities on your hotbar to fight Hyldsmeet Warbears
kill 6 Hyldsmeet Warbear##30174+ |q 12997/1 |goto 49.1,69.4
step
Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
talk Astrid Bjornrittar##29839
turnin Into the Pit##12997 |goto 49.7,71.8
accept Prepare for Glory##13061 |goto 49.7,71.8
step
talk Lok'lira the Crone##29975
turnin Prepare for Glory##13061 |goto 47.5,69.1
accept Lok'lira's Parting Gift##13062 |goto 47.5,69.1
step
talk Gretta the Arbiter##29796
turnin Lok'lira's Parting Gift##13062 |goto 50.9,65.6
accept The Drakkensryd##12886 |goto 50.9,65.6
step
You fly off on a drake and start flying in circles around a tower:
Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
kill Hyldsmeet Drakerider##29694+ |n
Repeat this process 9 more times
Defeat 10 Hyldsmeet Drakeriders  |q 12886/1
step
They look like light fixtures on the side of the stone columns.
Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
step
talk Thorim##29445
turnin The Drakkensryd##12886 |goto 33.4,58
accept Sibling Rivalry##13064 |goto 33.4,58
step
talk Thorim##29445
Ask him what became of Sif
Hear Thorim's History |q 13064/1 |goto 33.4,58
step
talk Thorim##29445
turnin Sibling Rivalry##13064 |goto 33.4,58
accept Mending Fences##12915 |goto 33.4,58
step
kill 12 Nascent Val'kyr##29570+ |q 12942/1 |goto 27.3,63.7
kill Valkyrion Aspirant##29569+ |n
collect 6 Vial of Frost Oil##41612|q 12925 |goto 27.3,63.7
step
Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612
|tip They look like brown spiked eggs sitting in the yellow water around this area.
Try to get 6 at a time
Destroy 30 Plagued Proto-Drake Eggs |q 12925/1 |goto 23.7,58.3
step
kill Yulda the Stormspeaker##30046 |q 12968/1 |goto 24,61.8
click Harpoon Crate##192072
accept Valkyrion Must Burn##12953 |goto 24,61.8
step
clicknpc Valkyrion Harpoon Gun##30066
Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
Start 6 Fires |q 12953/1 |goto 26,59.8
step
Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
step
talk Ricket##29428
turnin Demolitionist Extraordinaire##12824 |goto 40.9,85.3
turnin Know No Fear##12822 |goto 40.9,85.3
accept Overstock##12833 |goto 40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Invader |q 12833/1 |goto 43.1,81.2
step
talk Ricket##29428
turnin Overstock##12833 |goto 40.9,85.3
step
talk Thyra Kvinnshal##30041
turnin Aberrations##12925 |goto 48.4,72.1
step
talk Iva the Vengeful##29997
turnin Off With Their Black Wings##12942 |goto 48.4,72.1
turnin Yulda's Folly##12968 |goto 48.4,72.1
turnin Valkyrion Must Burn##12953 |goto 48.4,72.1
step
click Granite Boulder##191815
Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
Help the dwarves kill them
kill 5 Stormforged Iron Giant##29375+  |q 12915/2 |goto 75.8,63
collect Slag Covered Metal##41556 |q 12922 |future |n |goto 75.8,63
use Slag Covered Metal##41556
accept The Refiner's Fire##12922 |goto 75.8,63
step
kill Seething Revenant##29504+
collect 10 Furious Spark##41558|q 12922/1 |goto 75.4,63.5
step
click Granite Boulder##191815
Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505
|tip He's a huge fire giant, holding a huge smithing hammer.
Help the dwarves kill him
kill Fjorn##29503 |q 12915/1 |goto 77.2,62.9
step
click Fjorn's Anvil##192071
turnin The Refiner's Fire##12922 |goto 77.2,62.9
accept A Spark of Hope##12956 |goto 77.2,62.9
step
talk Thorim##29445
turnin A Spark of Hope##12956 |goto 33.4,58
turnin Mending Fences##12915 |goto 33.4,58
accept Forging an Alliance##12924 |goto 33.4,58
step
talk Halvdan##32571
fpath Dun Niffelem |goto 62.6,60.9
step
talk King Jokkum##30105
accept You Can't Miss Him##12966 |goto 65.4,60.2
step
talk Njormeld##30099
turnin You Can't Miss Him##12966 |goto 75.4,63.6
accept Battling the Elements##12967 |goto 75.4,63.6
step
clicknpc Snorri##30123 |invehicle |c
Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow
|tip The Snowdrifts look like piles of snow on the ground.
Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
kill 10 Seething Revenant##29504+ |q 12967/1 |goto 75.7,63.9
step
Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|outvehicle|c
step
talk Njormeld##30099
turnin Battling the Elements##12967 |goto 75.4,63.6
step
talk Njormeld##30127
turnin Forging an Alliance##12924 |goto 63.2,63.2
accept A New Beginning##13009 |goto 63.2,63.2
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.2,62.9
step
talk King Jokkum##30105
accept In Memoriam##12975 |goto 65.4,60.2
step
kill Brittle Revenant##30160+ |n
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246
click  Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252|q 12981/1 |goto 75.3,62.8
step
click Horn Fragment##192082
collect 8 Horn Fragment##42162|q 12975/1 |goto 72.1,49.4
step
talk King Jokkum##30105
turnin In Memoriam##12975 |goto 65.4,60.2
accept A Monument to the Fallen##12976 |goto 65.4,60.2
step
talk Njormeld##30127
turnin A Monument to the Fallen##12976 |goto 63.2,63.2
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto 64.1,65.1
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses|use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto 64.1,65.1
step
talk Njormeld##30127
accept Forging a Head##12985 |goto 63.2,63.2
step
talk King Jokkum##30105
accept Culling Jorcuttar##13011 |goto 65.4,60.2
step
Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
kill Stormforged Ambusher##30208+ |n
collect 8 Stormforged Eye##42423|q 12985/1 |goto 69.7,58.9
step
talk Njormeld##30127
turnin Forging a Head##12985 |goto 63.2,63.2
accept Placing Hodir's Helm##12987 |goto 63.2,63.2
step
Fly to the tip of this ice spike
Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
Mount Hodir's Helm |q 12987/1 |goto 64.3,59.2
step
talk Njormeld##30127
turnin Placing Hodir's Helm##12987 |goto 63.2,63.2
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto 64.2,59.2
step
kill Viscous Oil##30325+ |n
collect 5 Viscous Oil##42640|q 13006/1 |goto 55.6,63.4
Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
collect 1 Icemaw Bear Flank##42733|q 13011 |goto 55.6,63.4
step
Follow the path inside the cave to this spot
Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
kill 1 Jorcuttar##30340 |q 13011/1 |goto 54.7,60.8
step
talk Thorim##29445
turnin A New Beginning##13009 |goto 33.4,58
accept Veranus##13050 |goto 33.4,58
step
click Small Proto-Drake Egg##192536
collect 5 Small Proto-Drake Egg##42784|q 13050/1 |goto 43.7,67.4
You can find more Small Proto-Drake Eggs at [45.2,66.9] |n
step
talk Thorim##29445
turnin Veranus##13050 |goto 33.4,58
accept Territorial Trespass##13051 |goto 33.4,58
step
Stand in this big nest
Use the Stolen Proto-Dragon Eggs in your bags |use Stolen Proto-Dragon Eggs##42797
Lure Veranus |q 13051/1 |goto 38.7,65.6
step
talk Thorim##29445
turnin Territorial Trespass##13051 |goto 33.4,58
accept Krolmir, Hammer of Storms##13010 |goto 33.4,58
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto 64.2,59.2
step
talk King Jokkum##30105
turnin Culling Jorcuttar##13011 |goto 65.4,60.2
step
talk King Jokkum##30105
Ask him what has become of Krolmir
Discover Krolmir's Fate |q 13010/1 |goto 65.4,60.2
step
talk Thorim##30390
turnin Krolmir, Hammer of Storms##13010 |goto 71.4,48.8
accept The Terrace of the Makers##13057 |goto 71.4,48.8
step
talk Thorim##30295
turnin The Terrace of the Makers##13057 |goto 56.3,51.4
accept The Earthen Oath##13005 |goto 56.3,51.4
accept Loken's Lackeys##13035 |goto 56.3,51.4
stickystart "irondwarf"
step
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
kill Eisenfaust##30341 |q 13035/1 |goto 55.3,43.3
step
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
kill Halefnir the Windborn##30376 |q 13035/2 |goto 48.6,45.6
step
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
kill Duronn the Runewrought##30353 |q 13035/3 |goto 45,38.1
step
label "irondwarf"
Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
Fight mobs around this area
kill 7 Iron Sentinel##29984+ |q 13005/1 |goto 57.3,46.7
kill 20 Iron Dwarf Assailant##29978+ |q 13005/2 |goto 57.3,46.7
step
talk Thorim##30295
turnin The Earthen Oath##13005 |goto 56.3,51.4
turnin Loken's Lackeys##13035 |goto 56.3,51.4
accept The Reckoning##13047 |goto 56.3,51.4
step
talk Thorim##30399
Tell him you are with him
Witness the Reckoning |q 13047/1 |goto 35.9,31.5
step
talk King Jokkum##30105
turnin The Reckoning##13047 |goto 65.4,60.2
step
talk Ricket##29428
accept When All Else Fails##13060 |goto 40.9,85.3
step
talk Ricket##29428 |goto 40.9,85.3
Tell her you are ready to head further into Storm Peaks
You will fly to Grom'arsh Crash Site |goto 36.8,49.6 |noway |c
step
talk Olut Alegut##30472
turnin When All Else Fails##13060 |goto The Storm Peaks 37.0,49.6
step
talk Boktar Bloodfury##29651
accept The Missing Bronzebeard##12895 |goto The Storm Peaks 37.3,49.7
step
talk Archaeologist Andorin##29650
accept On Brann's Trail##12854 |goto 29.5,74.1
step
talk Peon Gakra##29944
home Grom'arsh Crash-Site |goto The Storm Peaks 37.1,49.5
step
talk Blood Guard Lorga##30247
accept Emergency Measures##13000 |goto The Storm Peaks 36.5,49.1
accept The Missing Tracker##13054 |goto The Storm Peaks 36.5,49.1
step
click Disturbed Snow##191708
collect Burlap-Wrapped Note##40947 |q 12895/1 |goto The Storm Peaks 36.1,64.1
step
Enter the cave here |goto The Storm Peaks 47.0,54.9 < 10 |walk
talk Tracker Val'zij##30469
turnin The Missing Tracker##13054 |goto The Storm Peaks 48.5,54.3
accept Cave Medicine##13055 |goto The Storm Peaks 48.5,54.3
step
click Cave Mushroom##192556
collect 8 Cave Mushroom##42926 |q 13055/1 |goto The Storm Peaks 49.3,52.8
step
kill Cavedweller Worg##30164+
collect 6 Worg Fur##42510 |q 13000/1 |goto The Storm Peaks 48.5,47.5
kill Infesting Jormungar##30148+
collect Toxin Gland##42927 |q 13055/2 |goto The Storm Peaks 48.5,47.5
step
talk Tracker Val'zij##30469
turnin Cave Medicine##13055 |goto The Storm Peaks 48.5,54.3
accept There's Always Time for Revenge##13056 |goto The Storm Peaks 48.5,54.3
step
kill Gimorak##30167 |q 13056/1 |goto The Storm Peaks 48.9,46.7
step
talk Tracker Val'zij##30469
turnin There's Always Time for Revenge##13056 |goto The Storm Peaks 48.5,54.3
step
talk Boktar Bloodfury##29651
turnin The Missing Bronzebeard##12895 |goto The Storm Peaks 37.3,49.7
accept The Nose Knows##12909 |goto The Storm Peaks 37.3,49.7
step
talk Blood Guard Lorga##30247
turnin Emergency Measures##13000 |goto The Storm Peaks 36.4,49.1
step
talk Khaliisi##29855
turnin The Nose Knows##12909 |goto The Storm Peaks 40.8,51.2
accept Sniffing Out the Perpetrator##12910 |goto The Storm Peaks 40.8,51.2
step
clicknpc Frostbite##29857
Use the abilities on your hotbar to slow down the _Steamforged Pursuers_.
Ride Frostbite until you reach the end of the scent trail. |q 12910/1 |goto The Storm Peaks 40.8,51.2
step
kill Tracker Thulin##29695+ |q 12910/2 |goto The Storm Peaks 48.5,60.8
collect Brann's Communicator##40971
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Sniffing Out the Perpetrator##12910
accept Speak Orcish, Man!##12913
step
talk Moteha Windborn##29937
turnin Speak Orcish, Man!##12913 |goto The Storm Peaks 37.3,49.7
accept Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.3,49.7
step
kill Stormrider##29624+
collect 5 Voice of the Wind##41514 |q 12917/1 |goto The Storm Peaks 27.1,42.0
step
talk Moteha Windborn##29937
turnin Speaking with the Wind's Voice##12917 |goto The Storm Peaks 37.3,49.7
step
talk Boktar Bloodfury##29651
accept Catching up with Brann##12920 |goto The Storm Peaks 37.3,49.7
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
Ask him if he can understand you. |q 12920/1
step
talk Boktar Bloodfury##29651
turnin Catching up with Brann##12920 |goto The Storm Peaks 37.3,49.7
accept Pieces of the Puzzle##12926 |goto The Storm Peaks 37.3,49.7
step
kill Library Guardian##29724 |n
collect 6 Inventor's Disk Fragment##41130 |n
Click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
collect The Inventor's Disk##41132 |q 12926/1 |goto The Storm Peaks 37.6,43.5
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Pieces of the Puzzle##12926
accept Data Mining##12927
step
Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179
|tip They look like floating round star things.
Gather 7 Hidden Data |q 12927/1 |goto 38.5,44.2
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Data Mining##12927
accept The Library Console##13416
step
click Inventor's Library Console##191760
turnin The Library Console##13416 |goto The Storm Peaks 37.4,46.8
accept Norgannon's Shell##12928 |goto The Storm Peaks 37.4,46.8
step
Click the Charged Disk in your bags |use Charged Disk##44704
kill Archivist Mechaton##29775
collect Norgannon's Shell##41258 |q 12928/1 |goto The Storm Peaks 37.4,46.8
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Norgannon's Shell##12928
accept Going After the Core##13273
accept The Earthen of Ulduar##12929
step
click Prospector Soren's Maps##193560
collect Prospector Soren's Maps##43983 |q 13273/2 |goto The Storm Peaks 59.2,51.5
step
click Prospector Khrona's Notes##193561
collect Prospector Khrona's Notes##43984 |q 13273/1 |goto The Storm Peaks 59.8,52.6
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Going After the Core##13273
accept The Core's Keeper##13274
step
Enter Loken's Bargain here |goto The Storm Peaks 56.5,58.5 < 10 |walk
kill Athan##31798+
collect Norgannon's Core##41260 |q 13274/1 |goto The Storm Peaks 56.3,52.3
step
Use Brann's Communicator in your bags. |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin The Core's Keeper##13274
accept Forging the Keystone##13285
step
Leave Loken's Bargain here |goto The Storm Peaks 56.5,58.5 < 10 |walk
talk Brann Bronzebeard##29579
Tell him you're ready to make the keystone.
Help Brann create the keystone |q 13285/1 |goto The Storm Peaks 45.5,49.5
step
talk Boktar Bloodfury##29651
turnin Forging the Keystone##13285 |goto The Storm Peaks 37.3,49.7
step
Enter the building here |goto The Storm Peaks 30.6,36.9 < 10 |walk
talk Breck Rockbrow##29950
fpath Bouldercrag's Refuge |goto 30.6,36.3
step
talk Bouldercrag the Rockshaper##29801
turnin The Earthen of Ulduar##12929 |goto The Storm Peaks 31.4,38.0
accept Rare Earth##12930 |goto The Storm Peaks 31.4,38.0
step
kill Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
collect 5 Frostweave Cloth##33470|q 12930/2 |goto The Storm Peaks 26.3,66.7
step
click Enchanted Earth##191845
|tip They're all over the mountain's side
collect 7 Enchanted Earth##41614|q 12930/1 |goto The Storm Peaks 28.3,29.4
step
kill Scourge Banner-Bearer##31900+
kill Converted Hero##32255+
collect 5 Frostweave Cloth##33470 |q 12930/2 |goto Icecrown 46.5,49.3
step
talk Bouldercrag the Rockshaper##29801
turnin Rare Earth##12930 |goto The Storm Peaks 31.4,38.0
accept Fighting Back##12931 |goto The Storm Peaks 31.4,38.0
accept Relief for the Fallen##12937 |goto The Storm Peaks 31.4,38.0
stickystart "steamattack"
step
Use your Telluric Poultice on _Fallen Earthen Defenders_ in this area. |use Telluric Poultice##41988
Heal 8 Fallen Earthen Defenders |q 12937/1 |goto The Storm Peaks 28.3,36.8
step
label "steamattack"
kill Stormforged Reaver##29382+, Stormforged Raider##29377+
Kill 10 Steamforged Attackers |q 12931/1 |goto The Storm Peaks 28.3,37.4
step
talk Bouldercrag the Rockshaper##29801
turnin Fighting Back##12931 |goto The Storm Peaks 31.4,38.0
turnin Relief for the Fallen##12937|goto The Storm Peaks 31.4,38.0
accept Slaves of the Stormforged##12957 |goto The Storm Peaks 31.4,38.0
accept The Dark Ore##12964 |goto The Storm Peaks 31.4,38.0
step
Enter the cave here |goto The Storm Peaks 27.4,49.8 < 10 |walk
click Ore Cart##192058
collect 5 Dark Ore Sample##42109 |q 12964/1 |goto The Storm Peaks 27.2,50.3
talk Captive Mechagnome##29384
Attempt to free Captive Mechagnome |q 12957/1 |goto The Storm Peaks 27.2,50.3
step
talk Captive Mechagnome##29384
turnin Slaves of the Stormforged##12957 |goto The Storm Peaks 31.4,38.0
turnin The Dark Ore##12964 |goto The Storm Peaks 31.4,38.0
accept The Gifts of Loken##12965 |goto The Storm Peaks 31.4,38.0
stickystart "nidavelirstorm"
step
click Loken's Fury##192120
Destroy Loken's Fury |q 12965/1 |goto The Storm Peaks 24.0,42.6
step
click Loken's Power##192121
Destroy Loken's Power |q 12965/2 |goto The Storm Peaks 26.2,47.7
step
click Loken's Favor##192122
Destroy Loken's Favor |q 12965/3 |goto The Storm Peaks 24.6,48.4
step
talk Bouldercrag the Rockshaper##29801
turnin The Gifts of Loken##12965 |goto The Storm Peaks 31.4,38.0
step
talk Bruor Ironbane##30152
accept Facing the Storm##12978 |goto The Storm Peaks 31.3,38.1
step
label "nidavelirstorm"
kill Stormforged War Golem##29380+, Stormforged Magus##29374+, Stormforged Champion##29370+
Kill 10 Nidavelir Stormforged |q 12978/1 |goto The Storm Peaks 24.7,42.7
collect 1 Dark Armor Plate##42203 |n
Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
accept Armor of Darkness##12979
step
kill Stormforged War Golem##29380+
collect 4 Dark Armor Sample##42204 |q 12979/1 |goto The Storm Peaks 24.7,42.7
step
talk Bruor Ironbane##30152
turnin Facing the Storm##12978 |goto The Storm Peaks 31.3,38.1
turnin Armor of Darkness##12979 |goto The Storm Peaks 31.3,38.1
accept The Armor's Secrets##12980 |goto The Storm Peaks 31.3,38.1
step
Enter Mimir's Workshop here |goto The Storm Peaks 33.6,39.6 < 5 |walk
talk Attendant Tock##30190
Ask him to tell him more about the armor plate. |q 12980/1 |goto The Storm Peaks 32.1,40.7
step
talk Bruor Ironbane##30152
turnin The Armor's Secrets##12980 |goto The Storm Peaks 31.3,38.1
step
talk Bouldercrag the Rockshaper##29801
accept Valduran the Stormborn##12984 |goto The Storm Peaks 31.4,38.0
step
Use Bouldercrag's Warhorn in this spot |use Bouldercrag's War Horn##42419
kill Valduran the Stormborn##29368+ |q 12984/1 |goto The Storm Peaks 24.4,52.1
step
talk Bouldercrag the Rockshaper##29801
turnin Valduran the Stormborn##12984 |goto The Storm Peaks 31.4,38.0
accept Destroy the Forges!##12988 |goto The Storm Peaks 31.4,38.0
step
talk Bruor Ironbane##30152
accept Hit Them Where it Hurts##12991 |goto The Storm Peaks 31.3,38.1
stickystart "stormforgedficer"
step
Use Bouldercrag's Bomb next to the Lightning Forge here. |use Bouldercrag's Bomb##42441
Damage the North Lightning Forge |q 12988/1 |goto The Storm Peaks 29.0,45.9
step
Use Bouldercrag's Bomb next to the Lightning Forge here. |use Bouldercrag's Bomb##42441
Damage the Central Lightning Forge |q 12988/2 |goto The Storm Peaks 29.6,45.9
step
Use Bouldercrag's Bomb next to the Lightning Forge here. |use Bouldercrag's Bomb##42441
Damage the Central Lightning Forge |q 12988/3 |goto The Storm Peaks 30.2,46.1
step
label "stormforgedficer"
kill Stormforged Artificer##29376+ |q 12991/1 |goto The Storm Peaks 29.3,46.0
step
talk Bruor Ironbane##30152
turnin Hit Them Where it Hurts##12991 |goto The Storm Peaks 31.3,38.1
step
talk Bouldercrag the Rockshaper##29801
turnin Destroy the Forges!##12988 |goto The Storm Peaks 31.4,38.0
accept A Colossal Threat##12993 |goto The Storm Peaks 31.4,38.0
step
click Colossus Defense Specs##192172
collect Colossus Defense Specs##42476 |q 12993/2 |goto The Storm Peaks 29.9,45.9
step
click Colossus Attack Specs##192171
collect Colossus Attack Specs##42475 |q 12993/1 |goto The Storm Peaks 28.9,44.1
step
talk Bouldercrag the Rockshaper##29801
turnin A Colossal Threat##12993 |goto The Storm Peaks 31.4,38.0
accept The Heart of the Storm##12998 |goto The Storm Peaks 31.4,38.0
step
Enter Uldis here |goto The Storm Peaks 32.4,63.6 < 10 |walk
click The Heart of the Storm##192181
Attempt to secure the Heart of the Swarm |q 12998/1 |goto The Storm Peaks 36.1,60.9
step
talk Bouldercrag the Rockshaper##29801
turnin The Heart of the Storm##12998 |goto The Storm Peaks 31.4,38.0
accept The Iron Colossus##13007 |goto The Storm Peaks 31.4,38.0
step
Click the shining orb in front of you to take control of a _Tamed Jormungar_. |goto The Storm Peaks 27.2,35.9
|confirm
step
Use the abilities on your hotbar to kill the Iron Colossus.
kill Iron Colossus##30300+ |q 13007/1 |goto The Storm Peaks 27.3,45.7
step
talk Bouldercrag the Rockshaper##29801
turnin The Iron Colossus##13007 |goto The Storm Peaks 31.4,38.0
step
label "Daily"
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks,64.2,59.2
step
talk Lorekeeper Randvir##30252
accept Forging Hodir's Spear##13001 |goto The Storm Peaks,64.8,59.1
only if rep ('The Sons of Hodir')>=Honored
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto 64.1,65.1
stickystart "vioil"
step
kill Stoic Mammoth##30260+
collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto 59.0,61.2
only if rep ('The Sons of Hodir')>=Honored
step
label "vioil"
kill Viscous Oil##30325+
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
The entrance to the cave starts here |goto 55.9,64.2 < 10 |c
only if rep ('The Sons of Hodir')>=Honored
step
click Everfrost Shard##192191
collect 3 Everfrost Shard##42541 |q 13001/1 |goto 54.7,60.8
only if rep ('The Sons of Hodir')>=Honored
step
Leave the cave |goto 55.9,64.2 < 10 |c
only if rep ('The Sons of Hodir')>=Honored
step
talk Lorekeeper Randvir##30252
turnin Forging Hodir's Spear##13001 |goto 64.8,59.1
|tip This quest will unlock the How to Slay Your Dragon daily quest.
only if rep ('The Sons of Hodir')>=Honored
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto 64.2,59.2
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
click Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+ |goto 67.0,45.1
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+|n |goto 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto 66.2,61.4
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
Click here to reset the daily quests. |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
Become honored with The Sons of Hodir |complete rep('The Sons of Hodir')>=Honored |next "Daily2"
step
label "Daily2"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto 64.2,59.2
step
click Hodir's Spear##192079
accept How to Slay Your Dragon##13003 |goto 65.1,60.8
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto 64.1,65.1
stickystart "vioil2"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
label "vioil2"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.5,59.8
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto 64.2,59.2
step
click Hodir's Spear##192079
turnin How to Slay Your Dragon##13003 |goto 65.1,60.8
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+ |goto 67.0,45.1
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+|n |goto 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto 66.2,61.4
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
In order to repeat these daily quests, click here to reset the daillies. |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
Become Revered with The Sons of Hodir |complete rep('The Sons of Hodir')>=Revered |next "Daily3"
step
label "Daily3"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks,63.5,59.8
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto 64.2,59.2
step
click Hodir's Spear##192079
accept How to Slay Your Dragon##13003 |goto 65.1,60.8
step
click Arngrim the Insatiable##192524
accept Feeding Arngrim##13046 |goto 67.6,59.9
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto 64.1,65.1
stickystart "vioil3"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
Kill 3 Stormforged Infiltrators |q 12994/1 |goto 57.2,64.0
step
Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
Feed Arngrim's Spirit 5 Times |q 13046/1 |goto 56.4,65.0
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1:
|tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
label "vioil3"
kill Viscous Oil##30325+
|tip They look like slimes inside this cave.
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
talk Frostworg Denmother##30294
turnin Spy Hunter##12994 |goto 63.5,59.8
step
click Hodir's Helm##192080
turnin A Viscious Cleaning##13006 |goto 64.2,59.2
step
click Hodir's Spear##192079
turnin How to Slay Your Dragon##13003 |goto 65.1,60.8
step
click Arngrim the Insatiable##192524
turnin Feeding Arngrim##13046 |goto 67.6,59.9
step
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
Click the Frozen Iron Scraps
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
Use Hodir's Horn on their corpses |use Hodir's Horn##42164
Free 5 Niffelem Forefathers |q 12977/1 |goto 72.1,51.8
Free 5 Restless Frostborn |q 12977/2 |goto 72.1,51.8
step
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
kill Scion of Storm##30184+ |goto 67.0,45.1
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
collect Relic of Ulduar##42780+ |n |goto 67.0,45.1
|tip You turn these in in multiples of 10.
|confirm
step
click Fjorn's Anvil##192071
turnin Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
turnin Hodir's Call##12977 |goto 64.1,65.1
step
talk Lillehoff##32540
accept Hodir's Tribute##13559 |goto 66.2,61.4
|tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
To restart the Hodir daily quests, click here. |confirm |next "Daily3" |only if rep('The Sons of Hodir')<=Revered
Become Exalted with The Sons of Hodir |complete rep('The Sons of Hodir')==Exalted |next "Exalted"
step
label "Exalted"
Congratulations, you are now Exalted with the Sons of Hodir!
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Wrath of the Lich King Reputations\\The Wyrmrest Accord")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Cataclysm Reputations\\Avengers of Hyjal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Cataclysm Reputations\\Bilgewater Cartel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Cataclysm Reputations\\Dragonmaw Clan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Cataclysm Reputations\\The Earthen Ring")
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Guardians of Hyjal",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Guardians of Hyjal faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Guardians of Hyjal') < Exalted end,
achieveid={4882},
patch='40003',
},[[
step
click Warchief's Command Board##207325
accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar 49.7,76.5
step
talk Cenarion Emissary Blackhoof##15188 |goto 39.9,50.9
Ask him to please send you to Moonglade
You will teleport to Moonglade |goto Moonglade,45.1,43.1,0.5 |noway |c |q 27721
step
talk Emissary Windsong##39865
turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade,45.5,44.9
accept As Hyjal Burns##25316 |goto Moonglade,45.5,44.9
step
talk Sebelia##40843
home Nordrassil |goto Mount Hyjal,63.1,24.1
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto 62.0,24.9
accept Protect the World Tree##25317 |goto 62.0,24.9
step
talk Fayran Elthas##41861
fpath Nordrassil |goto 62.1,21.6
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 64.0,22.7
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.1,22.5
step
kill 8 Scalding Rock Elemental##40229 |q 25460/1 |goto 67.1,22.6
click Juniper Berry##28+
collect 4 Juniper Berries##53009 |n
Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926 |q 25370/1 |goto 67.1,22.6
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.1,22.5
accept Flames from Above##25574 |goto 64.1,22.5
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 64.0,22.7
step
Stand in this spot
Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.7,15.9
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.1,22.5
step
talk Malfurion Stormrage##54173
turnin Protect the World Tree##25317 |goto 47.7,35.5
accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.6,35.5
stickystart "twivan"
step
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 48.4,29.3
You can find more fragments at [44.7,33.3]
step
label "twivan"
kill 4 Twilight Flamecaller##38926+ |q 25319/1 |goto 47.2,25.6
kill 10 Twilight Vanquisher##38913+ |q 25319/2 |goto 47.2,25.6
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.7,35.5
turnin The Flameseer's Staff##25472 |goto 47.7,35.5
accept Flamebreaker##25323 |goto 47.7,35.5
step
Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107
kill 30 Unbound Flame Spirit##33838+ |q 25323/1 |goto 44.5,33.4
step
talk Malfurion Stormrage##54173
turnin Flamebreaker##25323 |goto 47.7,35.5
accept The Return of Baron Geddon##25464 |goto 47.7,35.5
step
Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto 44.0,26.9
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##54173
turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.6,35.5
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.4,18.9
accept The Captured Scout##25320 |goto 48.4,18.9
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.5,18.9
accept Twilight Captivity##25321 |goto 44.5,18.9
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.5,21.5
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.5,18.9
accept Return to Alysra##25424 |goto 44.5,18.9
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.4,18.9
accept A Prisoner of Interest##25324 |goto 48.4,18.9
step
Enter the cave |goto 52.5,17.3 < 5 |walk
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto 56.8,18.8
accept Through the Dream##25325 |goto 56.8,18.8
step
Leave the cave |goto 52.5,17.3 < 5 |walk
|tip Follow the path up. |q 25325
talk Alysra##38917
turnin Through the Dream##25325 |goto 52.2,17.4
accept Return to Nordrassil##25578 |goto 52.2,17.4
step
talk Ysera##40928
turnin Return to Nordrassil##25578 |goto 62.0,24.9
accept The Return of the Ancients##25584 |goto 62.0,24.9
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto 35.7,19.4
accept Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto 35.7,19.7
accept In the Rear With the Gear##25234 |goto 35.7,19.7
step
kill 6 Twilight Hunter##39437+ |q 25255/1 |goto 38.1,23.0
kill 4 Twilight Proveditor##39436+ |q 25233/1 |goto 38.1,23.0
click Twilight Supplies##202652
|tip The slaves will drop them after you kill the Twilight Slavedriver.
collect 36 Twilight Supplies##52568 |q 25234/1 |goto 38.1,23.0
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.7,19.7
turnin In the Rear With the Gear##25234 |goto 35.7,19.7
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.7,19.4
accept The Voice of Lo'Gosh##25269 |goto 35.7,19.4
step
talk Takrik Ragehowl##39432
turnin The Voice of Lo'Gosh##25269 |goto 30.1,31.7
accept Howling Mad##25270 |goto 30.1,31.7
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25270/1 |goto 29.0,31.4
step
talk Takrik Ragehowl##39432
turnin Howling Mad##25270 |goto 30.1,31.7
accept Lycanthoth the Corruptor##25272 |goto 30.1,31.7
step
Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25272/1 |goto 32.4,37.3
step
talk Spirit of Lo'Gosh##39622
turnin Lycanthoth the Corruptor##25272 |goto 32.5,37.4
step
talk Spirit of Lo'Gosh##39622
accept The Shrine Reclaimed##25279 |goto 29.6,29.3
step
talk Takrik Ragehowl##39432
turnin The Shrine Reclaimed##25279 |goto 28.4,29.9
accept Cleaning House##25277 |goto 28.4,29.9
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto 28.3,30.0
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.2,29.9
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto 28.6,30.2
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.2
step
click Stonebloom##202702
collect Stonebloom##52726 |q 25297/1 |goto 27.6,34.2
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto 27.2,35.2
accept Mastering Puppets##25301 |goto 27.2,35.2
step
click Darkflame Ember##202705
|tip Inside the brazier
collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto 28.4,36.4
accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.4
step
Enter the cave |goto 27.0,36.0 < 5 |future |q 25332 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
stickystart "twiserv"
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto 26.5,38.5
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto 25.8,41.7
accept Elementary!##25303 |goto 25.8,41.7
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto 25.7,41.7
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
step
click Twilight Apocrypha##470
turnin Elementary!##25303 |goto 25.8,41.7
accept Return to Duskwhisper##25312 |goto 25.8,41.7
step
label "twiserv"
While inside the cave do the following:
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
kill 8 Minion of Gar'gol |q 25278/1
talk Twilight Servitor##39644
Administor the drought
Free 8 Twilight Servitors |q 25298/1
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
accept Get Me Outta Here!##25332 |goto 27.2,40.8
step
Leave the cave |goto 27.1,36.0 < 5 |noway |c |q 25332
Escort Kristoff Out |q 25332/1 |goto 27.1,36.0 |n
step
talk Arch Druid Hamuul Runetotem##5769
turnin Durable Seeds##25491 |goto 27.1,62.6
turnin Fresh Bait##25493 |goto 27.1,62.6
accept Hell's Shells##25507 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto 27.1,63.0
accept Prepping the Soil##25502 |goto 27.1,63.0
step
click Flameward##7340
Activate the Flameward |q 25502/1 |goto 33.0,64.6
Defend the Flameward |q 25502/2 |goto 33.0,64.6
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.8,70.8
accept Sethria's Brood##25746 |goto 32.8,70.8
accept A Gap in Their Armor##25758 |goto 32.8,70.8
step
click Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.3,77.1
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay 12 Sethria's Minions |q 25746/1 |goto 30.9,76.7
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.7
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.8,70.8
turnin A Gap in Their Armor##25758 |goto 32.8,70.8
accept Disassembly##25761 |goto 32.8,70.8
turnin The Codex of Shadows##25763 |goto 32.8,70.8
accept Egg Hunt##25764 |goto 32.8,70.8
step
Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883
|tip Use Thisalee's Shiv multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
kill 3 Twilight Juggernaut##41031+ |q 25761/1 |goto 31.1,76.7
click Shadow Cloak Generator##203208
Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.1,76.7
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.8,70.8
turnin Egg Hunt##25764 |goto 32.8,70.8
accept Sethria's Demise##25776 |goto 32.8,70.8
step
kill Sethria##41255
Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
kill Sethria##41255 |q 25776/1 |goto 35.5,98.0
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.8,70.8
accept Return to the Shrine##25795 |goto 32.8,70.8
step
Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##40340
|tip He will become friendly.
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 37.4,52.3
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto 44.3,47.9
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto 44.3,48.0
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto 44.1,45.9
step
Go inside the blue portal |goto 38.8,58.0 < 5 |q 25810
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
accept Flight in the Firelands##25523 |goto 37.2,56.2
step
click Twilight Weapon Rack##130
collect Twilight Firelance##52716 |future |q 25523 |goto 37.2,56.2
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523 |goto 37.4,56.0
clicknpc Aviana's Guardian##40723
Ride the Guardian|invehicle |future |q 25523 |goto 37.4,56.0
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Visit the Guardian Flag |q 25523/1 |goto 36.4,53.2
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto 37.2,56.2
accept Wave One##25525 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
kill 10 Twilight Knight Rider##39835+ |q 25525/1 |goto 36.8,54.0
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto 37.2,56.2
accept Wave Two##25544 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
kill 10 Twilight Lancer##40660+ |q 25544/1 |goto 36.8,54.0
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto 37.2,56.2
accept Egg Wave##25560 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy 40 Firelands Eggs |q 25560/1 |goto 33.3,56.9
You can find more Firelands Eggs all around [35.8,53.6]
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto 37.2,56.2
accept Return to Aviana##25832 |goto 37.2,56.2
step
Click the red arrow on your hotbar to get off the hippogryph |outvehicle |c |q 25832
step
Don't forget to equip your real weapon again
|confirm |q 25832
step
Go inside the blue glowing orb |goto 38.8,58.6 < 5 |q 25832 |walk
talk Aviana##41308
turnin Return to Aviana##25832 |goto 44.3,48.0
step
talk Arch Druid Hamuul Runetotem##5769
turnin Hell's Shells##25507 |goto 27.1,62.6
accept Tortolla Speaks##25510 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Prepping the Soil##25502 |goto 27.1,63.0
step
talk Tortolla##41504
turnin Tortolla Speaks##25510 |goto 24.7,55.7
accept Breaking the Bonds##25514 |goto 24.7,55.7
accept Children of Tortolla##25519 |goto 24.7,55.7
step
click Rod of Subjugation##9469
Disable the First Rod of Subjugation |q 25514/1 |goto 24.0,55.9
step
click Rod of Subjugation##9469
Disable the Second Rod of Subjugation |q 25514/2 |goto 25.2,54.9
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto 24.7,55.7
step
kill Deep Corruptor##40561+
Save 6 Tortolla's Eggs |q 25519/1 |goto 24.8,57.1
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto 24.7,55.7
accept An Ancient Awakens##25520 |goto 24.7,55.7
step
talk Arch Druid Hamuul Runetotem##5769
turnin An Ancient Awakens##25520 |goto 27.1,62.6
step
talk Vision of Ysera##46998
accept The Last Living Lorekeeper##25830 |goto 27.0,62.6
step
talk Nordu##41381
turnin The Last Living Lorekeeper##25830 |goto 27.4,55.5
accept Firefight##25842 |goto 27.4,55.5
step
kill 5 Fiery Tormentor##41396+ |q 25842/1 |goto 26.6,53.2
step
talk Nordu##41381
turnin Firefight##25842 |goto 27.4,55.5
accept Aessina's Miracle##25372 |goto 27.4,55.5
step
talk Arch Druid Hamuul Runetotem##5769
turnin Aessina's Miracle##25372 |goto 19.5,37.8
accept Tortolla's Revenge##25843 |goto 19.5,37.8
step
talk Tortolla##41504
turnin Tortolla's Revenge##25843 |goto 41.6,60.7
accept The Hammer and the Key##25904 |goto 41.6,60.7
step
talk Niden##41507
accept Lost Wardens##25881 |goto 42.2,60.6
accept Breakthrough##25899 |goto 42.2,60.6
step
kill Twilight Field Captain##41502
collect Glyph of Opening##56177 |q 25904/1 |goto 53.9,54.5
step
label "lostwarden"
kill 10 Twilight Scorchlord##41500+ |q 25899/1 |goto 49.4,53.1
talk Lost Warden##41499
|tip They look like dead night elves laying on the ground all around this area.
Tell them to get on their feet
Rescue 8 Lost Wardens |q 25881/1 |goto 49.4,53.1
step
talk Tortolla##41504
turnin The Hammer and the Key##25904 |goto 41.9,60.8
accept The Third Flamegate##25906 |goto 41.9,60.8
step
talk Captain Irontree##41492
turnin Lost Wardens##25881 |goto 57.1,55.9
accept Pressing the Advantage##25886 |goto 57.1,55.9
turnin Breakthrough##25899 |goto 57.1,55.9
step
talk Logram##41497
accept Hyjal Recycling Program##25901 |goto 56.9,56.0
stickystart "fieldcap"
step
click Warden's Arrow##203310
collect 15 Warden's Arrow##56176 |q 25901/1 |goto 56.5,57.9
step
label "fieldcap"
kill 4 Twilight Field Captain##41502+ |q 25886/1 |goto 60.9,58.8
step
talk Logram##41497
turnin Hyjal Recycling Program##25901 |goto 56.9,56.0
step
talk Captain Irontree##41492
turnin Pressing the Advantage##25886 |goto 57.1,56.0
step
Go inside the blue portal |goto 64.5,53.5 < 5 |future |q 25928 |walk
talk Garunda Mountainpeak##41498
turnin The Third Flamegate##25906 |goto 64.3,53.6
accept The Time for Mercy has Passed##25910 |goto 64.3,53.6
accept The Strength of Tortolla##25915 |goto 64.3,53.6
stickystart "molmast"
step
Follow the path down
Stand next to a Nemesis Crystal with your Child of Tortolla turtle next to you
|tip They are big floating red crystals around this area.
Examine the Nemesis Crystal |q 25915/1 |goto 65.8,57.1
step
label "molmast"
kill 4 Shadowflame Master##41563+ |q 25910/1 |goto 64.3,58.0
kill 10 Molten Tormentor##41565+ |q 25910/2 |goto 64.3,58.0
step
talk Garunda Mountainpeak##41498
turnin The Time for Mercy has Passed##25910 |goto 64.3,53.6
turnin The Strength of Tortolla##25915 |goto 64.3,53.6
accept Finish Nemesis##25923 |goto 64.3,53.6
step
Follow the path down
Fight Nemesis
|tip He's a huge turtle standing on a big island in the lava.
Use your Totem of Tortolla when Nemesis is about to finish casting Molten Fury |use Totem of Tortolla##56207
kill Nemesis##40340 |q 25923/1 |goto 62.7,62.2
step
talk Garunda Mountainpeak##41498
turnin Finish Nemesis##25923 |goto 64.3,53.6
accept Tortolla's Triumph##25928 |goto 64.3,53.6
step
Go inside the blue portal |goto 64.9,54.5 < 5 |q 25928 |walk
talk Tortolla##41504
turnin Tortolla's Triumph##25928 |goto 41.8,60.7
accept The Ancients are With Us##25653 |goto 41.8,60.7
step
talk Ysera##40928
turnin The Ancients are With Us##25653 |goto 62.1,24.9
accept Commander Jarod Shadowsong##25597 |goto 62.1,24.9
step
talk Elementalist Ortell##41024
turnin Commander Jarod Shadowsong##25597 |goto 71.9,58.1
accept Signed in Blood##25274 |goto 71.9,58.1
step
talk Twilight Recruit##39619
Lure the Twilight Recruit away from the group to 72.4,58.8
Use your Blackjack on the Twilight Recruit |use Blackjack##52683
kill Twilight Recruit##39619
collect Twilight Recruitment Papers##52685 |q 25274/1 |goto 73.6,60.4
step
talk Elementalist Ortell##41024
turnin Signed in Blood##25274 |goto 71.9,58.1
accept Your New Identity##25276 |goto 71.9,58.1
step
talk Condenna the Pitiless##39442
turnin Your New Identity##25276 |goto 76.9,62.0
accept Trial By Fire##25223 |goto 76.9,62.0
accept In Bloom##25224 |goto 76.9,62.0
step
talk Instructor Cargall##39451
accept Waste of Flesh##25330 |goto 77.0,62.2
step
kill 8 Fiery Instructor##40564+ |q 25223/1 |goto 79.8,62.9
click Flame Blossom##202619
collect 5 Flame Blossom##52537 |q 25224/1 |goto 79.8,62.9
Use your Frostgale Crystal on an Immolated Supplicant |use Frostgale Crystal##52819
|tip They are on fire running around this area.  They must be alive for you to be able to save them.  You may need to search for one of them, since they aren't very common.
Save an Immolated Supplicant |q 25330/1 |goto 79.8,62.9
step
talk Instructor Cargall##39451
turnin Waste of Flesh##25330 |goto 77.0,62.2
step
talk Condenna the Pitiless##39442
turnin Trial By Fire##25223 |goto 76.9,62.0
turnin In Bloom##25224 |goto 76.9,62.0
accept Twilight Training##25291 |goto 76.9,62.0
step
talk Instructor Mylva##39413
turnin Twilight Training##25291 |goto 89.6,59.1
accept Physical Training: Forced Labor##25509 |goto 89.6,59.1
step
click Outhouse Hideout##202701
accept Gather the Intelligence##25296 |goto 88.3,58.6
step
talk Instructor Devoran##39406
accept Walking the Dog##25294 |goto 90.2,56.4
stickystart "darklode"
step
click Crate of Scrolls##202968
collect Twilight Communique##52724 |q 25296/1 |goto 89.5,55.5
step
click Hyjal Battleplans##202969
collect Hyjal Battleplans##52725 |q 25296/2 |goto 92.0,51.5
step
label "darklode"
kill Spinescale Basilisk##39658+
collect 5 Charred Basilisk Meat##52708 |q 25294 |goto 88.3,51.9
click Darkwhisper Lodestone##202952
Break 5 Darkwhisper Lodestones |q 25509/1 |goto 88.3,51.9
step
Use your Fiery Leash |use Fiery Leash##52717
You will summon the Spawn of Smolderos
Use your 5 Charred Basilisk Meat |use Charred Basilisk Meat##52708
Feed the Spawn of Smolderos 5 Times |q 25294/1
step
click Outhouse Hideout##202701
turnin Gather the Intelligence##25296 |goto 88.3,58.6
accept Seeds of Discord##25308 |goto 88.3,58.6
step
talk Instructor Mylva##39413
turnin Physical Training: Forced Labor##25509 |goto 89.6,59.1
accept Agility Training: Run Like Hell!##25499 |goto 89.6,59.1
step
Run around the circular structure in the middle of the camp while the Blazing Trainer fire elemental chases you
Run away from the Blazing Trainer for 1 minute
Complete your Physical Training |q 25499/1 |goto 88.7,57.4
step
talk Instructor Mylva##39413
turnin Agility Training: Run Like Hell!##25499 |goto 89.6,59.1
accept Mental Training: Speaking the Truth to Power##25299 |goto 89.6,59.1
step
Use your Orb of Ascension |use Orb of Ascension##52828
Use the abilities on your hotbar to answer Yes or No to the questions
|tip You will see the questions display in your chat window.
You must answer 10 questions correctly
Complete your Mental Training |q 25299/1
step
talk Instructor Mylva##39413
turnin Mental Training: Speaking the Truth to Power##25299 |goto 89.6,59.1
accept Spiritual Training: Mercy is for the Weak##25309 |goto 89.6,59.1
step
talk Instructor Devoran##39406
turnin Walking the Dog##25294 |goto 90.2,56.4
accept A Champion's Collar##25494 |goto 90.2,56.4
step
kill 5 Failed Supplicant##39752+ |q 25309/1 |goto 92.1,48.4
step
kill Spinescale Matriarch##40403
collect Spiked Basilisk Hide##54610 |q 25494/1 |goto 84.7,46.8
step
Use your Ogre Disguise next to the Ogre Outhouse |use Ogre Disguise##55137
Put on your Ogre Disguise |havebuff 306868 |q 25308 |goto 77.6,48.1
step
talk Karr'gonn##40489
Tell him one of the boys is causing some trouble outside
kill High Cultist Azennios##40491 |q 25308/1 |goto 76.6,49.1
step
Right-click the Seeds of Discord buff next to your minimap to take off your Ogre Disguise |nobuff Interface\Icons\inv_misc_ogrepinata |q 25308
step
click Outhouse Hideout##202701
turnin Seeds of Discord##25308 |goto 88.2,58.5
step
talk Instructor Mylva##39413
turnin Spiritual Training: Mercy is for the Weak##25309 |goto 89.6,59.1
step
talk Instructor Devoran##39406
turnin A Champion's Collar##25494 |goto 90.2,56.4
accept Grudge Match##25496 |goto 90.2,56.4
step
talk Gromm'ko##40409
Tell him Instructor Devoran sends a contender against his raptor
Wait until your Spawn of Smolderos kills his raptor, Butcher
kill Gromm'ko##40409
Complete the Grudge Match |q 25496/1 |goto 77.8,51.4
step
talk Instructor Devoran##39406
turnin Grudge Match##25496 |goto 90.2,56.4
step
talk Instructor Mylva##39413
accept The Greater of Two Evils##25310 |goto 89.6,59.1
accept Twilight Territory##25311 |goto 89.6,59.1
stickystart "horrorguard"
step
Use your Talisman of Flame Ascendancy |use Talisman of Flame Ascendancy##54814
Use the abilities on your hotbar to fight Garnoth, Fist of the Legion
kill Garnoth, Fist of the Legion##39726 |q 25310/1 |goto 64.7,64.7
step
label "horrorguard"
kill 10 Horrorguard##48725+ |q 25311/1 |goto 66.1,65.9
step
talk Instructor Mylva##39413
turnin The Greater of Two Evils##25310 |goto 89.6,59.1
turnin Twilight Territory##25311 |goto 89.6,59.1
step
click Outhouse Hideout##202701
accept Speech Writing for Dummies##25314 |goto 88.3,58.6
step
kill Okrog##40922 |q 25314/1 |goto 79.0,56.1
|tip You will find him walking along this road, so you may need to search for him.
step
click Outhouse Hideout##202701
turnin Speech Writing for Dummies##25314 |goto 88.3,58.6
accept Head of the Class##25601|goto 88.3,58.6
step
talk Instructor Mylva##39413
turnin Head of the Class##25601 |goto 89.6,59.1
accept Graduation Speech##25315 |goto 89.6,59.1
step
click Initiation Podium##9481
Use the abilities on your hotbar to respond to what the crowd says
|tip If the crowd says something angry, use your Incite! ability.  If the crowd says something crazy, use your Pander! ability.  If the crowd says something to make it seem like they are bored or unsure, use your Inspire! ability.
Please the crowd 10 times
Give your Graduation Speech |q 25315/1 |goto 95.2,51.3
step
Use the Step Down ability on your action bar to stop standing at the podium |nobuff INTERFACE\ICONS\achievement_dungeon_bastion of twilight_twilightascendantcouncil |q 25315
step
talk Commander Jarod Shadowsong##41025
turnin Graduation Speech##25315 |goto 95.3,51.3
accept Twilight Riot##25531 |goto 95.3,51.3
step
talk Commander Jarod Shadowsong##41025
turnin Twilight Riot##25531 |goto 72.2,74.7
accept Slash and Burn##25608 |goto 72.2,74.7
step
clicknpc Emerald Drake##40934 |invehicle |q 25608 |goto 72.6,75.1 |n
step
Use your Aerial Swipe ability on Twilight Stormwakers
|tip They fly in the air around this area.
kill 5 Twilight Stormwaker##40573+ |q 25608/1 |goto 78.7,64.0
Use your Acid Blast ability on Fiery Instructors and Twilight Initiates on the ground
Kill 40 Twilight's Hammer Units |q 25608/2 |goto 78.7,64.0
step
Click the red arrow on your hotbar to stop riding on the Emerald Drake |outvehicle |q 25608 |goto 72.1,73.7 |n
step
talk Commander Jarod Shadowsong##41025
turnin Slash and Burn##25608 |goto 72.2,74.7
step
talk Commander Jarod Shadowsong##40772
accept Might of the Firelord##25548 |goto 72.1,74.0
step
talk Cenarius##40773
accept Secrets of the Flame##25554 |goto 71.9,74.1
step
talk Althera##43549
fpath Gates of Sothann |goto 71.6,75.3
step
click Burning Litanies##203047
collect The Burning Litanies##54906 |q 25554/2 |goto 59.7,80.8
step
click Tome of Flame##203046
collect Tome of Flame##54905 |q 25554/3 |goto 58.1,78.9
step
click Ascendant's Codex##203048
collect Ascendant's Codex##54907 |q 25554/1 |goto 56.8,83.8
step
click Pure Twilight Egg##207359
accept The Twilight Egg##25644 |goto 59.1,83.9
step
kill 4 Flame of Ascendant##40709+ |q 25548/1 |goto 59.0,80.2
kill 5 Twilight Subjugator##40463+ |q 25548/2 |goto 59.0,80.2
step
talk Cenarius##40773
turnin Secrets of the Flame##25554 |goto 71.9,74.1
accept The Gatekeeper##25555 |goto 71.9,74.1
step
talk Commander Jarod Shadowsong##40772
turnin Might of the Firelord##25548 |goto 72.1,74.0
accept The Sanctum of the Prophets##25549 |goto 72.1,74.0
step
talk Aronus##40816
turnin The Twilight Egg##25644 |goto 72.2,73.9
accept Brood of Evil##25552 |goto 72.2,73.9
step
kill Young Twilight Drake##40687
collect Young Twilight Drake Skull##54973 |q 25552/1 |goto 59.3,78.0
step
Use your Horn of Cenarius |use Horn of Cenarius##55153
kill Azralon the Gatekeeper##40814 |q 25555/1 |goto 57.4,68.0
step
kill 4 Twilight Augur##40713+ |q 25549/1 |goto 60.4,72.5
kill 4 Twilight Retainer##40767+ |q 25549/2 |goto 60.4,72.5
kill 1 Emissary of Flame##40755 |q 25549/3 |goto 60.4,72.5
You can find more the Emissary of Flame patrolling between the above coordinate and [55.0,67.1]
step
talk Cenarius##40773
turnin The Gatekeeper##25555 |goto 71.9,74.1
step
talk Commander Jarod Shadowsong##40772
turnin The Sanctum of the Prophets##25549 |goto 72.1,74.0
accept Magma Monarch##25550 |goto 72.1,74.0
step
talk Aronus##40816
turnin Brood of Evil##25552 |goto 72.2,74.0
accept Death to the Broodmother##25553 |goto 72.2,74.0
step
Use your Young Twilight Drake Skull |use Young Twilight Drake Skull##55173
kill Desperiona##40974 |q 25553/1 |goto 54.8,85.8
step
Use your Drums of the Turtle God |use Drums of the Turtle God##55179
kill King Moltron##40998 |q 25550/1 |goto 43.4,83.6
step
talk Commander Jarod Shadowsong##40772
turnin Magma Monarch##25550 |goto 72.1,74.0
step
talk Aronus##40816
turnin Death to the Broodmother##25553 |goto 72.3,74.0
step
talk Cenarius##40773
accept The Firelord##25551 |goto 71.9,74.1
step
Enter the blue swirling portal |goto 44.5,79.4 < 5 |q 25551 |walk
talk Cenarius##40803
Tell him you are ready to begin to battle against Rangaros
|tip You will only be able to talk to him if the battle hasn't started yet.
Run down the path and fight Ragnaros
You will assist 3 NPC's when killing Ragnaros
|tip Do not attack and fight Ragnaros directly, just let the NPC's fight him.  Instead, kill the fire elementals that periodically attack the NPC's you're assisting.  Make sure to kill all the fire elementals and the NPC's will take care of everything else and kill Ragnaros for you.
kill Ragnaros##41634 |q 25551/1 |goto 44.7,79.2
step
click Portal to Hyjal##209038
Teleport to the Gates of Sothann |goto 72.2,74.8 < 5 |q 25551 |walk
talk Commander Jarod Shadowsong##40772
turnin The Firelord##25551 |goto 72.1,74.0
step
talk Commander Jarod Shadowsong##40772
accept The Battle Is Won, The War Goes On##27399 |goto 72.1,74.0
step
talk Farseer Krogar##45244
turnin The Battle Is Won, The War Goes On##27399 |goto Orgrimmar,50.5,38.4
step
talk Provisioner Whitecloud##50314
buy 1 Tabard of the Guardians of Hyjal##65906 |goto Mount Hyjal,62.8,23.8
step
Use the Guardians of Hyjal tabard and run through instances with it. |equipped Tabard of the Guardians of Hyjal##65906 |use Tabard of the Guardians of Hyjal##65906
Earn Exalted reputation with the Guardians of Hyjal |complete rep('Guardians of Hyjal')==Exalted |next "exalted"
step
label "exalted"
Congratulations you are Exalted with the Guardians of Hyjal!
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Cataclysm Reputations\\Hellscream's Reach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Cataclysm Reputations\\Ramkahen")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Cataclysm Reputations\\Therazane")
