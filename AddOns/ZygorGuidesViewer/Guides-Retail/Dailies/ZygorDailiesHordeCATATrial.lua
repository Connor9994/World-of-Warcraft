local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHCATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Classic Dailies\\Orgrimmar\\Orgrimmar Fishing Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Classic Dailies\\Thunder Bluff\\Thunder Bluff Fishing Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Classic Dailies\\Undercity\\Undercity Fishing Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Classic Dailies\\Main Cities\\Orgrimmar Cooking Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Classic Dailies\\Main Cities\\Thunder Bluff Cooking Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Classic Dailies\\Main Cities\\Undercity Cooking Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Classic Dailies\\Main Cities\\Main City Cooking Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Classic Dailies\\Main Cities\\Main City Fishing Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Classic Dailies\\Main Cities\\Jewelcrafting Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Burning Crusade Dailies\\Netherwing\\Netherwing Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Burning Crusade Dailies\\Netherwing\\Netherwing Eggs")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Burning Crusade Dailies\\Shattrath Cooking Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Burning Crusade Dailies\\Shattered Sun Offensive\\Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Borean Tundra\\Aces High with Pre-Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Borean Tundra\\Kaskala Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Dalaran Cooking Dailies with Pre-Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Dalaran Fishing Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Dalaran\\Jewelcrafting Dailies with Pre-Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Dragonblight\\Dragonblight Dailies plus Pre-Quests")
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blackriver Logging Camp Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills. There are no pre-quests needed to unlock the daily quest offered in this guide section.",
},[[
step
Proceeding to proper section |next |only if default
Prceeding to proper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Crystal Vial##3371 |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Raider Captain Kronn##27120
accept Blackriver Brawl##12170 |goto Grizzly Hills 26.4,65.8
step
Kill Alliance Players or Amberpine Scouts in the Blackriver Logging Camp
Kill 10 Alliance in Blackriver |q 12170/1 |goto 27.3,64.7
step
talk Raider Captain Kronn##27120
turnin Blackriver Brawl##12170 |goto 26.4,65.8
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Proceeding to proper section |next |only if default
Prceeding to proper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife
|tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Aumana##27464
accept Overwhelmed!##12288 |goto Grizzly Hills 33.8,32.7
step
talk Lurz##27422
accept Making Repairs##12280 |goto 34.4,32.6
step
talk Grekk##27423
accept Shred the Alliance##12270 |goto 34.5,32.5
step
talk Commander Bargok##27451
accept Keep 'Em on Their Heels##12284 |goto 34.5,33.0
step
Kill Alliance Players or Wounded Westfall Infantry around the area
Use Renewing Tourniquet on Wounded Skirmishers |use Renewing Tourniquet##37568
Heal 10 Wounded Skirmishers |q 12288/1 |goto 35.2,39.3
Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
collect 4 Grooved Cogs##37412 |q 12280/1 |goto 35.2,39.3
collect 3 Notched Sprockets##37413 |q 12280/2 |goto 35.2,39.3
collect 2 High Tension Springs##37416 |q 12280/3 |goto 35.2,39.3
step
Kill Alliance Players or Wounded Westfall Infantry around the area
Eliminate 15 Horde units |q 12284/1 |goto 33.4,35.7
step
Find a Broken-down Shredder that spawns around this area
Click the Broken-down Shredder to get inside it
Use your abilities on your hot bar to return the shredder to Grekk at [34.5,32.5]
Deliver 3 Shredders |q 12270/1 |goto 32.8,40.5
step
talk Grekk##27423
turnin Shred the Alliance##12270 |goto 34.5,32.5
step
talk Lurz##27422
turnin Making Repairs##12280 |goto 34.4,32.6
step
talk Commander Bargok##27451
turnin Keep 'Em on Their Heels##12284 |goto 34.5,33.0
step
talk Aumana##27464
turnin Overwhelmed!##12288 |goto 33.8,32.7
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Granite Springs Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.",
},[[
step
Proceeding to proper section |next |only if default
Prceeding to proper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife |tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk Mack Fearsen##26604
accept Seared Scourge##12038 |goto Grizzly Hills 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
Burn 30 Scourge Trolls |q 12038/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12038 |goto Grizzly Hills 16.7,48.3
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Wrath of the Lich King Dailies\\Grizzly Hills\\Venture Bay Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills. There are no pre-quests needed to unlock the daily quests offered in this guide section.",
},[[
step
Proceeding to proper section |next |only if default
Prceeding to proper section |next "dailies" |only if completedq(12029)
step
talk Samir##26424
accept Filling the Cages##11984 |goto Grizzly Hills 16.2,47.6
step
talk Budd##26429
Tell him it's time to play with the ice trolls |havebuff Budd's Attention Span |q 11984 |goto 16.4,48.3
step
Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
Capture a Live Ice Troll |q 11984/1 |goto 13.2,60.5
step
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.2,47.6
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.4,47.8
step
Click the Dull Carving Knife |tip It's a knife stuck in the side of this tree trunk.
collect 1 Dull Carving Knife##38083 |q 11989 |goto 16.5,47.8
step
Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
talk Drakuru##26423
Shake his hand
Make a Blood Pact With Drakuru |q 11989/1 |goto 16.4,47.8
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.4,47.8
accept Vial of Visions##11990 |goto 16.4,47.8
step
talk Ameenah##26474
buy 1 Imbued Vial |q 11990/1 |goto 16,47.8
step
Click the Hazewood Bushes
|tip They look like small flower bushes on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 14.6,45.3
step
Click a Waterweed
|tip They look like big green bushes underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.2,40.3
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.4,47.8
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.7,46.7
step
Click a Scourged Troll Mummy on the ground next to you
collect 1 Scourged Troll Mummy##38149 |q 12484 |goto 15.7,46.9
step
Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
Burn a Mummified Carcass |q 12484/1 |goto 16.9,48.3
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.7,48.3
accept Seared Scourge##12029 |goto 16.7,48.3
step
Jump on the big rock and stand on it
Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
Burn 20 Scourge Trolls |q 12029/1 |goto 16,29.9
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.7,48.3
step
label "dailies"
talk General Gorlok##27708
accept Riding the Red Rocket##12432 |goto Grizzly Hills 14.8,86.6
If he's not there, then you have to take control of Venture Bay for the Horde
To take control of Venture Bay for the Horde, go to 15.1,88.0
|tip Hide behind the lighthouse in between the 2 big brown rocks.  Flag yourself for PvP and a bar will appear under your minimap.  Sit here until the bar marker is all the way to the right, this will make General Gorlok spawn.
step
talk Stone Guard Ragetotem##27606
accept Smoke 'Em Out##12324 |goto 11.4,76.7
step
talk Centurion Kaggrum##27563
accept Keep Them at Bay##12317 |goto 10.1,77.3
step
talk General Khazgar##27532
accept Crush Captain Brightwater!##12315 |goto 10.1,77.2
step
Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers |use Smoke Bomb##37621
Building one can be found at [18.0,79.6]
Building two can be found at [16.4,76.6]
Building three can be found at [14.6,76.7]
Smoke out 20 Venture Company Stragglers |q 12324/1 |goto 18.0,79.6
step
Kill Alliance Players or Westfall Brigade Marine in Venture Bay
Kill 10 Alliance in Venture Bay |q 12317/1 |goto 14.8,77.8
step
kill Captain Brightwater##27509 |q 12315/1 |goto 17.0,81.6
step
Click the Element 115 in the back room of the ship
|tip It looks like a red canister with a handle on the top.
collect Element 115##37664 |q 12432 |goto 16.4,80.3
step
On the next step you will guide a rocket into this Alliance lumber boat
Your target will be the wooden X on the side
Go to 13.6,88.9
You will want to use your keys, not your mouse, to guide the rocket
Avoid icebergs or the rocket will explode and you will have to start over
Click a red rocket to take control of one |invehicle |c |q 12432 |goto 21.4,84.5
step
Hit the wooden X on the back of the Alliance Lumber boat
Destroy the Alliance Lumber boat |q 12432/1 |goto 9.6,79.1
step
talk General Gorlok##27708
turnin Riding the Red Rocket##12432 |goto 14.8,86.6
If he's not there, then you have to take control of Venture Bay for the Horde
To take control of Venture Bay for the Horde, go to 15.1,88.0
|tip Hide behind the lighthouse in between the 2 big brown rocks.  Flag yourself for PvP and a bar will appear under your minimap.  Sit here until the bar marker is all the way to the right, this will make General Gorlok spawn.
step
talk Stone Guard Ragetotem##27606
turnin Smoke 'Em Out##12324 |goto 11.4,76.7
step
talk Centurion Kaggrum##27563
turnin Keep Them at Bay##12317 |goto 10.1,77.3
step
talk General Khazgar##27532
turnin Crush Captain Brightwater!##12315 |goto 10.1,77.2
step
You have completed this daily guide today. You can do more dailies tomorrow
Click here to return to the beginning of the guide |confirm
|next "dailies"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Howling Fjord\\Kamagua Dailies with Pre-Quests")
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Aspirant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Orgrimmar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Sen'jin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Silvermoon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Thunder Bluff")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion of Undercity")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Black Knight Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Crusader Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Argent Tournament Grounds\\Champion Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\The Oracles/Frenzyheart Dailies\\The Oracles Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\The Oracles/Frenzyheart Dailies\\Frenzyheart Tribe Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\The Sons of Hodir\\The Sons of Hodir Dailies")
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Shadowvault Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Death's Rise Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\The Storm Peaks Full Zone Quest Path (Includes Pre-Quests)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\Dun Niffelem (The Sons of Hodir) Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\The Storm Peaks\\K-3 and Brunnhildar Village Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Wrath of the Lich King Dailies\\Zul'Drak\\The Argent Stand Dailies with Pre-Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Deepholm Dailies with Pre-Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Uldum Dailies with Pre-Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Twighlight Highlands Dailies with Pre-Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Tol Barad Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Reputation\\Guardians of Hyjal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Reputation\\The Earthen Ring")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Reputation\\Therazane")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Reputation\\Ramkahen")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Reputation\\Dragonmaw Clan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Reputation\\Hellscream's Reach")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Zandalari Menace Quest Line")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\How To Use Firelands Guide Sections - READ FIRST")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\Firelands Dailies with Pre-Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\The Call of the World-Shaman Quest Line")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cooking\\Dalaran Cooking Daily Guide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cooking\\Orgrimmar Cooking Daily Guide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Cooking\\Shattrath Cooking Daily Guide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Jewelcrafting\\Daily Guides\\Jewelcrafting Daily Guide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Extinguishing Draenor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Achievements\\Fires of Azeroth\\Extinguishing the Broken Isles")
