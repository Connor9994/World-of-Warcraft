local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "LEG"
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Fishing\\Ilyssia of the Waters",{
author="support@zygorguides.com",
keywords={"fishing, reputation"},
description="\nThis guide will walk you through becoming best friends with Ilyssia of the Waters.",
},[[
step
Only one of the 6 Fisherfriends can be up per day
|tip There is no set rotation on which Fisherfriend will spawn.
confirm
step
To earn Best Friend reputation with Ilyssia of the Waters you must collect Fragmented Enchantments
You must stand next to Ilyssia of the Waters and obtain the buff _Something's Fishy_ |havebuff Something's Fishy##236572
|tip This buff will allow you to fish for these Framents from this small pond.
Fish in the Water |cast Fishing##131474
collect Hatecoil Spearhead##146964+ |n
|tip There's a chance to get these when fishing here.
Use the Hatecoil Spearhead |use Hatecoil Spearhead##146964
collect 840 Fragmented Enchantment##146848 |n |goto Azsuna/0 43.25,40.58
|tip There's a chance to get these when fishing here.
|tip If you are a Human or if you have a 10 percent increase reputation buff, you will only need 762 Fragments.
talk Ilyssia of the Waters##120266
|tip Use the dialogue options to give her the Fragmented Enchantments.
Become best friends with Ilyssia of the Waters |complete rep("Ilyssia of the Waters")>=BestFriend |goto Azsuna/0 43.20,40.62 |or
step
_Congratulations!_
You are now best friends with "Ilyssia of the Waters."
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Fishing\\Impus",{
author="support@zygorguides.com",
keywords={"fishing, reputation"},
description="\nThis guide will walk you through becoming best friends with Impus in the Broken Shore.",
},[[
step
Only one of the 6 Fisherfriends can be up per day
|tip There is no set rotation on which Fisherfriend will spawn.
confirm
step
To earn Best Friend reputation with Impus you must collect Desecrated Seaweed
You must stand next to Impus and obtain the buff _Something's Fishy_ |havebuff Something's Fishy##236572
Fish in the Water |cast Fishing##131474
collect Faintly Polished Felstone##146969+ |n
|tip There's a chance to get these when fishing here.
Use the Faintly Polished Felstone |use Faintly Polished Felstone##146969
kill Infernal Destroyer##120455+
collect 560 Desecrated Seaweed##146963 |n |goto Broken Shore/0 33.72,49.98
|tip There's a chance to get these when fishing here.
|tip If you are a Human or if you have a 10 percent increased reputation buff, you will only need 510 Desecrated Seaweed.
talk Impus##120460
|tip Use the dialogue options to give the imp all of your Desecrated Seaweed.
Become best friends with Impus |complete rep("Impus")>=BestFriend |goto Broken Shore/0 33.72,49.98 |or
step
_Congratulations!_
You are now best friends with "Impus."
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Fishing\\Corbyn",{
author="support@zygorguides.com",
keywords={"fishing, reputation"},
description="\nThis guide will walk you through becoming best friends with Corbyn in Stormheim.",
},[[
step
Only one of the 6 Fisherfriends can be up per day
|tip There is no set rotation on which Fisherfriend will spawn.
confirm
step
To earn Best Friend reputation with Corbyn you must collect Shiny Baubles
Fish in the Water |cast Fishing##131474
collect White Sparkly Bauble##146967+ |n
|tip There's a chance to get these when fishing here.
Use the White Sparkly Bauble |use White Sparkly Bauble##146967
collect 560 Shiny Bauble##146961 |n |goto Stormheim/0 90.94,11.05
|tip There's a chance to get these when fishing here.
|tip If you are a Human or if you have a 10 percent increased reputation buff, you will only need 510 Fragments.
talk Corbyn##120458
|tip Use the dialogue options to give the crow all of your shiny things.
Become best friends with Corbyn |complete rep("Corbyn")>=BestFriend |goto Stormheim/0 90.51,10.71 |or
step
_Congratulations!_
You are now best friends with "Corbyn."
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Fishing\\Keeper Raynae",{
author="support@zygorguides.com",
keywords={"fishing, reputation"},
description="\nThis guide will walk you through becoming best friends with Keeper Raynae in Val'sharah.",
},[[
step
Only one of the 6 Fisherfriends can be up per day
|tip There is no set rotation on which Fisherfriend will spawn.
confirm
step
To earn Best Friend reputation with Keeper Raynae you must collect Corrupted Globules
You must stand close to Keeper Raynae and obtain the buff _Something's Fishy_ |havebuff Something's Fishy##236572
|tip This buff will allow you to fish for these Corrupted Globules.
Fish in the Water |cast Fishing##131474
collect Disgusting Ooze##146965+ |n
|tip There's a chance to get these when fishing here.
Use the Disgusting Ooze |use Disgusting Ooze##146965
kill Enormous Globule##120451
|tip When this is killed you will get more Globules when fishing in the water for a short time.
collect 560 Corrupted Globule##146959 |n |goto Val'sharah/0 53.46,72.76
|tip There's a chance to get these when fishing here.
|tip If you are a Human or if you have a 10 percent increased reputation buff, you will only need 510 Fragments.
talk Keeper Raynae##120456
|tip Use the dialogue options to give Raynae all of your disgusting Globules.
Become best friends with Keeper Raynae |complete rep("Keeper Raynae")>=BestFriend |goto Val'sharah/0 53.39,72.86
step
_Congratulations!_
You are now best friends with "Keeper Raynae."
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Fishing\\Sha'leth",{
author="support@zygorguides.com",
keywords={"fishing, reputation"},
description="\nThis guide will walk you through becoming best friends with Sha'leth in Suramar.",
},[[
step
Only one of the 6 Fisherfriends can be up per day
|tip There is no set rotation on which Fisherfriend will spawn.
confirm
step
To earn Best Friend reputation with Sha'leth you must collect Golden Minnows
You must stand close to Sha'leth and obtain the buff _Something's Fishy_ |havebuff Something's Fishy##236572
|tip This buff will allow you to fish for these Minnows.
Fish in the Schools of Golden Minnows located in the water behind her |cast Fishing##131474
collect Glowing Fish Scale##146968+ |n
|tip There's a chance to get these when fishing here.
Use the Glowing Fish Scale |use Glowing Fish Scale##146968
kill Magicus##120454+
collect 560 Golden Minnow##146962 |n |goto Suramar/0 50.78,48.41
|tip There's a chance to get these when fishing here.
|tip If you are a Human or if you have a 10 percent increased reputation buff, you will only need 510 Golden Minnows.
talk Sha'leth##120459
|tip Use the dialogue options to give her the Golden Minnows.
Become best friends with Sha'leth |complete rep("Sha'leth")>=BestFriend |goto Suramar/0 50.70,49.31 |or
step
_Congratulations!_
You are now best friends with "Sha'leth."
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Fishing\\Akule Riverhorn",{
author="support@zygorguides.com",
keywords={"fishing, reputation"},
description="\nThis guide will walk you through becoming best friends with Akule Riverhorn in Highmountain.",
},[[
step
Only one of the 6 Fisherfriends can be up per day
|tip There is no set rotation on which Fisherfriend will spawn.
confirm
step
To earn Best Friend reputation with Akule Riverhorn you must collect Ancient Totem Fragment
You must stand next to Akule Riverhorn on his small boat and obtain the buff _Something's Fishy_ |havebuff Something's Fishy##236572
|tip This buff will allow you to fish for these Fragments.
Fish in the Water |cast Fishing##131474
collect Water Totem Figurine##146966+ |n
|tip There's a chance to get these when fishing here.
Use the Water Totem Figurine |use Water Totem Figurine##146966
kill Tarn Riverhorn##120453+
|tip Killing Tarn Riverhorn will buff your chances of fishing up the Ancient Totem Fragments.
collect 560 Ancient Totem Fragment##146960 |n |goto Thunder Totem/0 32.39,41.75
|tip There's a chance to get these when fishing here.
|tip If you are a Human or if you have a 10 percent increased reputation buff, you will only need 510 Fragments.
talk Akule Riverhorn##120457
|tip Use the dialogue options to give him the Ancient Totem Fragment.
Become best friends with Akule Riverhorn |complete rep("Akule Riverhorn")>=BestFriend |goto Thunder Totem/0 32.39,41.75 |or
step
_Congratulations!_
You are now best friends with "Akule Riverhorn."
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Argussian Reach",{
author="support@zygorguides.com",
keywords={"reputation"},
description="\nThis guide will walk you through becoming exalted with the Argussian Reach faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Argussian Reach') < Exalted end,
},[[
step
_Earning reputation with Argussian Reach can be achieved by:_
Completing the Argus story quests
|tip This is also required to unlock various world quest areas.
Click here to load the Argus guide |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
Completing Argus world quests
Click here to load the world quests guide |next "Dailies Guides\\Legion\\Azsuna World Quests"
Using Argussian Reach reputation insignias
|tip These are awarded from Order Hall missions, Argussian Reach emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use your Argussian Reach Insignia |use Argussian Reach Insignia##152959 |only if itemcount(152959) >= 1
Use your Argussian Reach Insignia |use Argussian Reach Insignia##152960 |only if itemcount(152960) >= 1
Use your Greater Argussian Reach Insignia |use Greater Argussian Reach##152961 |only if itemcount(152961) >= 1
Use your Greater Argussian Reach Insignia |use Greater Argussian Reach##152954 |only if itemcount(152954) >= 1
Completing weekly quests in Argus
|tip The weekly quest for the Argussian Reach is "Fuel of a Doomed World."
Gain Exalted reputation with the Argussian Reach |complete rep("Argussian Reach")>=Exalted
step
_Congratulations!_
You have earned Exalted reputation with the "Argussian Reach" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Armies of Legionfall",{
author="support@zygorguides.com",
keywords={"Armies","Legionfall","Army"},
description="\nThis guide will walk you through becoming exalted with the \"Armies of Legionfall\" faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Armies of Legionfall') < Exalted end,
achieveid={11545, 11796},
patch='70200',
},[[
step
_Earning reputation with Armies of Legionfall can be achieved by:_
|tip Completing Broken Shore world quests.
Click here to load the "World Quests" guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
|tip Completing quests offered by Excavator Karla
|tip Karla offers a new quest every day. You can find her by looking for the new quest icon on the Broken Shore map.
Click here to load the "Excavator Karla" guide |confirm |next "Leveling Guides\\Legion (10-50)\\Broken Shore\\Excavator Karla Quests"
|tip Turning in a building construction quest at Deliverance Point in Broken Shore rewards 150 reputation
|tip You also receive 150 reputation for donating 100 Legionfall War Supplies to the Legionfall Construction Table.
|tip Using Legionfall Insignias from Class Order Hall missions.
Use your Legionfall Insignia |use Legionfall Insignia##146949 |only if itemcount(146949) >= 1
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Click here to load the "Death Knight 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Death Knight\\Death Knight 7.2 Order Hall Quests" |only DeathKnight
Click here to load the "Demon Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Demon Hunter\\Demon Hunter 7.2 Order Hall Quests" |only DemonHunter
Click here to load the "Druid 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Druid\\Druid 7.2 Order Hall Quests" |only Druid
Click here to load the "Hunter 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Hunter\\Hunter 7.2 Order Hall Quests" |only Hunter
Click here to load the "Mage 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Mage\\Mage 7.2 Order Hall Quests" |only Mage
Click here to load the "Monk 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Monk\\Monk 7.2 Order Hall Quests" |only Monk
Click here to load the "Paladin 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Paladin\\Paladin 7.2 Order Hall Quests" |only Paladin
Click here to load the "Priest 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Priest\\Priest 7.2 Order Hall Quests" |only Priest
Click here to load the "Rogue 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Rogue\\Rogue 7.2 Order Hall Quests" |only Rogue
Click here to load the "Shaman 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Shaman\\Shaman 7.2 Order Hall Quests" |only Shaman
Click here to load the "Warlock 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Warlock\\Warlock 7.2 Order Hall Quests" |only Warlock
Click here to load the "Warrior 7.2 Order Hall Quest" leveling guide |confirm |next "Leveling Guides\\Legion (10-50)\\Warrior\\Warrior 7.2 Order Hall Quests" |only Warrior
|tip Class champion and Class Order Hall questlines reward various one-time reputation gains.
Gain exalted reputation with the Armies of Legionfall |complete rep("Armies of Legionfall")>=Exalted
step
_Congratulations!_
You earned exalted reputation with the "Armies of Legionfall" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Army of the Light",{
author="support@zygorguides.com",
keywords={"reputation"},
description="\nThis guide will walk you through becoming exalted with the Army of the Light faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Army of the Light') < Exalted end,
},[[
step
_Earning reputation with Army of the Light can be achieved by:_
Completing the Argus story quests
|tip This is also required to unlock various world quest areas.
Click here to load the Argus guide |next "Leveling Guides\\Legion (10-50)\\Argus Campaign"
Completing Argus world quests
Click here to load the world quests guide |next "Dailies Guides\\Legion\\Azsuna World Quests"
Using Army of the Light reputation insignias
|tip These are awarded from Order Hall missions, Army of the Light emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use your Army of the Light Insignia |use Army of the Light Insignia##152957 |only if itemcount(152957) >= 1
Use your Army of the Light Insignia |use Army of the Light Insignia##152958 |only if itemcount(152958) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152956 |only if itemcount(152956) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152955 |only if itemcount(152955) >= 1
Completing weekly quests in Argus
|tip These quests are "Invasion Point Offensive," "Commander's Downfall," "Invasion Onslaught," and "Supplying the Antoran Campaign."
Gain Exalted reputation with the Army of the Light |complete rep("Army of the Light")>=Exalted
step
_Congratulations!_
You have earned Exalted reputation with the "Army of the Light" faction.
]])
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Court of Farondis",{
author="support@zygorguides.com",
keywords={"Court","Farondis"},
description="\nThis guide will walk you through becoming exalted with the Court of Farondis faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Court of Farondis') < Exalted end,
},[[
step
Gain Exalted Reputation with Court of Farondis |complete rep("Court of Farondis")>=Exalted
|tip Use the "Azsuna" leveling guide to accomplish this.
|tip Complete world quests in Azsuna.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Court of Farondis" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Dreamweavers",{
author="support@zygorguides.com",
keywords={"Dreamweavers"},
description="\nThis guide will walk you through becoming exalted with the Dreamweavers faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Dreamweavers') < Exalted end,
},[[
step
Gain Exalted Reputation with Dreamweavers |complete rep("Dreamweavers")>=Exalted
|tip Use the "Val'sharah" leveling guide to accomplish this.
|tip Complete world quests in Val'sharah.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Dreamweavers" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Highmountain Tribe",{
author="support@zygorguides.com",
keywords={"Highmountain","Tribe"},
description="\nThis guide will walk you through becoming exalted with the Highmountain Tribe faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Highmountain Tribe') < Exalted end,
},[[
step
Gain Exalted Reputation with Highmountain Tribe |complete rep("Highmountain Tribe")>=Exalted
|tip Use the "Highmountain" leveling guide to accomplish this.
|tip Complete world quests in Highmountain.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Highmountain Tribe" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\The Nightfallen",{
author="support@zygorguides.com",
keywords={"Nightfallen"},
description="\nThis guide will walk you through becoming exalted with The Nightfallen faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Nighfallen') < Exalted end,
achieveid={10778},
patch='70003',
},[[
step
Gain Exalted Reputation with The Nighfallen |complete rep("The Nighfallen")>=Exalted |goto Suramar/0 36.51,46.80 |region suramar_shalaran
|tip Use the "Suramar (45-50)" leveling guide to accomplish this.
|tip Complete world quests in Suramar.
|tip Use the "World Quests" dailies guide to accomplish this.
|tip
_About Ancient Mana:_
|tip Click various objects on the ground all around Suramar to collect Ancient Mana.
|tip You can track the objects on your minimap by using the Mana Divining Stone.
|tip You get the Mana Divining Stone as a quest reward shortly into the Suramar (45-50) leveling guide.
|tip The best area of Suramar to collect Ancient Mana is Twilight Vineyards.
|tip
_Feed Ancient Mana to These Nightfallen NPC's:_
|tip First Arcanist Thalyssra
|tip Arcanist Valtrois
|tip Chief Telemancer Oculeth
|tip Their locations change as you complete quests in the Suramar (45-50) leveling guide.
step
_Congratulations!_
You earned Exalted reputation with "The Nightfallen" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\Valarjar",{
author="support@zygorguides.com",
keywords={"Valarjar"},
description="\nThis guide will walk you through becoming exalted with the Valarjar faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Valarjar') < Exalted end,
},[[
step
Gain Exalted Reputation with Valarjar |complete rep("Valarjar")>=Exalted
|tip Use the "Stormheim" leveling guide to accomplish this.
|tip Complete world quests in Stormheim.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with the "Valarjar" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Legion Reputations\\The Wardens",{
author="support@zygorguides.com",
keywords={"Wardens"},
description="\nThis guide will walk you through becoming exalted with The Wardens faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Wardens') < Exalted end,
},[[
step
Gain Exalted Reputation with The Wardens |complete rep("The Wardens")>=Exalted
|tip Complete world quests in all zones that are labeled as "The Wardens".
|tip Look under the world quest title in the tooltip when you hover over a world quest on the map.
|tip Use the "World Quests" dailies guide to accomplish this.
step
_Congratulations!_
You earned Exalted reputation with "The Wardens" faction.
]])
