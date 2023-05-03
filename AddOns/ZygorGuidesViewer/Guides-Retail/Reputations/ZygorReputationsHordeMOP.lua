local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Dominance Offensive\\Dominance Offensive\\Beastmaster Dailies",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Dominance Offensive faction.",
achieveid={8206},
patch='50200',
},[[
#include "Sturdy_Traps"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Dominance Offensive\\Dominance Offensive",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Dominance Offensive faction.",
achieveid={7929},
patch='50100',
},[[
#include "Dominance_Offensive"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Chee Chee",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Chee Chee.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Chee Chee after completing the Tillers prequests.
Becoming _Best Friends_ with Chee Chee rewards you with _Chee Chee's Goodie Bag_, which contains leather and cloth, and he also gives you a _Sheep_ to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Chee Chee_ is a _Stranger_ to you. |only if rep("Chee Chee")<=Stranger
_Chee Chee_ is your _Aquaintance_. |only if rep("Chee Chee")==Aquaintance
_Chee Chee_ is your _Buddy_. |only if rep("Chee Chee")==Buddy
_Chee Chee_ is your _Friend_. |only if rep("Chee Chee")==Friend
_Chee Chee_ is your _Good Friend_. |only if rep("Chee Chee")==GoodFriend
_Chee Chee_ is your _Best Friend_. |only if rep("Chee Chee")==BestFriend
|only if rep("Chee Chee")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Chee Chee")<BestFriend
|only if rep("Chee Chee")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Chee Chee")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Chee Chee")==BestFriend
|confirm |next "end" |only if rep("Chee Chee")==BestFriend
step
label "cooking"
In order to create Chee Chee's favorite meal, you must have at least 555 skill points in _Way of the Wok_ Cooking.
Click here to continue |confirm |next "stir_fry"
Click here to go back to the menu |confirm |next "menu"
step
label "stir_fry"
talk Anthea Ironpaw##58713
learn Valley Stir Fry##104302 |goto Valley of the Four Winds 52.7,52.0
step
label "farm_stir_fry_1"
Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256
|tip You should at least have 525 fishing for this.
Use your Fishing skill to fish in the water here. You can also look for fishing pools around the beach |cast Fishing##7620
collect 25 Reef Octopus##74864 |goto Krasarang Wilds 67.9,49.6
You can also buy these from the _Auction House_
step
Skipping farming |next "+create_stir_fry" |only if step:Find("+farm_stir_fry_2"):IsComplete()
Proceeding to Valley Stir Fry |next |only if default
step
label "farm_stir_fry_2"
kill Carp Hunter##58116+
collect 25 Wildfowl Breast##74839 |goto Krasarang Wilds 64.6,29.3
You can also buy these from the _Auction House_
|next "create_stir_fry"
step
label "create_stir_fry"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Valley Stir Fry##104302,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 30 Blue Feather##79265
|next "turnin2"
step
label "turnin1"
talk Chee Chee##58709
turnin A Dish For Chee Chee##30402 |goto Valley of the Four Winds 34.4,46.7
|tip You can only turn this quest in once a day.
Click here to be taken back to the beginning of the Cooking Dailies for Chee Chee |confirm |next "cooking"
You can also find Chee Chee in Halfhill at [53.0,52.0]
|next "quest1" |only if rep("Chee Chee")==Buddy
|next "quest2" |only if rep("Chee Chee")==Friend
|next "quest3" |only if rep("Chee Chee")==GoodFriend
|next "menu" |only if default
Click here if Chee Chee is not in this location. |next "altturnin1"
step
label "turnin2"
talk Chee Chee##58709
turnin A Blue Feather for Chee Chee##30400 |goto Valley of the Four Winds 34.4,46.7
|tip Keep turning this in until you reach the next status.
You can also find Chee Chee in Halfhill at [53.0,52.0]
|next "quest1" |only if rep("Chee Chee")==Buddy
|next "quest2" |only if rep("Chee Chee")==Friend
|next "quest3" |only if rep("Chee Chee")==GoodFriend
|next "menu" |only if default
Click here if Chee Chee is not in this location. |next "altturnin2"
step
label "quest1"
talk Chee Chee##58709
accept Lost Sheepie##31338 |goto 34.4,46.7
step
label "quest2"
talk Chee Chee##58709
accept Lost Sheepie... Again##31339 |goto 34.4,46.7
step
label "quest3"
talk Chee Chee##58709
accept Oh Sheepie##31340 |goto 34.4,46.7
step
talk Chee Chee##58709
accept A Wolf In Sheep's Clothing##31341 |goto 34.4,46.7
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Ella",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Ella.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Ella after completing the Tillers prequests.
Becoming _Best Friends_ with Ella rewards you with a _Tree Seed Pack_, which contains Blossom Seeds, and she also gives you a _Cat_ to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Ella_ is a _Stranger_ to you. |only if rep("Ella")<=Stranger
_Ella_ is your _Aquaintance_. |only if rep("Ella")==Aquaintance
_Ella_ is your _Buddy_. |only if rep("Ella")==Buddy
_Ella_ is your _Friend_. |only if rep("Ella")==Friend
_Ella_ is your _Good Friend_. |only if rep ("Ella")==GoodFriend
_Ella_ is your _Best Friend_. |only if rep("Ella")==BestFriend
|only if rep("Ella")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Ella")<BestFriend
|only if rep("Ella")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Ella")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Ella")==BestFriend
|confirm |next "end" |only if rep("Ella")==BestFriend
step
label "cooking"
In order to create Ella's favorite meal, you must have at least 525 skill points in Cooking.
Click here to continue |confirm |next "shrimp_dump"
Click here to go back to the menu |confirm |next "menu"
step
label "shrimp_dump"
talk Yan Ironpaw##58715
learn Shrimp Dumplings##104307 |goto Valley of the Four Winds 52.5,51.8
step
label "farm_shrimp_dump_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
collect 25 Giant Mantis Shrimp##74857 |goto Krasarang Wilds 67.9,49.6
You can also buy these from the _Auction House_
step
label "create_shrimp_dump"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Shrimp Dumpling##104307,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 30 Jade Cat##79266
|next "turnin2"
step
label "turnin1"
talk Ella##58647
turnin A Dish For Ella##30386 |goto Valley of the Four Winds 31.5,58.1
|tip You can only turn this quest in once a day.
You can also find Chee Chee in Halfhill at [53.0,51.6]
Click here to be taken back to the beginning of the Cooking Dailies for Ella |confirm |next "cooking"
|next "quest1" |only if rep("Ella")==Buddy
|next "quest2" |only if rep("Ella")==Friend
|next "quest3" |only if rep("Ella")==GoodFriend
|next "menu" |only if default
Click here if Ella is not in this location. |next "altturnin1"
step
label "turnin2"
talk Ella##58647
turnin A Jade Cat for Ella##30381 |goto Valley of the Four Winds 31.5,58.1
|tip Keep turning this in until you reach Buddy Status.
You can also find Chee Chee in Halfhill at [53.0,51.6]
|next "quest1" |only if rep("Ella")==Buddy
|next "quest2" |only if rep("Ella")==Friend
|next "quest3" |only if rep("Ella")==GoodFriend
|next "menu" |only if default
Click here if Ella is not in this location. |next "altturnin2"
step
label "quest1"
talk Ella##58647
accept The Beginner's Brew##31534 |goto 31.5,58.1
If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
step
talk Farmer Fung##57298
Ask him for a Red Radish
collect 1 Red Radish##87553 |q 31534/1 |goto Valley of the Four Winds 48.2,33.9
step
talk Haohan Mudclaw##57402
Ask her for a Sweet Lakelemon
collect 1 Sweet Lakelemon##87554 |q 31534/2 |goto Valley of the Four Winds 44.6,34.0
step
talk Gina Mudclaw##58706
Ask her for a Fuzzy Peach
collect 1 Black Cherries##87555 |q 31534/3 |goto Valley of the Four Winds 53.2,51.6
step
talk Fish Fellreed##58705
Ask her for Black Cherries
collect 1 Black Cherries##87556 |q 31534/4 |goto Valley of the Four Winds 41.7,30.1
step
talk Ella##58647
turnin The Beginner's Brew##31534 |goto 31.5,58.1
If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
|next "menu"
step
label "quest2"
talk Ella##58647
accept Ella's Taste Test##31537 |goto Valley of the Four Winds 31.5,58.1
If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
step
Use _Ella's Brew_ on _Jogu the Drunk_ |use Ella's Brew##87558
Have Jogu the Drunk try Ella's Brew |q 31537/1 |goto Valley of the Four Winds 53.5,52.6
step
Use _Ella's Brew_ on _Bobo Ironpaw_ |use Ella's Brew##87558
Have Bobo Ironpaw try Ella's Brew |q 31537/2 |goto Valley of the Four Winds 53.0,52.0
step
Use _Ella's Brew_ on _Farmer Yoon_ |use Ella's Brew##87558
Have Farmer Yoon try Ella's Brew |q 31537/3 |goto Valley of the Four Winds 52.0,48.0
step
Use _Ella's Brew_ on _Nana Mudclaw_ |use Ella's Brew##87558
Have Nana Mudclaw try Ella's Brew |q 31537/4 |goto Valley of the Four Winds 54.6,47.0
step
talk Ella##58647
turnin Ella's Taste Test##31537 |goto Valley of the Four Winds 31.5,58.1
If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
|next "menu"
step
label "quest3"
talk Ella##58647
accept A Worthy Brew##31538 |goto 31.5,58.1
If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
step
Use _Ella's Brew_ on _Chen Stormstout_ |use Ella's Brew##87763
Have Chen Stormstout try Ella's Brew |q 31537/4 |goto Valley of the Four Winds/0 55.1,50.4
step
talk Ella##58647
turnin A Worthy Brew##31538 |goto 31.5,58.1
If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
|next "menu"
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Farmer Fung",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Farmer Fung.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Farmer Fung after completing the Tillers prequests.
Becoming _Best Friends_ with Farmer Fung rewards you with an _Enigma Seed_, which blooms into a random plant, and _Shaggy the Prize Yak_ for your farm
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Farmer Fung_ is a _Stranger_ to you. |only if rep("Farmer Fung")<=Stranger
_Farmer Fung_ is your _Aquaintance_. |only if rep("Farmer Fung")==Aquaintance
_Farmer Fung_ is your _Buddy_. |only if rep("Farmer Fung")==Buddy
_Farmer Fung_ is your _Friend_. |only if rep("Farmer Fung")==Friend
_Farmer Fung_ is your _Best Friend_. |only if rep("Farmer Fung")==BestFriend
|only if rep("Farmer Fung")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Farmer Fung")<BestFriend
|only if rep("Farmer Fung")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Farmer Fung")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Farmer Fung")==BestFriend
|confirm |next "end" |only if rep("Farmer Fung")==BestFriend
step
label "cooking"
In order to create Farmer Fung's favorite meal, you must have at least 525 skill points in Cooking.
Click here to continue |confirm |next "wild_roast"
Click here to go back to the menu |confirm |next "menu"
step
label "wild_roast"
talk Jian Ironpaw##58716
learn Wildfowl Roast##104310 |goto Valley of the Four Winds 53.4,51.6
step
label "farm_wild_roast_1"
kill Carp Hunter##58116+
collect 5 Wildfowl Breast##74839 |goto Krasarang Wilds 64.6,29.3
You can also buy these from the _Auction House_
step
label "create_wild_roast"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Wildfowl Roast##104310,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 47 Marsh Lily##79268
|next "turnin2"
step
label "turnin1"
talk Farmer Fung##57298
turnin A Dish For Farmer Fung##30421 |goto Valley of the Four Winds 48.2,33.9
|tip You can only turn this quest in once a day.
You can also find Farmer Fung in Halfhill at [52.8,51.6]
Click here to be taken back to the beginning of the Cooking Dailies for Farmer Fung |confirm |next "cooking"
step
label "turnin2"
talk Farmer Fung##57298
turnin A Marsh Lily for Farmer Fung##30420 |goto Valley of the Four Winds 48.2,33.9
|tip Keep turning this in until you reach Best Friend status.
You can also find Farmer Fung in Halfhill at [52.8,51.6]
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Fish Fellreed",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Fish Fellreed.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Fish Fellreed after completing the Tillers prequests.
Becoming _Best Friends_ with Fish Fellreed rewards you with a _Special Seed Pack_, which contains Profession Seeds.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Fish Fellreed_ is a _Stranger_ to you. |only if rep("Fish Fellreed")<=Stranger
_Fish Fellreed_ is your _Aquaintance_. |only if rep("Fish Fellreed")==Aquaintance
_Fish Fellreed_ is your _Buddy_. |only if rep("Fish Fellreed")==Buddy
_Fish Fellreed_ is your _Friend_. |only if rep("Fish Fellreed")==Friend
_Fish Fellreed_ is your _Good Friend_. |only if rep("Fish Fellreed")==GoodFriend
_Fish Fellreed_ is your _Best Friend_. |only if rep("Fish Fellreed")==BestFriend
|only if rep("Fish Fellreed")<BestFriendR
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Fish Fellreed")<BestFriend
|only if rep("Fish Fellreed")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Fish Fellreed")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Fish Fellreed")==BestFriend
|confirm |next "end" |only if rep("Fish Fellreed")==BestFriend
step
label "cooking"
In order to create Fish Fellreed's favorite meal, you must have at least 550 skill points in _Way of the Oven_ Cooking.
Click here to continue |confirm |next "twin_fish"
Click here to go back to the menu |confirm |next "menu"
step
label "twin_fish"
talk Jian Ironpaw##58716
learn Twin Fish Platter##104311 |goto Valley of the Four Winds 53.4,51.6
step
label "farm_twin_fish_1"
map Krasarang Wilds
path loose; loop; curved
path	37.4,35.2	42.9,38.7	43.4,46.0
path	38.0,42.3	34.1,38.4	30.3,33.8
Follow this river and use your fishing ability to catch Krasarang Paddlefish
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
|tip You should at least have 525 fishing for this.
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
collect 10 Krasarang Paddlefish##74865
You can also buy these from the _Auction House_
step
label "create_twin_fish"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Twin Fish Platter##104311,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 47 Jade Cat##79266
|next "turnin2"
step
label "turnin1"
talk Fish Fellreed##58705
turnin A Dish For Fish##30427 |goto Valley of the Four Winds 41.7,30.1
|tip You can only turn this quest in once a day.
You can also find Fish Fellreed in Halfhill at [53.0,51.6]
Click here to be taken back to the beginning of the Cooking Dailies for Fish Fellreed |confirm |next "cooking"
Click here if Fish Fellreed is not in this location. |next "altturnin1"
Click here to be taken back to the beginning of this guide. |confirm |next "menu"
step
label "turnin2"
talk Fish Fellreed##58705
turnin A Jade Cat for##30424 |goto Valley of the Four Winds 41.7,30.1
|tip Keep turning this in until you reach Best Friend Status.
You can also find Fish Fellreed in Halfhill at [52.8,51.8]
Click here if Fish Fellreed is not in this location. |next "altturnin2"
Click here to be taken back to the beginning of this guide. |confirm |next "menu"
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Gina Mudclaw",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Gina Mudclaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Gina Mudclaw after completing the Tillers prequests.
Becoming _Best Friends_ with Gina Mudclaw rewards you with _Celebration Gift_, which contains fireworks, and she also gives you access to a mailbox on Halfhill.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Gina Mudclaw_ is a _Stranger_ to you. |only if rep("Gina Mudclaw")<=Stranger
_Gina Mudclaw_ is your _Aquaintance_. |only if rep("Gina Mudclaw")==Aquaintance
_Gina Mudclaw_ is your _Buddy_. |only if rep("Gina Mudclaw")==Buddy
_Gina Mudclaw_ is your _Friend_. |only if rep("Gina Mudclaw")==Friend
_Gina Mudclaw_ is your _Good Friend_. |only if rep("Gina Mudclaw")==GoodFriend
_Gina Mudclaw_ is your _Best Friend_. |only if rep("Gina Mudclaw")==BestFriend
|only if rep("Gina Mudclaw")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Gina Mudclaw")<BestFriend
|only if rep("Gina Mudclaw")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Gina Mudclaw")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Gina Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Gina Mudclaw")==BestFriend
step
label "cooking"
In order to create Gina Mudclaw's favorite meal, you must have at least 525 skill points in Cooking.
Click here to continue |confirm |next "mist_soup"
Click here to go back to the menu |confirm |next "menu"
step
label "mist_soup"
talk Anthea Ironpaw##58713
learn Swirling Mist Soup##104304 |goto Valley of the Four Winds 52.7,52.0
step
label "farm_mist_soup_1"
Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256
|tip You should at least have 525 fishing for this.
Use your Fishing skill to fish in the water here. You can also look for fishing pools around the beach |cast Fishing##7620
collect 5 Jade Lungfish##74856 |goto The Jade Forest 23.6,25.6
You can also buy these from the _Auction House_
step
label "create_mist_soup"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Swirling Mist Soup##104304,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 44 Blue Feather##79268
|next "turnin2"
step
label "turnin1"
talk Gina Mudclaw##58706
turnin A Dish For Gina Mudclaw##30390 |goto Valley of the Four Winds 53.2,51.6
|tip You can only turn this quest in 5 times a day.
Click here to be taken back to the beginning of the Cooking Dailies for Gina Mudclaw |confirm |next "cooking"
step
label "turnin2"
talk Gina Mudclaw##58706
turnin A Marsh Lily for Gina Mudclaw##30389 |goto Valley of the Four Winds 53.2,51.6
|tip Keep turning this in until you reach Best Friend Status.
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Haohan Mudclaw",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Haohan Mudclaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Haohan Mudclaw after completing the Tillers prequests.
Becoming _Best Friends_ with Haohan Mudclaw rewards you with three _Songbell Seeds_, and a mushan pet to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Haohan Mudclaw_ is a _Stranger_ to you. |only if rep("Haohan Mudclaw")<=Stranger
_Haohan Mudclaw_ is your _Aquaintance_. |only if rep("Haohan Mudclaw")==Aquaintance
_Haohan Mudclaw_ is your _Buddy_. |only if rep("Haohan Mudclaw")==Buddy
_Haohan Mudclaw_ is your _Friend_. |only if rep("Haohan Mudclaw")==Friend
_Haohan Mudclaw_ is your _Best Friend_. |only if rep("Haohan Mudclaw")==BestFriend
|only if rep("Haohan Mudclaw")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Haohan Mudclaw")<BestFriend
|only if rep("Haohan Mudclaw")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Haohan Mudclaw")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Haohan Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Haohan Mudclaw")==BestFriend
step
label "cooking"
In order to create Haohan Mudclaw's favorite meal, you must have at least 525 skill points in Cooking.
Click here to continue |confirm |next "tiger_steak"
Click here to go back to the menu |confirm |next "menu"
step
label "tiger_steak"
talk Kol Ironpaw##58712
learn Charbroiled Tiger Steak##104298 |goto Valley of the Four Winds 53.0,51.4
step
label "farm_tiger_steak_1"
kill Windward Tiger##63537+
collect 5 Raw Tiger Steak##74833 |goto The Jade Forest 62.5,24.3
You can also buy these from the _Auction House_
step
label "create_tiger_steak"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Charbroiled Tiger Steak##104298,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 47 Ruby Shard##79264
|next "turnin2"
step
label "turnin1"
talk Haohan Mudclaw##57402
turnin A Dish For Haohan##30414 |goto Valley of the Four Winds 44.6,34.0
|tip You can only turn this quest in once a day.
You can also find Haohan in Halfhill at [53.0,51.6]
Click here to be taken back to the beginning of the Cooking Dailies for Haohan Mudclaw |confirm |next "cooking"
step
label "turnin2"
talk Haohan Mudclaw##57402
turnin A Ruby shard for Haohan##30409 |goto Valley of the Four Winds 44.6,34.1
|tip Keep turning this in until you reach Best Friend Status.
You can also find Haohan in Halfhill at [53.0,51.6]
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Jogu the Drunk",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Jogu the Drunk.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Jogu the Drunk after completing the Tillers prequests.
Becoming _Best Friends_ with Jogu the Drunk rewards you with a _Secret Stash_, which contains alcohol, and he will no longer charge for crop predictions.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Jogu the Drunk_ is a _Stranger_ to you. |only if rep("Jogu the Drunk")<=Stranger
_Jogu the Drunk_ is your _Aquaintance_. |only if rep("Jogu the Drunk")==Aquaintance
_Jogu the Drunk_ is your _Buddy_. |only if rep("Jogu the Drunk")==Buddy
_Jogu the Drunk_ is your _Friend_. |only if rep("Jogu the Drunk")==Friend
_Jogu the Drunk_ is your _Best Friend_. |only if rep("Jogu the Drunk")==BestFriend
|only if rep("Jogu the Drunk")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Jogu the Drunk")<BestFriend
|only if rep("Jogu the Drunk")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Jogu the Drunk")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Jogu the Drunk")==BestFriend
|confirm |next "end" |only if rep("Jogu the Drunk")==BestFriend
step
label "cooking"
In order to create Jogu the Drunk's favorite meal, you must have at least 525 skill points in Cooking.
Click here to continue |confirm |next "carrots"
Click here to go back to the menu |confirm |next "menu"
step
label "carrots"
talk Anthea Ironpaw##58713
learn Sauteed Carrots##104301 |goto Valley of the Four Winds 52.8,51.8
step
label "farm_carrots_1"
kill Windward Tiger##63537+
collect 10 Juicycrunch Carrot##74841 |goto The Jade Forest 62.5,24.3
You can also buy these from the _Auction House_
step
label "create_carrots"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Sauteed Carrots##104301,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 30 Lovely Apple##79267
|next "turnin2"
step
label "turnin1"
talk Jogu the Drunk##58710
turnin A Dish For Jogu##30439 |goto Valley of the Four Winds 53.5,52.6
|tip You can only turn this quest in once a day.
Click here to be taken back to the beginning of the Cooking Dailies for Jogu the Drunk |confirm |next "cooking"
|next "quest1" |only if rep("Jogu the Drunk")==Aquaintance
|next "quest2" |only if rep("Jogu the Drunk")==Buddy
|next "quest3" |only if rep("Jogu the Drunk")==Friend
|next "quest4" |only if rep("Jogu the Drunk")==GoodFriend
step
label "turnin2"
talk Jogu the Drunk##58710
turnin A Lovely Apple for Jogu##30435 |goto Valley of the Four Winds 53.5,52.6
|tip Keep turning this in until you reach the next friendship status.
|next "quest1" |only if rep("Jogu the Drunk")==Aquaintance
|next "quest2" |only if rep("Jogu the Drunk")==Buddy
|next "quest3" |only if rep("Jogu the Drunk")==Friend
|next "quest4" |only if rep("Jogu the Drunk")==GoodFriend
step
label "quest1"
talk Jogu the Drunk##58710
accept Buy A Fish A Drink?##31320 |goto 53.5,52.6
step
talk Den Den##64319
buy 1 Four Wind Soju##81407 |q 31320/1 |goto 54.8,50.6
step
talk Jogu the Drunk##58710
turnin Buy A Fish A Drink?##31320 |goto 53.5,52.6
step
label "quest2"
talk Jogu the Drunk##58710
accept Buy A Fish A Round?##31321 |goto 53.5,52.6
step
talk Den Den##64319
buy 5 Plum Wine##81415 |q 31321/1 |goto 54.8,50.6
step
talk Jogu the Drunk##58710
turnin Buy A Fish A Round?##31321 |goto 53.5,52.6
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Old Hillpaw",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Old Hillpaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Old Hillpaw after completing the Tillers prequests.
Becoming _Best Friends_ with Old Hillpaw rewards you with a _Straw Hat_ and _Chickens_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Old Hillpaw_ is a _Stranger_ to you. |only if rep("Old Hillpaw")<=Stranger
_Old Hillpaw_ is your _Aquaintance_. |only if rep("Old Hillpaw")==Aquaintance
_Old Hillpaw_ is your _Buddy_. |only if rep("Old Hillpaw")==Buddy
_Old Hillpaw_ is your _Friend_. |only if rep("Old Hillpaw")==Friend
_Old Hillpaw_ is your _Best Friend_. |only if rep("Old Hillpaw")==BestFriend
|only if rep("Old Hillpaw")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Old Hillpaw")<BestFriend
|only if rep("Old Hillpaw")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Old Hillpaw")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Old Hillpaw")==BestFriend
|confirm |next "end" |only if rep("Old Hillpaw")==BestFriend
step
label "cooking"
In order to create Old Hillpaw's favorite meal, you must have at least 525 skill points in Cooking.
Click here to continue |confirm |next "turtle"
Click here to go back to the menu |confirm |next "menu"
step
label "turtle"
talk Mei Mei Ironpaw##58714
learn Braised Turtle##104305 |goto Valley of the Four Winds 52.6,51.6
step
label "farm_turtle_1"
kill Wyrmhorn Turtle##56256+
collect 5 Raw Turtle Meat##74837 |goto Valley of the Four Winds 67.3,29.4
You can also buy these from the _Auction House_
step
label "farm_turtle_2"
kill Snagtooth Hooligan##56462+
collect 25 Juicycrunch Carrot##74841 |goto Valley of the Four Winds 86.5,28.5
You can also buy these from the _Auction House_
step
label "create_turtle"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create 5 Braised Turtle##104305,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 47 Bluie Feather##79268
|next "turnin2"
step
label "turnin1"
talk Old Hillpaw##58707
turnin A Dish For Old Hillpaw##30396 |goto Valley of the Four Winds 31.0,53.1
|tip You can only turn this quest in once a day.
You can also find Old Hillpaw in Halfhill at [53.0,51.8]
Click here to be taken back to the beginning of the Cooking Dailies for Old Hillpaw |confirm |next "cooking"
step
label "turnin2"
talk Old Hillpaw##58707
turnin A Blue Feather for Old Hillpaw##30394 |goto Valley of the Four Winds 31.0,53.1
|tip Keep turning this in until you reach Best Friend status.
You can also find Old Hillpaw in Halfhill at [53.0,51.8]
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Sho",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Sho.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Sho after completing the Tillers prequests.
Becoming _Best Friends_ with Sho rewards you with a _Red Cricket_ Battle Pet and an _Orange Tree_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Sho_ is a _Stranger_ to you. |only if rep("Sho")<=Stranger
_Sho_ is your _Aquaintance_. |only if rep("Sho")==Aquaintance
_Sho_ is your _Buddy_. |only if rep("Sho")==Buddy
_Sho_ is your _Friend_. |only if rep("Sho")==Friend
_Sho_ is your _Best Friend_. |only if rep("Sho")==BestFriend
|only if rep("Sho")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Sho")<BestFriend
|only if rep("Sho")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Sho")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Sho")==BestFriend
|confirm |next "end" |only if rep("Sho")==BestFriend
step
label "cooking"
In order to create Sho's favorite meal, you must have at least 550 skill points in Cooking.
Click here to continue |confirm |next "eternal_blossom"
Click here to go back to the menu |confirm |next "menu"
step
label "eternal_blossom"
talk Kol Ironpaw##58712
learn Eternal Blossom Fish##104299 |goto Valley of the Four Winds 53.0,51.4
step
label "farm_eternal_blossom_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
|tip You should at least have 525 fishing for this.
Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##7620
collect 5 Jade Lungfish##74856 |goto The Jade Forest 55.0,71.1
You can also buy these from the _Auction House_
step
Skipping farming |next "+create_eternal_blossom" |only if step:Find("+farm_eternal_blossom_2"):IsComplete()
Proceeding to Eternal Blossom Fish |next |only if default
step
label "farm_eternal_blossom_2"
kill Slingtail Treeleaper##61562+
collect 25 Striped Melon##74848 |goto The Jade Forest 53.9,81.4
You can also buy these from the _Auction House_
step
label "create_eternal_blossom"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Eternal Blossom Fish##104299,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 43 Lovely Apple##79268
|next "turnin2"
step
label "turnin1"
talk Sho##58708
turnin A Dish For Sho##30408 |goto Valley of the Four Winds 29.5,30.6
|tip You can only turn this quest in once a day.
You can also find Sho in Halfhill at [53.0,52.0]
Click here to be taken back to the beginning of the Cooking Dailies for Sho |confirm |next "cooking"
step
label "turnin2"
talk Sho##58708
turnin A Lovely Apple for Sho##30404 |goto Valley of the Four Winds 29.5,30.6
|tip Keep turning this in until you reach Best Friend status.
You can also find Sho in Halfhill at [53.0,52.0]
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Tiller's Union\\Tina Mudclaw",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming best friends with Tina Mudclaw.",
achieveid={6551, 6552},
patch='50004',
},[[
step
You can only start earning reputation with Tina Mudclaw after completing the Tillers prequests.
Becoming _Best Friends_ with Tina Mudclaw rewards you by sending _Food_ and _Furniture_ to your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label "tillers"
#include "Tillers_Quests"
step
label "menu"
_Tina Mudclaw_ is a _Stranger_ to you. |only if rep("Tina Mudclaw")<=Stranger
_Tina Mudclaw_ is your _Aquaintance_. |only if rep("Tina Mudclaw")==Aquaintance
_Tina Mudclaw_ is your _Buddy_. |only if rep("Tina Mudclaw")==Buddy
_Tina Mudclaw_ is your _Friend_. |only if rep("Tina Mudclaw")==Friend
_Tina Mudclaw_ is your _Best Friend_. |only if rep("Tina Mudclaw")==BestFriend
|only if rep("Tina Mudclaw")<BestFriend
Click here to use _Cooking_ to raise your reputation. |confirm |next "cooking" |only if rep("Tina Mudclaw")<BestFriend
|only if rep("Tina Mudclaw")<BestFriend
Click here to gather gifts to raise your reputation. |confirm |next "gifts" |only if rep("Tina Mudclaw")<BestFriend
You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Tina Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Tina Mudclaw")==BestFriend
step
label "cooking"
In order to create Tina Mudclaw's favorite meal, you must have at least 550 skill points in Cooking.
Click here to continue |confirm |next "fire_spirit"
Click here to go back to the menu |confirm |next "menu"
step
label "fire_spirit"
talk Yan Ironpaw##58715
learn Fire Spirit Salmon##104308 |goto Valley of the Four Winds 52.5,51.7
step
label "farm_fire_spirit_1"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
|tip You should at least have 525 fishing for this.
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
collect 5 Emperor Salmon##74859 |goto Krasarang Wilds 37.4,35.2
You can also buy these from the _Auction House_
step
label "farm_fire_spirit_2"
kill Riverblade Raider##59714+, Riverblade Thief##64034+
collect 25 Scallions##74843 |goto Krasarang Wilds 62.0,40.6
You can also buy these from the _Auction House_
|next "create_fire_spirit"
step
label "create_fire_spirit"
Stand next to a fire, or create one yourself |cast Cooking fire##818
create Fire Spirit Salmon##104308,Cooking,5 total
You can also buy these from the _Auction House_
|next "turnin1"
step
label "gifts"
When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
click Dark Soil##210582
collect 47 Ruby Shard##79268
|next "turnin2"
step
label "turnin1"
talk Tina Mudclaw##58761
turnin A Dish For Tina Mudclaw##30433 |goto Valley of the Four Winds 45.0,33.8
|tip You can only turn this quest in once a day.
You can also find Tina Mudclaw in Halfhill at [53.0,51.8]
Click here to be taken back to the beginning of the Cooking Dailies for Tina Mudclaw |confirm |next "cooking"
step
label "turnin2"
talk Tina Mudclaw##58761
turnin A Ruby Shard for Tina Mudclaw##30428 |goto Valley of the Four Winds 45.0,33.8
|tip Keep turning this in until you reach Best Friend status.
You can also find Tina Mudclaw in Halfhill at [53.0,51.8]
step
label "end"
You have reached the end of the guide.
Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\The Anglers",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Anglers faction.",
achieveid={6547,7614},
patch='50004',
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\The August Celestials",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The August Celestials faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('August Celestials') < Exalted end,
achieveid={6543},
patch='50004',
},[[
step
label "startaug"
talk Sage Lotusbloom##64001
|tip The following quests will only be available the first time you are sent to a new area. They are random and Sage Lotusbloom will only have one at a time.
accept Challenge At The Temple of the Red Crane##31379 |goto Vale of Eternal Blossoms 62.79,23.39 |next "crane" |or |only if not completedq(31379)
accept Attack At The Temple of the Jade Serpent##31377 |goto Vale of Eternal Blossoms 62.79,23.39 |next "serpent" |or |only if not completedq(31377)
accept Defense At Niuzao Temple##31383 |goto Vale of Eternal Blossoms 62.79,23.39 |next "ox" |or |only if not completedq(31383)
accept Trial At The Temple of the White Tiger##31381 |goto Vale of Eternal Blossoms 62.79,23.39 |next "tiger" |or |only if not completedq(31381)
|tip If no quest is available, ask her how you can help the August Celestials today. Then click on whichever spirit needs you today.
Niuzao the Black Ox |confirm |next "ox"
Yu'lon the Jade Serpent |confirm |next "serpent"
Xuen the White Tiger |confirm |next "tiger"
Chi-Ji the Red Crane |confirm |next "crane"
step
label "crane"
talk Thelonius##60506
turnin Challenge At The Temple of the Red Crane##31379 |goto Krasarang Wilds 31.3,63.4
|only if not completedq(31379)
step
talk Thelonius##60506
accept Students of Chi-Ji##30718 |goto 31.3,63.4
accept Champion of Chi-Ji##30740 |goto 31.3,63.4 |only if achieved(7287)
step
talk Yan Quillpaw##60529
accept Gifts of the Great Crane##30717 |goto 31.3,63.6
step
talk Kuo-Na Quillpaw##60528
accept Chasing Hope##30716 |goto 31.3,63.6
step
talk Champion of Chi-Ji##60546
Let's fight!
Defeat a Champion of Chi-Ji |q 30740/1 |goto 34.6,82.0
|only if haveq(30740)
step
kill Student of Chi-Ji##60601+
Duel #10# Students of Chi-Ji |q 30718/1 |goto 31.2,73.9
click Cerulean Gift of the Crane##211451
click Crimson Gift of the Crane##211453
click Bronze Gift of the Crane##211452
|tip The Gifts look like feathers laying around on the ground.
collect 10 Gift of the Great Crane##80938+ |q 30717/1 |goto 31.2,73.9
Find #3# Spirits of the Crane |q 30716/1 |goto 31.2,73.9
|tip They look like stealthed birds roaming around the isle in set paths. Run into them.
step
talk Kuo-Na Quillpaw##60528
turnin Chasing Hope##30716 |goto 31.3,63.6
step
talk Yan Quillpaw##60529
turnin Gifts of the Great Crane##30717 |goto 31.3,63.6
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto 31.3,63.4
accept Ellia Ravenmane##30725 |goto 31.3,63.4 |or
accept Minh Do-Tan##30726 |goto 31.3,63.4 |or
accept Ellia Ravenmane: Rematch##30727 |goto 31.3,63.4 |or
accept Fat Long-Fat##30728 |goto 31.3,63.4 |or
accept Julia Bates##30729 |goto 31.3,63.4 |or
accept Dextrous Izissha##30730 |goto 31.3,63.4 |or
accept Kuo-Na Quillpaw##30731 |goto 31.3,63.4 |or
accept Ellia Ravenmane: Revenge##30732 |goto 31.3,63.4 |or
accept Tukka-Tuk##30733 |goto 31.3,63.4 |or
accept Huck Wheelbarrow##30734 |goto 31.3,63.4 |or
accept Mindel Sunspeaker##30735 |goto 31.3,63.4 |or
accept Yan Quillpaw##30736 |goto 31.3,63.4 |or
accept Fat Long-Fat: Rematch##30737 |goto 31.3,63.4 |or
accept Thelonius##30738 |goto 31.3,63.4 |or
accept Ellia Ravenmane: Redemption##30739 |goto 31.3,63.4 |or
|only if not achieved(7287)
step
talk Thelonius##60506
turnin Students of Chi-Ji##30718 |goto 31.3,63.4
turnin Champion of Chi-Ji##30740 |goto 31.3,63.4
only if achieved(7287)
|next "end"
step
talk Fat Long-Fat##60534
|tip He is on the very top of this building.
Let's fight!
Defeat Fat Long-Fat |q 30728/1 |goto 32.0,70.7
|only if haveq(30728)
step
talk Ellia Ravenmane##60530
Let's fight!
Defeat Ellia Ravenmane |q 30725/1 |goto 31.8,71.2
|only if haveq(30725)
step
talk Mindel Sunspeaker##60541
Let's fight!
Defeat Mindel Sunspeaker |q 30735/1 |goto 32.1,69.9
|only if haveq(30735)
step
talk Minh Do-Tan##60532
Let's fight!
Defeat Minh Do-Tan |q 30726/1 |goto 32.0,76.5
|only if haveq(30726)
step
talk Tukka-Tuk##60539
Let's fight!
Defeat Tukka-Tuk |q 30733/1 |goto 34.1,75.1
|only if haveq(30733)
step
talk Ellia Ravenmane##60545
Let's fight!
Defeat Ellia Ravenmane |q 30739/1 |goto 36.4,75.6
|only if haveq(30739)
step
talk Dextrous Izissha##60536
Let's fight!
Defeat Dextrous Izissha |q 30730/1 |goto 31.7,80.3
|only if haveq(30730)
step
talk Fat Long-Fat##60543
Let's fight!
Defeat Fat Long-Fat |q 30737/1 |goto 34.8,82.6
|only if haveq(30737)
step
talk Kuo-Na Quillpaw##60537
Let's fight!
Defeat Kuo-Na Quillpaw |q 30731/1 |goto 36.6,74.8
|only if haveq(30731)
step
talk Ellia Ravenmane##60533
Let's fight!
Defeat Ellia Ravenmane |q 30727/1 |goto 35.2,75.1
|only if haveq(30727)
step
talk Julia Bates##60535
Let's fight!
Defeat Julia Bates |q 30729/1 |goto 28.9,75.5
|only if haveq(30729)
step
talk Huck Wheelbarrow##60540
Let's fight!
Defeat Huck Wheelbarrow |q 30734/1 |goto 27.9,70.3
|only if haveq(30734)
step
talk Yan Quillpaw##60542
Let's fight!
Defeat Yan Quillpaw |q 30736/1 |goto 36.5,76.2
|only if haveq(30736)
step
talk Ellia Ravenmane##60538
Let's fight!
Defeat Ellia Ravenmane |q 30732/1 |goto 34.5,83.3
|only if haveq(30732)
step
talk Thelonius##60544
Let's fight!
Defeat Thelonius |q 30738/1 |goto 28.8,72.4
|only if haveq(30738)
step
talk Thelonius##60506
turnin Ellia Ravenmane##30725 |goto 31.3,63.4 |or
turnin Minh Do-Tan##30726 |goto 31.3,63.4 |or
turnin Ellia Ravenmane: Rematch##30727 |goto 31.3,63.4 |or
turnin Fat Long-Fat##30728 |goto 31.3,63.4 |or
turnin Julia Bates##30729 |goto 31.3,63.4 |or
turnin Dextrous Izissha##30730 |goto 31.3,63.4 |or
turnin Kuo-Na Quillpaw##30731 |goto 31.3,63.4 |or
turnin Ellia Ravenmane: Revenge##30732 |goto 31.3,63.4 |or
turnin Tukka-Tuk##30733 |goto 31.3,63.4 |or
turnin Huck Wheelbarrow##30734 |goto 31.3,63.4 |or
turnin Mindel Sunspeaker##30735 |goto 31.3,63.4 |or
turnin Yan Quillpaw##30736 |goto 31.3,63.4 |or
turnin Fat Long-Fat: Rematch##30737 |goto 31.3,63.4 |or
turnin Thelonius##30738 |goto 31.3,63.4 |or
turnin Ellia Ravenmane: Redemption##30739 |goto 31.3,63.4 |or
|only if not achieved(7287)
|next "end"
step
label "serpent"
talk Elder Sage Tai-Feng##57324
turnin Attack At The Temple of the Jade Serpent##31377 |goto The Jade Forest 53.9,61.9 |only if haveq(31377)
accept Arrows of Fortune##30065 |goto The Jade Forest 53.9,61.9 |or
accept Hidden Power##30066 |goto The Jade Forest 53.9,61.9 |or
accept The Darkness Around Us##30006 |goto The Jade Forest 53.9,61.9 |or
Click here when no more quests are available |confirm
step
talk Elder Sage Storm-Sing##57319
accept Behind the Masks##30063 |goto 53.9,61.9 |or
accept Saving the Sutras##30064 |goto 53.9,61.9 |or
Click here when no more quests are available |confirm
stickystart "defendersarrow"
stickystart "shainvaders"
stickystart "maskofdoubt"
step
click Ancient Sutra##210086
collect 6 Ancient Sutra##77432 |q 30064/1 |goto 56.5,53.6
|only if haveq(30064)
step
label "defendersarrow"
click Defender's Arrow##210087 |only if haveq(30065)
collect 10 Defender's Arrow##77452+ |q 30065/1 |goto 55.3,57.4 |only if haveq(30065)
click Yu'lon Guardian##57400+, Yu'lon Adept##57316+ |only if haveq(30066)
Use the Stack of Mantras |use Stack of Mantras##77475 |only if haveq(30066)
Deliver #6# Ancient Mantras |q 30066/1 |goto 55.3,57.4 |only if haveq(30066)
step
label "maskofdoubt"
kill Final Doubt##57330+, Lingering Doubt##57396+ |only if haveq(30063)
collect 8 Mask of Doubt##77419+ |q 30063/1 |only if haveq(30063) |goto 54.5,54.1
|only if haveq(30063)
step
label "shainvaders"
kill Final Doubt##57330+, Lingering Doubt##57396+, Shadow Of Doubt##57389
Kill #15# Sha Invaders |q 30006/1 |goto 53.4,54.2
|only if haveq(30006)
step
talk Elder Sage Storm-Sing##57319
turnin Behind the Masks##30063 |goto 53.9,61.9 |only if haveq(30063)
turnin Saving the Sutras##30064 |goto 53.9,61.9 |only if haveq(30064)
step
talk Elder Sage Tai-Feng##57324
turnin Arrows of Fortune##30065 |goto The Jade Forest 53.9,61.9 |only if haveq(30065)
turnin Hidden Power##30066 |goto The Jade Forest 53.9,61.9 |only if haveq(30066)
turnin The Darkness Around Us##30006 |goto The Jade Forest 53.9,61.9 |only if haveq(30006)
accept Flames of the Void##30068 |goto The Jade Forest 53.9,61.9 |or
accept The Shadow of Doubt##30067 |goto The Jade Forest 53.9,61.9 |or
Click here when no more quests are available |confirm
step
kill Shadow of Doubt##57389 |q 30067/1 |goto 57.5,62.3
|only if haveq(30067)
step
clicknpc War Serpent##57871
Ride the War Serpent |invehicle |goto 54.1,60.9
|only if haveq(30068)
step
Fly around the Jade Temple Grounds and extinguish Void Flames
|tip They look like swirling black fire.
If you run out of water you can refill it in the river here |goto 53.9,58.0
|tip Look for small light-blue patches of swirling water and then fly over them.
Douse #6# Void Flames |q 30068/1
|only if haveq(30068)
step
Click the Leave Vehicle button |outvehicle |goto 53.9,61.9
|only if haveq(30068)
step
talk Elder Sage Tai-Feng##57324
turnin The Shadow of Doubt##30067 |goto 53.9,61.9
turnin Flames of the Void##30068 |goto 53.9,61.9
|next "end"
step
label "tiger"
talk Xuen##60968
turnin Trial At The Temple of the White Tiger##31381 |goto Kun-Lai Summit 67.2,55.9
|only if haveq(31381)
step
talk Xuen##60968
accept Round 1: Brewmaster Chani##30879 |goto 67.2,55.9 |or
accept Round 1: The Streetfighter##30880 |goto 67.2,55.9 |or
accept Contending With Bullies##31517 |goto 67.2,55.9
|tip This quest may not be available.
Click here when no more quests are available |confirm
step
kill Shonuf##64757 |q 31517/1 |goto 71.1,55.8
|only if haveq(31517)
step
talk Brewmaster Chani##60996
|tip Challenge her.
|tip She has a lot of health but isn't too difficult to kill. She will toss Bitter Brew on the ground, so kite her out of it. She also has an AoE cone called The Steamer, you can avoid this by either moving out of it, or interrupting the channel.
Defeat Brewmaster Chani |q 30879/1 |goto 71.0,51.8
|only if haveq(30879)
step
talk Lun-Chi##60994
|tip Challenge her.
Defeat The Streetfighter |q 30880/1 |goto 71.0,51.8
|only if haveq(30880)
step
talk Xuen##60968
turnin Round 1: Brewmaster Chani##30879 |goto 70.3,51.3 |only if haveq(30879)
turnin Round 1: The Streetfighter##30880 |goto 70.3,51.3 |only if haveq(30880)
turnin Contending With Bullies##31517 |goto 70.3,51.3 |only if haveq(31517)
accept Round 2: Clever Ashyo & Ken-Ken##30881 |goto 70.3,51.3 |or
accept Round 2: Kang Bramblestaff##30882 |goto 70.3,51.3 |or
step
talk Kang Bramblestaff##60978
|tip Challenge him.
Defeat Kang Bramblestaff |q 30882/1 |goto 71.7,45.4
|only if haveq(30882)
step
talk Clever Ashyo##60980
|tip Challenge him.
|tip Kill Ken-Ken first as he is the weaker of the two. He will cast Ken-Ken Rampage causing him to whirlwind, when he does momentarily switch to Ashyo. Ashyo will summon Water Spouts and Healing Spheres. The spheres are top priority and the Spouts are easily avoidable.
Defeat Clever Ashyo |q 30881/1 |goto 71.7,45.4
Defeat Ken-Ken |q 30881/2 |goto 71.7,45.4
|only if haveq(30881)
step
talk Xuen##60968
turnin Round 2: Clever Ashyo & Ken-Ken##30881 |goto 71.8,44.9 |only if haveq(30881)
turnin Round 2: Kang Bramblestaff##30882 |goto 71.8,44.9 |only if haveq(30882)
accept Round 3: The Wrestler##30883 |goto 71.8,44.9 |or
accept Round 3: Master Boom Boom##30885 |goto 71.8,44.9 |or
step
talk Master Boom Boom##61013
|tip Challenge him.
|tip He will constantly toss Dynamite at you that will put a landmine on the ground if you walk over it. When he starts the fuse on his boom box, be out of the middle of the arena by the time it finishes.
Defeat Master Boom Boom |q 30885/1 |goto 66.7,46.5
|only if haveq(30885)
step
talk The Wrestler##60997
|tip Challenge him.
|tip Click on the chairs around the room to increase your damage and cause The Wrestler to be stunned for 10 seconds. If you space these out enough, you could potentially kill him before he can hurt you. Periodically he will grapple and throw you, it does not do much damage but it prevents control of your character. Finally, he uses a Sling Sweat ability which puts a blue puddle on the ground that reduces your movement speed and does damage.
Defeat The Wrestler |q 30883/1 |goto 66.7,46.5
|only if haveq(30883)
step
talk Xuen##60968
turnin Round 3: The Wrestler##30883 |goto 66.4,46.3 |only if haveq(30883)
turnin Round 3: Master Boom Boom##30885 |goto 66.4,46.3 |only if haveq(30885)
accept Round 4: The P.U.G.##30907 |goto 66.4,46.3 |or
accept Round 4: Master Windfur##30902 |goto 66.4,46.3 |or
step
talk Master Windfur##61012
|tip Challenge him.
Defeat Master Windfur |q 30902/1 |goto 68.8,43.8
|only if haveq(30902)
step
Enter the building |goto 69.0,43.7 < 15
talk Healiss##61004
|tip Challenge him.
|tip Defeat the P.U.G. by first kill Healiss. He will attempt to run away and only has one healing spell that he may try to use, it is called Jungle Remedy, save Interrupts and Stuns for this ability. Next deal with Tankiss, he has more health but is a greater threat than Hackiss, his only ability is called Ground Pummel which will knock you can and deal some damage. Finally kill Hackiss, his only ability is Backstab. This will leave a small bleed on you.
Defeat Hackiss |q 30907/1
Defeat Healiss |q 30907/2
Defeat Tankiss |q 30907/3
|only if haveq(30907)
step
talk Xuen##60968
turnin Round 4: The P.U.G.##30907 |goto 68.5,44.6
turnin Round 4: Master Windfur##30902 |goto 68.5,44.6
step
talk Lin Tenderpaw##60981
accept The Torch of Strength##31492 |goto Kun-Lai Summit 68.5,56.5
Click here if this quest is unavailable |confirm |next "end"
step
For this quest you must go up the path, avoiding all of the tornadoes that roam around. If you mount, or touch a tornado, you will have to go back to Lin and start the quest over.
confirm
|only if haveq(31492)
step
Enter the first temple |goto 69.6,53.0 < 10 |walk
Enter the second temple |goto 66.9,51.2 < 10 |walk
click The Strong Brazier##214628
Light the Strong Brazier |q 31492/1 |goto 68.6,46.6
|only if haveq(31492)
step
talk Lin Tenderpaw##60981
turnin The Torch of Strength##31492 |goto Kun-Lai Summit 68.5,56.5
|next "end"
|only if haveq(31492)
step
End of section |next "end"
step
label "ox"
talk Ogo the Elder##61580
turnin Defense At Niuzao Temple##31383 |goto Townlong Steppes 39.35,62.30 |only if haveq(31383)
accept The Siege Swells##30956 |goto Townlong Steppes 39.35,62.30 |or
accept The Unending Siege##30952 |goto Townlong Steppes 39.35,62.30 |or
step
talk Ogo the Younger##61581
accept The Big Guns##30959 |goto 39.34,62.21 |or
accept A Blade is a Blade##30954 |goto 39.34,62.21 |or
step
talk Yak-Keeper Kyana##61585
accept Fallen Sentinels##30953 |goto 39.15,62.07
If this quest is unavailable today, click here |confirm
step
talk Sentinel Commander Qipan##61584
accept The Overwhelming Swarm##30957 |goto 39.41,61.96
Click here when no more quests are available |confirm
step
talk High Adept Paosha##61583
accept In Battle's Shadow##30958 |goto 38.95,62.44 |or
accept Paying Tribute##30955 |goto 38.95,62.44 |or
step
Use your Pot of Fire on Sra'thik War Wagons |use Pot of Fire##82346 |only if haveq(30959)
Cause #3# Sri'thik War Wagons to explode |q 30959/1 |goto 40.99,60.35 |only if haveq(30959)
kill Sra'thik Swiftclaw##61508+, Sra'thik Warcaller##61502+, Sra'thik Fleshrender##61514+ |only if haveq(30956)
Kill #25# Sri'thik attackers |q 30956/1 |goto 40.99,60.35 |only if haveq(30956)
kill Sra'thik Kunchong##61509+
Kill #4# Kuchong |q 30957/1 |goto 40.99,60.35 |only if haveq(30957)
click Loose Brick##211752 |only if haveq(30958)
Throw #10# Loose Stones up to Niuzao Stonemasons |q 30958/1 |goto 40.99,60.35 |only if haveq(30958)
clicknpc Wounded Niuzao Sentinel##61570 |only if haveq(30953)
Use your Yak's Milk Flask on Wounded Niuzao Sentinels |use Yak's Milk Flask##82381 |only if haveq(30953)
|tip Normal healing spells will also heal the Sentinels if you have them. |only if haveq(30953)
Heal #8# Niuzao Sentinels |q 30953/1 |goto 40.99,60.35 |only if haveq(30953)
click Niuzao Food Supply##212133 |only if haveq(30955)
Gather #6# Food for Niuzao |q 30955/1 |goto 40.99,60.35 |only if haveq(30955)
kill Sra'thik Warcaller##61502+, Sra'thik Swiftclaw##61508+ |only if haveq(30952)
Kill #12# Sra'thik attackers |q 30952/1 |goto 40.99,60.35 |only if haveq(30952)
click Sra'thik Weapon##211766 |only if haveq(30954)
|tip After you kill a Sra'thik, a weapon may drop. |only if haveq(30954)
collect 10 Sra'thik Weapon##82353 |q 30954/1 |goto 40.99,60.35 |only if haveq(30954)
step
talk Ogo the Elder##61580
turnin The Siege Swells##30956 |goto 39.35,62.30 |only if haveq(30956)
turnin The Unending Siege##30952 |goto 39.35,62.30 |only if haveq(30952)
step
talk Ogo the Younger##61581
turnin The Big Guns##30959 |goto 39.34,62.21 |only if haveq(30959)
turnin A Blade is a Blade##30954 |goto 39.34,62.21 |only if haveq(30954)
step
talk Yak-Keeper Kyana##61585
turnin Fallen Sentinels##30953 |goto 39.15,62.07 |only if haveq(30953)
turnin In Battle's Shadow##30958 |goto 39.15,62.07 |only if haveq(30958)
step
talk Sentinel Commander Qipan##61584
turnin The Overwhelming Swarm##30957 |goto 39.41,61.96
|only if haveq(30957)
step
talk High Adept Paosha##61583
turnin Paying Tribute##30955 |goto 38.95,62.44
|only if haveq(30955)
step
label "end"
talk Sage Lotusbloom##64001
buy 1 Grand Commendation of the August Celestials##93224 |n
Use the Commendation of the August Celestials you just purchased |complete ZGV:GetReputation("August Celestials").hasBonus |goto Vale of Eternal Blossoms 62.8,23.4 |use Grand Commendation of the August Celestials##93224
|only if rep("August Celestials")>=Revered
step
You have reached the end of this daily guide
Click here to return to the start of the dailies |next "startaug" |confirm
step
label "end"
This is the end of the current guide. Click here to go back to the beginning. |confirm |next "startaug"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Emperor Shaohao",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Emperor Shaohao faction.",
achieveid={8715},
patch='50400',
},[[
step
Click the _Quest Accept_ Box:
accept A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms 61.7,20.4
|tip If you have already been to Timeless Isle, this quest will not be available.
Click here if this quest is unavailable |confirm
step
talk Chromie##73691
|tip On the upper balcony of the palace.
turnin A Flash of Bronze...##33230 |goto Vale of Eternal Blossoms 80.65,33.17 |only if haveq(33230)
accept Journey to the Timeless Isle##33232 |goto 80.65,33.17
step
use Curious Bronze Timepiece##104110
You will be teleported to the Timeless Isle |goto Timeless Isle/0 21.3,39.5 |noway |c
step
talk Chi-Ro the Skytamer##71939 |only Horde
fpath Huojin Landing |goto 21.9,39.8 |only Horde
step
talk Watcher Alundra##73353
turnin Journey to the Timeless Isle##33232 |goto 22.0,41.0
accept Time Keeper Kairoz##33156 |goto 22.0,41.0
step
talk Kairoz##72870
turnin Time Keeper Kairoz##33160 |goto 34.5,53.8
accept A Timeless Tour##33161 |goto 34.5,53.8
accept Time In Your Hands##33228 |goto 34.5,53.8
step
Explore The Misty Strand |q 33161/4 |goto 24.6,31.8
step
Explore Cavern of Lost Spirits |q 33161/1 |goto 42.9,41.9
step
Explore Red Stone Run |q 33161/6 |goto 50.9,46.6
step
Explore Firewalkers' Path |q 33161/3 |goto 50.4,78.5
step
Explore Old Pi'jiu |q 33161/5 |goto 37.5,75.5
step
Explore Croaking Hollow |q 33161/2 |goto 60.5,72.6
step
talk Kairoz##72870
turnin A Timeless Tour##33161 |goto 34.5,53.8
accept The Essence of Time##33336 |goto 34.5,53.8
step
kill Brilliant Windfeather##72762+, Windfeather Chick##71143+
collect Epoch Stone##105715 |q 33336/1 |goto 32.2,51.9
step
talk Kairoz##72870
turnin The Essence of Time##33336 |goto 34.5,53.5
step
talk Mistweaver Ai##73305
Meet Mistweaver Ai |q 33228/2 |goto 42.8,55.7
step
talk Mistweaver Ku##73306
Meet Mistweaver Ku |q 33228/3 |goto 42.8,54.7
step
kill Ironfur Herdling##72842+, Ironfur Grazer##72843+, Ironfur Great Bull##72844+
kill Windfeather Chick##71143+, Windfeather Nestkeeper##72761+, Brilliant Windfeather##72762+
earn 1000 Timeless Coin##777 |q 33228/1 |goto 43.9,55.4
step
talk Kairoz##72870
turnin Time In Your Hands##33228 |goto 34.6,53.7
accept Hints From The Past##33332 |goto 34.6,53.7
accept The Last Emperor##33335 |goto 34.6,53.7
step
talk Mistweaver Ai##73305
buy Time-Worn Journal##103977 |goto 42.8,55.6
step
talk Emperor Shaohao##73303
Speak with Emperor Shaohao |q 33335/1 |goto 42.9,55.2
step
talk Emperor Shaohao##73303
turnin The Last Emperor##33335 |goto 42.9,55.2
accept Timeless Nutriment##33340 |goto 42.9,55.2
step
click Ripe Crispfruit##221689
Consume a Timeless Nutriment |q 33340/1 |goto 42.8,53.3
step
talk Emperor Shaohao##73303
turnin Timeless Nutriment##33340 |goto 42.9,55.2
accept Wayshrines Of The Celestials##33341 |goto 42.9,55.2
step
Follow the path to activate one of the Shrines.
map Timeless Isle
path	30.1,45.7	26.8,52.2	30.5,62.6
path	27.9,72.0	37.4,74.4	49.7,70.4
path	66.1,72.3	63.9,50.7	35.0,29.6
click Celestial Shrine
|tip They are on a 10-15 minute cooldown, so just keep running around until you find an active one.
Receive a Blessing of the Celestials |q 33341/1
step
talk Emperor Shaohao##73303
turnin Wayshrines Of The Celestials##33341 |goto 42.9,55.2
step
talk Kairoz##72870
turnin Hints From The Past##33332 |goto 34.5,53.8
accept Timeless Treasures##33333 |goto 34.5,53.8
step
click Moss-Covered Chest##223089
Find the Hidden Treasure |q 33333/1 |goto 46.8,46.8
step
talk Kairoz##72870
turnin Timeless Treasures##33333 |goto 34.6,53.8
step
From this point, you have to grind mobs to earn the remaining reputation with _Emperor Shaohao_.
|confirm
step
kill Ordon Fire-Watcher##72894+, Ordon Candlekeeper##72875+, Ordon Oathguard##72892+ |goto Timeless Isle 52.6,76.9
|complete rep('Emperor Shaohao')==Exalted
step
Congratulations, you are now _Exalted_ with _Emperor Shaohao_!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Forest Hozen",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Forest Hozen faction.",
},[[
step
For this achievement you will need to complete a specific quest line that becomes available whilst doing The Jade Forest leveling zone
Check out our Jade Forest guide to accomplish this |next "Leveling Guides\\Pandaria (10-50)\\The Jade Forest (10-50)" |confirm |or
Gain Exalted reputation with the Forest Hozen |complete rep("Forest Hozen")>=Exalted |or
step
Congratulations!
You are now exalted with the "Pearlfin Jinyu."
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\The Golden Lotus",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Golden Lotus faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Golden Lotus') < Exalted end,
achieveid={7315, 6546},
patch='50004',
},[[
step
Proceeding to Pre-Quests |next |only if default
Proceeding to The Golden Lotus Dailies |next "dailies" |only if completedq(30638)
step
talk Wanderer Chu##64521
accept Temple of the White Tiger##31393 |goto Kun-Lai Summit 72.0,94.2
step
talk Sunwalker Dezco##64542
turnin Temple of the White Tiger##31393 |goto Kun-Lai Summit 68.7,43.0
accept A Celestial Experience##31395 |goto Kun-Lai Summit 68.7,43.0
step
Talk to Xuen |q 31395/1
kill Spirit of Violence##64656
Pass the First Test |q 31395/2 |goto Kun-Lai Summit 68.9,42.8
kill Spirit of Anger##64684
Pass the Second Test |q 31395/3 |goto Kun-Lai Summit 68.9,42.8
kill Spirit of Hatred##64742
Pass the Third Test |q 31395/4 |goto Kun-Lai Summit 68.9,42.8
step
talk Sunwalker Dezco##64542
turnin A Celestial Experience##31395 |goto Kun-Lai Summit 68.7,43.0
accept A Witness to History##31511 |goto Kun-Lai Summit 68.7,43.0
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Kun-Lai Summit 56.0,91.4
step
talk Madam Vee Luo##62996
accept A Witness to History##31511 |goto Shrine of Two Moons/1 69.3,48.9
step
talk Sunwalker Dezco##64853
Tell him there is only one way to find out. |q 31511/1 |goto Vale of Eternal Blossoms 56.1,91.6
step
talk Madam Vee Luo##62996
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 69.2,49.0
step
label "dailies"
talk Kun Autumnlight##58920
accept Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.4,71.6
accept Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.4,71.6
noquest
step
talk Anji Autumnlight##58919
accept The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.4,71.6
accept The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.4,71.6
noquest
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
accept The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.1,75.6
step
talk Yumi Goldenpaw##58743
accept Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.5,71.6
accept Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.5,71.6
noquest
step
talk Kelari Featherfoot##58704
accept Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.1,63.5
step
talk Kelari Featherfoot##58704
Tell him: _"Let's roll."_ |q 30261/1 |goto Vale of Eternal Blossoms/0 18.1,63.5
only if haveq(30261)
step
Hold down your right mouse button to help you maneuver through the course.
|tip Grab as many speed boosts as you can to make it go quicker.
Complete the Serpent's Spine Roll Course. |q 30261/2
only if haveq(30261)
step
talk Kelari Featherfoot##58704
turnin Roll Club: Serpent's Spine##30261 |goto Vale of Eternal Blossoms/0 18.1,63.5
only if haveq(30261)
step
kill Shado-Pan Trainee##58992+
Defeat 20 Shado-Pan Trainees. |q 30306/1 |goto Vale of Eternal Blossoms 19.7,74.2
only if haveq(30306)
step
Stay within the circle and avoid the posts with blades surrounding them and the running pandas.
Live through the Survival Ring for 90 seconds |q 30242/1 |goto Vale of Eternal Blossoms 19.2,67.5
only if haveq(30242)
step
Stay within the circle and avoid getting hit by the fireworks.
Live through the Survival Ring for 90 seconds |q 30240/1 |goto 19.2,67.5
only if haveq(30240)
step
clicknpc Setting Sun Turret##64336 |goto Vale of Eternal Blossoms 5.4,72.3
Mount a turret |invehicle |c
|tip It's on the upper level of the tower here.
only if haveq(30266)
step
kill 30 Krik'thik Swarmer##63973+ |q 30266/1
only if haveq(30266)
step
Click the Leave Vehicle button |outvehicle
only if haveq(30266)
step
clicknpc Hot Oil Cauldron##64369
Use the abilities on your hotbar to kill 80 Krik'thik Hivelings |q 30243/1 |goto Vale of Eternal Blossoms 3.9,51.7
|tip Use the Ignitable Oil Bucket first, followed by the Shado-Pan Torch.
step
Traverse the following rooms by only stepping on the _green_ or _red_ tiles, other tiles will harm you. The safe tile changes every day but will be one of the two. |goto Vale of Eternal Blossoms 22.4,26.9
confirm
only if haveq(30280) or haveq(30277)
step
kill Milau##64965 |q 30280/1 |goto Vale of Eternal Blossoms/1 53.9,68.3
|tip Milau has several deadly abilities. He will cast a Lightning Breath in any direction, do not be in front of him when he does this. He also starts casting Lightning Pools, constantly move until he is done. Periodically he will pull you to the middle of the room and cast Lightning Sweep. While he is casting get as much distance on him as you can.
only if haveq(30280)
step
click Deactivate Final Spirit Wall##214477
Deactivate the Final Spirit Wall |q 30277/1 |goto Vale of Eternal Blossoms/1 42.1,27.2
only if haveq(30277)
step
click Ancient Guo-Lai Artifact##214394
collect Ancient Guo-Lai Artifact##87790 |q 30277/2 |goto 49.4,30.6
only if haveq(30277)
step
talk Yumi Goldenpaw##58743
turnin Survival Ring: Blades##30242 |goto Vale of Eternal Blossoms/0 18.5,71.5
turnin Survival Ring: Flame##30240 |goto Vale of Eternal Blossoms/0 18.5,71.5
step
talk Hai-Me Heavyhands##58962
|tip He walks around the Trainees in this area.
turnin The Battle Ring##30306 |goto Vale of Eternal Blossoms/0 20.1,75.6
step
talk Anji Autumnlight##58919
turnin The Thunder Below##30280 |goto Vale of Eternal Blossoms/0 21.4,71.6
turnin The Crumbling Hall##30277 |goto Vale of Eternal Blossoms/0 21.4,71.6
step
talk Kun Autumnlight##58920
turnin Mantid Under Fire##30243 |goto Vale of Eternal Blossoms/0 21.4,71.6
turnin Bloodied Skies##30266 |goto Vale of Eternal Blossoms/0 21.4,71.6
step
label "end"
You have reached the end of the guide for today
Click here to go back to the beginning of the dailies |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Huojin Pandaren",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Huojin Pandaren faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Huojin Pandaren') < Exalted end,
achieveid={8206},
patch='50200',
},[[
step
talk Turtlemaster Odai##66022
buy Huojin Tabard##83080 |goto Orgrimmar 69.8,41.1
Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080 |future
You can run any dungeon that grants experience to gain reputation for the Huojin Pandaren
Become Exalted with Huojin Pandaren |complete rep('Huojin Pandaren')==Exalted
step
Congratulations, you have reached exalted with the Huojin Pandaren!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\The Klaxxi",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Klaxxi faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Klaxxi') < Exalted end,
achieveid={6545},
patch='50004',
},[[
step
This guide requires that you have completed all of the quests in the Dread Wastes
The following questlines are required to access all of the possible dailies for the Klaxxi
A Cry From Darkness |achieve 6540/1
Falling to Pieces |achieve 6540/2
Blood of Ancients |achieve 6540/3
Mazu's Bounty |achieve 6540/4
Please refer to Zygor's Leveling and Loremaster guides for assistance in completing these questlines
Click here to go to Zygor's Leveling and Loremaster guides for assistance in completing these questlines |confirm |next "Leveling Guides\\Pandaria (10-50)\\Dread Wastes (30-50)"
confirm
step
label "klaxxi start"
talk Kil'ruk the Wind-Reaver##62538
accept Dreadspinner Extermination##31231 |goto Dread Wastes 55.0,35.9 |or 2
accept Nope Nope Nope##31235 |goto Dread Wastes 55.0,35.9 |or 2
accept Culling the Swarm##31109 |goto Dread Wastes 55.0,35.9 |or 2
accept Mistblade Destruction##31267 |goto Dread Wastes 55.0,35.9 |or 2
accept Eradicating the Zan'thik##31111 |goto Dread Wastes 55.0,35.9 |or 2
accept Vess-Guard Duty##31505 |goto Dread Wastes 55.0,35.9 |or 2
noquest
step
talk Korven the Prime##62180
accept An Ancient Empire##31232 |goto 54.3,36.1 |or 2
accept Sap Tapping##31233 |goto 54.3,36.1 |or 2
accept Sampling the Empire's Finest##31496 |goto 54.3,36.1 |or 2
accept The Fight Against Fear##31270 |goto 54.3,36.1 |or 2
accept The Scale-Lord##31269 |goto 54.3,36.1 |or 2
accept Meltdown##31507 |goto 54.3,36.1 |or 2
noquest
step
talk Rik'kal the Dissector##65253
accept Bad Genes##31271 |goto 54.3,35.9 |or 2
accept Wing Clip##31502 |goto 54.3,35.9 |or 2
accept Shortcut to Ruin##31503 |goto 54.3,35.9 |or 2
accept Putting An Eye Out##31234 |goto 54.3,35.9 |or 2
accept Specimen Request##31508 |goto 54.3,35.9 |or 2
accept Fear Takes Root##31509 |goto 54.3,35.9 |or 2
noquest
only if completedq(31606)
step
talk Kaz'tik the Manipulator##63758
accept Brain Food##31238 |goto 54.3,35.8 |or 2
accept Sonic Disruption##31487 |goto 54.3,35.8 |or 2
accept Free From Her Clutches##31494 |goto 54.3,35.8 |or 2
accept A Little Brain Work##31268 |goto 54.3,35.8 |or 2
accept Kunchong Treats##31024 |goto 54.3,35.8  |or 2
accept Rampage Against the Machine##31808 |goto 54.3,35.8 |or 2
accept Shackles of Manipulation##31506 |goto 54.3,35.8 |or 2
noquest
step
talk Xaril the Poisoned Mind##62151
accept Dark Skies##31216 |goto 54.9,36.2
noquest
only if completedq(31211)
step
talk Hisek the Swarmkeeper##63785
accept Debugging the Terrace##31237 |goto 54.8,36.2 |or
accept Quiet Now##31510 |goto 54.8,36.2 |or
accept Infection##31272 |goto 54.8,36.2 |or
accept Ordnance Disposal##31504 |goto 54.8,36.2 |or
noquest
only if completedq(31439)
step
talk Malik the Unscathed##62774
accept The Empress' Gambit##31959 |goto 55.0,35.4
only if rep("The Klaxxi")>=Exalted
step
talk Kil'ruk the Wind-Reaver##62538
Tell him _"<Please Fly me to the Terrace of Gurthan.>"_ |invehicle |goto 55.1,35.9
only if haveq(31237) or haveq(31231)
step
Kill creatures until you get the buff:
Pheremone Tracking |havebuff 132284
Locate and kill Eye's of the Empress
|tip Start looking for red mist on the groud first.
kill 6 Eye of the Empress##63783+ |q 31237/1 |goto 67.9,24.3
only if haveq(31237)
step
In order to do the 'hidden' quest for this area, you must have at least one other person to help you
confirm |future |q 31677
only if haveq(31237) or haveq(31231)
step
Around this location you should be able to see a _green rune_ and a _red rune_
One person will need to _/lay_ on the _green rune_, while the other must _/kneel_ at the _red rune_
This will cause a level 30-35 Elite to spawn, depending on your level
This daily is active for everyone in the area, so you should find some help easily
kill Warlord Gurthan##65502
collect Ashes of Warlord Gurthan##88715 |future |q 31677 |goto 66.2,31.8
only if haveq(31237)
step
Click the _Ashes of Warlord Gurthan_ in your bags |use Ashes of Warlord Gurthan##88715
accept The Warlord's Ashes##31677
only if haveq(31237) or haveq(31677)
step
talk Xaril the Poisoned Mind##62151
Tell him _"I am ready to fly, Xaril."_ |q 31216/1 |goto 54.9,36.2
Ride Xaril the Poisoned Mind |invehicle |only if haveq(31216)
only if haveq(31216)
step
Use the _Venom Bomb_ to kill the small enemies
Use the _Paralyzing Syrum_ then immidiately the _Venom Bomb_ to kill the larger enemies
kill 200 Mantid |q 31216/2
kill 3 Kunchong |q 31216/3
only if haveq(31216)
step
Click the Return to Klaxxi'vess button on your action bar |outvehicle
only if haveq(31216)
step
talk Kil'ruk the Wind-Reaver##62538
Ask him to fly you to the Clutches of Shek'zeer |invehicle |goto 55.0,35.9
only if haveq(31109)
step
Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto 38.3,30.3
|tip It's a good idea to land on Karanosh <Kunchong Matriarch>, she drops a daily quest item.
only if haveq(31109)
step
Enter this building |goto 37.0,28.1 < 10
click Central Feeder##215762
Sample the Central Feeder |q 31496/1 |goto 37.4,29.3
only if haveq(31496)
step
Enter this building. |goto 39.3,29.3 < 10
click Northeast Feeder##215700
Sample the Northeast Feeder |q 31496/4 |goto 39.1,30.5
only if haveq(31496)
step
kill Vess-Guard Na'kal##64890 |q 31503/1 |goto 39.3,30.9
only if haveq(31503)
step
Enter this building |goto 38.3,32.0 < 10 |walk
click East Feeder##215761
Sample the East Feeder |q 31496/2 |goto 37.9,33.1
only if haveq(31496)
step
Enter this building |goto 36.3,32.3 < 10 |walk
click North Feeder##215703
Sample the North Feeder |q 31496/3 |goto 37.0,32.8
only if haveq(31496)
step
kill Shek'zeer Needler##64714+
collect 24 Needler Wings##87401 |q 31502/1 |goto 35.2,31.3
only if haveq(31502)
step
kill Greatback Mushan##62029
collect 6 Mushan Tongue##85665 |q 31238/1 |goto 66.0,19.3
You can find more Mushan around here |goto 56.9,23.4
only if haveq(31238)
step
Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807 |only if haveq(31235)
Destroy 20 Dreadspinner Eggs |q 31235/1 |only if haveq(31235) |goto 73.2,22.5
kill 8 Dreadspinner Tender##61981+ |q 31231/1 |only if haveq(31231) |goto 73.2,22.5
only if haveq(31235) or haveq(31231)
step
click Gurthani Tablet##213314
collect 8 Gurthani Tablet##85634 |q 31232/1 |goto 68.1,30.0
only if haveq(31232)
step
kill Mire Beast##63731+
collect 1 Pristine Mire Beast Eye## |q 31234/1 |goto 67.7,37.1
only if haveq(31234)
step
clicknpc Amber Tap##63740
|tip These are located on trees. Look for Sapfly packs to find these easier.
click Amber Pot##213319
collect 6 Amber Sap##85664 |q 31233/1 |goto 66.6,43.8
only if haveq(31233)
step
click Pheromone Mine##214964
Disable 8 Pheromone Mines |q 31504/1 |goto 42.0,33.7
You can find more mines here |goto 48.1,31.4
only if haveq(31504)
step
Use the Sonic Disruption Fork on Dread Kunchong. |use Sonic Disruption Fork##87394 |only if haveq(31487)
kill 4 Dread Kunchong##64717 |q 31487/1 |only if haveq(31487) |goto 44.9,35.6
kill 6 Shek'zeer Manipulator##64720 |q 31487/2 |only if haveq(31487) |goto 44.9,35.6
click Kunchong Cage##214292 |only if haveq(31494) |goto 44.9,35.6
Free 8 Kunchong Hatchlings |q 31494/1 |only if haveq(31494) |goto 44.9,35.6
only if haveq(31487) or haveq(31494)
step
kill Shek'zeer Swarmborn##62582+, Shek'zeer Needler##64714+, Shek'zeer Bladesworn##62563+, Shek'zeer Clutch-Keeper##64559+
Kill 40 Shek'zeer Mantid |q 31109/1 |goto 44.4,43.0
|tip It's by far fastest to kill the tiny Shek'zeer Swarmborn by the dozen.
only if haveq(31109)
step
kill Karanosh##64724 |tip She wanders around this area, so you may have to search for her.
collect Enormous Kunchong Mandibles##87878
Click the Enormous Kunchong Mandibles in your bags |use Enormous Kunchong Mandibles##87878
accept The Matriarch's Maw##31599 |goto 41.4,33.2
only if haveq(31109)
step
kill 15 Horrorscale Scorpid##62162+ |q 31270/1 |goto 58.6,51.1 |only if haveq(31270)
kill Chillwater Turtle##62160+ |only if haveq(31024)
collect 4 Meaty Turtle Haunch##82869 |q 31024/1 |goto 58.6,51.1 |only if haveq(31024)
only if haveq(31270) or haveq(31024)
stickystart "amberencrusted"
stickystart "infectedwildlife"
step
kill 3 Ik'thik Genemancer##63257+ |q 31271/1 |goto 62.0,65.8
kill 6 Ik'thik Egg-Drone##63176+ |q 31271/2 |goto 62.0,65.8
only if haveq(31271)
step
label "amberencrusted"
Use the Sonic Emitter in your bags on Ik'thik Amberstingers |use Sonic Emitter##85884
kill Ik'thik Amberstinger##63728+
collect 3 Amber-Encrusted Brain##85885 |q 31268/1 |goto 61.4,70.3
only if haveq(31268)
step
label "infectedwildlife"
kill Bluehide Mushan##63729+, Needleback Porcupine##65118+, Bonedust Moth##63725+
|tip Make sure that they have the Infected buff before you attack them. Only wildlife with that buff will count for this quest.
kill 6 Infected wildlife |q 31272/1 |goto 60.7,67.7
only if haveq(31272)
step
Enter the tunnel here |goto 66.8,63.8 < 10 |walk
kill Mistblade Scale-Lord##63179 |q 31269/1 |goto 66.5,66.0
only if haveq(31269)
step
Leave the tunnel |goto 66.8,63.8 < 10 |only if haveq(31269) |walk
kill 6 Mistblade Ripper##61970+ |q 31267/1 |goto 67.2,59.3
only if haveq(31267)
step
talk Kil'ruk the Wind-Reaver##62538
Ask him to fly you to Zan'vess |invehicle |goto 55.1,35.9
only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
step
Use the Sonic Divebomb ability on your new hotbar to land |outvehicle |goto 31,70
only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
step
As you complete quests in this area:
clicknpc Dreadspore Bulbs##69093
Destroy 15 Dreadspore Bulbs |q 31509/1 |n
confirm
only if haveq(31509)
step
kill Kypari Crawler##65231+ |only if haveq(31508)
collect 6 Kyparite Shards##87874 |q 31508/1 |goto 31.5,69.6 |only if haveq(31508)
kill Thought-Bound Miner##64970+ |only if haveq(31506)
collect 6 Zan'thik Shackles##87813 |q 31506/1 |goto 31.5,69.6 |only if haveq(31506)
kill 6 Zan'thik Impaler##64971+ |q 31111/1 |goto 31.5,69.6 |only if haveq(31111)
kill 6 Zan'thik Manipulator##64973+ |q 31111/2 |goto 31.5,69.6 |only if haveq(31111)
only if haveq(31506) or haveq(31111) or haveq(31508)
step
kill Kypa'rak##65229
collect 1 Massive Kyparite Core##87871 |n
Click the Massive Kyparite Core in your bags |use Massive Kyparite Core##87871
accept Kypa'rak's Core##31598 |goto 33.4,61.0
only if haveq(31111) or haveq(31508) or haveq(31506) or haveq(31111) or haveq(31510)
step
kill Vess-Guard Vik'az##64979+ |q 31505/1 |goto 29.1,74.7
only if haveq(31505)
step
kill 6 Zan'thik Amberhusk##64982+ |q 31507/1 |goto 23.0,77.3
only if haveq(31507)
step
All around this area
clicknpc Dreadspore Bulbs##69093
Destroy 15 Dreadspore Bulbs |q 31509/1
only if haveq(31509)
step
click Zan'thik Resonating Crystal##214455
kill Adjunct Sek'ot##64995 |q 31510/1 |goto 24.2,86.2
only if haveq(31510)
step
clicknpc Kovok##63765
Locate Kovok |q 31808/1 |goto 50.8,41.3
only if haveq(31808)
step
Use the abilities on your hotbar to complete your task.
kill Ik'thik Slayer, Ik'thik Kunchong, Ik'thik Warrior
Kill 200 Mantid |q 31808/2
only if haveq(31808)
step
talk Kil'ruk the Wind-Reaver##62538
turnin Dreadspinner Extermination##31231 |goto 55.0,35.9
turnin Nope Nope Nope##31235 |goto 55.0,35.9
turnin Culling the Swarm##31109 |goto 55.0,35.9
turnin Mistblade Destruction##31267 |goto 55.0,35.9
turnin Eradicating the Zan'thik##31111 |goto 55.0,35.9
turnin Vess-Guard Duty##31505 |goto 55.0,35.9
turnin The Warlord's Ashes##31677 |goto 55.0,35.9
step
talk Xaril the Poisoned Mind##62151
turnin Dark Skies##31216 |goto 54.9,36.2
step
talk Hisek the Swarmkeeper##63785
turnin Debugging the Terrace##31237 |goto 54.8,36.2
turnin Quiet Now##31510 |goto 54.8,36.2
turnin Infection##31272 |goto 54.8,36.2
turnin Ordnance Disposal##31504 |goto 54.8,36.2
step
talk Korven the Prime##62180
turnin An Ancient Empire##31232 |goto 54.3,36.1
turnin Sap Tapping##31233 |goto 54.3,36.1
turnin Sampling the Empire's Finest##31496 |goto 54.3,36.1
turnin The Fight Against Fear##31270 |goto 54.3,36.1
turnin The Scale-Lord##31269 |goto 54.3,36.1
turnin Meltdown##31507 |goto 54.3,36.1
step
talk Ambersmith Zikk##64599
turnin Kypa'rak's Core##31598 |goto 55.0,35.4
turnin The Matriarch's Maw##31599 |goto 55.0,35.4
only if haveq(31598) or haveq(31599)
step
talk Rik'kal the Dissector##65253
turnin Bad Genes##31271 |goto 54.3,35.9
turnin Wing Clip##31502 |goto 54.3,35.9
turnin Shortcut to Ruin##31503 |goto 54.3,35.9
turnin Putting An Eye Out##31234 |goto 54.3,35.9
turnin Specimen Request##31508 |goto 54.3,35.9
turnin Fear Takes Root##31509 |goto 54.3,35.9
step
talk Kaz'tik the Manipulator##63758
turnin Brain Food##31238 |goto 54.3,35.8
turnin Sonic Disruption##31487 |goto 54.3,35.8
turnin Free From Her Clutches##31494 |goto 54.3,35.8
turnin A Little Brain Work##31268 |goto 54.3,35.8
turnin Kunchong Treats##31024 |goto 54.3,35.8
turnin Rampage Against the Machine##31808 |goto 54.3,35.8
turnin Shackles of Manipulation##31506 |goto 54.3,35.8
|next |only if rep("The Klaxxi")>=Revered and not completedq(31465)
|next "exalted" |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next "end" |only if default
step
talk Ambersmith Zikk##64599
buy 1 Grand Commendation of the Klaxxi##92522 |n
Use the Commendation of the Klaxxi you just purchased. |complete ZGV:GetReputation("The Klaxxi").hasBonus |use Grand Commendation of the Klaxxi##92522 |goto 55.0,35.6
only if rep("The Klaxxi")>=Revered
step
talk Kil'ruk the Wind-Reaver##62538
accept Beneath The Heart Of Fear##31018 |goto 55.1,35.9
step
Enter this tunnel |goto 29.0,42.4 < 10 |walk
kill Adjunct Ek'vem##62073+ |q 31018/1 |goto 30.7,40.3
step
kill Adjunct Ikkess##62074+ |q 31018/2 |goto 33.4,40.2
step
kill Adjunct Suruz##62075+ |q 31018/3 |goto 33.4,44.3
step
kill Adjunct Tzikzi##62076+ |q 31018/4 |goto 30.7,44.4
step
click Ancient Amber Chunk##212980
Wake Xaril the Poisoned Mind |q 31018/5 |goto 31.9,42.5
step
_Exit_ the tunnel here |goto 29.0,42.4 < 10 |walk
talk Xaril the Poisoned Mind##62151
turnin Beneath The Heart Of Fear##31018 |goto 28.6,42.1
accept Venomous Intent##31208 |goto 28.6,42.1
accept Dark Wings, Dark Things##31209 |goto 28.6,42.1
accept A Shade of Dread##31210 |goto 28.6,42.1
step
kill Ruby Venomtail##63588+, Dread Scarab##63587+
collect 150 Scarab Wing##85572 |q 31209/1 |goto 24.7,41.8
collect 8 Venomous Stinger##85571 |q 31208/1 |goto 24.7,41.8
click Dreadshade##213267
collect 8 Dreadshade##85573 |q 31210/1 |goto 24.7,41.8
You can find more here |goto 26.4,36.4
As well as here |goto 26.2,30.8
step
talk Xaril the Poisoned Mind##62151
turnin Venomous Intent##31208 |goto 28.6,42.1
turnin Dark Wings, Dark Things##31209 |goto 28.6,42.1
turnin A Shade of Dread##31210 |goto 28.6,42.1
step
talk Xaril the Poisoned Mind##62151
accept The Poisoned Mind##31211 |goto 28.6,42.1
step
talk Xaril the Poisoned Mind##62151
Tell him _"I am ready to fly, Xaril."_ |invehicle |q 31211 |goto 28.6,42.1
step
Use the _Venom Syrum_ to kill the small enemies
Use the _Paralyzing Syrum_ then immidiately the _Venom Syrum_ to kill the larger enemies
Speak to Xaril the Poisoned Mind |q 31211/1
kill 200 Mantid |q 31211/2
kill 3 Kunchong |q 31211/3
kill Krik'thik Wingguard##63613+, Ik'thik Warrior##63635+, Ik'thik Slayer##63636+ Dread Behemoth##65513+, Krik'thik Battletank##63625+,
step
talk Xaril the Poisoned Mind##62151
turnin The Poisoned Mind##31211 |goto 54.9,36.2
step
talk Kor'ik##64815
accept Dropping Our Signal##31439 |goto 54.8,34.1
step
Use your Tuning Fork on the Amber Rock |use Klaxxi Tuning Fork##87202
Awaken Hisek the Swarmkeeper |q 31439/1 |goto 56.3,58.2
step
talk Hisek the Swarmkeeper##64672
turnin Dropping Our Signal##31439 |goto 56.3,58.2
accept Corruption Runs Deep##31441 |goto 56.3,58.2
step
kill Kor'ik##64583+ |q 31441/1 |goto 56.2,57.6
step
talk Hisek the Swarmkeeper##64705
turnin Corruption Runs Deep##31441 |goto 56.3,57.6
accept Damage Control##31458 |goto 56.3,57.6
accept Extracting Answers##31465 |goto 56.3,57.6
stickystart "venomcoatdmandible"
step
click Kypari Ik Beacon##214281
Deactivate Kypari Ik Resonating Crystal |q 31458/2 |goto 55.6,47.1
step
label "venomcoatdmandible"
kill 5 Ik'thik Whisperer##64622+ |q 31458/1 |goto 50.5,45.8
kill Ik'thik Swarmborn##64831+
collect 6 Venom-Coated Mandible##87263 |q 31465/1 |goto 50.5,45.8
step
talk Hisek the Swarmkeeper##63785
turnin Damage Control##31458 |goto 54.8,36.2
turnin Extracting Answers##31465 |goto 54.8,36.2
|next |only if rep("The Klaxxi")>=Exalted and not completedq(31612)
|next "end" |only if default
step
label "exalted"
talk Malik the Unscathed##66776
Report to Malik the Unscathed |q 31959/1 |goto 40.4,34.4
step
Click the Auto complete quest box that appears below your minimap:
turnin The Empress' Gambit##31959
accept The Wrath of Shek'zeer##31609
step
While you are completing this quest, you will need to assist your Mantid Swarm in defeating 25 Mantid Subjugates.
confirm
stickystart "mantidsubs"
step
kill Akkolon##66783 |q 31609/1 |goto 44.6,35.2
|tip You will have Paragons waiting in thie area to help you. If Akkolon is not in this location, you will have to wait to allow him to respawn.
step
kill Shox'tik##66784 |q 31609/2 |goto 41.6,39.8
|tip You will have Paragons waiting in thie area to help you. If Shox'tik is not in this location, you will have to wait to allow him to respawn.
step
kill Manifestation of Terror##66785 |q 31609/3 |goto 43.8,29.6
|tip You will have Paragons waiting in thie area to help you. If the Manifestation of Terror is not in this location, you will have to wait to allow it to respawn.
step
label "mantidsubs"
kill 25 Mantid Subjugates |q 31609/4 |goto 43.4,33.0
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Wrath of Shek'zeer##31609 |goto 55.0,35.9
accept Shadow of the Empire##31612 |goto 55.0,35.9
step
Follow Kil'ruk the Wind-Rever into the chamber
Walk with Kil'ruk |q 31612/1
step
Next to you:
talk Kil'ruk the Wind-Reaver##66800
turnin Shadow of the Empire##31612
|next "end"
step
label "end"
This is the end of this guide.
Click here to return to the beginning of the dailies |confirm |next "klaxxi start"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Lorewalkers",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Lorewalkers faction.",
achieveid={6548},
patch='50004',
},[[
step
click The Emperor's Burden - Part 8##213456
achieve The Seven Burdens of Shaohao##6855/8 |goto Vale of Eternal Blossoms 67.78,44.19
step
click Always Remember##214125
achieve What is Worth Fighting For##6858/2 |goto Vale of Eternal Blossoms 52.9,68.6
step
click The Thunder King##214136
achieve The Dark Heart of the Mogu##6754/4 |goto Vale of Eternal Blossoms 40.2,77.5
step
click Together, We Are Strong##214126
achieve What is Worth Fighting For##6858/4 |goto Vale of Eternal Blossoms 26.6,21.5
step
click Trapped in a Strange Land##214120
achieve The Song of the Yaungol##6847/4 |goto Townlong Steppes 84.1,72.9
step
click Dominance##214123
achieve The Song of the Yaungol##6847/2 |goto Townlong Steppes 65.4,50.0
step
click The Emperor's Burden - Part 5##213445
achieve The Seven Burdens of Shaohao##6855/5 |goto Townlong Steppes 37.8,62.9
step
Enter the cave here |goto Dread Wastes 53.6,15.9 |walk
click Amber##214131
achieve Heart of the Mantid Swarm##6857/3 |goto 52.5,10.1
step
click The Empress##214132
achieve Heart of the Mantid Swarm##6857/4 |goto Dread Wastes 35.5,32.6
step
click Cycle of the Mantid##214129
achieve Heart of the Mantid Swarm##6857/1 |goto Dread Wastes 48.4,32.8
step
click Mantid Society##214130
achieve Heart of the Mantid Swarm##6857/2 |goto Dread Wastes 59.9,55.1
step
click The Deserters##213500
achieve Between a Saurok and a Hard Place##6716/3 |goto Dread Wastes 67.4,60.8
step
click Pandaren Fighting Tactics##214124
achieve What is Worth Fighting For##6858/1 |goto Valley of the Four Winds 18.8,31.7
step
click The Birthplace of Liu Lang##214111
achieve Ballad of Liu Lang##6856/1 |goto Valley of the Four Winds 20.3,55.9
step
click The Wondering Widow##
achieve Ballad of Liu Lang##6856/3 |goto Valley of the Four Winds 34.6,63.9
step
click The Last Stand##213330
achieve Between a Saurok and a Hard Place##6716/4 |goto Krasarang Wilds 32.8,29.4
step
click Origins##215782
achieve Fish Tales##6846/3 |goto Krasarang Wilds 30.5,38.5
step
Enter the Temple here |goto Krasarang Wilds 40.4,51.7 |walk
Go up the stairs |goto 41.2,55.8 |walk
click The Emperor's Burden - Part 4##213422
achieve The Seven Burdens of Shaohao##6855/4 |goto 40.5,56.6
step
Enter the cave here |goto Krasarang Wilds 52.2,86.3 |walk
click Hozen Maturity##211993
achieve Hozen in the Mist##6850/2 |goto Krasarang Wilds 52.4,87.6
step
click The Lost Dynasty##213332
achieve The Dark Heart of the Mogu##6754/2 |goto Krasarang Wilds 51.0,31.7
step
click Waiting for the Turtle##215765
achieve Ballad of Liu Lang##6856/4 |goto Krasarang Wilds 72.2,31.1
step
click A Most Famous Bill of Sale##213460
achieve Ballad of Liu Lang##6856/2 |goto Valley of the Four Winds 55.1,47.2
step
click Waterspeakers##215780
achieve Fish Tales##6846/2 |goto Valley of the Four Winds 61.2,34.7
step
click Embracing the Passion##
achieve Hozen in the Mist##6850/3 |goto Valley of the Four Winds 83.2,21.2
step
Follow the path up |goto Krasarang Wilds 78.8,11.1 |only if walking
click Quan Tou Kuo the Two Fisted##213407
achieve Legend of the Brewfathers##7230/1 |goto 81.4,11.5
step
click Watersmithing##215779
achieve Fish Tales##6846/1 |goto The Jade Forest 66.0,87.6
step
click The Emperor's Burden - Part 3##213421
achieve The Seven Burdens of Shaohao##6855/3 |goto The Jade Forest 55.9,56.8
step
click The Emperor's Burden - Part 1##215799
achieve The Seven Burdens of Shaohao##6855/1 |goto The Jade Forest 47.1,45.2
step
click The Saurok##213327
achieve Between a Saurok and a Hard Place##6716/1 |goto The Jade Forest 67.7,29.4
step
click Spirit Binders##213333
achieve The Dark Heart of the Mogu##6754/3 |goto The Jade Forest 42.3,17.4
step
click The First Monks##213415
achieve What is Worth Fighting For##6858/3 |goto The Jade Forest 35.7,30.5
step
click Xin Wo Yin the Broken Hearted##213512
achieve Legend of the Brewfathers##7230/2 |goto The Jade Forest 37.3,30.1
step
click Hozen Speech##211990
achieve Hozen in the Mist##6850/1 |goto The Jade Forest 26.4,28.4
step
click The Defiant##213499
achieve Between a Saurok and a Hard Place##6716/2 |goto The Veiled Stair/5 54.8,16.0
step
click Role Call##215783
achieve Fish Tales##6846/4 |goto Kun-Lai Summit 74.5,83.5
step
click Yaungoil##215798
achieve The Song of the Yaungol##6847/3 |goto Kun-Lai Summit 71.7,63.0
step
click The Emperor's Burden - Part 6##213443
achieve The Seven Burdens of Shaohao##6855/6 |goto Kun-Lai Summit 67.8,48.4
step
click Victory in Kun-Lai##214128
achieve What is Worth Fighting For##6858/5 |goto Kun-Lai Summit 63.0,40.8
step
Enter the Temple here |goto 52.8,46.8 |walk
click Valley of the Emperors##214133
achieve The Dark Heart of the Mogu##6754/1 |goto Kun-Lai Summit/17 58.2,70.5
Leave the Temple here |goto Kun-Lai Summit/17 87.8,55.4 |walk
step
click The Emperor's Burden - Part 7##213455
achieve The Seven Burdens of Shaohao##6855/7 |goto Kun-Lai Summit 41.0,42.4
step
click The Emperor's Burden - Part 2##215797
achieve The Seven Burdens of Shaohao##6855/2 |goto Kun-Lai Summit 43.8,51.2
step
click Ren Yun the Blind##213438
achieve Legend of the Brewfathers##7230/3 |goto Kun-Lai Summit 44.7,52.4
step
click The Hozen Ravage##214158
achieve Hozen in the Mist##6850/4 |goto Kun-Lai Summit 45.8,61.9
step
click Yaungol Tactics##214122
achieve The Song of the Yaungol##6847/1 |goto Kun-Lai Summit 50.3,79.3
step
Check your in-game mailbox for items from Lorewalker Cho
collect 1 The Ballad of Liu Lang##83780 |future |q 31103
collect 1 The Dark Heart of the Mogu##83772 |future |q 31095
collect 1 The Song of the Yaungol##83777 |future |q 31100
collect 1 Hozen in the Mist##83770 |future |q 31093
collect 1 Heart of the Mantid Swarm##83773 |future |q 31097
collect 1 The Seven Burdens of Shaohao##83779 |future |q 31102
collect 1 What is Worth Fighting For##83774 |future |q 31096
collect 1 Fish Tales##83771 |future |q 31094
You will only be able to collect one of these last two.
collect 1 Between a Saurok and a Hard Place##83076 |future |q 31055 |or
collect 1 Between a Saurok and a Hard Place####83769 |future |q 31055 |or
step
Use each item in your bags to accept the quests.
accept The Ballad of Liu Lang##31103 |use The Ballad of Liu Lang##83780
accept The Dark Heart of the Mogu##31095 |use The Dark Heart of the Mogu##83772
accept The Song of the Yaungol##31100 |use The Song of the Yaungol##83777
accept Hozen in the Mist##31093 |use Hozen in the Mist##83770
accept Heart of the Mantid Swarm##31097 |use Heart of the Mantid Swarm##83773
accept The Seven Burdens of Shaohao##31102 |use The Seven Burdens of Shaohao##83779
accept What is Worth Fighting For##31096 |use What is Worth Fighting For##83774
accept Fish Tails##31094 |use Fish Tales##83771
step
Use each item in your bags to accept the quests
accept Between a Saurok and a Hard Place##31055 |use Between a Saurok and a Hard Place##83076 |or
accept Between a Saurok and a Hard Place##31055 |use Between a Saurok and a Hard Place##83769 |or
step
talk Lorewalker Cho##61962
turnin What is Worth Fighting For##31096 |goto Vale of Eternal Blossoms 83.2,29.7
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Song of the Yaungol##31100 |goto Vale of Eternal Blossoms 83.2,29.7
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Seven Burdens of Shaohao##31102 |goto Vale of Eternal Blossoms 83.2,29.7
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Dark Heart of the Mogu##31095 |goto Vale of Eternal Blossoms 83.2,29.7
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin The Ballad of Liu Lang##31103 |goto Vale of Eternal Blossoms 83.2,29.7
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Hozen in the Mist##31093 |goto Vale of Eternal Blossoms 83.2,29.7
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Heart of the Mantid Swarm##31097 |goto Vale of Eternal Blossoms 83.2,29.7
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Fish Tails##31094 |goto Vale of Eternal Blossoms 83.2,29.7
Watch his story, then click here |confirm always
step
talk Lorewalker Cho##61962
turnin Between a Saurok and a Hard Place##31055 |goto Vale of Eternal Blossoms 83.2,29.7
Watch his story, then click here |confirm always
step
Congratulations, you are now Exalted with the Lorewalkers!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Nat Pagle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with Nat Pagle faction.",
achieveid={7274},
patch='50004',
},[[
step
label "menu"
_Nat Pagle_ is a _Stranger_ to you. |only if rep("Nat Pagle")<=Stranger
_Nat Pagle_ is your _Aquaintance_. |only if rep("Nat Pagle")==Aquaintance
_Nat Pagle_ is your _Buddy_. |only if rep("Nat Pagle")==Buddy
_Nat Pagle_ is your _Friend_. |only if rep("Nat Pagle")==Friend
_Nat Pagle_ is your _Good Friend_. |only if rep("Nat Pagle")==GoodFriend
_Nat Pagle_ is your _Best Friend_. |only if rep("Nat Pagle")==BestFriend
|confirm
step
label "menu2"
In order to successfully gain rep with Nat Pagle you have to catch fish, so we recommend that you are at least 525 in Fishing.
The fish you catch in this guide are unique, meaning you can only have one of each in your bag at any given time.
|confirm
step
label "menu3"
Click here to start fishing! |confirm |next "fishrun"
Click here to turn in the fish to Nat Pagle for daily reputation gains. |confirm |next "turnin"
step
label "fishrun"
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast fishing##131474
collect 1 Flying Tiger Gourami##86542
accept Flying Tiger Gourami##31443 |use Flying Tiger Gourami##86542 |goto Kun-Lai Summit 72.7,93.1
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools too |cast fishing##131474.
collect 1 Spinefish Alpha##86544 |goto Kun-Lai Summit 70.8,84.2
accept Spinefish Alpha##31444 |use Spinefish Alpha##86544 |goto Kun-Lai Summit 70.8,84.2
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Use your Fishing skill to fish in the water here. You can look for fishing pools too |cast fishing##131474.
collect 1 Mimic Octopus##86545 |goto Kun-Lai Summit 57.9,21.9
accept Mimic Octopus##31446 |use Mimic Octopus##86545 |goto Kun-Lai Summit 57.9,21.9
|next "menu3"
step
label "turnin"
talk Nat Pagle##63721
turnin Spinefish Alpha##31444 |goto Krasarang Wilds 68.4,43.5
turnin Mimic Octopus##31446 |goto Krasarang Wilds 68.4,43.5
turnin Flying Tiger Gourami##31443 |goto Krasarang Wilds 68.4,43.5
|next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\The Order of the Cloud Serpent",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Order of the Cloud Serpent faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Order of the Cloud Serpent') < Exalted end,
achieveid={6550},
patch='50004',
},[[
step
label "start"
Proceeding to Order of the Cloud Serpent Dailies |complete completedq(30142) |next "dailies" |only if completedq(30142)
Moving to the Order of the Cloud Serpent prequests. |next |complete not completedq(30142) |only if not completedq(30142)
step
#include "CS_PreQuests"
step
label "dailies"
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
accept Catch!##30151 |goto The Jade Forest 57.5,45.3 |or 2
accept Pooped##31704 |goto The Jade Forest 57.5,45.3 |or 2
accept Feeding Time##30156 |goto The Jade Forest 57.5,45.3 |or 2
accept The Easiest Way To A Serpent's Heart##30154 |goto The Jade Forest 57.5,45.3 |or 2
accept Sweet as Honey##30150 |goto The Jade Forest 57.5,45.3 |or 2
Make sure Your Hatchling offers no more quests and click here |confirm
only if not completedq(30143)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
accept Catch!##30151 |goto 57.5,45.3 |or 2
accept Pooped##31704 |goto 57.5,45.3 |or 2
accept Pooped##31716 |goto 57.5,45.3 |or 2
accept Feeding Time##30156 |or 2
accept The Easiest Way To A Serpent's Heart##30154 |goto 57.5,45.3 |or 2
accept Sweet as Honey##30150 |goto 57.5,45.3 |or 2
Make sure Your Hatchling offers no more quests and click here. |confirm
only if completedq(30143)
step
talk Instructor Skythorn##58228
accept Restoring the Balance##30155 |goto 57.6,45.1 |or 2
accept Disarming the Enemy##30158 |goto 57.6,45.1 |or 2
accept Thinning The Pack##31698 |goto 57.6,45.1 |or 2
accept Weeping Widows##31706 |goto 57.6,45.1 |or 2
accept A Tangled Web##31707 |goto 57.6,45.1 |or 2
accept Monkey Mischief##31712 |goto 57.6,45.1 |or 2
noquest
step
talk Jenova Longeye##58413
|tip NOTE: You will be able to accept Fragments of the Past at any level Archaeology, but won't be able to do the quest unless your skill in Archaeology is 525 or more.
accept Just a Flesh Wound##30148 |goto 57.5,44.7 |only if skill("Pandaria Tailoring") >= 1
accept A Feast for the Senses##30149 |goto 57.5,44.7 |only if skill("Cooking")>=525
accept Fragments of the Past##30147 |goto 57.5,44.7 |only if skill("Archaeology")>=525
accept Snack Time##30146 |goto 57.5,44.7 |only if skill("Fishing")>=1
She can also be found inside of the following building |goto The Jade Forest/0 57.3,45.7
step
talk Elder Anli##58564
accept Slitherscale Suppression##31194 |goto 57.6,44.9 |or 2
accept Madcap Mayhem##31703 |goto 57.6,44.9 |or 2
accept Dark Huntress##31701 |goto 57.6,44.9 |or 2
accept On The Prowl##31702 |goto 57.6,44.9 |or 2
accept The Seed of Doubt##31711 |goto 57.6,44.9 |or 2
accept The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto 57.6,44.9 |or 2
accept The Trainer's Challenge: Ace Longpaw##31717 |goto 57.6,44.9 |or 2
accept The Trainer's Challenge: Suchi the Sweet##31720 |goto 57.6,44.9 |or 2
accept The Trainer's Challenge: Big Bao##31718 |goto 57.6,44.9 |or 2
accept The Big Kah-Oona##31715 |goto 57.6,44.9 |or 2
noquest
step
talk Ningna Darkwheel##58509
accept Sprite Fright##31699 |goto 58.3,45.0 |or
accept The Shoe Is On The Other Foot##31700 |goto 58.3,45.0 |or
noquest
step
talk Suchi the Sweet##58510
accept Preservation##30159 |goto 58.5,44.7 |or
accept Emptier Nests##30157 |goto 58.5,44.7 |or
noquest
step
talk Big Bao##58508
accept Lingering Doubt##31709 |goto 57.5,44.0
noquest
step
talk Qua-Ro Whitebrow##58511
accept Serpent's Scale##31708 |goto 57.3,43.5
accept Saving the Serpents##31714 |goto 57.3,43.5
noquest
step
talk Instructor Windblade##58420
accept The Sky Race##30152 |goto The Jade Forest 58.6,43.7
noquest
step
talk Ace Longpaw##58506
accept The Big Brew-haha##31713 |goto 58.0,43.7
noquest
step
talk Instructor Windblade##58420
Tell her you are ready to start the Sky Race.
Ride your Dragon! |invehicle |goto 58.6,43.7
only if haveq(30152)
step
map The Jade Forest/0
path loop on; follow strict; dist 40
path	60.6,39.4	59.7,31.5	61.3,25.2
path	66.3,36.0	66.2,42.4	66.8,51.4
path	64.0,51.0	60.4,52.9	61.8,54.5
path	58.7,46.8	58.4,46.4	58.1,46.0
Follow this path and collect the checked flags hanging off of the Checkpoint balloons
As you fly, gain speed by flying through cloud rings
Pass 10 Checkpoints |q 30152/1
Pass underneath the Finish Line |q 30152/2
only if haveq(30152)
step
talk Qua-Ro Whitebrow##58511
Challenge him to a duel!
Defeat Qua-Ro Whitebrow |q 31721/1 |goto 57.3,43.5
only if haveq(31721)
step
talk Ace Longpaw##58506
Challenge him to a duel!
Defeat Ace Longpaw |q 31717/1 |goto 58.0,43.7
only if haveq(31717)
step
talk Big Bao##58508
Challnge him to a duel!
Defeat Big Bao |q 31718/1 |goto 57.5,44.0
only if haveq(31718)
step
talk Suchi the Sweet##58510
Challenge her to a duel!
Defeat Suchi the Sweet |q 31720/1 |goto 58.5,44.7
only if haveq(31720)
stickystart "slitherharpoon"
stickystart "saltback"
step
kill Slitherscale Lizard-Lord##63536 |q 31194/1 |goto 69.8,31.3
only if haveq(31194)
step
label "slitherharpoon"
kill 8 Slitherscale saurok Slitherscale Ripper##58212+, Slitherscale Eggdrinker##63532+ |q 30155/1 |goto 68.1,31.2 |only if haveq(30155)
click Slitherscale Weapons##210277 |only if haveq(30158)
collect 5 Slitherscale Harpoon##79025 |q 30158/1 |goto 68.1,31.2 |only if haveq(30158)
click Serpent Egg##215392 |only if haveq(30159)
collect 8 Stolen Egg##79067 |q 30159/1 |goto 68.1,31.2 |only if haveq(30159)
step
label "saltback"
kill Saltback Turtle##58218+, Saltback Yearling##58219+
collect 15 Saltback Meat Scrap##79028 |n
Use the meat scraps to make a Saltback meat |use Saltback Meat Scrap##79028
collect 3 Saltback Meat##79027 |n
Use the meat to feed your Hatchling |use Saltback Meat##79027 |q 30156/1 |goto 64.6,33.3
only if haveq(30156)
step
Use the Bouncy Ball in your bags. |use Bouncy Ball##79043
Catch the Bouncy Ball whenever your Hatchling tosses it up, this will be every second throw.
Catch the Ball #8# times |q 30151/1 |goto 57.2,45.2
only if haveq(30151)
step
click Hatchling Poop##214863
|tip It is all around this area.
collect 5 Tiny Bag of Poop##89052 |q 31704/1 |goto 55.1,46.5
only if haveq(31704)
step
click Hatchling Poop##214863
|tip It is all around this area.
collect 5 Big Bag of Poop##89053 |q 31716/1 |goto 55.1,46.5
only if haveq(31716)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Pooped##31704 |goto 57.5,45.4
only if haveq(31704)
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Pooped##31716 |goto 57.5,45.4
only if haveq(31716)
stickystart "stolenboots"
step
kill Shadowfae Madcap##65613 |q 31703/1 |goto 62.7,27.4
only if haveq(31703)
step
_Enter_ the cave |goto The Jade Forest/0 64.4,25.8 < 10 |walk
kill Windward Huntress##63538 |q 31701/1 |goto 64.7,25.7
only if haveq(31701)
step
kill Windward Saber##65612 |q 31702/1 |goto 63.8,22.3
only if haveq(31702)
step
label "stolenboots"
kill Windward Tiger##63537 |only if haveq(30154)
collect 5 Tiger Flank##85282 |q 30154/1 |goto 62.8,24.7 |only if haveq(30154)
kill 7 Shadowfae Trickster##65635+ |q 31699/1 |goto 62.8,24.7 |only if haveq(31699)
kill 8 Windward Alpha+, Windward Tiger##63537+ |q 31698/1 |goto 62.8,24.7 |only if haveq(31698)
click Stolen Boots##214868 |only if haveq(31700)
collect 14 Stolen Boots##89054 |q 31700/1 |goto 62.8,24.7 |only if haveq(31700)
stickystart "widowspawn"
step
_Enter_ the cave |goto 58.0,31.7 < 10 |walk
Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
Measure the Northeastern Sha Disturbance |q 31709/2 |goto The Jade Forest/15 62.7,25.7
only if haveq(31709)
step
Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
Measure the Northwestern Sha Disturbance |q 31709/1 |goto The Jade Forest/15 37.0,31.9
only if haveq(31709)
step
_Enter_ the cave |goto 58.0,31.7 < 10 |walk
kill Seed of Doubt |q 31711/1 |goto The Jade Forest/15 35.7,40.2
only if haveq(31711)
step
Use the Sha Attunement Device next to this Disturbance |use Sha Attunement Device##88966
Measure the Southern Sha Disturbance |q 31709/3 |goto The Jade Forest/15 61.0,74.1
only if haveq(31709)
step
label "widowspawn"
_Enter_ the cave |goto 58.0,31.7 < 10
kill Widowspawn##65658 |only if haveq(31710)
collect 100 Tiny Spider Eye##88907 |q 31710/1 |only if haveq(31710)
kill 7 Weeping Widow##65653+ |q 31706/1 |only if haveq(31706)
click Serpent's Scale##214844 |only if haveq(31708)
collect 25 Serpent's Scale##88895 |q 31708/1 |only if haveq(31708)
kill Widow's Web##65634+ |only if haveq(31707)
Free #5# Sri-La Villagers |q 31707/1 |only if haveq(31707)
only if haveq(31706) or haveq(31707) or haveq(31708) or haveq(31710)
stickystart "rescueserp"
stickystart "oonabrew"
stickystart "oonagoon"
step
_Leave_ the cave |goto The Jade Forest/15 75.8,19.0 < 10 |only if haveq(31708) or haveq(31710) or haveq(31706) or haveq(31711) or haveq(31709) or haveq(31707) |walk
_Enter_ the Oona Kagu cave |goto The Jade Forest/0 57.7,27.7 < 10 |only if haveq(31715) |walk
kill 1 Lord Oona##65628 |q 31715/1 |goto The Jade Forest/16 45.8,77.8
only if haveq(31715)
step
label "rescueserp"
clicknpc Serpent##128767
collect 10 Rescued Serpent##88894 |q 31714/1 |goto 55.2,28.4
only if haveq(31714)
step
label "oonabrew"
kill Oona Brewchugger##65624
click Stolen Sri-La Keg##214986
collect 100 Sri-La Stout##88855 |q 31713/1 |goto 55.2,28.4
only if haveq(31713)
step
label "oonagoon"
kill 13 Oona Goon##65621+, Oona Brewchugger##65624+, Oona Tuna-Catcher##65623+ |q 31712/1 |goto 55.2,28.0
only if haveq(31712)
step
Use your Silken Rope on _Windward Hatchlings_ |use Silken Rope##78947
Bring the Windward Hatchlings to the nest at |goto 63.4,31.4
Return #6# Windward Hatchlings |q 30157/1 |goto The Jade Forest 64.5,31.1
only if haveq(30157)
step
Use your Tailoring skill to create 8 Windwool Bandages
|tip You can also ask other players to sell you some bandages.
collect 8 Windwool Bandage##72985
only if haveq(30148)
step
use the Windwool Bandage##72985
|tip Use them on Injured Hatchlings.
Bandage #8# Injured Hatchlings |q 30148/1 |goto 63.9,31.1
only if haveq(30148)
step
Use your Fishing skill to fish in the water here |cast Fishing##7620
|tip You will have to fish from Pools if you have low Fishing Skill.
collect 10 Sugar Minnow##79046 |q 30146/1 |goto 57.0,43.0 |only if haveq(30146)
collect 10 Golden Carp##74866 |only if haveq(30149)
You can find more pools of fish here |goto The Jade Forest/0 54.8,51.5
only if haveq(30146) or haveq(30149)
step
Use your Cooking skill to create 5 Fish Cakes
create 5 Fish Cake##104297,Cooking,5 total |q 30149/1 |or
buy 5 Fish Cake##74641 |or
You can ask other players to sell you some, if they happen to have leftovers
only if haveq(30149)
step
kill Honeykeeper##58363+
collect 30 Honeycomb##79030 |q 30150/1 |goto The Jade Forest 55.1,47.2
only if haveq(30150)
step
talk Ace Longpaw##58506
turnin The Big Brew-haha##31713 |goto 58.0,43.7
only if haveq(31713)
step
talk Elder Anli##58564
|tip You will only have a couple of these quests.
turnin Slitherscale Suppression##31194 |goto 57.6,44.9
turnin Dark Huntress##31701 |goto 57.6,44.9
turnin On The Prowl##31702 |goto 57.6,44.9
turnin Restoring the Balance##30155 |goto 57.6,44.9
turnin Disarming the Enemy##30158 |goto 57.6,44.9
turnin Madcap Mayhem##31703 |goto 57.6,44.9
turnin The Easiest Way To A Serpent's Heart##30154 |goto 57.6,44.9
turnin Sprite Fright##31699 |goto 57.6,44.9
turnin Thinning The Pack##31698 |goto 57.6,44.9
turnin The Shoe Is On The Other Foot##31700 |goto 57.6,44.9
turnin Weeping Widows##31706 |goto 57.6,44.9
turnin The Seed of Doubt##31711 |goto 57.6,44.9
turnin A Tangled Web##31707 |goto 57.6,44.9
turnin The Sky Race##30152 |goto 57.6,44.9
turnin The Trainer's Challenge: Qua-Ro Whitebrow##31721 |goto 57.6,44.9
turnin The Trainer's Challenge: Ace Longpaw##31717 |goto 57.6,44.9
turnin The Trainer's Challenge: Suchi the Sweet##31720 |goto 57.6,44.9
turnin The Trainer's Challenge: Big Bao##31718 |goto 57.6,44.9
turnin Preservation##30159 |goto 57.6,44.9
turnin Lingering Doubt##31709 |goto 57.6,44.9
turnin Emptier Nests##30157 |goto 57.6,44.9
turnin Monkey Mischief##31712 |goto 57.6,44.9
turnin The Big Kah-Oona##31715 |goto 57.6,44.9
turnin Saving the Serpents##31714 |goto 57.6,44.9
step
Talk to Your Hatchling
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Tiny Treats##31710 |goto 57.5,45.3 |only if haveq(31710)
turnin Sweet as Honey##30150 |goto 57.5,45.3 |only if haveq(30150)
turnin Feeding Time##30156 |goto 57.5,45.3 |only if haveq(30156)
turnin Pooped##31704 |goto 57.5,45.3 |only if haveq(31704)
turnin The Easiest Way To A Serpent's Heart##30154 |only if haveq(30154)
only if haveq(31710) or haveq(30150) or haveq(30156) or haveq(31704) or haveq(30154)
step
Talk to Your Hatchling |goto 57.5,45.3
|tip Your Hatchling is whichever color egg you chose in the prequests.
confirm
only if not completedq(30143)
step
Talk to Your Hatchling |goto 57.5,45.3
|tip Your Hatchling is whichever color egg you chose in the prequests.
confirm
only if completedq(30143)
step
Open your world map, find dig sites in Pandaria, then go to them
|tip They look like small shovel icons on your world map that spawn in random places. Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
collect 6 Serpentrider Relic## |q 30147/1
only if haveq(30147)
step
talk Jenova Longeye##58413
turnin Just a Flesh Wound##30148 |goto 57.5,44.7 |only if haveq(30148)
turnin A Feast for the Senses##30149 |goto 57.5,44.7 |only if skill("Cooking")>=525
turnin Fragments of the Past##30147 |goto 57.5,44.7
turnin Snack Time##30146 |goto 57.5,44.7
step
Talk to Your Hatchling |goto 57.5,45.4
|tip Your Hatchling is whichever color egg you chose in the prequests.
turnin Sweet as Honey##30150
only if haveq(30150)
step
talk Elder Anli##58564
turnin Catch!##30151 |goto 57.6,44.9
only if haveq(30151)
step
talk Elder Anli##58564
accept Needle Me Not##31705 |goto 57.6,44.9
only if completedq(30151)
step
Use the Golden Honey in your bags |use Golden Honey##89113
kill Orchard Needler |q 31705/1 |goto 57.0,41.2
only if haveq(31705)
step
talk Elder Anli##58564
turnin Needle Me Not##31705 |goto 57.6,44.9
|next "exalted" |only if rep("Order of the Cloud Serpent")==Exalted
|next "revered" |only if rep("Order of the Cloud Serpent")==Revered
|next "end" |only if rep("Order of the Cloud Serpent")<=Revered
step
label "revered"
talk San Redscale##58414
buy 1 Grand Commendation of the Order of the Cloud Serpent##93229 |n
Use the Commendation of the Order of the Cloud Serpent you just purchased |goto The Jade Forest 56.6,44.4 |complete ZGV:GetReputation("Order of the Cloud Serpent").hasBonus |use Grand Commendation of the Order of the Cloud Serpent##93229
only if rep("Order of the Cloud Serpent")>=Revered
step
talk Elder Anli##58564
accept They Grow Like Weeds##30143 |goto 57.6,44.9
step
talk Instructor Windblade##58420
Ask Instructor Windbalde how your serpent is doing
Speak to Instructor Windblade |q 30143/1 |goto 58.6,43.7
step
talk Instructor Windblade##58420
turnin They Grow Like Weeds##30143 |goto 58.6,43.7
accept Flight Training: Ring Round-Up##30144 |goto 58.6,43.7
step
The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
Ride your Cloud Serpent |invehicle |c
only if haveq(30144)
step
Fly your Cloud Serpent through the rings made from clouds
Fly through #6# Cloud Rings |q 30144/1
step
Click the Leave Vehicle button |outvehicle |c |goto 58.6,43.7
step
talk Instructor Windblade##58420
turnin Flight Training: Ring Round-Up##30144 |goto 58.6,43.7
accept Flight Training: Full Speed Ahead##30145 |goto 58.6,43.7
step
The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
Ride your Cloud Serpent |invehicle |c
only if haveq(30145)
step
Follow Instructor Windblade through the course, her mounts flies faster than yours so fly through some of the cloud rings to maintain speed with your guide
If you move too slowly or get too far away from the guide, the course will restart
Finish the course |q 30145/1
step
talk Instructor Windblade##58420
turnin Flight Training: Full Speed Ahead##30145 |goto 58.6,43.7
accept Flight Training: In Due Course##30187 |goto 58.6,43.7
step
The color of Cloud Serpent depends on your egg color choice when you unlocked the dailies for this faction
clicknpc Golden Cloud Serpent##58429
clicknpc Azure Cloud Serpent##58441
clicknpc Jade Cloud Serpent##58442
Ride your Cloud Serpent |invehicle |c
only if haveq(30187)
step
map The Jade Forest/0
path loop on; follow strict; dist 40
path	60.6,39.4	59.7,31.5	61.3,25.2
path	66.3,36.0	66.2,42.4	66.8,51.4
path	64.0,51.0	60.4,52.9	61.8,54.5
path	58.7,46.8	58.4,46.4
Follow this path and collect the checked flags hanging off of the Checkpoint balloons
As you fly, gain speed by flying through cloud rings
Pass 10 Checkpoints |q 30187/1
step
talk Instructor Windblade##58420
turnin Flight Training: In Due Course##30187 |goto 58.6,43.7
|next "end"
step
label "exalted"
talk Elder Anli##58564
accept Riding the Skies##31811 |goto 57.6,45.0
step
Watch the cinematic
Join the Order of the Cloud Serpent |q 31811/1
step
talk Elder Anli##58564
turnin Riding the Skies##31811 |goto 57.6,45.0
step
Proceeding to the next step |next "end" |only if default
Proceeding to Riding the Skies Quest |next "exalted" |only if rep('Order of the Cloud Serpent')==Exalted
step
label "exalted"
talk Elder Anli##58564
accept Riding the Skies##31810 |goto 57.7,44.9
step
talk Elder Anli##58564
turnin Riding the Skies##31810 |goto 57.7,44.9
step
label "end"
This the end of our daily guide
Click here to go back to the beginning |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Shado-Pan Assault",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Shado-Pan Assault faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Shado-Pan Assault') < Exalted end,
achieveid={6366},
patch='50004',
},[[
step
label "shado_dailies"
Click here if _Master Snowdrift_ is the questgiver today |confirm |goto Townlong Steppes 49.5,70.6
Click here if _Ban Bearheart_ is the questgiver today |confirm  |goto 49.0,70.5 |next "bearheart"
Click here if _Ling of the Six Pools_ is the questgiver today|confirm  |goto 49.0,71.3 |next "ling"
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Chao the Voice##31127 |goto 49.4,70.6
only if not completedq(31127)
only if rep('Shado-Pan')>=Honored
step
talk Master Snowdrift##63009
accept The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto 49.4,70.6
only if rep('Shado-Pan')>=Revered
step
talk Lao-Chin the Iron Belly##62978
I'm here to challenge you! |q 31128/1 |goto 49.3,72.0
only if haveq(31128)
step
talk Lao-Chin the Iron Belly##63135
Tell him: _"All right, let's do this!"_
Defeat Lao-Chin the Iron Belly |q 31128/2 |goto 50.6,67.8
only if haveq(31128)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128 |goto 49.6,70.5
only if haveq(31128)
step
talk Chao the Voice##62550
Tell her you're here to challenge her! |q 31127/1 |goto 49.7,70.5
only if haveq(31127)
step
talk Chao the Voice##63125
Let's do this.
Defeat Chao the Voice |q 31127/2 |goto 50.1,68.3
only if haveq(31127)
step
talk Master Snowdrift##63009
turnin The Challenger's Ring: Chao the Voice##31127 |goto 49.4,70.6
only if haveq(31127)
step
talk Master Snowdrift##63009
|tip You will only be able to accept 4 of the following dailies.
accept Assault Fire Camp Gai-Cho##31113 |goto 49.4,70.6 |or 4
accept Assault Deadtalker's Plateau##31114 |goto 49.4,70.6 |or 4
accept The Enemy of My Enemy... Is Still My Enemy!##31119 |goto 49.4,70.6 |or 4
accept Spirit Dust##31116 |goto 49.4,70.6 |or 4
accept The Deadtalker Cipher##31118 |goto 49.4,70.6 |or 4
step
Talk to Chao the Voice or Protector Yi and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|tip Yi patrols so you may need to search for him.
talk Chao the Voice##62550 |goto 49.7,70.5
talk Protector Yi##62546 |goto 49.3,71.3
confirm
only if not completedq(31128)
step
Talk to Chao the Voice, Protector Yi or Lao-Chin the Iron Belly and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
|tip Yi patrols so you may need to search for him.
talk Chao the Voice##62550 |goto 49.7,70.5
talk Protector Yi##62546 |goto 49.3,71.3
talk Lao-Chin the Iron Belly##62978 |goto 49.3,71.9
confirm
only if completedq(31128)
step
kill Gai-Cho Yaungol##62552+, Gai-Cho Earthtalker##62553+, Gai-Cho Pitchthrower##62608+ |only if haveq(31113)
Kill 16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers. |q 31113/1 |goto 63.4,43.3 |only if haveq(31113)
click Highly Explosive Yaungol Oil Barrel##212877 |only if haveq(31119)
collect Highly Explosive Yaungol Oil##84762 |n |goto 63.4,43.3
|tip You can only carry 10 at a time, so you may need to make multiple trips. |only if haveq(31119)
step
Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
kill Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
Kill 100 Gai-Cho Battledfired Combatants |q 31119/1 |goto 60.2,48.6
If you run out of oil, you can find more around this area |goto 63.4,43.3
only if haveq(31119)
stickystart "spiritremains"
step
kill Deadtalker Crusher##62844+, Deadtalker Corpsedefiler##62677+
collect Ciphered Scroll##84759 |q 31118/1  |goto 51.1,51.8
only if haveq(31118)
step
label "spiritremains"
kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |goto 51.1,51.8 |only if haveq(31114)
kill Deadtalker Crusher##62844 |q 31114/2 |goto 51.1,51.8
|tip He is elite but with your companion you should be able to defeat him. |only if haveq(31114)
kill Defiled Spirit##62679 |only if haveq(31116)
collect Ancient Spirit Dust##84727 |n |only if haveq(31116)
click Defiled Yaungol Remains##212779 |only if haveq(31116)
Return 8 Spirits to Their Remains |q 31116/1 |goto 51.1,51.8 |only if haveq(31116)
step
Next to you will either be Chao the Voice or Protector Yi:
Talk to Chao the Voice
Talk to Protector Yi
turnin Assault Fire Camp Gai-Cho##31113
turnin Assault Deadtalker's Plateau##31114
turnin The Enemy of My Enemy... Is Still My Enemy!##31119
turnin Spirit Dust##31116
turnin The Deadtalker Cipher##31118
only if not completedq(31128)
step
Next to you will either be Chao the Voice, Protector Yi, or Lao-Chin the Iron Belly:
Talk to Chao the Voice
Talk to Protector Yi
Talk to Lao-Chin the Iron Belly
turnin Assault Fire Camp Gai-Cho##31113
turnin Assault Deadtalker's Plateau##31114
turnin The Enemy of My Enemy... Is Still My Enemy!##31119
turnin Spirit Dust##31116
turnin The Deadtalker Cipher##31118
only if completedq(31128)
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Uruk!##31117 |or
accept Cheng Bo!##31120 |or
step
kill Uruk##62613 |q 31117/1 |goto 50.4,48.9
step
kill Cheng Bo##62554 |q 31120/1 |goto 60.7,42.1
step
talk Master Snowdrift##63009
turnin Uruk!##31117 |goto 49.6,70.5 |or
turnin Cheng Bo!##31120 |goto 49.6,70.5 |or
|next "end"
step
label "bearheart"
talk Ban Bearheart##62304
accept The Challenger's Ring: Snow Blossom##31038 |goto 49.0,70.4
only if not completedq(31038)
only if rep('Shado-Pan')>=Honored
step
talk Ban Bearheart##62304
accept The Challenger's Ring: Yalia Sagewhisper##31104 |goto 49.0,70.4
only if rep('Shado-Pan')>=Revered
step
talk Snow Blossom##62380
Ask her to meet in the Challenger's Ring. |q 31038/1 |goto 48.9,70.1
only if haveq(31038)
step
talk Snow Blossom##62834
I challenge you!
Defeat Snow Blossom |q 31038/2 |goto 50.2,67.9
only if haveq(31038)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Snow Blossom##31038 |goto 49.0,70.4
only if haveq(31038)
step
talk Yalia Sagewhisper##62303
Ask her to meet you in the Challenger's Ring |q 31104/1 |goto 48.9,70.0
only if haveq(31104)
step
talk Yalia Sagewhisper##62850
I challenge you!
Defeat Yalia Sagewhisper |q 31104/2 |goto 50.4,67.7
only if haveq(31104)
step
talk Ban Bearheart##62304
turnin The Challenger's Ring: Yalia Sagewhisper##31104 |goto 49.0,70.4
only if haveq(31104)
step
talk Ban Bearheart##62304
accept Born Free##31047 |goto 49.0,70.4 |or 4
accept The Mogu Menace##31105 |goto 49.0,70.4 |or 4
accept The Mogu Menace##31106 |goto 49.0,70.4 |or 4
accept The Mogu Menace##31039 |goto 49.0,70.4 |or 4
accept Bronze Claws##31044 |goto 49.0,70.4 |or 4
accept Illusions Of The Past##31045 |goto 49.0,70.4 |or 4
accept Grave Consequences##31048 |goto 49.0,70.4 |or 4
accept Dark Arts##31043 |goto 49.0,70.4 |or 4
accept Onyx Hearts##31042 |goto 49.0,70.4 |or 4
accept Spiteful Sprites##31040 |goto 49.0,70.4 |or 4
accept Egg Rescue!##31041 |goto 49.0,70.4 |or 4
accept Little Hatchlings##31046 |goto 49.0,70.4 |or 4
step
Talk to Snow Blossom or Fei Li and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Snow Blossom##62380 |goto 48.9,70.1
talk Fei Li##62354 |goto 48.8,70.2
confirm
only if not completedq(31104)
step
Talk to Snow Blossom, Fei Li, or Yalia Sagewhisper and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Snow Blossom##62380 |goto 48.9,70.1
talk Fei Li##62354 |goto 48.8,70.2
talk Yalia Sagewhisper##62303 |goto 48.8,70.0
confirm
only if completedq(31104)
step
talk Moshu the Arcane##62810
accept Through the Portal##31110 |goto 28.8,22.4
only if not completedq(31110)
step
clicknpc Ball and Chain##62539 |only if haveq(31047)
Free 6 Wild Cloudriders |q 31047/1 |goto 32.8,25.1 |only if haveq(31047)
click Shan'ze Cage##215573 |goto 32.8,25.1 |only if haveq(31046)
Free 20 Cloudrider Hatchlings. |q 31046/1 |goto 32.8,25.1 |only if haveq(31046)
click Shiny Egg##214481 |only if haveq(31041)
collect 8 Cloudrunner Egg##83129 |q 31041/1 |goto 32.8,25.1 |only if haveq(31041)
only if haveq(31041) or haveq(31046) or haveq(31047)
stickystart "bronzeclaw"
stickystart "darkwoodscharmer"
stickystart "arcanepowder"
step
kill 3 Shan'ze Illusionist##62440+ |q 31045/1 |goto 24.4,15.2 |only if haveq(31045)
click Shan'ze Tablet##212319 |only if haveq(31043)
collect 8 Shan'ze Tablet##83130 |q 31043/1 |goto 24.4,15.2 |only if haveq(31043)
click Mogu Burial Urn##212324 |only if haveq(31048)
kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |goto 24.4,15.2 |only if haveq(31048)
kill Onyx Stormclaw##62448 |only if haveq(31042)
collect 4 Onyx Heart##83138 |q 31042/1 |goto 24.4,15.2 |only if haveq(31042)
step
label "bronzeclaw"
kill Shan'ze Serpentbinder##62293+, Shan'ze Beastmaster##62530+ |only if haveq(31105) or haveq(31106) or haveq (31039)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31105/1 |goto 28.5,18.5 |only if haveq(31105)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31106/1 |goto 28.5,18.5 |only if haveq(31106)
Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31039/1 |goto 28.5,18.5 |only if haveq(31039)
kill Bronze Quilen##62266+ |only if haveq(31044)
collect 20 Bronze Claw##83153+ |q 31044/1 |goto 28.5,18.5 |only if haveq(31044)
step
label "darkwoodscharmer"
kill Darkwoods Pixie##62268+, Darkwoods Charmer##62457+
Kill 30 Darkwoods Sprites or Darkwoods Charmers. |q 31040/1 |goto 23.0,19.5
only if haveq(31040)
step
label "arcanepowder"
kill Shan'ze Serpentbinder##62293+, Shan'ze Illusionist##62440+, Shan'ze Ancestor##62285+, Shan'ze Beastmaster##62515+, Darkwoods Charmer##62520
collect 1000 Ancient Arcane Powder##84102+ |q 31110/1
only if haveq(31110)
step
Next to you will either be Fei Li or Snow Blossom
talk Fei Li##62354
talk Snow Blossom##62380
turnin The Mogu Menace##31105
turnin The Mogu Menace##31106
turnin The Mogu Menace##31039
turnin Bronze Claws##31044
turnin Illusions Of The Past##31045
turnin Grave Consequences##31048
turnin Dark Arts##31043
turnin Onyx Hearts##31042
turnin Born Free##31047
turnin Spiteful Sprites##31040
turnin Egg Rescue!##31041
turnin Little Hatchlings##31046
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
only if not completedq(31104)
step
Next to you will either be Fei Li, Snow Blossom, or Yalia Sagewhisper
talk Fei Li##62354
talk Snow Blossom##62380
talk Yalia Sagewhisper##62303
turnin The Mogu Menace##31105
turnin The Mogu Menace##31106
turnin The Mogu Menace##31039
turnin Bronze Claws##31044
turnin Illusions Of The Past##31045
turnin Grave Consequences##31048
turnin Dark Arts##31043
turnin Onyx Hearts##31042
turnin Born Free##31047
turnin Spiteful Sprites##31040
turnin Egg Rescue!##31041
turnin Little Hatchlings##31046
accept When The Dead Speak##31062 |or
accept Riding the Storm##31061 |or
accept In Sprite Of Everything##31049 |or
only if completedq(31104)
step
Use the Bronze Claws on the Cloudrunners around this area |use Bronze Claws##83134
kill Shan'ze Cloudrunner##62584
Free 8 Shan'ze Cloudriders |q 31061/1 |goto 30.9,12.6
only if haveq(31061)
step
Click the Leave Vehicle button |outvehicle
only if haveq(31061)
step
_Enter_ the tunnel |goto 20.3,15.8 < 15
kill Darkwoods Faerie##62522 |q 31049/1 |goto 19.5,13.8
only if haveq(31049)
step
_Leave_ the tunnel |goto 20.3,15.8 < 15
kill Shan'ze Deathspeaker##62559 |q 31062/1 |goto 32.3,9.5
|tip Make sure you destroy his Spirit Gems, if you let them pile up they can overwhelm you.
only if haveq(31062)
step
talk Moshu the Arcane##62810
turnin Through the Portal##31110 |goto 28.8,22.4
only if haveq(31110)
step
talk Ban Bearheart##62304
turnin When The Dead Speak##31062 |goto 49.0,70.4
turnin Riding the Storm##31061 |goto 49.0,70.4
turnin In Sprite Of Everything##31049 |goto 49.0,70.4
|next "end"
step
label "ling"
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Hawkmaster Nurong##31220 |goto 49.0,71.3
only if not completedq(31220)
only if rep('Shado-Pan')>=Honored
step
talk Ling of the Six Pools##63614
accept The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto 49.0,71.3
only if rep('Shado-Pan')>=Revered
step
talk Tenwu of the Red Smoke##63616
Ask him to meet you in the Challenger's Ring |q 31221/1 |goto 48.9,71.2
only if haveq(31221)
step
talk Tenwu of the Red Smoke##64471
Let's see if you can back that talk up
Defeat Temwu of the Red Smoke |q 31221/2 |goto 50.6,68.5
only if haveq(31221)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Tenwu of the Red Smoke##31221 |goto 49.0,71.3
only if haveq(31221)
step
talk Hawkmaster Nurong##63618
Ask him to meet you in the Challenger's Ring |q 31220/1 |goto 49.0,70.9
only if haveq(31220)
step
talk Hawkmaster Nurong##64470
Let's go!
Defeat Hawkmaster Nurong |q 31220/2 |goto 50.7,68.2
only if haveq(31220)
step
talk Ling of the Six Pools##63614
turnin The Challenger's Ring: Hawkmaster Nurong##31220 |goto 49.0,71.3
only if haveq(31220)
step
talk Ling of the Six Pools##63614
accept Sra'vess Wetwork##31196 |goto 49.0,71.3 |or 4
accept The Bigger They Come...##31197 |goto 49.0,71.3 |or 4
accept A Morale Victory##31198 |goto 49.0,71.3 |or 4
accept Destroy the Siege Weapons!##31199 |goto 49.0,71.3 |or 4
accept Fumigation##31200 |goto 49.0,71.3 |or 4
accept Friends, Not Food!##31201 |goto 49.0,71.3 |or 4
step
Talk to Hawkmaster Nurong or Taoshi and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Hawkmaster Nurong##63618 |goto 48.7,71.2
talk Taoshi##63617 |goto 48.7,71.0
confirm
only if not completedq(31221)
step
Talk to Hawkmaster Nurong, Taoshi, or Tenwu of the Red Smoke and ask one of them to come with you.
|tip They will help you in combat and allow you to turn in your quests outside of this questing hub.
talk Hawkmaster Nurong##63618 |goto 48.7,71.2
talk Taoshi##63617 |goto 48.7,71.0
talk Tenwu of the Red Smoke##63616 |goto 48.9,71.2
confirm
only if completedq(31221)
step
talk Ku-Mo##65341
accept Seeking Father##30933 |goto 48.7,71.1
If this quest is unavailable, click here. |confirm
only if not completedq(30933)
stickystart "lessergreatermantid"
step
click Sra'thik Siege Weapon##213311
Small Southern Siege Weapon destroyed |q 31199/2 |goto 27.5,54.6
only if haveq(31199)
step
click Sra'thik Siege Weapon##213311
Large Southern Siege Weapon destroyed |q 31199/1 |goto 25.8,53.8
only if haveq(31199)
step
click Sra'thik Idol##213309
Southern Idol destroyed |q 31198/1 |goto 23.5,55.5
only if haveq(31198)
step
click Sra'thik Idol##213309
Central Idol destroyed |q 31198/3 |goto 21.5,49.2
only if haveq(31198)
step
click Sra'thik Siege Weapon##213311
Large Northern Siege Weapon destroyed |q 31199/3 |goto 27.2,41.2
only if haveq(31199)
step
click Sra'thik Siege Weapon##213311
Small Northern Siege Weapon destroyed |q 31199/4 |goto 26.2,39.8
only if haveq(31199)
step
click Sra'thik Idol##213309
Eastern Idol destroyed |q 31198/4 |goto 27.8,41.9
only if haveq(31198)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Egg Chamber bombed |q 31200/3 |goto 23.6,44.7
only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Torture Cell bombed |q 31200/4 |goto 22.0,41.6
only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Slaughtering Pit bombed |q 31200/5 |goto 21.2,43.2
only if haveq(31200)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Amber Vault bombed |q 31200/1 |goto 21.0,45.9
only if haveq(31200)
step
click Sra'thik Idol##213309
Western Idol destroyed |q 31198/2 |goto 16.2,45.8
only if haveq(31198)
step
talk Shado-Pan Trainee##64459
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/3 |goto 17.6,58.0
only if haveq(31201)
step
talk Shado-Pan Trainee##64460
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/2 |goto 17.4,57.0
only if haveq(31201)
step
talk Sentinel Ku-Yao##61694
Tell him his son has been looking for him
Search for Sentinel Ku-Yao. |q 30933/1 |goto 17.4,57.0
only if haveq(30933)
step
talk Shado-Pan Trainee##64461
Tell them "No you're not!"
Shado-Pan Trainee at Southern Feeding Pit freed |q 31201/1 |goto 18.0,53.5
only if haveq(31201)
step
Use the Bag of Shado-Pan Gas Bombs at this location |use Bag of Shado-Pan Gas Bombs##86532
Nutriment Cell bombed |q 31200/2 |goto 23.9,47.3
only if haveq(31200)
step
label "lessergreatermantid"
kill Sra'thik Mutilator##63678+, Sra'thik Cacophyte##63680+, Sra'thik Drone##63677+, Sra'thik Regenerator##63681+, Sra'thik Swiftwing##63683+ |only if haveq(31196)
Kill 15 Lesser Sra'thik mantid. |q 31196/1 |only if haveq(31196)
kill Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+ |only if haveq(31197)
Kill 4 Greater Sra'thik mantid. |q 31197/1 |only if haveq(31197)
step
Next to you is either Hawkmaster Nurong or Taoshi
talk Taoshi##63617
talk Hawkmaster Nurong##63618
turnin Sra'vess Wetwork##31196
turnin The Bigger They Come...##31197
turnin A Morale Victory##31198
turnin Destroy the Siege Weapons!##31199
turnin Fumigation##31200
turnin Friends, Not Food!##31201
only if not completedq(31221)
step
Next to you is either Hawkmaster Nurong, Taoshi, or Tenwu.
Talk to Taoshi
Talk to Hawkmaster Nurong
Talk to Tenwu of the Red Smoke
turnin Sra'vess Wetwork##31196
turnin The Bigger They Come...##31197
turnin A Morale Victory##31198
turnin Destroy the Siege Weapons!##31199
turnin Fumigation##31200
turnin Friends, Not Food!##31201
only if completedq(31221)
step
Click the Quest Discovered box that displays on the right side of the screen under your minimap
accept Target of Opportunity: Sra'thik Hivelord##31204 |or
accept Target of Opportunity: Sra'thik Swarmlord##31203 |or
step
kill Sra'thik Swarmlord##63693 |q 31203/1 |goto 16.4,40.9
only if haveq(31203)
step
_Enter_ the building |goto 27.1,44.1 < 15
kill Sra'thik Hivelord##63694 |q 31204/1 |goto 24.3,44.0
only if haveq(31204)
step
_Leave_ the building |goto 27.1,44.1 < 15
talk Ku-Mo##65341
turnin Seeking Father##30933 |goto 48.7,71.1
only if haveq(30933)
step
talk Ling of the Six Pools##63614
turnin Target of Opportunity: Sra'thik Hivelord##31204 |goto 49.0,71.4 |or
turnin Target of Opportunity: Sra'thik Swarmlord##31203 |goto 49.0,71.4 |or
|next "end"
step
label "end"
talk Rushi the Fox##64595 |goto 48.8,70.6
buy 1 Grand Commendation of the Shado-Pan##93220 |n
Use the Commendation of the Shado-Pan you just purchased |complete ZGV:GetReputation("Shado-Pan").hasBonus |use Grand Commendation of the Shado-Pan##93220
only if rep("Shado-Pan")>=Revered
step
talk Master Snowdrift##63009
accept Mogu Incursions##31266 |goto 49.4,70.6
only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
kill Shan'ze Spymaster##63888 |q 31266/1 |goto 48.8,58.6
only if rep('Shado-Pan')==Exalted and not completedq(31266)
step
talk Master Snowdrift##63009
turnin Mogu Incursions##31266 |goto 49.4,70.6
accept Surprise Attack!##31277 |goto 49.4,70.6
only if rep('Shado-Pan')==Exalted and not completedq(31277)
step
talk Ban Bearheart##63908
Tell him "Let's go".
Join the battle of Niuzao Temple |q 31277/1 |goto 42.6,63.9
only if haveq(31277)
step
Wait for the dialogue to end and fight off the invasion.
kill Shan'ze Brutalizer##63933+, Hei Feng##63920
|tip When he casts Deep Breath step behind him.
Defeat the Mogu Invasion |q 31277/2 |goto 41.3,60.0
only if haveq(31277)
step
talk Ban Bearheart##62304
turnin Surprise Attack!##31277 |goto 49.2,71.0
only if haveq(31277)
step
You have reached the end of this daily guide
Click here to return to the start of the dailies |next "shado_dailies" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\Sunreaver Onslaught",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Sunreaver Onslaught faction.",
achieveid={8209},
patch='50200',
},[[
step
#include "Sunreavers_dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Mists of Pandaria Reputations\\The Tillers",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Tillers faction.",
achieveid={6544},
patch='50004',
},[[
step
#include "Tillers_Dailies"
]])
