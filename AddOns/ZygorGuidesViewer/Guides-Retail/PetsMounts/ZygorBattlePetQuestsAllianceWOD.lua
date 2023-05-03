local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetBattleAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Battle Pet Quests\\Draenor Battle Pets Dailies",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Draenor Battle Pet dailies.",
condition_suggested=function() return level>=1 and level<=50 end,
},[[
step
label "start"
|tip The Battle Pet dailies are account wide and can only be completed on your account by one character per day.
|tip The Garrison Battle Pet dailies can be completed once per day by each character you have that has the Menagerie unlocked. |only if not completedq(36662) or not completedq(37645) and not completedq(38300)
_Click_ to complete your Garrison daily |confirm |next "garris" |only if not completedq(36662) or not completedq(37645) and not completedq(38300)
You have completed your _Garrison_ Battle Pets Dailies today |confirm |only if completedq(36662) or completedq(37645) and completedq(38300)
_
_Click_ to battle Gargra |confirm |next "gargr" |only if not completedq(37205)
|tip She is located in Frostfire Ridge. |only if not completedq(37205)
You have defeated _Gargra_ today |only if completedq(37205)
_Click_ to battle Cymre Brightblade |confirm |next "cymre" |only if not completedq(37201)
|tip She is located in Gorgrond. |only if not completedq(37201)
You have defeated _Cymre Brightblade_ today |only if completedq(37201)
_Click_ to battle Taralune |confirm |next "teral" |only if not completedq(37208)
|tip She is in Talador. |only if not completedq(37208)
You have defeated _Taralune_ today |only if completedq(37208)
_Click_ to battle Vesharr |confirm |next "vesha" |only if not completedq(37207)
|tip He is in Spires of Arak. |only if not completedq(37207)
You have defeated _Vesharr_ today |only if completedq(37207)
_Click_ to battle Ashlei |confirm |next "ashle" |only if not completedq(37203)
|tip She is located in Shadowmoon Valley. |only if not completedq(37203)
You have defeated _Ashlei_ today |only if completedq(37203)
_Click_ to battle Tarr the Terrible |confirm |next "tarrt" |only if not completedq(37206)
|tip He is in Nagrand. |only if not completedq(37206)
You have defeated _Tarr the Terrible_ today |only if completedq(37206)
step
label "cymre"
Travel along this _stone bridge_ |goto Gorgrond 49.9,74.2 < 30
talk Cymre Brightblade##83837
accept Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
step
talk Cymre Brightblade##83837
Tell her: "_Let's do this!_"
|tip She has 3 LEGENDARY PETS. 1 Undead, 1 Magic and 1 Mechanical.
Defeat Cymre Brightblade In a Pet Battle |q 37201/1 |goto 51.1,70.6
|tip To counter Cymre Brightblade you will need Beast type attacks for her Mechanical pet, Dragon type attacks for her Magic pet, and Critter type attacks for her Undead pet, all of your pets should be level 25.
step
talk Cymre Brightblade##83837
turnin Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
|next "start"
step
label "ashle"
talk Ashlei##87124
accept Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
step
talk Ashlei##87124
Tell her: "_Let's do this!_"
|tip She has 3 RARE PETS. 2 Magic and 1 Beast.
Defeat Ashlei In a Pet Battle |q 37203/1 |goto 50.03,31.26
|tip To counter Ashlei you will need Dragon type attacks for both of her Magic pets and Mechanical type attacks for her Beast pet, all of your pets should be level 25.
step
talk Ashlei##87124
turnin Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
|next "start"
step
label "vesha"
talk Vesharr##87123
accept Vesharr##37207 |goto Spires of Arak 46.3,45.3
step
talk Vesharr##87123
Tell him: "_Let's do this!_"
|tip He has 3 RARE PETS. 2 Flying and 1 Mechanical.
Defeat Vesharr In a Pet Battle |q 37207/1 |goto 46.30,45.31
|tip To counter Vesharr you will need Magic type attacks for both of her Flying pets and Beast type attacks for her Mechanical pet, all of your pets should be level 25.
step
talk Vesharr##87123
turnin Vesharr##37207 |goto Spires of Arak 46.3,45.3
|next "start"
step
label "gargr"
talk Gargra##87122
accept Gargra##37205 |goto Frostfire Ridge 68.6,64.8
step
talk Gargra##87122
Tell her: "_Let's do this!_"
|tip She has 3 RARE PETS. All 3 of them are Beast Pets.
Defeat Gargra In a Pet Battle |q 37205/1 |goto 68.59,64.77
|tip To counter Gargra you will need Mechanical type attacks for all 3 of her Beast pets, all of your pets should be level 25.
step
talk Gargra##87122
turnin Gargra##37205 |goto Frostfire Ridge 68.6,64.8
|next "start"
step
label "teral"
talk Taralune##87125
accept Taralune##37208 |goto Talador 49.1,80.3
step
talk Taralune##87125
Tell her: "_Let's do this!_"
|tip She has 3 RARE PETS. and all 3 of them are Flying.
Defeat Taralune In a Pet Battle |q 37208/1 |goto 49.10,80.36
|tip To counter Taralune you will need Magic type attacks for all 3 of her Flying pets, all of your pets should be level 25.
step
talk Taralune##87125
turnin Taralune##37208 |goto Talador 49.1,80.3
|next "start"
step
label "tarrt"
_Enter_ the Gorian Proving Grounds |goto Nagrand D/0 57.0,19.0 < 30 |only if walking
_Go up_ the stone steps |goto Nagrand D/0 56.7,17.8 < 30 |only if walking
_Continue up_ the second set of stone steps |goto Nagrand D/0 56.9,11.5 < 20 |only if walking
talk Tarr the Terrible##87110
accept Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
step
talk Tarr the Terrible##87110
Tell him: "_Let's do this!_"
|tip He has 3 RARE PETS. All 3 of them are Humanoid.
Defeat Tarr the Terrible In a Pet Battle |q 37206/1 |goto 56.32,10.03
|tip To counter Tarr the Terrible you will need Undead type attacks for all 3 of the Human pets, all of your pets should be level 25.
step
talk Tarr the Terrible##87110
turnin Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
|next "start"
step
label "garris"
talk Lio the Lioness##85418
accept Battle Pet Roundup##36483 |or |only if hasbuilding(42) or hasbuilding(167) |goto Lunarfall 29.2,40.4
accept Mastering the Menagerie##37644 |or |only if hasbuilding(168) |goto Lunarfall 29.2,40.4
step
clicknpc Challenge Post##85626
|tip The pets are different each day, so choose to fight, then Forfeit after you see which pets are used. Choose the pets you need to counter, then fight again.
Defeat the Pets in the Small Arena |q 36483/1 |or |only if hasbuilding(42) or hasbuilding(167) | goto Lunarfall/0 28.7,43.5
Defeat the Pets in the Small Arena |q 36483/1 |or |only if hasbuilding(168) |goto Lunarfall/0 28.7,43.5
step
talk Lio the Lioness##85418
turnin Battle Pet Roundup##36483 |only if haveq(36483) or hasbuilding(167) |goto Lunarfall 29.2,40.4
turnin Mastering the Menagerie##37644 |only if haveq(37644) |goto Lunarfall 29.2,40.4
step
talk Erris the Collector##91014
accept Critters of Draenor##38299 |goto Lunarfall/0 31.1,39.6
step
talk Erris the Collector##91014
Tell her "_Let's do this!_"
|tip Her pets are different each day, so choose to fight her, then Forfeit after you see which pets she is using. Choose the pets you need to counter her, then fight her again.
Defeat Erris the Collector In a Pet Battle |q 38299/1 |goto Lunarfall/0 31.1,39.6
step
talk Erris the Collector##91014
turnin Critters of Draenor##38299 |goto Lunarfall/0 31.1,39.6
|next "start"
]])
