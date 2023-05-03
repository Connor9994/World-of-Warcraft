local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsA") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Argent Dawn",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Argent Dawn faction.",
achieveid={946},
patch='30001',
},[[
#include "Argent_Dawn_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Bloodsail Buccaneers",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Bloodsail Buccaneers faction.",
achieveid={2336},
patch='30100',
},[[
step
The Bloodsail Buccaneer reputation requires a lot of farming
|confirm |next "bruiser"|only if completedq(26679)
|confirm |next "rum" |only if not completedq(26679)
step
label "bruiser"
If you are going to attempt to get exalted with the Bloodsail Buccaneers, our suggestion is that you are max level, have high level gear, and have friends with you
The quickest way to gain reputation with the Bloodsail Buccaneers is to farm Booty Bay Bruisers
Bruisers have proven to be incredibly difficult to kill
They have a variety of knockbacks and nets, they have high damage and health, and they will call for help so you can quickly find yourself overwhelmed
|confirm
step
In order to farm reputation you must be "At War" with Booty Bay. Do this by hitting _[U]_ and finding the Booty Bay reputation among your list
Click on it and then check the box next to "At War" on the new window that appears
kill Booty Bay Bruiser##4624 |goto The Cape of Stranglethorn 41.6,73.2
Earn Exalted status with the Bloodsail Buccaneers |complete rep('Bloodsail Buccaneers')==Exalted |next "exalted"
step
label "rum"
talk "Sea Wolf" MacKinley##2501
accept Scaring Shaky##26593 |goto The Cape of Stranglethorn,42.1,73.4
step
kill Elder Mistvale Gorilla##1557+
collect 5 Mistvale Giblets##3919 |q 26593/1 |goto 50.4,54.6
step
talk "Shaky" Phillipe##2502
turnin Scaring Shaky##26593 |goto The Cape of Stranglethorn 40.5,67.7
accept Return to MacKinley##26594 |goto The Cape of Stranglethorn 40.5,67.7
step
talk "Sea Wolf" MacKinley##2501
turnin Return to MacKinley##26594 |goto 42.1,73.4
accept Kill-Collect##26595 |goto 42.1,73.4
step
kill Freewheelin' Juntz Fitztittle##43376
collect Fitztittle's Ratcheting Torque Wrench##59034 |q 26595/2 |goto The Cape of Stranglethorn 56.6,57.6
step
click Half-Buried Bottle##204406
accept Message in a Bottle##26603 |goto The Cape of Stranglethorn 57.0,54.4
step
talk Ephram "Midriff" Moonfall##43377
Tell him, So you kno why I'm here then, all right Midriff, pay up.
kill Ephram "Midriff" Moonfall##43377
collect Ephram's Jeweled Mirror##59035 |q 26595/3 |goto 57.8,48.6
step
kill Maury "Club Foot" Wilkins##2535
collect Maury's Clubbed Foot##3924 |q 26595/1 |goto The Cape of Stranglethorn,59.7,49.2
step
talk Princess Poobah##2634
turnin Message in a Bottle##26603 |goto The Cape of Stranglethorn 59.4,79.1
accept Protecting Her Royal Highness Poobah##26604 |goto The Cape of Stranglethorn 59.4,79.1
step
kill 5 Jaguero Stalker##2522+ |q 26604/1 |goto The Cape of Stranglethorn 58.4,80.4
|tip They are stealthed around this area, so you may need to search a bit.
step
talk Princess Poobah##2634
turnin Protecting Her Royal Highness Poobah##26604 |goto The Cape of Stranglethorn 59.4,79.1
accept Grubby Little Paws##26605 |goto The Cape of Stranglethorn 59.4,79.1
step
kill Skymane Gorilla##2521+, Skymane Bonobo##43417+
collect Poobah's Tiara##59057 |q 26605/1 |goto The Cape of Stranglethorn 62.6,78.2
collect Poobah's Scepter##59058 |q 26605/2 |goto The Cape of Stranglethorn 62.6,78.2
collect Poobah's Slippers##59059 |q 26605/3 |goto The Cape of Stranglethorn 62.6,78.2
collect Poobah's Diary##59060 |q 26605/4 |goto The Cape of Stranglethorn 62.6,78.2
step
talk Princess Poobah##2634
turnin Grubby Little Paws##26605 |goto The Cape of Stranglethorn 59.4,79.1
accept Mukla's Demise##26606 |goto The Cape of Stranglethorn 59.4,79.1
step
kill King Mukla##1559+
collect Shackle Key##4103 |q 26606/1 |goto The Cape of Stranglethorn 63.4,83.2
step
talk Princess Poobah##2634
turnin Mukla's Demise##26606 |goto The Cape of Stranglethorn 59.4,79.1
step
talk "Sea Wolf" MacKinley##2501
turnin Kill-Collect##26595 |goto 42.1,73.4
step
talk First Mate Crazz##2490
accept The Bloodsail Buccaneers##26609 |goto 42.6,72.0
step
click Bloodsail Correspondence##2083
turnin The Bloodsail Buccaneers##26609 |goto 41.3,61.2
accept Bloodsail Treachery##26610 |goto 41.3,61.2
step
talk First Mate Crazz##2490
turnin Bloodsail Treachery##26610 |goto 42.6,72.0
accept The Baron Must Be Told##26611 |goto 42.6,72.0
step
talk Baron Revilgaz##2496
turnin The Baron Must Be Told##26611 |goto 41.2,73.1
accept Details of the Attack##26612 |goto 41.2,73.1
step
click Bloodsail Charts##2086
collect Bloodsail Charts##3920 |q 26612/3 |goto 45.0,79.5
click Bloodsail Orders##2087
|tip It looks like a white scroll.
collect Bloodsail Orders##3921 |q 26612/4 |goto 45.0,79.5
The Bloodsail Orders and Charts can also spawn at the following locations:
Location 1: [42.0,83.2]
Location 2: [40.9,82.8]
kill 8 Bloodsail Sea Dog##1565+ |q 26612/1 |goto 45.0,79.5
kill 8 Bloodsail Elder Magus##1653+ |q 26612/2 |goto 45.0,79.5
step
talk Baron Revilgaz##2496
turnin Details of the Attack##26612 |goto 41.2,73.1
accept Getting In With the Bloodsail##26624 |goto 41.2,73.1
step
talk Yancey Grillsen##43504
turnin Getting In With the Bloodsail##26624 |goto 43.8,56.5
accept Seeing Where Your Loyalties Lie##26629 |goto 43.8,56.5
step
talk Fleet Master Seahorn##2487
accept Looks like a Tauren Pirate to Me##26630 |goto 41.1,73.3
step
talk Bossy##43505
Tell her you need to cut off her head, then do the deed
collect Cow Head##59147 |q 26630/3 |goto 43.3,71.7
step
talk Narkk##2663
Tell him you need an extra-large pirate hat
Seahorn's orders
collect Oversized Pirate Hat##59148 |q 26630/2 |goto 42.6,69.1
step
talk Fleet Master Seahorn##2487
Give him the head and the hat and tell him he's the boss
Return both items to Fleet Master Seahorn |q 26630/1 |goto 41.1,73.3
step
talk Fleet Master Seahorn##2487
turnin Looks Like a Tauren Pirate to Me##26630
collect Head of Fleet Master Seahorn##59146 |q 26629/1 |goto 41.1,73.3
step
talk Yancey Grillsen##43504
turnin Seeing Where Your Loyalties Lie##26629 |goto 43.8,56.5
accept Your First Day as a Pirate##26631 |goto 43.8,56.5
step
talk Captain Keelhaul##2548
turnin Your First Day as a Pirate##26631 |goto 44.5,91.4
accept Swabbing Duty##26633 |goto 44.5,91.4
step
Go upstairs to the top deck of the ship
click Swabbie's Mop##9742
clicknpc Deck Stain##43511+
Swab the Decks |q 26633/1 |goto 44.5,92.5
|tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
step
talk "Pretty Boy" Duncan##2545
accept Cannonball Swim##26635 |goto 44.5,93.3
step
talk Garr Salthoof##2549
accept The Bane of Many A Pirate##26634 |goto 44.5,91.9
step
talk Captain Keelhaul##2548
turnin Swabbing Duty##26633 |goto 44.5,91.6
step
click Bloodsail Cannonball##204433
collect 6 Bloodsail Cannonball##59151 |q 26635/1 |goto 46.3,96.0
step
click Lime Crate##204432
collect 5 Bushel of Limes##59150 |q 26634/1 |goto 52.5,87.9
You can find more Lime Crates around the following location |goto The Cape of Stranglethorn 56.6,80.0
step
talk "Pretty Boy" Duncan##2545
turnin Cannonball Swim##26635 |goto 44.5,93.2
step
talk Garr Salthoof##2549
turnin The Bane of Many A Pirate##26634 |goto 44.5,91.9
step
talk Captain Keelhaul##2548
accept Attracting Attention##26644 |goto 44.4,91.6
step
talk Fleet Master Firallon##2546
turnin Attracting Attention##26644 |goto 46.7,95.3
step
talk Ironpatch##2547
accept Ol' Blasty##26647 |goto 46.6,95.0
step
Go upstairs
talk "Dead-Eye" Drederick McGumm##43556
accept Our Mortal Enemies##26648 |goto 46.8,94.0
step
clicknpc Ol' Blasty##43562
Use the abilities on your hotbar to shoot at Smilin' Timmy Sticks
|tip It looks like a target dummy floating around in a small boat in the water near the ship you're on.
Hit Smilin' Timmy Sticks with 5 Cannonballs |q 26647/1 |goto 46.9,93.9
step
Click the red arrow on your hotbar to stop using Ol' Blasty |outvehicle |q 26647
step
Go downstairs
talk Ironpatch##2547
turnin Ol' Blasty##26647 |goto 46.6,95.0
accept Drive-By Piracy##26649 |goto 46.6,95.0
step
talk Bloodsail Oarsman##43605
Tell him ahoy matey!
Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers
|tip They look like goblins working on the metal machines.
kill 75 Venture Co. Oil Worker##43596+ |q 26649/1 |goto 45.9,89.7
step
Use the Return to Shore ability on your hotbar
Return to the Wild Shore |goto 46.0,89.4 < 10
Go downstairs in the ship
talk Ironpatch##2547
turnin Drive-By Piracy##26649 |goto 46.6,95.0
step
Use Dead-Eye's Flare Gun |use Dead-Eye's Flare Gun##59226
kill 15 Ninja##43553+ |q 26648/1 |goto 57.1,82.4
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Our Mortal Enemies##26648
step
talk Fleet Master Firallon##2546
accept The Damsel's Luck##26650 |goto 46.7,95.3
step
click Captain Stillwater's Charts##204450
turnin The Damsel's Luck##26650 |goto 50.2,91.5
accept The Brashtide Crew##26662 |goto 50.2,91.5
accept Sinking From Within##26663 |goto 50.2,91.5
accept Making Mutiny##26664 |goto 50.2,91.5
step
talk Long John Copper##43659
Ask him if the Brashtide Crew is ready for battle
Speak with Long John Copper |q 26662/1 |goto 51.3,91.4
step
Go all the way downstairs in this ship
talk Bloodsail Corsair##43636
Tell them they're mutinous dogs, and to draw steel!
Kill as many Bloodsail Corsairs as you can on this ship
click Grog Barrel##204454
<Nudge the cork.>
Sabotage the Grog |q 26663/1 |goto 50.6,91.5
step
Go all the way downstairs in this ship
talk Enormous Shawn Stooker##43660
Ask him what he can tell you about the Brashtide Crew
Speak with Enormous Shawn Stooker |q 26662/2 |goto 46.7,94.2
step
talk Bloodsail Corsair##43636
Tell them they're mutinous dogs, and to draw steel!
Kill as many Bloodsail Corsairs as you can on this ship, unless you've already killed 9 of them
click Gunpowder Barrel##204455
<Pour the water onto the gunpowder.>
Sabotage the Gunpowder |q 26663/2 |goto 46.8,93.7
step
Go downstairs in this ship
talk Wailing Mary Smitts##43661
Ask her if she knows the battle plan
Speak with Wailing Mary Smitts |q 26662/3 |goto 44.5,93.2
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin The Brashtide Crew##26662
step
Go all the way downstairs in this ship
click Cannonball Crate##204456
<Grease the cannonballs.>
Sabotage the Cannonballs |q 26663/3 |goto 44.7,92.8
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Sinking From Within##26663
step
talk Bloodsail Corsair##43636
Tell them they're mutinous dogs, and to draw steel!
Accuse and kill 9 Bloodsail Corsairs |q 26664/1 |goto 44.8,92.9
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Making Mutiny##26664
accept Call of Booty##26665
step
Go upstairs
talk Baron Revilgaz##2496
turnin Call of Booty##26665 |goto 41.2,73.1
accept Doublerum##26678 |goto 41.2,73.1
step
Go downstairs one level
click Barrel of Doublerum##204578
turnin Doublerum##26678 |goto 40.6,73.2
accept Return to Revilgaz##26679 |goto 40.6,73.2
step
It is very important that you do not turn this quest in. As long as you have it in your log you will be in the correct phase to farm Bloodsail Buccaneer reputation on weaker units.
|confirm
step
In order to farm reputation you must be "At War" with Booty Bay. Do this by hitting _[U]_ and finding the Booty Bay reputation among your list. Click on it and then check the box next to "At War" on the new window that appears.
Kill any npc with a Booty Bay I.D. in their name, most will award you reputation.
|tip The following NPCs give more reputation than the others in Booty Bay: Baron Revilgaz, Viznik and Rickle Goldgrubber, Gizzlowe, and Wharfmaster Lozgil.
Earn Exalted status with the Bloodsail Buccaneers |complete rep('Bloodsail Buccaneers')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are Exalted with the Bloodsail Buccaneers!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Brood of Nozdormu",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Brood of Nozdormu faction.",
achieveid={956},
patch='30001',
},[[
step
This reputation can be earned by running the Ahn'Qiraj raid.
Ahn'Qiraj is a 40 man raid and will require you to be higher level, bringing some friends is recommended.
|confirm
step
label "start"
Skipping to next step |complete rep('Brood of Nozdormu')>=Friendly|next "farm" |only if rep('Brood of Nozdormu')>=Friendly
Skipping to next step |complete rep('Brood of Nozdormu')<=Neutral |next "hun" |only if rep('Brood of Nozdormu')<=Neutral
step
label "hun"
Every enemy npc in this instance gives reputation and has a chance to drop Scarabs that you can turn in. Bosses drop Ancient Qiraji Artifacts
Collect as many as you can, but do not turn them in yet
collect Clay Scarab##20863 |n |goto Ahn'Qiraj: The Fallen Kingdom 46.8,7.5
collect Bronze Scarab##20861+ |n |goto Ahn'Qiraj: The Fallen Kingdom 46.8,7.5
collect Silver Scarab##20860+ |n |goto Ahn'Qiraj: The Fallen Kingdom 46.8,7.5
collect Gold Scarab##20859+ |n |goto Ahn'Qiraj: The Fallen Kingdom 46.8,7.5
collect Crystal Scarab##20862 |n |goto Ahn'Qiraj: The Fallen Kingdom 46.8,7.5
collect Qiraji Lord's Insignia##21229+ |n |goto Ahn'Qiraj: The Fallen Kingdom 46.8,7.5
collect 1 Ancient Qiraji Artifact##21230 |n |goto Ahn'Qiraj: The Fallen Kingdom 46.8,7.5
Use the Ancient Qiraji Artifact in your bags |use Ancient Qiraji Artifact##21230
accept Secrets of the Qiraji##8784 |repeatable
You can turn this quest insnide of Ahn'Qiraj |goto Ahn'Qiraj/2 59.6,68.2
turnin Secrets of the Qiraji##8784 |repeatable
Reach _2999/3000_ Neutral reputation with Brood of Nozdormu: |complete repval('Brood of Nozdormu','Neutral')>=2999
Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm |only if rep('Brood of Nozdormu')>=Friendly
Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm |only if rep('Brood of Nozdormu')>=Friendly
|talk Andorgos##15502
step
label "turninmob"
Use Ancient Qiraji Artifact |use Ancient Qiraji Artifact##21230
accept Secrets of the Qiraji##8784 |n |goto Ahn'Qiraj/2 59.6,68.2
talk Andorgos##15502
turnin Secrets of the Qiraji##8784 |n |goto Ahn'Qiraj/2 59.6,68.2
Repeat this step until you run out of Ancient Scarabs
Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
Click here to go back to farming |next "farm" |confirm
Earn Exalted status with the Brood of Nozdormu |complete rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label "turninboss"
talk Kandrostrasz##15503
accept Mortal Champions##8579 |only if not completedq(8579) |n |goto Ahn'Qiraj/2 59.1,68.8
accept Mortal Champions##8595 |only if completedq(8579) |n |goto Ahn'Qiraj/2 59.1,68.8
turnin Mortal Champions##8579 |only if not completedq(8579) |n |goto Ahn'Qiraj/2 59.1,68.8
turnin Mortal Champions##8595 |only if completedq(8579) |n |goto Ahn'Qiraj/2 59.1,68.8
Repeat this step until you run out of Qiraji Lord's Insignias
Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
Click here to go back to farming |next "farm" |confirm
Earn Exalted status with the Brood of Nozdormu |complete rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label "farm"
You are currently _Friendly_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Friendly
You are currently _Honored_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Honored
You are currently _Revered_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Revered
Every enemy npc in this instance gives reputation and has a chance to drop Ancient Qiraji Artifacts. Collect as many of these as you can.
Bosses in this instance drop Qiraji Lord's Insignias.
Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
Earn Exalted status with the Brood of Nozdormu |complete rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are Exalted with the Brood of Nozdormu!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Cenarion Circle",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Cenarion Circle faction.",
achieveid={953},
patch='30001',
},[[
#include "Cenarion_Circle_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Darkmoon Faire",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Darkmoon Faire faction.",
achieveid={2336},
patch='30100',
},[[
step
The Darkmoon Faire starts the first Sunday of the month and lasts for one week. The easiest way to earn reputation with
The Darkmoon Faire is to do dailies on Darkmoon Faire Island every day that the Faire is in town
|confirm
step
Click here to go to the Darkmoon Faire Dailies Guide |next "dailies"
You can also earn reputation by turning in Darkmoon Decks
Click here to view the Darkmoon Deck statistics |next "cards" |confirm
step
label "dailies"
Continuing...
leechsteps "Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies"
step
label "cards"
You can now only get cards using _Inscription_, or buying them at the _Auction House_
Cards may be the most expensive turnin for the Faire, but they also provide the most reputation
The higher level of card that you turn in, the more reputation you will receive
You will receive 350 reputation for turning in any Epic Darkmoon Decks and 25 reputation for rogues decks
This means that without guild perks you need 109 epic decks or 1520 rogues decks to become Exalted from Friendly
Reach Neutral with Darkmoone Faire |complete rep('Darkmoon Faire')>=Neutral |only if rep('Darkmoon Faire')>=Neutral and rep('Darkmoon Faire')<=Neutral
Reach Friendly with Darkmoone Faire |complete rep('Darkmoon Faire')>=Friendly |only if rep('Darkmoon Faire')>=Friendly and rep('Darkmoon Faire')<=Friendly
Reach Honored with Darkmoone Faire |complete rep('Darkmoon Faire')>=Honored |only if rep('Darkmoon Faire')>=Honored and rep('Darkmoon Faire')<=Honored
Reach Revered with Darkmoone Faire |complete rep('Darkmoon Faire')>=Revered |only if rep('Darkmoon Faire')>=Revered and rep('Darkmoon Faire')<=Revered
Reach Exalted with Darkmoone Faire |complete rep('Darkmoon Faire')>=Exalted
|next "end"
step
label "end"
Congratulations, you have reached Exalted with The Darkmoon Faire! |complete rep('Darkmoon Faire')>=Exalted |only if rep('Darkmoon Faire')>=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Darnassus",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Darnassus faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Darnassus') < Exalted end,
},[[
step
talk Moon Priestess Lasara##50305
buy Darnassus Tabard##45579 |n |goto Darnassus 36.2,48.5
Equip your Darnassus Tabard |equipped Darnassus Tabard##45579 |use Darnassus Tabard##45579 |future
You can run any dungeon that grants experience to gain reputation for Darnassus
Become Exalted with Darnassus |complete rep('Darnassus')==Exalted
step
Congratulations, you have reached exalted with Darnassus!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Gnomeregan",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Gnomeregan faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Gnomeregan') < Exalted end,
},[[
step
talk Master Tinker Trini##50308
buy Gnomeregan Tabard##45578 |n |goto Ironforge 55.3,48.2
Equip your Gnomeregan Tabard |equipped Gnomeregan Tabard##45578 |use Gnomeregan Tabard##45578 |future
You can run any dungeon that grants experience to gain reputation for Gnomeregan
Become Exalted with Gnomeregan |complete rep('Gnomeregan')==Exalted
step
Congratulations, you have reached exalted with Gnomeregan!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Hydraxian Waterlords",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Hydraxian Waterlords faction.",
achieveid={955},
patch='30001',
},[[
step
talk Lothos Riftwaker##14387
Ask Lothos to transport you to Molten Core |goto Burning Steppes 18.2,24.9 < 5
Kill every creature that is hostile in this instance in order to gain reputation |goto Molten Core/1 27.0,25.8
|tip You will have to clear this place many times to reach Exalted
Earn Exalted status with the Hydraxian Waterlords |complete rep('Hydraxian Waterlords')==Exalted
|tip You can only become Exalted by killing Golemagg the Incinerator or Ragnaros, the maximum rep you can get without these two dying is 20999/21000 Revered.
step
Congratulations, you are now Exalted with the Hydraxian Waterlords!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Ironforge",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Ironforge faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Ironforge') < Exalted end,
},[[
step
talk Captain Stonehelm##50309
buy Ironforge Tabard##45577 |n |goto Ironforge 55.6,47.3
Equip your Ironforge Tabard |equipped Ironforge Tabard##45577 |use Ironforge Tabard##45577 |future
You can run any dungeon that grants experience to gain reputation for Ironforge
Become Exalted with Ironforge |complete rep('Ironforge')==Exalted
step
Congratulations, you have reached exalted with Ironforge!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\The League of Arathor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The League of Arathor faction.",
achieveid={711},
patch='30001',
},[[
step
Reach "Friendly" Reputation with The League of Arathor |complete rep('The League of Arathor') >= Friendly
|tip Use the Player vs. Player Group Finder tool and queue for Arathi Basin.
|tip If the "Comp Stomp Brawl" bonus battleground is avalable, queue for that instead.
|tip Continue running these battlegrounds for reputation.
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') or rep('The League of Arathor') == Exalted |goto Arathi Highlands/0 38.24,90.09
step
talk Samuel Hawke##15127
accept Arathor Basic Care Package##8260 |goto 40.11,46.44 |only if default
accept Arathor Standard Care Package##8261 |goto 40.11,46.44 |only if level >= 35 and level < 45
accept Arathor Advanced Care Package##8262 |goto 40.11,46.44 |only if level >= 45
step
Reach "Exalted" Reputation with The League of Arathor |complete rep('The League of Arathor') == Exalted
|tip Use the Player vs. Player Group Finder tool and queue for Arathi Basin.
|tip If the "Comp Stomp Brawl" bonus battleground is avalable, queue for that instead.
|tip Continue running these battlegrounds for reputation.
step
_Congratulations!_
You are Now Exalted with "The League of Arathor."
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Ravenholdt",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Ravenholdt faction.",
achieveid={2336},
patch='30100',
},[[
step
In order to get Exalted with Ravenholdt Faction, you need to grind mobs to _11,999/12,000_ Honored reputation
Once you've reached Honored, you will need to collect a lot of Heavy Junkboxes
If you aren't a rogue, you will need the assistance of one
You can get a lot of Heavy Junkboxes frequently if you go to Blackrock Spire, but unless you're an engineer, it will be time consuming to run back and forth to a mailbox to clear up space
|confirm always
step
kill Syndicate Mercenary##2589+, Syndicate Highwayman##2586+, Syndicate Pathstalker##2587+
kill Syndicate Conjuror##2590+, Syndicate Magus##2591+, Syndicate Thief##24477+, Syndicate Prowler##2588+ |goto Arathi Highlands,27.1,30.6
You can find more Syndicate at the following location |goto Arathi Highlands 19.5,61.5
Reach _11,999/12,000_ Honored with Ravenholdt.
|tip You can only get 1 point away from Revered by grinding, then you will have to do quests.
Click here to continue |confirm
|only if repval('Ravenholdt','Honored')<=11999
step
label "boxes"
Now that you have reached Revered, or close to it, you will need to do repeatable quests until Exalted.
The only thing you need for the repeatable quests are _Heavy Junkboxes_.
You can get these by having a _Rogue_ pickpocket mobs in the Blackrock Spire Dungeon.
|tip You can also announce in the Trade Chat of any major city that you are willing to purchase Heavy Junkboxes in multiples of 5, whether by mail or in person for x amount of gold.
You will need to turnin a total of 1400 _Heavy Junkboxes_ with at least 1 item left in them to go from _Revered_ to _Exalted_.
|tip If you have the guild perk Mr. Popularity you only need 1170.
collect Heavy Junkbox##16885+ |n |goto Blackrock Spire/2 59.0,58.1
Click here to continue and turn in your Boxes |confirm
step
talk Winstone Wolfe##7323
accept Junkboxes Needed##8249 |repeatable |n |goto Hillsbrad Foothills 71.4,45.0
You are currently _Honored_ with Ravenholdt |only if rep('Ravenholdt')==Honored
You are currently _Revered_ with Ravenholdt |only if rep('Ravenholdt')==Revered
Reach Exalted with Ravenholdt |complete rep('Ravenholdt')==Exalted |next "end"
or
Click here to get more _Heavy Junkboxes_ |confirm |next "boxes"
step
label "end"
Congratulations, you have reached Exalted with Ravenholdt!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Silverwing Sentinels",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Silverwing Sentinels faction.",
achieveid={713},
patch='30001',
},[[
step
In order to gain reputation with the Silverwing Sentinels you and your team must capture flags in Warsong Gulch.
To join Warsong Gulch hit the _[H]_ key, click _Warsong Gulch_, and click _Join Battle_.
Earn Exalted status with the Silverwing Sentinels |complete rep('Silverwing Sentinels')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Silverwing Sentinels!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\The Steamwheedle Cartel",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Steamwheedle Cartel faction.",
},[[
step
label "Steam_Menu"
To earn the Insane Title, you will need to get your reputation to Exalted with all the
Steamwheedle Cartel factions: _Booty Bay_, _Gadgetzan_, _Everlook_, and _Ratchet_. While raising your reputation with these factions
You will need to keep Honored status with the _Bloodsail Buccaneers_.
Click here to continue |confirm always
step
label "Steam_Menu2"
Click here to work on _Booty Bay_ reputation. |confirm |next "bootybaymenu" |only if rep('Booty Bay')<Exalted
Click here to work on _Gadgetzan_ reputation. |confirm |next "gadgetmenu" |only if rep('Gadgetzan')<Exalted
Click here to work on _Everlook_ reputation. |confirm |next "everlookmenu" |only if rep('Everlook')<Exalted
Click here to work on _Ratchet_ reputation. |confirm |next "ratchetmenu" |only if rep('Ratchet')<Exalted
Click here if you are exalted with _Ratchet_, _Everlook_, _Booty Bay_, and are 1 reputation away from Exalted with _Gadgetzan_. |confirm |next "gadgetmenu2" |only if rep('Gadgetzan')<Exalted
step
label "bootybaymenu"
You are currently _Friendly_ with Booty Bay |only if rep('Booty Bay')==Friendly
You are currently _Honored_ with Booty Bay |only if rep('Booty Bay')==Honored
You are currently _Revered_ with Booty Bay |only if rep('Booty Bay')==Revered
Become Exalted with Booty Bay |complete rep('Booty Bay')==Exalted
Click here to raise your Reputation with Booty Bay by _killing Southsea Mobs_.
|tip You can use this regardless of your current reputation. |confirm always |next "gadget" |only if rep('Booty Bay')<=Revered
Click here to raise your Reputation with Booty Bay by _turning in stacks of cloth_.
|tip This will only work from Hated up to Neutral |confirm always |next "bbcloth" |only if rep('Booty Bay')<Neutral
step
label "gadgetmenu"
You are currently _Friendly_ with Gadgetzan |only if rep('Gadgetzan')==Friendly
You are currently _Honored_ with Gadgetzan |only if rep('Gadgetzan')==Honored
You are currently _Revered_ with Gadgetzan |only if rep('Gadgetzan')==Revered
Become Exalted with Gadgetzan |complete rep('Gadgetzan')==Exalted
Click here to raise your Reputation with Gadgetzan by _killing Southsea Mobs_.
|tip You can use this regardless of your current reputation. |confirm always |next "gadget" |only if rep('Gadgetzan')<=Revered
Click here to raise your Reputation with Gadgetzan by _turning in stacks of cloth_.
|tip This will only work from Hated up to Neutral |confirm always |next "gadgetcloth" |only if rep('Booty Bay')<Neutral
step
label "gadgetmenu2"
You are currently _Revered_ with Gadgetzan |only if rep('Gadgetzan')==Revered
Become Exalted with Gadgetzan |complete rep('Gadgetzan')==Exalted
|tip This part of the guide is only to get the last point of reputation to gain exalted reputation with Gadgetzan.
kill Southsea Cutthroat##3383+, Southsea Privateer##3384+ |goto Northern Barrens 77.2,89.8
Gain Exalted reputation with Gadgetzan |complete rep('Gadgetzan')==Exalted
step
label "everlookmenu"
You are currently _Friendly_ with Everlook |only if rep('Everlook')==Friendly
You are currently _Honored_ with Everlook |only if rep('Everlook')==Honored
You are currently _Revered_ with Everlook |only if rep('Everlook')==Revered
Become Exalted with Everlook |complete rep('Everlook')==Exalted
Click here to raise your Reputation with Everlook by _killing Southsea Mobs_.
|tip You can use this regardless of your current reputation. |confirm always |next "ratchet" |only if rep('Everlook')<=Revered
Click here to raise your Reputation with Everlook by _turning in stacks of cloth_.
|tip This will only work from Hated up to Neutral |confirm always |next "everlookcloth" |only if rep('Booty Bay')<Neutral
step
label "ratchetmenu"
You are currently _Friendly_ with Ratchet |only if rep('Ratchet')==Friendly
You are currently _Honored_ with Ratchet |only if rep('Ratchet')==Honored
You are currently _Revered_ with Ratchet |only if rep('Ratchet')==Revered
Become Exalted with Ratchet |complete rep('Ratchet')==Exalted
Click here to raise your Reputation with Ratchet by _killing Southsea Mobs_.
|tip You can use this regardless of your current reputation. |confirm always |next "ratchet" |only if rep('Ratchet')<=Revered
Click here to raise your Reputation with Ratchet by _turning in stacks of cloth_.
|tip This will only work from Hated up to Neutral |confirm always |next "ratchetcloth" |only if rep('Booty Bay')<Neutral
|next "end" |only if default
step
label "bbcloth"
map Thousand Needles
path	10.7,9.2	11.6,9.4
path	13.7,7.9	12.6,4.9
kill Grimtotem Pillager##39947+
collect 40 Silk Cloth##4306 |n
You can also buy these at the _Auction House_
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
Click here to turn in the Silk Cloth for reputation |confirm
step
#include "vendor_Tailoring"
buy 4 Red Dye##2604 |n
|tip You will need 4 Red Dye for every 40 Silk Cloth.
|confirm
step
talk Bloodsail Traitor##16399
accept Traitor to the Bloodsail##9259 |n |goto The Cape of Stranglethorn 48.6,63.2
turnin Traitor to the Bloodsail##9259 |n |goto The Cape of Stranglethorn 48.6,63.2
Turn this quest in until you are Neutral with Booty Bay |complete rep('Booty Bay')>=Neutral
Click here to continue gathering cloth for turn-ins. |confirm |next "bbcloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "gadgetcloth"
kill Risen Guardsman##10418+, Risen Initiate##10420+, Risen Defender##10421+, Risen Sorcerer##10422+, Willey Hopebreaker##10997+, Risen Gallant##10424+, Risen Inquisitor##10426+, Risen Monk##11043+, Instructor Galford##10811+
collect 40 Mageweave Cloth##4338 |n |goto Stratholme/1 33.4,33.0
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Mageweave Cloth for reputation. |confirm |next "turningadgetcloth"
step
label "turningadgetcloth"
#include "vendor_Blacksmithing"
buy 4 Strong Flux##3466 |n
|tip You will need 4 Strong Flux for every 40 Mageweave Cloth.
|confirm
step
talk Rumsen Fizzlebrack##16417
accept War at Sea##9268 |n |goto Tanaris 50.4,27.2
turnin War at Sea##9268 |n |goto Tanaris 50.4,27.2
Turn this quest in until you are Neutral with Gadgetzan |complete rep('Gadgetzan')>=Neutral
Click here to continue gathering cloth for turn-ins |confirm |next "gadgetcloth"
Click here to go back to the main menu |confirm |next "Steam_Menu2"
step
label "everlookcloth"
map Silithus
path	44.5,38.0	46.5,40.4	44.9,44.7
path	42.9,41.4	34.2,33.7	31.6,32.1
path	32.9,30.1	35.2,29.9
kill Twilight Avenger##11880+
kill Twilight Geolord##11881+
|tip AVOID Twilight Stonecallers.
collect 40 Runecloth##14047 |n
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Silk Cloth for reputation |confirm
step
label "turninevercloth"
#include "vendor_Blacksmithing"
buy 4 Coal##3857 |n
|tip You will need 4 Coal for every 40 Runecloth.
|confirm
step
talk Bronn Fitzwrench##16416
accept Making Amends##9266 |n |goto Winterspring 58.0,52.5
turnin Making Amends##9266 |n |goto Winterspring 58.0,52.5
Turn this quest in until you are Neutral with Everlook. |complete rep('Everlook')>=Neutral
Click here to continue gathering cloth for turn-ins. |confirm |next "everlookcloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "ratchetcloth"
kill Dragonmaw Whelpstealer##42041+
kill Ebon Slavehunter##42043+
collect 40 Linen Cloth##2589 |n |goto Wetlands/0 67.3,47.3
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Silk Cloth for reputation |confirm
step
label "turninratchetcloth"
#include "vendor_Alchemy"
buy 4 Crystal Vial##3371 |n
|tip You will need 4 Crystal Vials for every 40 Linen Cloth.
|confirm
step
talk Mupsi Shacklefridd##16418
accept Mending Old Wounds##9267 |n |goto Northern Barrens 65.8,72.0
turnin Mending Old Wounds##9267 |n |goto Northern Barrens 65.8,72.0
Turn this quest in until you are Neutral with Ratchet |complete rep('Ratchet')>=Neutral
You can also buy these from the _Auction House_
Click here to continue gathering cloth for turn-ins. |confirm |next "ratchetcloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "gadget"
kill Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+ |goto Tanaris,72.3,47.1
You can find more Pirates around at the following location |goto 69.5,53.8
Hated |complete rep('Gadgetzan')>=Hated |only if rep('Gadgetzan')>=Hated and rep('Gadgetzan')<=Hated
Hostile |complete rep('Gadgetzan')>=Hostile |only if rep('Gadgetzan')>=Hostile and rep('Gadgetzan')<=Hostile
Unfriendly |complete rep('Gadgetzan')>=Unfriendly |only if rep('Gadgetzan')>=Unfriendly and rep('Gadgetzan')<=Unfriendly
Neutral |complete rep('Gadgetzan')>=Neutral |only if rep('Gadgetzan')>=Neutral and rep('Gadgetzan')<=Neutral
Friendly |complete rep('Gadgetzan')>=Friendly |only if rep('Gadgetzan')>=Friendly and rep('Gadgetzan')<=Friendly
Honored |complete rep('Gadgetzan')>=Honored |only if rep('Gadgetzan')>=Honored and rep('Gadgetzan')<=Honored
Revered |complete rep('Gadgetzan')>=Revered |only if rep('Gadgetzan')>=Revered and rep('Gadgetzan')<=Revered
Gain Exalted reputation with Gadgetzan |complete rep('Gadgetzan')==Exalted
And
Hated |complete rep('Booty Bay')>=Hated |only if rep('Booty Bay')>=Hated and rep('Booty Bay')<=Hated
Hostile |complete rep('Booty Bay')>=Hostile |only if rep('Booty Bay')>=Hostile and rep('Booty Bay')<=Hostile
Unfriendly |complete rep('Booty Bay')>=Unfriendly |only if rep('Booty Bay')>=Unfriendly and rep('Booty Bay')<=Unfriendly
Neutral |complete rep('Booty Bay')>=Neutral |only if rep('Booty Bay')>=Neutral and rep('Booty Bay')<=Neutral
Friendly |complete rep('Booty Bay')>=Friendly |only if rep('Booty Bay')>=Friendly and rep('Booty Bay')<=Friendly
Honored |complete rep('Booty Bay')>=Honored |only if rep('Booty Bay')>=Honored and rep('Booty Bay')<=Honored
Revered |complete rep('Booty Bay')>=Revered |only if rep('Booty Bay')>=Revered and rep('Booty Bay')<=Revered
Gain Exalted reputation with Booty Bay |complete rep('Booty Bay')==Exalted
Click to go back to the Steamwheedle Menu |confirm always |next "Steam_Menu2"
|next "Steam_Menu2"
step
label "ratchet"
kill Southsea Privateer##3384+, Southsea Cutthroat##3383+, Glomp##34747, Southsea Recruit##44168+ |goto Northern Barrens,77.5,90.1
Hated |complete rep('Ratchet')>=Hated |only if rep('Ratchet')>=Hated and rep('Ratchet')<=Hated
Hostile |complete rep('Ratchet')>=Hostile |only if rep('Ratchet')>=Hostile and rep('Ratchet')<=Hostile
Unfriendly |complete rep('Ratchet')>=Unfriendly |only if rep('Ratchet')>=Unfriendly and rep('Ratchet')<=Unfriendly
Neutral |complete rep('Ratchet')>=Neutral |only if rep('Ratchet')>=Neutral and rep('Ratchet')<=Neutral
Friendly |complete rep('Ratchet')>=Friendly |only if rep('Ratchet')>=Friendly and rep('Ratchet')<=Friendly
Honored |complete rep('Ratchet')>=Honored |only if rep('Ratchet')>=Honored and rep('Ratchet')<=Honored
Revered |complete rep('Ratchet')>=Revered |only if rep('Ratchet')>=Revered and rep('Ratchet')<=Revered
Gain Exalted reputation with Ratchet |complete rep('Ratchet')==Exalted
And
Hated |complete rep('Everlook')>=Hated |only if rep('Everlook')>=Hated and rep('Everlook')<=Hated
Hostile |complete rep('Everlook')>=Hostile |only if rep('Everlook')>=Hostile and rep('Everlook')<=Hostile
Unfriendly |complete rep('Everlook')>=Unfriendly |only if rep('Everlook')>=Unfriendly and rep('Everlook')<=Unfriendly
Neutral |complete rep('Everlook')>=Neutral |only if rep('Everlook')>=Neutral and rep('Everlook')<=Neutral
Friendly |complete rep('Everlook')>=Friendly |only if rep('Everlook')>=Friendly and rep('Everlook')<=Friendly
Honored |complete rep('Everlook')>=Honored |only if rep('Everlook')>=Honored and rep('Everlook')<=Honored
Revered |complete rep('Everlook')>=Revered |only if rep('Everlook')>=Revered and rep('Everlook')<=Revered
Gain Exalted reputation with Everlook |complete rep('Everlook')==Exalted
Click to go back to the Steamwheedle Menu |confirm always |next "Steam_Menu2"
|next "Steam_Menu2"
step
label "end"
Congratulations! You are honored with the Steamwheedle Cartel!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Stormpike Guard",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Stormpike Guard faction.",
achieveid={709},
patch='30001',
},[[
step
In order to gain reputation with the Stormpike Guard you must participate in Alterac Valley, but first you should pick up a few quests.
|confirm
step
talk Prospector Stonehewer##13816
accept The Battle of Alterac##7141 |goto Hillsbrad Foothills 45.3,45.2
step
talk Lieutenant Haggerdin##13841
accept Proving Grounds##7162 |goto 44.7,46.2
step
Enter the cave |goto 44.6,45.8 < 5 |walk
talk Sergeant Durgen Stormpike##13777
accept Alterac Valley Graveyards##7081 |goto 43.1,43.9
accept Towers and Bunkers##7102 |goto 43.1,43.9
accept Capture a Mine##7122 |goto 43.1,43.9
step
To join Alterac Valley hit the _[H]_ key, click _Alterac Valley_, and click _Join Battle_.
|confirm
step
talk Murgot Deepforge##13257
accept Armor Scraps##7223 |goto Alterac Valley 43.5,15.6
step
Enter the cave |goto 40.3,28.6 <5 |c
step
Follow the path around and click the Stormpike Banner
click Stormpike Banner##179024
collect Stormpike Banner##17849 |q 7162/1 |goto 41.9,36.2
step
label "checklist"
Exit the cave |goto 40.3,28.6 < 5 |walk
While in Alterac Valley:
|tip You probably won't be able to do everything in one game, keep joining Alterac Valley matches.
Click Horde Flag
Assault any Graveyard |q 7081/1
Capture any Mine |q 7122/1
Click Horde Flag
Assault any Tower |q 7102/1
Loot Horde players when they die.
collect 20 Armor Scraps##17422 |q 7223/1
kill Drek'Thar##11946 |q 7141/1
step
Before you leave Alterac Valley:
talk Murgot Deepforge##13257
turnin Armor Scraps##7223 |goto Alterac Valley 43.5,15.6
step
To return to the Alterac Valley checklist click here. |next "checklist" |confirm
To continue forward click here. |confirm
step
talk Prospector Stonehewer##13816
turnin The Battle of Alterac##7141 |goto Hillsbrad Foothills 45.3,45.2
step
talk Lieutenant Haggerdin##13841
turnin Proving Grounds##7162 |goto 44.7,46.2
step
Enter the cave |goto 44.6,45.8 < 5 |walk
talk Sergeant Durgen Stormpike##13777
turnin Alterac Valley Graveyards##7081 |goto 43.1,43.9
turnin Capture a Mine##7122 |goto 43.1,43.9
turnin Towers and Bunkers##7102 |goto 43.1,43.9
step
Continue joining Alterac Valley until you reach Friendly with the Stormpike Guard. |complete rep('Stormpike Guard')>=Friendly |next "friendly"
step
label "friendly"
talk Lieutenant Haggerdin##13841
accept Rise and Be Recognized##7168 |goto Hillsbrad Foothills 44.7,46.2
step
Continue joining Alterac Valley until you reach Honored with the Stormpike Guard. |complete rep('Stormpike Guard')>=Honored |next "honored"
step
label "honored"
talk Lieutenant Haggerdin##13841
accept Honored Amongst the Guard##7169 |goto Hillsbrad Foothills 44.7,46.2
step
Continue joining Alterac Valley until you reach Revered with the Stormpike Guard. |complete rep('Stormpike Guard')==Revered |next "revered"
step
label "revered"
talk Lieutenant Haggerdin##13841
accept Earned Reverence##7170 |goto Hillsbrad Foothills 44.7,46.2
step
Continue joining Alterac Valley until you reach Exalted with the Stormpike Guard. |complete rep('Stormpike Guard')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Stormpike Guard!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Stormwind",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Stormwind faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Stormwind') < Exalted end,
},[[
step
talk Captain Lancy Revshon##49877
buy Stormwind Tabard##45574 |n |goto Stormwind City 67.7,73.0
Equip your Stormwind Tabard |equipped Stormwind Tabard##45574 |use Stormwind Tabard##45574 |future
You can run any dungeon that grants experience to gain reputation for Stormwind
Become Exalted with Stormwind |complete rep('Stormwind')==Exalted
step
Congratulations, you have reached exalted with Stormwind!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Thorium Brotherhood",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Thorium Brotherhood faction.",
},[[
step
talk Lunk##47269
accept Lunk's Task##27956 |goto Searing Gorge,68.9,53.3
step
talk Jack Rockleg##47266
turnin To the Aid of the Thorium Brotherhood##28512 |goto 68.6,53.4
accept A New Master... But Who?##27963 |goto 68.6,53.4
step
talk Burrian Coalpart##47267
accept The Fewer, the Better##27960 |goto 68.5,53.3
step
kill Gravius Grimesilt##47270
|tip He walks around this area, so you may have to search for him.
collect Dark Iron Memo##62807 |q 27963/1 |goto 62.2,61.3
kill Dark Geologist##5839, Dark Iron Watchman##8637 |q 27960/1
kill Tempered War Golem##5853+
collect 15 Tempered Flywheel##62805 |q 27956/1 |goto 62.2,61.3
step
talk Burrian Coalpart##47267
turnin The Fewer, the Better##27960 |goto 68.5,53.3
accept Out of Place##27961 |goto 68.5,53.3
accept A Lumbering Relic##27962 |goto 68.5,53.3
step
talk Jack Rockleg##47266
turnin A New Master... But Who?##27963 |goto 68.6,53.4
accept Dig-Boss Dinwhisker##27964 |goto 68.6,53.4
step
talk Lunk##47269
turnin Lunk's Task##27956 |goto 68.9,53.3
accept Lunk No Kill##27957 |goto 68.9,53.3
step
talk Prisanne Dustcropper##47268
accept A Proper Antivenom##27958 |goto 68.7,53.3
step
kill Glassweb Spider##5856
Lunk will appear next to you
talk Lunk##47280
accept Lunk's Adventure: Spider Rider##27959 |goto 58.1,62.4
step
kill Glassweb Spider##5856+
Let Lunk ride 7 spiders |q 27959/1 |goto 58.1,62.4
clicknpc Lunk##47299
collect 14 Glassweb Venom##62809 |q 27958/1 |goto 58.1,62.4
clicknpc Ash Chicken##47278+
collect 8 Ash Chicken##62934 |q 27961/1 |goto 58.1,62.4
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Lunk's Adventure: Spider Rider##27959
step
The path up to Margol the Rager starts here |goto 65.1,75.9 < 10 |q 27962 |only if walking
kill Margol the Rager##5833
collect Margol's Gigantic Horn##10005 |q 27962/1 |goto 71.2,73.5
step
talk Burrian Coalpart##47267
turnin Out of Place##27961 |goto 68.5,53.3
turnin A Lumbering Relic##27962 |goto 68.5,53.3
step
talk Prisanne Dustcropper##47268
turnin A Proper Antivenom##27958 |goto 68.7,53.3
step
Follow the path down |goto 63.4,38.5 < 10 |q 27964 |only if walking
kill Dark Iron Footman##47275+, Dark Iron Excavator##47276+
Eventually, Dig-Boss Dinwhisker will spawn
|tip You will see him yell in your chat window, asking what in hell's name is going on out here. He spawns in the location where this step's arrow points to.
kill Dig-Boss Dinwhisker##47271
click Dark Ember##206573
collect Dark Ember##62806 |q 27964/1 |goto 54.2,44.4
step
Follow the path up |goto 58.2,40.6 < 10 |q 27964 |only if walking
talk Jack Rockleg##47266
turnin Dig-Boss Dinwhisker##27964 |goto 68.6,53.4
accept Thorium Point: The Seat of the Brotherhood##27965 |goto 68.6,53.4
step
The path up to Thorium Point starts here |goto 40.9,36.7 < 10 |future |q 2796 |only if walking
talk Lanie Reed##2941
fpath Thorium Point |goto 37.9,30.9
step
talk Lookout Captain Lolo Longstriker##14634
accept The Spiders Have to Go##27980 |goto 37.7,26.6
step
talk Overseer Oilfist##14625
turnin Thorium Point: The Seat of the Brotherhood##27965 |goto 38.1,27.0
accept Rasha'krak##28099 |goto 38.1,27.0
step
talk Hansel Heavyhands##14627
accept Curse These Fat Fingers##27976 |goto 38.5,27.9
accept Heat That Just Don't Quit##27981 |goto 38.5,27.9
step
talk Taskmaster Scrange##14626
accept Recon Essentials##27977 |goto 37.2,28.7
stickystart "rashakrak"
step
kill Dark Iron Steamsmith##5840
Lunk will appear next to you
talk Lunk##47332
accept Lunk's Adventure: Cranky Little Dwarfs##27983 |goto 41.0,39.6
step
kill Dark Iron Steamsmith##5840+
Let Lunk put 7 Dark Iron Steamsmiths to sleep |q 27983/1 |goto 41.6,41.4
collect Smithing Tuyere##18959 |q 27977/1 |goto 41.6,41.4
collect Lookout's Spyglass##18960 |q 27977/2 |goto 41.6,41.4
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Lunk's Adventure: Cranky Little Dwarfs##27983
step
label "rashakrak"
kill Rasha'krak##47553
|tip He's a magma elemental that patrols the lava pools around this area. You may need to search for him.
collect Rasha'krak's Bracers of Binding##63028 |q 28099/1 |goto 42.6,36.6
Use your Furnace Flasks on Blazing Elementals, Magma Elementals and Inferno Elementals while they are alive |use Furnace Flasks##62826
collect 10 Filled Furnace Flask##62827 |q 27981/1 |goto 42.6,36.6
You can also find Rasha'krak, along with more elementals at the following locations:
Location 1: |goto Searing Gorge 39.3,40.5
Location 2: |goto Searing Gorge 31.6,43.1
step
kill 9 Greater Lava Spider##5858+ |q 27980/1 |goto 29.8,42.0
step
kill 12 Heavy War Golem##5854+ |q 27976/1 |goto 32.3,46.6
step
_Follow_ the path up |goto 40.9,36.7 < 10 |q 27976 |only if walking
talk Hansel Heavyhands##14627
turnin Curse These Fat Fingers##27976 |goto 38.5,27.9
turnin Heat That Just Don't Quit##27981 |goto 38.5,27.9
step
talk Taskmaster Scrange##14626
turnin Recon Essentials##27977 |goto 36.8,28.2
accept Twilight Collars##27982 |goto 36.8,28.2
step
talk Hansel Heavyhands##14627
accept Dark Ministry##27979 |goto 38.5,27.9
step
talk Lookout Captain Lolo Longstriker##14634
turnin The Spiders Have to Go##27980 |goto 37.7,26.6
step
Go to the top of the tower
talk Overseer Oilfist##14625
turnin Rasha'krak##28099 |goto 38.1,27.0
step
_Follow_ the path up |goto 24.3,33.0 < 10 |only if walking
kill Minister Finister##47311
collect Finister's Spherule##62824 |q 27979 |goto 24.6,26.3
step
talk Zamael Lunthistle##8436
accept Lunthistle's Tale##27984 |goto 29.5,26.4
step
talk Zamael Lunthistle##8436
Tell him you wish to hear his tale
Listen to Zamael's Story |q 27984/1 |goto 29.5,26.4
step
talk Zamael Lunthistle##8436
turnin Lunthistle's Tale##27984 |goto 29.5,26.4
accept Prayer to Elune##27985 |goto 29.5,26.4
step
click Twilight's Hammer Crate##206597
collect Prayer to Elune##10458 |q 27985/1 |goto 23.1,35.4
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Prayer to Elune##27985
stickystart "twicollar"
step
_Enter_ the cave |goto 22.0,36.4 < 10 |walk
Follow the path immediately to the left after you enter the cave
kill Minister Kiyuubi##47309
collect Kiyuubi's Spherule##62825 |q 27979 |goto 17.6,42.4
step
kill Minister Letherio##47310
collect 1 Letherio's Spherule##62823 |n
Use Letherio's Spherule |use Letherio's Spherule##62823
collect Twilight Tripetricine##62828 |q 27979/1 |goto 14.6,36.2
step
label "twicollar"
All around inside this cave:
kill Twilight Dark Shaman##5860+, Twilight Geomancer##5862+, Twilight Fire Guard##5861+
collect 20 Twilight Collar##62822 |q 27982/1
step
_Leave_ the cave |goto 22.0,36.4 < 10 |q 27982 |walk
_Follow_ the path up |goto 31.9,33.3 < 10 |q 27982 |only if walking
talk Hansel Heavyhands##14627
turnin Dark Ministry##27979 |goto 38.5,27.9
accept In the Hall of the Mountain-Lord##27986 |goto 38.5,27.9
step
talk Master Smith Burninate##14624
turnin Twilight Collars##27982 |goto 38.7,28.7
step
talk Velma Rockslide##47942
home Iron Summit |goto 39.4,66.3
step
talk Mountain-Lord Rendan##47393
turnin In the Hall of the Mountain-Lord##27986 |goto 39.4,67.9
accept Siege!##28028 |goto 39.4,67.9
accept Set Them Ablaze!##28029 |goto 39.4,67.9
accept They Build a Better Bullet##28030 |goto 39.4,67.9
stickystart "incendosaur"
step
talk Agnes Flimshale##47440
accept The Mysteries of the Fire-Gizzard##28032 |goto 38.8,68.9
step
click Sentry Brazier##149025
Set the Southwestern Tower Ablaze |q 28029/2 |goto 35.7,60.7
step
click Sentry Brazier##149025
Set the Western Tower Ablaze |q 28029/1 |goto 33.3,54.5
step
label "incendosaur"
kill Incendosaur##9318+
collect 6 Fire-Gizzard##62914 |q 28032/1 |goto 33.3,66.2
step
click Sentry Brazier##149025
Set the Southeastern Tower Ablaze |q 28029/3 |goto 44.0,60.9
step
_Cross_ the hanging wooden bridge |goto 52.5,58.0 < 10 |only if walking
click Sentry Brazier##149025
Set the Eastern Tower Ablaze |q 28029/4 |goto 50.1,54.7
step
_Cross_ the hanging wooden bridge |goto 51.4,55.6 < 10 |only if walking
kill 9 Dark Iron Marksman##8338+ |q 28028/1 |goto 49.6,63.0
click Dark Iron Bullet##1868+
collect 200 Dark Iron Bullet##62916 |q 28030/1 |goto 49.6,63.0
step
_Follow_ the path up |goto 45.0,67.3 < 10 |only if walking
talk Agnes Flimshale##47440
turnin The Mysteries of the Fire-Gizzard##28032 |goto 38.8,68.9
step
talk Mountain-Lord Rendan##47393
turnin Siege!##28028 |goto 39.4,67.9
turnin Set Them Ablaze!##28029 |goto 39.4,67.9
turnin They Build a Better Bullet##28030 |goto 39.4,67.9
accept Deceit##28033 |goto 39.4,67.9
step
talk Lunk##47429
turnin Deceit##28033 |goto 39.8,67.9
accept Lunk's Adventure: Rendan's Weakness##28034 |goto 39.8,67.9
step
talk Iron Summit Guard##47434
Ask them if they care to join your dance
Build up a three-dwarf conga line |q 28034/1 |goto 40.6,68.1
step
talk Mountain-Lord Rendan##47393
turnin Lunk's Adventure: Rendan's Weakness##28034 |goto 39.4,67.9
accept The Mountain-Lord's Support##28035 |goto 39.4,67.9
step
talk Overseer Oilfist##14625
turnin The Mountain-Lord's Support##28035 |goto 38.1,27.0
accept Operation: Stir the Cauldron##28052 |goto 38.1,27.0
step
talk Lanie Reed##2941
Tell her you're ready to take the flight into the Cauldron
Use the Shoot ability on your hotbar on the dwarves that start shooting at you
Secure entrance into the Slag Pit |q 28052/1 |goto 37.9,30.9
step
talk Mountain-Lord Rendan##47393
turnin Operation: Stir the Cauldron##28052 |goto 40.8,51.7
accept Slavery is Bad##28054 |goto 40.8,51.7
accept Sweet, Horrible Freedom##28055 |goto 40.8,51.7
accept Rise, Obsidion##28056 |goto 40.8,51.7
stikystart "slaveworker"
step
Follow the path in The Slag Pit
talk Slave Worker##5843
|tip Talk to them as you walk through The Slag Pit and do other quests.
Tell them to come and get out of here
kill Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+
click Altar of Suntara##148498
Touch the Suntara stone and call forth Lathoric the Black and his guardian, Obsidion
kill Obsidion##8400 |q 28056/1 |goto 41.3,25.4
kill Lathoric the Black##8391 |q 28056/2 |goto 41.3,25.4
step
label "slaveworker"
talk Slave Worker##5843
|tip Talk to them as you walk through The Slag Pit and do other quests.
Tell them to come and get out of here
Free or kill 12 Slave Workers |q 28055/1 |goto 42.1,25.1
kill Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+ |q 28054/1 |goto 42.1,25.1
step
talk Evonice Sootsmoker##14628
turnin Slavery is Bad##28054 |goto 43.8,28.7
turnin Sweet, Horrible Freedom##28055 |goto 43.8,28.7
turnin Rise, Obsidion##28056 |goto 43.8,28.7
accept Kill 'em With Sleep Deprivation##28057 |goto 43.8,28.7
step
click Dark Iron Pillow##179828
|tip A big group of dwarves runs up and down the hallway once you steal some pillows. You can kill them easily, though, they have low hit points.
collect 16 Dark Iron Pillow##18943 |q 28057/1 |goto 46.2,27.1
step
talk Taskmaster Scrange##14626
turnin Kill 'em With Sleep Deprivation##28057 |goto 42.2,34.5
accept Twisted Twilight Ties##28060 |goto 42.2,34.5
step
talk Hansel Heavyhands##14627
Tell him "Let's take out Maltorius and Arkkus!"
kill Overseer Maltorius##14621 |q 28060/1 |goto 42.3,34.6
kill Twilight-Lord Arkkus##47460 |q 28060/2 |goto 42.3,34.6
step
_Jump off_ the bridge to the path below |goto 47.7,42.0 < 10
talk Overseer Oilfist##14625
turnin Twisted Twilight Ties##28060 |goto 50.0,39.0
accept From Whence He Came##28062 |goto 50.0,39.0
accept Minions of Calcinder##28061 |goto 50.0,39.0
accept Mouton Flamestar##28514 |goto 50.0,39.0
step
kill 6 Searing Flamewraith##47463+ |q 28061/1 |goto 48.0,27.4
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Minions of Calcinder##28061
step
kill Archduke Calcinder##47462
Use your Consecrated Tripetricine on Archduke Calcinder when he is sufficiently weakened |use Consecrated Tripetricine##62925
|tip You will see a message pop up when he is at about half health.
Banish Archduke Calcinder |q 28062/1 |goto 42.7,30.3
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin From Whence He Came##28062
accept Welcome to the Brotherhood##28064
step
talk Lunk##47429
accept Lunk Like Your Style##28053 |goto 39.0,26.0
step
talk Overseer Oilfist##14625
turnin Welcome to the Brotherhood##28064 |goto 38.1,27.0
step
label "burning"
talk John J. Keeshan##47811
You will only be able to accept 1 of these 2 quests
|tip Which quest is offered to you depends on whether or not you completed a quest line in Redridge Mountains at a lower level.
accept Burning Vengeance##28416 |or |goto Burning Steppes 17.3,52.1
accept Burning Vengeance##28174 |or |goto Burning Steppes 17.3,52.1
step
talk Mouton Flamestar##47779
turnin Mouton Flamestar##28514 |goto 17.0,51.3
accept Done Nothing Wrong##28172 |goto 17.0,51.3
stickystart "blackrockwhelp"
stickystart "flamescalebrood"
step
clicknpc Fettered Green Whelpling##47820
Free a Green Whelpling |q 28172/2 |goto 17.5,60.5
step
clicknpc Fettered Blue Whelpling##47821
Free a Blue Whelpling |q 28172/3 |goto 19.2,61.6
step
_Follow_ the path up |goto 17.8,61.4 < 10 |only if walking
clicknpc Fettered Bronze Whelpling##47822
Free a Bronze Whelpling |q 28172/4 |goto 15.1,69.7
step
clicknpc Fettered Red Whelpling##47814
Free a Red Whelpling |q 28172/1 |goto 14.2,66.8
step
label "blackrockwhelp"
kill 5 Blackrock Whelper##47782+ |q 28416/1 |goto 16.0,66.0
kill 5 Flamescale Broodling##7049+ |q 28416/2 |goto 16.0,66.0
step
label "flamescalebrood"
kill 5 Blackrock Whelper##47782+ |q 28174/1 |goto 16.0,66.0
kill 5 Flamescale Broodling##7049+ |q 28174/2 |goto 16.0,66.0
step
talk John J. Keeshan##47811
You will only be able to turn in 1 of the 2 Burning Vengeance quests, depending on which one he gave you
turnin Burning Vengeance##28416 |goto 17.3,52.1
turnin Burning Vengeance##28174 |goto 17.3,52.1
accept Stocking Up##28177 |goto 17.3,52.1
accept A Future Project##28178 |goto 17.3,52.1
accept Mud Hunter##28179 |goto 17.3,52.1
step
talk Mouton Flamestar##47779
turnin Done Nothing Wrong##28172 |goto 17.0,51.3
stickystart "emberworg"
step
click Obsidian-Flecked Mud##206853
collect 9 Obsidian-Flecked Mud##63124 |q 28179/1 |goto 15.5,45.0
step
label "emberworg"
kill Ember Worg##9690+
collect 11 Ember Worg Hide##63136 |q 28178/1 |goto 11.8,47.7
kill Venomtip Scorpid##9691+
collect 5 Razor-Sharp Scorpid Barb##63135 |q 28177/1 |goto 11.8,47.7
step
talk John J. Keeshan##47811
turnin Stocking Up##28177 |goto 17.3,52.1
turnin A Future Project##28178 |goto 17.3,52.1
turnin Mud Hunter##28179 |goto 17.3,52.1
accept The Sand, the Cider, and the Orb##28180 |goto 17.3,52.1
step
talk Gorzeeki Wildeyes##14437
turnin The Sand, the Cider, and the Orb##28180 |goto 8.4,35.8
accept Warlocks Have the Neatest Stuff##28181 |goto 8.4,35.8
accept Shadow Boxing##28182 |goto 8.4,35.8
step
kill Ner'gosh the Shadow##47805 |q 28182/1 |goto 9.9,29.7
step
click Slumber Sand##206881
collect Slumber Sand##3434 |q 28181/2 |goto 5.4,32.0
step
click Fel Slider Cider##206882
collect Fel Slider Cider##63133 |q 28181/3 |goto 5.2,30.9
step
kill Blackrock Warlock##7028+
collect Clear Glass Orb##63134 |q 28181/1 |goto 6.8,31.8
step
talk Gorzeeki Wildeyes##14437
turnin Warlocks Have the Neatest Stuff##28181 |goto 8.4,35.8
turnin Shadow Boxing##28182 |goto 8.4,35.8
accept Return to Keeshan##28183 |goto 8.4,35.8
step
talk John J. Keeshan##47811
turnin Return to Keeshan##28183 |goto 17.3,52.1
accept Chiselgrip, the Heart of the Steppes##28184 |goto 17.3,52.1
step
kill Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+ |q 28184/1 |goto 31.5,52.1
step
talk Stebben Oreknuckle##48033
turnin Chiselgrip, the Heart of the Steppes##28184 |goto 46.8,44.1
accept Prove Yer Allegiance##28225 |goto 46.8,44.1
accept Scrapped Golems##28226 |goto 46.8,44.1
step
talk John J. Keeshan##48109
accept A Needle in a Hellhole##28254 |goto 46.4,46.0
step
talk Thelaron Direneedle##48001
turnin A Needle in a Hellhole##28254 |goto 45.5,46.4
accept A Perfect Costume##28202 |or |goto 45.5,46.4
accept A Perfect Costume##28203 |or |goto 45.5,46.4
accept A Perfect Costume##28204 |or |goto 45.5,46.4
accept A Perfect Costume##28205 |or |goto 45.5,46.4
step
click Tailor's Table##206947
Investigate the hides |goto 45.6,46.3
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
Click to proceed |confirm
only Human
step
click Tailor's Table##206947
Investigate the hides |goto 45.6,46.3
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
Click to proceed |confirm
only Dwarf
step
click Tailor's Table##206947
Investigate the hides |goto 45.6,46.3
Take 1 Hide
Take 3 Handfuls of Mud
Take 4 Spools of Thread
Click to proceed |confirm
only Gnome
step
click Tailor's Table##206947
Investigate the hides |goto 45.6,46.3
Take 4 Hides
Take 1 Handful of Mud
Take 3 Spools of Thread
Click to proceed |confirm
only Draenei
step
click Tailor's Table##206947
Investigate the hides |goto 45.6,46.3
Take 4 Hides
Take 1 Handful of Mud
Take 3 Spools of Thread
Click to proceed |confirm
only Worgen
step
click Tailor's Table##206947
Investigate the hides |goto 45.6,46.3
Take 3 Hides
Take 2 Handfuls of Mud
Take 1 Spool of Thread
Click to proceed |confirm
only NightElf
step
talk Thelaron Direneedle##48001
Tell him you brought him some hides, mud, and thread
Create the Perfect Costume |q 28202/1 |goto 45.5,46.4
Create the Perfect Costume |q 28203/1 |goto 45.5,46.4
Create the Perfect Costume |q 28204/1 |goto 45.5,46.4
Create the Perfect Costume |q 28205/1 |goto 45.5,46.4
step
talk John J. Keeshan##48109
turnin A Perfect Costume##28202 |goto 46.4,46.0
turnin A Perfect Costume##28203 |goto 46.4,46.0
turnin A Perfect Costume##28204 |goto 46.4,46.0
turnin A Perfect Costume##28205 |goto 46.4,46.0
step
From this point you will need to turn in items to Lokhtos Darkbargainer
He is found in Blackrock Depths
Click here to for the path to him |next "turnin" |confirm
step
label "turnin"
Go through this Door |goto Blackrock Depths 37.7,66.0 < 10 |c |walk
Enter this doorway |goto Blackrock Depths 40.8,66.8 < 10 |c |walk
Click the Shadowforge lock to open the door upstairs |goto Blackrock Depths/2 41.4,88.3 < 10 |c |walk
Go up the stairs and follow this path to the left |goto Blackrock Depths/2 45.9,86.2 < 10 |c |walk
Go down these stairs and to the right |goto Blackrock Depths/2 36.5,77.2 < 10 |c |walk
Enter the Grim Guzzler and speak with Lokhtos Darkbargainer |goto Blackrock Depths/2 50.3,58.4 < 10 |c |walk
talk Lokhtos Darkbargainer##12944
|tip All of these quests are repeatable and all of the items can be farmed in Molten Core. |n
accept Favor Amongst the Brotherhood, Dark Iron Ore##6642 |goto 50.3,58.5
|tip Dark Iron Ore can be mined inside Molten Core, requires 175 mining. |n
accept Favor Amongst the Brotherhood, Fiery Core##6643 |goto 50.3,58.5
|tip Fiery Cores are dropped by the Fire Elementals in Molten Core, also by Molten Destroyers. |n
accept Favor Amongst the Brotherhood, Lava Core##6644 |goto 50.3,58.5
|tip Lava Cores are dropped by the Earthen Elementals in Molten Core, also by the Molten Giants. |n
accept Favor Amongst the Brotherhood, Core Leather##6645 |goto 50.3,58.5
|tip Core Leather can be skinned from the various Core Hounds within Molten Core. |n
accept Favor Amongst the Brotherhood, Blood of the Mountain##6646 |goto 50.3,58.5
|tip These are dropped only by Molten Destroyers, but they can be mined from Dark Iron Deposits. |n
Earn Exalted status with the Thorium Brotherhood |complete rep('Thorium Brotherhood')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are Exalted with the Thorium Brotherhood!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Timbermaw Hold",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Timbermaw Hold faction.",
achieveid={944},
patch='30001',
},[[
#include "Timbermaw_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Wintersaber Trainers",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Wintersaber Trainers faction.",
},[[
step
This reputation will take _20 days_ to reach Exalted
talk Rivern Frostwind##10618
accept Get Them While They're Young##29032 |goto Winterspring 46.6,17.6
step
clicknpc Frostsaber Cub##51681
collect 8 Frostsaber Cub##68638 |q 29032/1 |goto 46.6,17.6
step
talk Rivern Frostwind##10618
turnin Get Them While They're Young##29032 |goto 46.6,17.6
accept They Grow Up So Fast##29034 |goto 46.6,17.6
step
label "dailies"
Go to _Winterspring_
|use Winterspring Cub##68646
talk Winterspring Cub##51677
accept Cub's First Toy##29040 |or
accept A Cub's Craving##29035 |or
accept Hunting Practice##29038 |or
accept 'Borrowing' From the Winterfall##29037 |or
step
kill Ice Thistle Yeti##7458+
collect 1 Tough Yeti Hide##68663 |q 29040 |goto 66.1,55.9
|only if haveq(29040)
step
kill Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
collect 5 Wildkin Feather##68662 |q 29040 |goto 57.5,75.7
|only if haveq(29040)
step
|use Winterspring Cub##68646
Use the _Tough Yeti Hides_ in your bag to make the _Cat Toy_ |use Tough Yeti Hide##68663
Use the Winterspring Cat Toy to play with your Winterspring Cub |use Winterspring Cat Toy##68668
Try out Winterspring Cat Toy |q 29040/1
|only if haveq(29040)
step
kill Shardtooth Mauler##7443+
collect 6 Shardtooth Meat##12622 |q 29035 |goto Winterspring,57.7,39.6
|only if haveq(29035)
step
|use Winterspring Cub##68646
Feed your cub |use Shardtooth Meat##12622
Feed Shardtooth Meat to Cub |q 29035/1
|only if haveq(29035)
step
|use Winterspring Cub##68646
Bring your _cub_ next to the _snow mounds_ around this area
|tip They look like white snow mounds that are glittering
Hunting Practice |q 29038/1 |goto 53.5,27.5
|only if haveq(29038)
step
click Smoked Meat##208189
collect 6 Smoked Meat##68645 |q 29037 |goto 67.0,46.0
|only if haveq(29037)
step
|use Winterspring Cub##68646
_Feed_ your _cub_ |use Smoked Meat##68645
_Feed_ Winterspring Cub _Smoked Meat_ |q 29037/1
|only if haveq(29037)
step
|use Winterspring Cub##68646
talk Winterspring Cub##51677
turnin Cub's First Toy##29040 |or |only if haveq(29040)
turnin A Cub's Craving##29035 |or |only if haveq(29035)
turnin Hunting Practice##29038 |or |only if haveq(29038)
turnin 'Borrowing' From the Winterfall##29037 |or |only if haveq(29037)
_Click here_ to return to the _ beginning_ of the _daily quests_ |confirm |next "dailies"
collect 20 Cub Whisker##68644 |q 29034/1
step
You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
collect 20 Runecloth##14047
collect 20 Rugged Leather##8170
step
talk Rivern Frostwind##10618
turnin They Grow Up So Fast##29034 |goto 46.6,17.6
Earn Exalted status with the Wintersaber Trainers |complete rep('Wintersaber Trainers')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are Exalted with the Wintersaber Trainers!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Netherwing",{
author="support@zygorguides.com",
startlevel=25,
description="\nThis guide section will walk you through completing Netherwing quests from neutral to exalted.",
},[[
step
Follow the path |goto Shadowmoon Valley/0 59.27,58.68 < 30 |walk
Continue following the path |goto 61.58,59.30 < 30 |walk
Continue following the path |goto 63.14,60.28 < 30 |walk
talk Mordenai##22113
|tip He walks along this path
accept Kindness##10804 |goto 61.86,58.32
step
Kill Rocknail enemies around this area
collect Rocknail Flayer Giblets##31373 |n
use the Rocknail Flayer Giblets##31373
|tip Combine 5 giblets into a carcass.
collect 8 Rocknail Flayer Carcass##31372 |goto 62.16,55.67 |q 10804
step
use the Rocknail Flayer Carcass##31372
|tip Stand on tall rocks or crystals.
Feed #8# Netherwing Drakes |q 10804/1 |goto 61.94,57.96
step
Follow the path |goto 59.27,58.68 < 30 |walk
Continue following the path |goto 61.58,59.30 < 30 |walk
Continue following the path |goto 63.14,60.28 < 30 |walk
talk Mordenai##22113
|tip He walks along this path
turnin Kindness##10804 |goto 61.86,58.32
accept Seek Out Neltharaku##10811 |goto 61.86,58.32
step
talk Neltharaku##21657
turnin Seek Out Neltharaku##10811 |goto 68.2,60.4
accept Neltharaku's Tale##10814 |goto 68.2,60.4
step
talk Neltharaku##21657
Listen to the Tale of Neltharaku |q 10814/1 |goto 68.2,60.4
step
talk Neltharaku##21657
turnin Neltharaku's Tale##10814 |goto 68.2,60.4
accept Infiltrating Dragonmaw Fortress##10836 |goto 68.2,60.4
step
Kill Dragonmaw enemies around this area
Slay #15# Dragonmaw Orcs |q 10836/1 |goto 66.4,60.0
step
talk Neltharaku##21657
turnin Infiltrating Dragonmaw Fortress##10836 |goto 68.2,60.4
accept To Netherwing Ledge!##10837 |goto 68.2,60.4
step
click Nethervine Crystal##185182+
|tip They look like big thorns with a glowing red ball atop them on the ground around this area.
collect 12 Nethervine Crystal##31504 |q 10837/1 |goto 64.1,80.7
step
talk Neltharaku##21657
turnin To Netherwing Ledge!##10837 |goto 68.2,60.4
accept The Force of Neltharaku##10854 |goto 68.2,60.4
step
use the Enchanted Nethervine Crystal##31652
|tip Use it on Enslaved Netherwing Drakes.
|tip Kill the Dragonmaw Subjugator after you free them.
Free #5# Enslaved Netherwing Drakes |q 10854/1 |goto 67.4,59.3
step
talk Neltharaku##21657
turnin The Force of Neltharaku##10854 |goto 68.2,60.4
accept Karynaku##10858 |goto 68.2,60.4
step
talk Karynaku##22112
turnin Karynaku##10858 |goto 69.9,61.5
accept Zuluhed the Whacked##10866 |goto 69.9,61.5
step
kill Zuluhed the Whacked |q 10866/2 |goto 70.9,61.5
|tip This enemy is elite and will require a group.
|tip To avoid having to fight demons, pull Zuluhed the Whacked into one of the small buildings on either side of him when he casts a summoning portal.
collect Zuluhed's Key##31664 |q 10866 |goto 70.9,61.5
step
click Zuluhed's Chains##185156
Free Karynaku |q 10866/1 |goto 69.8,61.3
step
talk Karynaku##22112
turnin Zuluhed the Whacked##10866 |goto 69.9,61.5
accept Ally of the Netherwing##10870 |goto 69.9,61.5
step
Train Artisan Flying |complete skill("Riding") >= 225
|tip Flying is required to continue this questline.
step
talk Mordenai##22113
turnin Ally of the Netherwing##10870 |goto 62.9,59.5
accept Blood Oath of the Netherwing##11012 |goto 62.9,59.5
accept In Service of the Illidari##11013 |goto 62.9,59.5
step
talk Overlord Mor'ghor##23139
turnin In Service of the Illidari##11013 |goto 66.2,85.7
accept Enter the Taskmaster##11014 |goto 66.2,85.7
step
talk Taskmaster Varkule Dragonbreath##23140
turnin Enter the Taskmaster##11014 |goto 66.1,86.4
step
talk Yarzill the Merc##23141
accept Your Friend on the Inside##11019 |goto 66.0,86.5
accept The Great Netherwing Egg Hunt##11049 |goto 66.0,86.5
step
click Netherwing Egg
|tip They look like dark purple eggs with blue crystals on them all over Netherwing Ledge.
|tip They spawn in various places, so you will probably need to search for them.
|tip Use the "Netherwing Eggs" guide for known locations.
collect 1 Netherwing Egg##32506 |q 11049/1 |goto 68.5,61.2
step
talk Yarzill the Merc##23141
turnin The Great Netherwing Egg Hunt##11049 |goto 66.0,86.5
step
Reach Friendly with the Netherwing |complete rep("Netherwing") >= Friendly
|tip Complete daily quests using the "Netherwing Daily Quests" guide.
|tip You can also farm eggs using the "Netherwing Egg" guide.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Rise, Overseer!##11053 |goto Shadowmoon Valley 66.1,86.4
step
talk Overlord Mor'ghor##23139
turnin Rise, Overseer!##11053 |goto 66.2,85.7
step
talk Taskmaster Varkule Dragonbreath##23140
accept The Netherwing Mines##11075 |goto 66.1,86.4
step
talk Chief Overseer Mudlump##23291
accept Overseeing and You: Making the Right Choices##11054 |goto 66.8,86.1
step
talk Mistress of the Mines##23149
turnin The Netherwing Mines##11075 |goto 65.4,90.2
step
Enter the cave |goto 65.32,89.86 < 5 |walk
talk Ronag the Slave Driver##23166
|tip Inside the cave.
accept Crazed and Confused##11083 |goto 71.6,87.6
stickystart "Kill_Crazed_Murkblood_Miners"
step
kill 1 Crazed Murkblood Foreman |q 11083/1 |goto 73.7,88.1
|tip Inside the cave.
step
label "Kill_Crazed_Murkblood_Miners"
kill 5 Crazed Murkblood Miner |q 11083/2 |goto 73.7,88.1
|tip Inside the cave.
step
talk Ronag the Slave Driver##23166
|tip Inside the cave.
turnin Crazed and Confused##11083 |goto 71.6,87.6
step
kill Black Blood of Draenor##23286+
|tip Inside the cave.
collect Sludge-covered Object##32724 |n
use the Sludge-covered Object##32724
collect Murkblood Escape Plans##32726 |goto 64.8,85.6 |q 11081 |future
step
use the Murkblood Escape Plans##32726
accept The Great Murkblood Revolt##11081 |goto 64.8,85.6
step
Leave the cave |goto Shadowmoon Valley 65.3,90.2 < 10
talk Mistress of the Mines##23149
turnin The Great Murkblood Revolt##11081 |goto 65.4,90.2
accept Seeker of Truth##11082 |goto 65.4,90.2
step
Enter the cave |goto 63.17,87.77
talk Murkblood Overseer##23309
|tip Inside the cave.
Ask him _"Who speaks of me? What are you taling about, broken?"_
Gather Murkblood Information |q 11082/1 |goto 73.0,82.2
step
Watch the dialogue
|tip Inside the cave.
collect Hand of the Overseer##32734 |q 11082/2 |goto 73.0,82.2
step
Leave the cave |goto Shadowmoon Valley 65.3,90.2 < 10 |only if walking
talk Mistress of the Mines##23149
turnin Seeker of Truth##11082 |goto 65.4,90.2
step
collect 10 Knothide Leather##21887 |q 11054/1
|tip Farm them with skinning or purchase them from the auction house.
You can find mobs to skin at [60.4,45.2]
step
kill Tyrantus##20931
collect Hardened Hide of Tyrantus##32666 |q 11054/2 |goto Netherstorm 46.4,10.8
step
talk Chief Overseer Mudlump##23291
turnin Overseeing and You: Making the Right Choices##11054 |goto Shadowmoon Valley 66.8,86.1
step
Reach Honored with the Netherwing |complete rep("Netherwing") >= Honored
|tip Complete daily quests using the "Netherwing Daily Quests" guide.
|tip You can also farm eggs using the "Netherwing Egg" guide.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Stand Tall, Captain!##11084 |goto Shadowmoon Valley 66.1,86.4
step
talk Overlord Mor'ghor##23139
turnin Stand Tall, Captain!##11084 |goto 66.2,85.7
step
talk Ja'y Nosliw##22433
accept Earning Your Wings...##11063 |goto 65.9,87.2
step
talk Murg "Oldie" Muckjaw##23340
accept Dragonmaw Race: The Ballad of Oldie McOld##11064
step
Follow Murg "Oldie" Muckjaw as he flies
|tip Dodge the pumpkins that Murg throws at you.
|tip The easiest strategy is to fly behind and above him, so that you are looking down on him as you fly.
Defeat Murg "Oldie" Muckjaw |q 11064/1 |goto 65.2,85.7
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: The Ballad of Oldie McOld##11064 |goto 65.9,87.2
step
talk Trope the Filth-Belcher##23342
accept Dragonmaw Race: Trope the Filth-Belcher##11067
step
Follow Trope the Filth-Belcher as he flies
|tip Dodge the green bombs that Trope the Filth-Belcher throws at you.
|tip The easiest strategy is to fly behind under him.
|tip Strafe to the sides when he throws the bombs and you can dodge them easily.
Defeat Trope the Filth-Belcher |q 11067/1 |goto 65.2,85.5
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Trope the Filth-Belcher##11067 |goto 65.9,87.2
step
talk Corlok the Vet##23344
accept Dragonmaw Race: Corlok the Vet##11068
step
Follow Corlok the Vet as he flies
|tip Dodge the skulls that Corlok the Vet throws at you.
|tip The easiest strategy is to fly close behind and above him while looking down.
|tip Strafe to the sides when he throws the skulls and you can dodge them easily.
Defeat Corlok the Vet |q 11068/1 |goto 65.2,85.2
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Corlok the Vet##11068 |goto 65.9,87.2
step
talk Wing Commander Ichman##13437
accept Dragonmaw Race: Wing Commander Ichman##11069
step
Follow Wing Commander Ichman as he flies
|tip Dodge the fireballs that Wing Commander Ichman throws at you.
|tip The easiest strategy is to fly behind and far above him while looking down.
|tip Strafe to the sides when he throws fireballs and you can dodge them easily.
|tip He does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
Defeat Wing Commander Ichman |q 11069/1 |goto 65.2,85.0
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Ichman##11069 |goto 65.9,87.2
step
talk Wing Commander Mulverick##13181
accept Dragonmaw Race: Wing Commander Mulverick##11070
step
Follow Wing Commander Mulverick as he flies
|tip Dodge the lightning bolts that Wing Commander Mulverick throws at you.
|tip The lightning bolts will follow you, unlike the previous race quests.
|tip The easiest strategy is to fly beside him, while strafing, and almost ahead of him.
Defeat Wing Commander Mulverick |q 11070/1 |goto 65.2,84.9
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Wing Commander Mulverick##11070 |goto 65.9,87.2
step
talk Captain Skyshatter##23348
accept Dragonmaw Race: Captain Skyshatter##11071
step
Follow Captain Skyshatter as he flies
|tip Dodge the meteors that fall all around you.
|tip The easiest strategy is to fly beside him while strafing and almost ahead of him.
|tip Stay close to him and the meteors will hit both of you, stopping him for a second and allowing you to catch up to him if needed.
|tip Meteors will briefly stun you rather than dismount you.
Defeat Captain Skyshatter |q 11071/1 |goto 65.5,85.3
step
talk Ja'y Nosliw##22433
turnin Dragonmaw Race: Captain Skyshatter##11071 |goto 65.9,87.2
step
Reach Revered with the Netherwing |complete rep("Netherwing") >= Revered
|tip Complete daily quests using the "Netherwing Daily Quests" guide.
|tip You can also farm eggs using the "Netherwing Egg" guide.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Hail, Commander!##11092 |goto Shadowmoon Valley 66.1,86.4
step
talk Overlord Mor'ghor##23139
turnin Hail, Commander!##11092
accept Kill Them All!##11094 |goto 66.2,85.7 |only if rep("The Scryers") >= Friendly
accept Kill Them All!##11099 |goto 66.2,85.7 |only if rep("The Aldor") >= Friendly
step
kill Arvoar the Rapacious##23267+
|tip He looks like a big Flayer mob that walks in a circle in this spot.
collect Partially Digested Hand##32621 |n
Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
accept A Job Unfinished...##11041 |goto 74.5,86.3
stickystart "Kil_Overmine_Flayers"
step
kill Barash the Den Mother |q 11041/2 |goto 70.2,84.3
|tip It walks around this area.
|tip This enemy is elite and may require a group.
step
label "Kil_Overmine_Flayers"
kill 10 Overmine Flayer##23264 |q 11041/1 |goto 71.3,85.8
step
talk Overlord Mor'ghor##23139
turnin A Job Unfinished...##11041 |goto 66.2,85.7
step
talk Arcanist Thelis##21955
turnin Kill Them All!##11094 |goto 56.3,59.6
accept Commander Hobb##11095 |goto 56.3,59.6
|only if rep("The Scryers") >= Friendly
step
talk Commander Hobb##23434
turnin Commander Hobb##11095 |goto 56.5,58.7
|only if rep("The Scryers") >= Friendly
step
talk Anchorite Ceyla##21402
turnin Kill Them All!##11099 |goto 62.6,28.4
accept Commander Arcus##11100 |goto 62.6,28.4
|only if rep("The Aldor") >= Friendly
step
talk Commander Arcus##23452
turnin Commander Arcus##11100 |goto 62.4,29.3
|only if rep("The Aldor") >= Friendly
step
Reach Exalted with the Netherwing |complete rep("Netherwing") >= Exalted
|tip Complete daily quests using the "Netherwing Daily Quests" guide.
|tip You can also farm eggs using the "Netherwing Egg" guide.
step
talk Taskmaster Varkule Dragonbreath##23140
accept Bow to the Highlord##11107 |goto Shadowmoon Valley 66.1,86.4
step
talk Overlord Mor'ghor##23139
turnin Bow to the Highlord##11107 |goto 66.2,85.7
accept Lord Illidan Stormrage##11108 |goto 66.2,85.7
step
Watch the dialogue
Arrive in Shattrath City |goto Shattrath City 65.8,18.6 < 200 |noway |c |q 11108
step
talk Barthamus##23433
turnin Lord Illidan Stormrage##11108 |goto Shattrath City 66.6,16.4
step
Pick your favorite Netherdrake:
accept Voranaku the Violet Netherwing Drake##11113 |goto 66.8,17.6 |noautoaccept |or
accept Zoya the Veridian Netherwing Drake##11114 |goto 66.8,17.6 |noautoaccept |or
accept Suraku the Azure Netherwing Drake##11112 |goto 66.8,17.6 |noautoaccept |or
accept Onyxien the Onyx Netherwing Drake##11111 |goto 66.8,17.6 |noautoaccept |or
accept Malfas the Purple Netherwing Drake##11110 |goto 66.8,17.6 |noautoaccept |or
accept Jorus the Cobalt Netherwing Drake##11109 |goto 66.8,17.6 |noautoaccept |or
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\The Aldor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Aldor faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Aldor') < Exalted end,
achieveid={903, 1205},
patch='30001',
},[[
step
talk Haggard War Veteran##19684
accept A'dal##10210 |goto Shattrath City,61.2,12.6
step
talk A'dal##18481
turnin A'dal##10210 |goto 54,44.8
step
talk Khadgar##18166
accept City of Light##10211 |goto 54.8,44.3
Follow Khadgar's Servant
step
Follow Khadgar's Servant until the tour is over |q 10211/1
step
talk Khadgar##18166
turnin City of Light##10211 |goto 54.8,44.3
accept Allegiance to the Aldor##10551 |goto 54.8,44.3
step
talk Khadgar##18166
accept Ishanah##10554 |goto 54.8,44.3
step
talk Vindicator Kaan##23271
accept Assist Exarch Orelis##11038 |goto Shattrath City,35.1,32.4
step
talk Adyen the Lightwarden##18537
accept Marks of Kil'jaeden##10325 |goto 30.7,34.6
accept Marks of Sargeras##10653 |goto 30.7,34.6
step
talk Ishanah##18538
turnin Ishanah##10554 |goto 24,29.7
accept Restoring the Light##10021 |goto 24,29.7
accept A Cleansing Light##10420 |goto 24,29.7
step
talk Sha'nir##18597
accept A Cure for Zahlia##10020 |goto 64.5,15.1
step
kill Cabal Spell-weaver##21902+,Cabal Initiate##21907+,Cabal Skirmisher##21661+
collect 10 Mark of Kil'jaeden##29425 |goto Terokkar Forest,39.0,59.7
step
click the Eastern Altar##182565
Purify the Eastern Altar |q 10021/2 |goto Terokkar Forest,49.2,20.3
step
click the Northern Altar##182563
Purify the Northern Altar |q 10021/1 |goto 50.7,16.6
step
click the Western Altar##182566
Purify the Western Altar |q 10021/3 |goto 48.1,14.5
step
kill Stonegazer##18648+
collect Stonegazer's Blood##25815 |q 10020/1 |goto Terokkar Forest,61.3,25.3
step
talk Adyen the Lightwarden##18537
turnin Marks of Kil'jaeden##10325 |goto Shattrath City 30.7,34.6
step
talk Sha'nir##18597
turnin A Cure for Zahlia##10020 |goto 64.5,15.1
step
talk Ishanah##18538
turnin Restoring the Light##10021 |goto Shattrath City,24,29.7
step
talk Vindicator Kaan##23271
accept Assist Exarch Orelis##11038 |goto Shattrath City,35.1,32.4
step
talk Exarch Orelis##19466
turnin Assist Exarch Orelis##11038 |goto Netherstorm 32.1,64.2
accept Distraction at Manaforge B'naar##10241 |goto Netherstorm 32.1,64.2
step
kill 8 Sunfury Magister##18855+ |q 10241/1 |goto 26.3,66.7
kill 8 Sunfury Bloodwarder##18853+ |q 10241/2 |goto 26.3,66.7
step
talk Exarch Orelis##19466
turnin Distraction at Manaforge B'naar##10241 |goto 32.1,64.2
accept Measuring Warp Energies##10313 |goto 32.1,64.2
step
talk Anchorite Karja##19467
accept Naaru Technology##10243 |goto 32.1,64.2
step
Stand next to the Northern Pipeline
Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
Measure the Northern Pipeline |q 10313/1 |goto 25.7,60.6
step
Stand next to the Western Pipeline
Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
Measure the Western Pipeline |q 10313/4 |goto 20.9,66.9
step
Stand next to the Southern Pipeline
Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
Measure the Southern Pipeline |q 10313/3 |goto 20.7,70.7
step
click the B'naar Control Console
|tip Inside the doorway northeast of the Southern Pipeline, to the left.
turnin Naaru Technology##10243 |goto 23.2,68.2
accept B'naar Console Transcription##10245 |goto 23.2,68.2
step
Stand next to the Eastern Pipeline
Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
Measure the Eastern Pipeline |q 10313/2 |goto 29,72.7
step
talk Exarch Orelis##19466
turnin Measuring Warp Energies##10313 |goto 32.1,64.2
step
talk Anchorite Karja##19467
turnin B'naar Console Transcription##10245 |goto 32.1,64.2
accept Shutting Down Manaforge B'naar##10299 |goto 32.1,64.2
step
Go inside Manaforge B'naar to 23.3,68.6 |goto 23.9,70.7
kill Overseer Theredis##20416
collect B'naar Access Crystal##29366 |q 10299/2
step
Kill all Warp-Engineers in the nearest area to make your life easier
click the B'naar Control Console
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge B'naar |q 10299/1 |goto 23.2,68.1
step
talk Anchorite Karja##19467
turnin Shutting Down Manaforge B'naar##10299 |goto 32.1,64.2
accept Shutting Down Manaforge Coruu##10321 |goto 32.1,64.2
step
talk Exarch Orelis##19466
accept Attack on Manaforge Coruu##10246 |goto 32.1,64.2
step
kill 8 Sunfury Arcanist##20134+ |q 10246/2 |goto 45.9,79.4
step
_Enter_ Manaforge Coruu |goto 49,81.5 |walk
kill 5 Sunfury Researcher##20136+ |q 10246/1
Kill Overseer Seylanna
collect Coruu Access Crystal##29396 |q 10321 |sticky
click the Coruu Control Console##183956
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Coruu |q 10321/1
step
talk Anchorite Karja##19467
turnin Shutting Down Manaforge Coruu##10321 |goto 32.1,64.2
accept Shutting Down Manaforge Duro##10322 |goto 32.1,64.2
step
talk Exarch Orelis##19466
turnin Attack on Manaforge Coruu##10246 |goto 32.1,64.2
accept Sunfury Briefings##10328 |goto 32.1,64.2
step
kill Sunfury Conjurer##20139+
collect 1 Sunfury Arcane Briefing##29546|q 10328/2 |goto 57.9,63.4
kill Sunfury Bowman##20207+, Sunfury Centurion##20140+
collect 1 Sunfury Military Briefing##29545|q 10328/1 |goto 57.9,63.4
step
_Enter_ Manaforge Duro |goto 60.0,68.5 |walk
kill Overseer Athanel##20435
collect 1 Duro Access Crystal##29397|q 10322/2
step
click the Duro Control Console##184311
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Duro |q 10322/1 |goto 59.1,66.8
step
talk Exarch Orelis##19466
turnin Sunfury Briefings##10328 |goto 32.1,64.2
accept Outside Assistance##10431 |goto 32.1,64.2
step
talk Anchorite Karja##19467
turnin Shutting Down Manaforge Duro##10322 |goto 32.1,64.2
accept Shutting Down Manaforge Ara##10323 |goto 32.1,64.2
step
talk Kaylaan##20780
turnin Outside Assistance##10431 |goto 34.8,38.3
accept A Dark Pact##10380 |goto 34.8,38.3
step
kill 3 Daughter of Destiny##18860+ |q 10380/2 |goto 30.8,40.8
step
kill 6 Gan'arg Warp-Tinker##20285+ |q 10380/1 |goto 26.4,42.3
kill 6 Mo'arg Warp-Master##20326+ |q 10380/3 |goto 26.4,42.3
step
|tip It's inside Manaforge Ara.
kill Overseer Azarad##20685
|tip He walks around inside Manaforge Ara and stops in at this small side room.
collect Ara Access Crystal##29411 |q 10323/2 |goto 26.7,36.8
step
click the Ara Control Console##184312
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Duro |q 10323/1 |goto 26.0,38.8
step
talk Kaylaan##20780
turnin A Dark Pact##10380 |goto 34.8,38.3
accept Aldor No More##10381 |goto 34.8,38.3
step
talk Exarch Orelis##19466
turnin Aldor No More##10381 |goto 32.1,64.2
step
talk Anchorite Karja##19467
turnin Shutting Down Manaforge Ara##10323 |goto 32.0,64.2
accept Socrethar's Shadow##10407 |goto 32.0,64.2
stickystart "terrorprotector"
step
kill Forgemaster Morug##20800
collect First Half of Socrethar's Stone##29624 |q 10407/1 |goto 37.1,27.8
step
label "terrorprotector"
kill Terrorguard Protector##21923+, Gan'arg Mekgineer##16949+, Wrathbringer##18858+, Cyber-Rage Forgelord##16943+
collect 10 Mark of Sargeras##30809+ |q 10653/1 |goto 38.0,27.4
collect 1 Fel Armament##29740 |q 10420/1 |goto 38.0,27.4
More can be found at the following locations:
Location 1: [40.4,22.9]
Location 2: ]42.4,21.5]
step
kill Silroth##20801+
collect Second Half of Socrethar's Stone##29625 |q 10407/2 |goto 40.8,19.6
step
talk Anchorite Karja##19467
turnin Socrethar's Shadow##10407 |goto 32.0,64.2
accept Ishanah's Help##10410 |goto 32.0,64.2
step
kill Adyen the Lightwarden##18537+
turnin Marks of Sargeras##10653 |goto Shattrath City,30.8,34.6
step
talk Ishanah##18538
turnin Ishanah's Help##10410 |goto 24,29.7
turnin A Cleansing Light##10420 |goto 24,29.7
accept Deathblow to the Legion##10409 |goto 24,29.7
step
Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
collect 1 Socrethar's Teleportation Stone##29796 |q 10409 |n |goto Netherstorm 36.4,18.4
collect 1 Voren'thal's Presence##30259 |q 10409 |goto Netherstorm 36.4,18.4
step
Step into the teleporter
Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6 < 10 |walk
Use Voren'thal's Presence on Socrethar |use Voren'thal's Presence##30259
Defeat Socrethar
Deathblow to the Legion |q 10409/1 |goto 29.6,14.2
step
talk Ishanah##18538
turnin Deathblow to the Legion##10409 |goto Shattrath City 24,29.7
step
talk Exarch Onaala##21860
accept Karabor Training Grounds##10587 |goto Shadowmoon Valley 61.2,29.2
step
talk Vindicator Aluumen##21822
accept The Ashtongue Tribe##10619 |goto 61.2,29.1
step
talk Anchorite Ceyla##21402
accept Tablets of Baa'ri##10568 |goto 62.6,28.4
step
kill 3 Ashtongue Handler##21803+ |q 10619/1 |goto 58.8,36.5
kill 4 Ashtongue Warrior##21454+ |q 10619/2 |goto 58.8,36.5
kill 6 Ashtongue Shaman##21453+ |q 10619/3 |goto 58.8,36.5
click Baar'ri Tablet Fragment##6420
kill Ashtongue Worker##21455
collect 12 Baa'ri Tablet Fragment##30596 |q 10568/1 |goto 58.8,36.5
step
kill Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
collect 8 Sunfury Glaive##30679 |q 10587/1 |goto 71.1,52.0
step
talk Vindicator Aluumen##21822
turnin The Ashtongue Tribe##10619 |goto 61.2,29.1
accept Reclaiming Holy Grounds##10816 |goto 61.2,29.1
step
talk Anchorite Ceyla##21402
turnin Tablets of Baa'ri##10568 |goto 62.6,28.4
accept Oronu the Elder##10571 |goto 62.6,28.4
step
talk Exarch Onaala##21860
turnin Karabor Training Grounds##10587 |goto 61.2,29.2
accept A Necessary Distraction##10637 |goto 61.2,29.2
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10571/1 |goto 57.2,32.9
step
kill 8 Shadowmoon Slayer##22082+ |q 10816/1 |goto 67.4,37.6
kill 8 Shadowmoon Chosen##22084+ |q 10816/2 |goto 67.4,37.6
kill 4 Shadowmoon Darkweaver##22081+ |q 10816/3 |goto 67.4,37.6
step
kill Sunfury Warlock##21503+
collect 1 Scroll of Demonic Unbanishing##30811 |n
Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
Free Azaloth |q 10637/1 |goto 70.0,51.4
step
talk Exarch Onaala##21860
turnin A Necessary Distraction##10637 |goto 61.2,29.2
accept Altruis##10640 |goto 61.2,29.2
step
talk Vindicator Aluumen##21822
turnin Reclaiming Holy Grounds##10816 |goto 61.2,29.1
step
talk Anchorite Ceyla##21402
turnin Oronu the Elder##10571 |goto 62.6,28.4
accept The Ashtongue Corruptors##10574 |goto 62.6,28.4
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10574/3 |goto 49.8,23.1
step
kill Uylaru##21710
|tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10574/4 |goto 48.2,39.8
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10574/1 |goto 51.3,52.9
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10574/2 |goto 57.1,73.3
step
talk Anchorite Ceyla##21402
turnin The Ashtongue Corruptors##10574 |goto 62.6,28.4
accept The Warden's Cage##10575 |goto 62.6,28.4
step
talk Sanoru##21826
turnin The Warden's Cage##10575 |goto 57.3,49.6
step
talk Altruis the Sufferer##18417
turnin Altruis##10640 |goto Nagrand,27.2,43.0
accept Against All Odds##10669 |goto Nagrand,27.2,43.0
accept Against the Illidari##10668 |goto Nagrand,27.2,43.0
accept Against the Legion##10641 |goto Nagrand,27.2,43.0
step
Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
kill Xeleth##21894 |q 10669/1 |goto Zangarmarsh,16.2,40.7
step
kill Wrath Priestess##18859+
collect Freshly Drawn Blood##30850 |n
Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850
|tip It only last 1 minute, then it disappears if you don't use it in time.
kill Avatar of Sathal##21925 |q 10641/1 |goto Netherstorm 39.6,20.5
step
kill Lothros##21928 |q 10668/1 |goto Shadowmoon Valley 28.3,49.5
|tip He walks around this area, so you may need to search for him.
step
talk Altruis the Sufferer##18417
turnin Against the Legion##10641 |goto Nagrand 27.3,43.1
turnin Against the Illidari##10668 |goto Nagrand 27.3,43.1
turnin Against All Odds##10669 |goto Nagrand 27.3,43.1
accept Illidan's Pupil##10646 |goto Nagrand 27.3,43.1
step
talk Altruis the Sufferer##18417
Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
Listen to Illidan's Pupil |q 10646/1 |goto 27.3,43.1
step
talk Altruis the Sufferer##18417
turnin Illidan's Pupil##10646 |goto 27.3,43.1
accept The Book of Fel Names##10649 |goto 27.3,43.1
step
Kill through the instance until you reach Blackheart the Inciter.
kill Blackheart the Inciter##18667
collect 1 Book of Fel Names##30808|q 10649/1 |goto Shadow Labyrinth/1 26.2,68.2
step
talk Altruis the Sufferer##18417
turnin The Book of Fel Names##10649 |goto Nagrand 27.3,43.1
accept Return to the Aldor##10650 |goto Nagrand 27.3,43.1
step
talk Exarch Onaala##21860
turnin Return to the Aldor##10650 |goto Shadowmoon Valley 61.2,29.2
accept Varedis Must Be Stopped##10651 |goto Shadowmoon Valley 61.2,29.2
step
kill Netharel##21164 |q 10651/2 |goto Shadowmoon Valley 68.6,52.7
|tip He is walking amongst the Demon Hunter Supplicants.
step
kill Alandien##21171 |q 10651/4 |goto 69.6,54.1
step
kill Varedis##21178 |q 10651/1 |goto 72.2,53.7
When he begins to cast _Metamorphosis_, you will need to use your _Book of Fel Names_ to weaken him |use Book of Fel Names##30854
step
kill Theras##21168 |q 10651/3 |goto 72.4,48.4
step
talk Exarch Onaala##21860
turnin Return to the Aldor##10650 |goto Shadowmoon Valley 61.2,29.2
step
At this point, you will need to grind repeatable quests
You can grind Marks of Kil'jaeden if you are below Honored, or you can farm Marks of Sargeras
Every spot that drops either of these marks also drops Fel Armaments, which give 100 more rep than 10 marks
Click here to proceed |confirm
step
label "farming"
kill Wrathwalker##19740+, Terrormaster##21314+, Makazradon##21501+, Shadow Council Warlock##21302+, Mo'arg Weaponsmith##19755+
collect Mark of Sargeras###30809 |goto Shadowmoon Valley 22.5,34.6
|tip You will need to collect these in multiples of 10.
collect Fel Armament##29740 |goto Shadowmoon Valley 22.5,34.6
When you're ready to turn in, click here |confirm
step
label "marks"
talk Adyen the Lightwarden##18537
accept More Marks of Sargeras##10654 |n |goto Shattrath City 30.8,34.6
Click here to go back to farming |next "farming" |confirm
Click here to turn in Fel Armaments |next "fel" |confirm
Earn Exalted Status with The Aldor |complete rep('The Aldor')==Exalted |next "exalted"
step
label "fel"
talk Ishanah##18538
accept Fel Armaments##10421 |n |goto 24.0,29.7
Click here to go back to farming |next "farming"
Click here to turn in Marks of Sargeras |next "marks"
Earn Exalted Status with The Aldor |complete rep('The Aldor')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are Exalted with The Aldor.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Ashtongue Deathsworn",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Ashtongue Deathsworn faction.",
achieveid={958},
patch='30001',
},[[
step
This reputation can be earned by running The Black Temple raid.
A full clear will grant roughly 8200 reputation.
|confirm
step
label "start"
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
Kill every creature that is hostile in this instance in order to gain reputation
|tip You will have to clear this place a few times to reach Exalted.
Click here to go back to the beginning of the guide |next "start" |confirm |goto Black Temple/2 21.9,59.5
Earn Exalted status with Ashtongue Deathsworn |complete rep('Ashtongue Deathsworn')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Ashtongue Deathsworn!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Cenarion Expedition",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Cenarion Expedition faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Cenarion Expedition') < Exalted end,
achieveid={953},
patch='30001',
},[[
#include "Cenarion_Expedition_Rep"
]])
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
Click here to continue |confirm
step
talk Consortium Recruiter##18335
accept The Consortium Need You!##9913 |goto Nagrand 52.0,34.8
step
kill Wild Elekk##18334+
collect 3 Pair of Ivory Tusks##25463+ |future |goto 50.8,40.1
They are scattered all over Nagrand
Don't confuse them with Bull Elekks
More can be found at the locations:
Location 1: [55.2,44.9]
Location 2: [61.4,41.5]
Location 3: [67.2,39.9]
Location 4: [69.9,46.0]
step
talk Shadrek##18333
accept A Head Full of Ivory##9914 |goto 31.8,56.8
step
talk Gezhe##18265
turnin The Consortium Needs You!##9913 |goto 31.4,57.8
accept Stealing from Thieves##9882 |goto 31.4,57.8
step
talk Zerid##18276
accept Gava'xi##9900 |goto 30.8,58.1
accept Matters of Security##9925 |goto 30.8,58.1
step
Once you have accepted A Head Full of Ivory and Stealing from Thieves, you will want to complete both, but only turn one in
kill Vir'aani Raider##17149+
collect 10 Oshu'gun Crystal Fragment##25416 |q 9882/1 |goto 34.0,63.4
You can keep collecting more if you wish
You can turn them in multiples of ten
step
kill Voidspawn##17981+ |q 9925/1 |goto 36.2,65.5
More can be found around the following location |goto 37.9,66.1
step
kill Gava'xi##18298 |q 9900/1 |goto 42.6,73.6
He patrols around the area, so you may be able to find him here |goto 42.1,71.2
step
talk Gezhe##18265
turnin Stealing from Thieves##9882 |goto 31.4,57.8
step
talk Zerid##18276
turnin Gava'xi##9900 |goto 30.8,58.1
turnin Matters of Security##9925 |goto 30.8,58.1
Click here to farm Crystals. |next "crystal" |confirm |only if rep("The Consortium")<=Neutral
|next "friend" |only if rep("The Consortium")>=Friendly
step
label "crystal"
click Oshu'gun Crystal Fragment##182258
kill Vir'aani Raider##17149+
collect Oshu'gun Crystal Fragment##25416 |n |goto 34.0,63.4
You can keep collecting more if you wish
You can turn them in multiples of ten
Click here when you are ready to turn in |confirm
step
talk Gezhe##18265
accept More Crystal Fragments##9883 |n |goto 31.4,57.8
Click here to go back to farming |next "crystal" |confirm |only if rep("The Consortium")<=Neutral
|next "friend" |only if rep("The Consortium")>=Friendly
step
label "friend"
talk Shadrek##18333
turnin A Head Full of Ivory##9914 |goto 31.8,56.8
step
talk Gezhe##18265
accept Membership Benefits##9886 |goto 31.4,57.8
accept Obsidian Warbeads##9893 |goto 31.4,57.8
step
kill Boulderfist Warrior##17136+, Boulderfist Mage##17137+
collect 10 Obsidian Warbeads##25433 |q 9893/1 |goto 49.9,56.7
You can collect more than 10
Be sure to collected multiples of 10
step
talk Gezhe##18265
turnin Obsidian Warbeads##9893 |goto 31.4,57.8
step
label "bead_farm"
kill Boulderfist Warrior##17136+, Boulderfist Mage##17137+
collect Obsidian Warbeads##25433 |goto 49.9,56.7
You can collect more than 10
To get from Friendly to Honored, you will need 240 Obsidian Warbeads
Be sure to collected multiples of 10
step
talk Gezhe##18265
accept More Obsidian Warbeads##9892 |n |goto 31.4,57.8
Click here to continue farming Warbeads |next "bead_farm" |confirm |only if rep("The Consortium")<=Friendly
|next "nsquest" |only if rep("The Consortium")>=Honored
step
label "nsquest"
talk Nether-Stalker Khay'ji##19880
accept Consortium Crystal Collection##10265 |goto Netherstorm 32.4,64.2
step
kill Pentatharon##20215
|tip To the right as you enter the ruins, up on a small stage looking platform.
collect Arklon Crystal Artifact##28829 |q 10265/1 |goto 42.4,72.8
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
step
click Diagnostic Equipment##184589
collect Diagnostic Results##29741 |q 10417/1 |goto 48.2,55.0
step
click Box Surveying Equipment##6881
collect 10 Box of Surveying Equipment##28913 |q 10267/1 |goto 57.6,63.9
step
click Ivory Bell##184443
collect 15 Ivory Bell##29474 |q 10348/1 |goto 48.2,53.9
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
turnin Triangulation Point One##10269 |goto Netherstorm 58.3,31.3
accept Triangulation Point Two##10275 |goto 58.3,31.3
step
talk Wind Trader Marid##20071
accept A Not-So-Modest Proposal##10270 |goto 58.3,31.7
step
talk Flesh Handler Viridius##20450
accept Captain Tyralius##10422 |goto 59.2,32.1
step
talk Researcher Navuud##20449
accept Electro-Shock Goodness!##10411 |goto 59.2,32.6
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
stickystart "voidwasteglobule"
step
click Ethereum Data Cell##184560
collect Ethereum Data Cell##29582 |q 10384/1 |goto 55.8,39.9
step
kill Warden Icoshock##20770+
collect The Warden's Key##29742 |q 10422 |goto 54.5,41.1
step
label "voidwasteglobule"
Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
While under the effects of the Electro-Shock Therapy buff do the following:
|tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
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
_Enter_ Access Shaft Zeon |goto 61.0,45.6 < 10 |walk
Go inside the cave |goto 59.8,42.6 < 10 |walk
Use the Protectorate Igniter in your bags on Withered Corpses |use Protectorate Igniter##29473
Use 12 Withered Corpses Burned |q 10345/1
|tip If you get to close they will turn into fleshbeasts. There are more corpses inside the cave.
step
talk Agent Ya-six##20552
accept Arconus the Insatiable##10353 |goto 60.9,41.5
step
click Teleporter Power Pack##184075
collect Teleporter Power Pack##28969 |q 10270/1 |goto 61.0,41.5
step
kill Arconus the Insatiable##20554 |q 10353/1 |goto 60.1,40.1
step
_Leave_ the Access Shaft Zeon |goto 61.1,45.4 < 10 |walk
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
_Follow_ Captain Saeed and his men |goto 60.8,39.3 < 10
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
Use Protectorate Disruptor next to each of the three huge force fields protecting Nexus-King Salhadaar |use Protectorate Disruptor##29618
kill Nexus-King Salhadaar##20454+ |q 10408/1 |goto 53.7,42.4
step
Click the Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin Nexus-King Salhadaar##10408 |goto 56.8,38.7
step
talk Zuben Elgenubi##20067
accept In Search of Farahlite##10290 |goto 44.1,36.1
step
Click the Ethereum Transponder Zeta
Attempt to contact Wind Trader Marid
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
|tip If you're careful you can avoid having to fight the Farahkib Shardlings.
collect 4 Raw Farahlite##29163 |q 10290/1 |goto 44.5,21.6
step
talk Zuben Elgenubi##20067
turnin In Search of Farahlite##10290 |goto 44.0,36.0
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
turnin Nether Gas In a Fel Fire Engine##10850 |n
Destroy Inactive Fel Reaver |q 10855/1 |goto 38.0,25.5
stickystart "houndeye"
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
label "houndeye"
kill 10 Hound of Culuthas##20141+ |q 10336/1 |goto 51.7,20.4
kill 5 Eye of Culuthas##20394+ |q 10336/2 |goto 51.7,20.4
step
talk Zephyrion##20470
turnin Surveying the Ruins##10335 |goto 44.7,34.9
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
Use the Detonate Teleporter ability next to teleporters at the following location: |goto 39.1,20.5
Destroy the Western Teleporter |q 10857/1 |goto 39.2,20.0
step
Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
Use the Detonate Teleporter ability next to teleporters at the following location: |goto 41.2,19.4
Destroy the Central Teleporter |q 10857/2 |goto 41.2,19.4
step
Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
Use the Detonate Teleporter ability next to teleporters at the following location |goto 42.2,20.9
Destroy the Eastern Teleporter |q 10857/3 |goto 42.2,20.9
step
talk Nether-Stalker Nauthis##20471
turnin Teleport This!##10857 |goto 44.7,34.9
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
|tip This has a really low drop rate. You can also farm Heroic Mana-Tombs for the Keys.
step
click Ethereum Prison##7183
Kill whatever comes out of the prison
collect Ethereum Prisoner I.D. Tag##31957 |q 10971/1 |goto Netherstorm 54.7,46.2
step
talk Commander Ameer##20448
turnin Ethereum Secrets##10971 |goto 59.5,32.4
step
After these quests are done, you will need to grind reputation to Exalted
You can either do Heroic Mana Tombs and kill everything in the instance
You can do the Obsidian Warbeads in Nagrand |next "bead" |confirm
You can farm Ethereal in Netherstorm |next "heap" |confirm
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
collect Ethereum Prisoner I.D. Tag##31957 |q 10972/1 |goto 54.7,46.2
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
Click here to return to Insignia farming |next "heap" |confirm |only if rep("The Consortium")<=Revered
Click here to farm Obsidian Warbeads |next "bead" |confirm |only if rep("The Consortium")<=Revered
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
Click here to return to Insignia farming |next "heap" |confirm |only if rep("The Consortium")<=Revered
Click here to farm Obsidian Warbeads |next "bead" |confirm |only if rep("The Consortium")<=Revered
|next "exalted" |only if rep("The Consortium")==Exalted
step
label "exalted"
Congratulations, you are now Exalted with The Consortium!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Exodar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Exodar faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Exodar') < Exalted end,
},[[
step
talk Kadu##50306
buy Exodar Tabard##45580 |n |goto The Exodar 54.8,36.8
Equip your Exodar Tabard |equipped Exodar Tabard##45580 |use Exodar Tabard##45580 |future
You can run any dungeon that grants experience to gain reputation for Exodar
Become Exalted with Exodar |complete rep('Exodar')==Exalted
step
Congratulations, you have reached exalted with Exodar!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Honor Hold",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Honor Hold faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Honor Hold') < Exalted end,
},[[
step
talk Bernie Heisten##3546
buy 1 Nethergarde Bitter##23848 |q 9563 |future |goto Blasted Lands 59.4,14.9
step
click Hero's Call Board##206111
accept Hero's Call: Outland!##28708 |goto Stormwind City/0 62.90,71.70
step
talk Commander Duron##19229
turnin Hero's Call: Outland!##28708 |goto Hellfire Peninsula/0 87.40,50.60
accept Arrival in Outland##10288 |goto 87.40,50.60
step
talk Amish Wildhammer##18931
turnin Arrival in Outland##10288 |goto 87.4,52.4
accept Journey to Honor Hold##10140 |goto 87.4,52.4
step
talk Marshal Isildor##19308
turnin Journey to Honor Hold##10140 |goto 54.5,62.8
accept Force Commander Danath##10254 |goto 54.5,62.8
step
talk Sid Limbardi##16826
home Honor Hold |goto 54.2,63.6
step
talk Force Commander Danath Trollbane##16819
turnin Force Commander Danath##10254 |goto 56.6,66.7
accept The Legion Reborn##10141 |goto 56.6,66.7
accept Know your Enemy##10160 |goto 56.6,66.7
step
talk Dumphry##21209
accept Waste Not, Want Not##10055 |goto 51.2,60
step
talk Lieutenant Amadi##16820
turnin Know your Enemy##10160 |goto 50.9,60.2
accept Fel Orc Scavengers##10482 |goto 50.9,60.2
step
talk Sergeant Altumus##19309
turnin The Legion Reborn##10141 |goto 61.7,60.8
accept The Path of Anguish##10142 |goto 61.7,60.8
stickystart "warbringer"
step
Click the Salvaged Metal and Wood
|tip They are scraps on the ground around this area.
collect 8 Salvaged Metal##25912 |q 10055/1 |goto 60.4,52.1
collect 8 Salvaged Wood##25911 |q 10055/2 |goto 60.4,52.1
kill Bonechewer Evoker##19701, Bonechewer Raider##16925, Bonechewer Mutant##16876, Bonechewer Scavenger##18952 |q 10482/1
step
label "warbringer"
Be on the lookout for the giant Fel Reaver
kill 1 Dreadcaller##19434 |q 10142/1 |goto 65.8,54.1
kill 4 Flamewaker Imp##19136+ |q 10142/2 |goto 65.8,54.1
kill 6 Infernal Warbringer##19261+ |q 10142/3 |goto 65.8,54.1
step
talk Sergeant Altumus##19309
turnin The Path of Anguish##10142 |goto 61.7,60.8
accept Expedition Point##10143 |goto 61.7,60.8
step
talk Dumphry##21209
turnin Waste Not, Want Not##10055 |goto 51.2,60
accept Laying Waste to the Unwanted##10078 |goto 51.2,60
step
talk Lieutenant Amadi##16820
turnin Fel Orc Scavengers##10482 |goto 50.9,60.2
accept Ill Omens##10483 |goto 50.9,60.2
step
talk Forward Commander Kingston##19310
turnin Expedition Point##10143 |goto 71.3,62.8
accept Disrupt Their Reinforcements##10144 |goto 71.3,62.8
step
kill Wrathguard##18975, Doomwhisperer##18981
collect 4 Demonic Rune Stone##28513|q 10144 |goto 72.0,59.6
step
Stand inside the portal and click it to destroy it |q 10144/2 |goto 72.7,59
step
kill Wrathguard##18975, Doomwhisperer##18981
collect 4 Demonic Rune Stone##28513 |q 10144 |goto 71.7,56.4
step
Stand inside the portal and click it to destroy it |q 10144/1 |goto 71.4,55.2
step
talk Forward Commander Kingston##19310
turnin Disrupt Their Reinforcements##10144 |goto 71.3,62.8
accept Mission: The Murketh and Shaadraz Gateways##10146 |goto 71.3,62.8
step
talk Wing Commander Dabir'ee##19409
Take the flight
Click the bomb in your bags, bomb Gateway Shaadraz |q 10146/2 |use Seaforium PU-36 Explosive Nether Modulator##28038 |goto 71.4,62.5
Click the bomb in your bags, bomb Gateway Murketh |q 10146/1 |use Seaforium PU-36 Explosive Nether Modulator##28038 |goto 71.4,62.5
step
talk Forward Commander Kingston##19310
turnin Mission: The Murketh and Shaadraz Gateways##10146 |goto 71.4,62.7
accept Shatter Point##10340 |goto 71.4,62.7
step
talk Runetog Wildhammer##20234
fpath Shatter Point |goto 78.4,34.9
step
talk Runetog Wildhammer##20234
turnin Shatter Point##10340 |goto 78.4,34.9
accept Wing Commander Gryphongar##10344 |goto 78.4,34.9
step
talk Wing Commander Gryphongar##20232
turnin Wing Commander Gryphongar##10344 |goto 79.3,33.9
accept Mission: The Abyssal Shelf##10163 |goto 79.3,33.9
step
talk Gryphoneer Windbellow##20235
Take a flight to the Abyssal Shelf
Use the Area 52 Special bomb in your bags to bomb the mobs |use Area 52 Special##28132
|tip If you don't complete this in the first run, you can keep flying until it's done.
kill 20 Gan'arg Peon##19398+ |q 10163/1 |goto 78.3,34.5
kill 5 Mo'arg Overseer##19397+ |q 10163/2 |goto 78.3,34.5
Destroy 5 Fel Cannons |q 10163/3 |goto 78.3,34.5
step
talk Wing Commander Gryphongar##20232
turnin Mission: The Abyssal Shelf##10163 |goto 79.3,33.9
accept Go to the Front##10382 |goto 79.3,33.9
step
talk Field Marshal Brock##20793
turnin Go to the Front##10382 |goto 68.3,28.6
step
talk Father Malgor Devidicus##16825
accept An Old Gift##10058 |goto 54.3,63.6
step
talk Sid Limbardi##16826
accept The Longbeards##9558 |goto 54.3,63.6
step
talk Warp-Scryer Kryv##16839
accept The Path of Glory##10047 |goto 56.7,66.5
step
talk Honor Guard Wesilow##16827
accept Unyielding Souls##10050 |goto 50.9,60.2
step
talk Foreman Biggums##16837
accept A Job for an Intelligent Man##9355 |goto 52,62.6
accept When This Mine's a-Rockin'##10079 |goto 52,62.6
step
_Enter_ the cave |goto 54.9,62.9 < 10 |walk
kill 12 Gan'arg Sapper##18827+ |q 10079/1
step
_Leave_ the cave |goto 52,62.6 < 10 |walk
talk Foreman Biggums##16837
turnin When This Mine's a-Rockin'##10079
accept The Mastermind##10099
step
_Enter_ the cave |goto 56.3,61.4 < 10 |walk
kill Z'kral##18974 |q 10099/1
|tip He is all the way at the bottom of the cave way in the back of the big room.
step
_Leave_ the cave |goto 52,62.6 < 10 |walk
talk Foreman Biggums##16837
turnin The Mastermind##10099
step
Click the Trampled Skeletons
|tip They look like little brown ribcages and spines. You will find them on the grey road. They are very easy to miss, but once you find one you will find them really fast.
Cleanse 8 Trampled Skeletons |q 10047/1 |goto 66.1,48.8
step
Use your Flaming Torch on the Eastern Thrower to burn it |q 10078/1 |use Flaming Torch##26002 |goto 58.7,47
|tip It's a big catapult.
step
Use your Flaming Torch on the Central Eastern Thrower to burn it |q 10078/2 |use Flaming Torch##26002 |goto 55.9,46.7
|tip It's a big catapult.
step
Use your Flaming Torch on the Central Western Thrower to burn it |q 10078/3 |use Flaming Torch##26002 |goto 53.5,47.2
|tip It's a big catapult.
step
Use your Flaming Torch on the Western Thrower to burn it |q 10078/4 |use Flaming Torch##26002 |goto 52.8,47.1
|tip It's a big catapult.
step
kill Bleeding Hollow Tormentor##19424+, Bleeding Hollow Peon##16907+,Bleeding Hollow Grunt##16871+
collect Cursed Talisman##104320 |q 10483/1 |goto 65.8,67.2
step
talk Corporal Ironridge##21133
turnin Ill Omens##10483 |goto 71,63.4
accept Cursed Talismans##10484 |goto 71,63.4
step
click Mysteries of the Light##182804
collect Mysteries of the Light##25938 |q 10058/1 |goto 55,86.8
step
kill 10 Unyielding Sorcerer##16905+ |q 10050/2 |goto 58,79
kill 5 Unyielding Knight##16906+ |q 10050/3 |goto 58,79
kill 12 Unyielding Footman##16904+ |q 10050/1 |goto 58,79
step
talk "Screaming" Screed Luckheed##19367
accept In Case of Emergency...##10161 |goto 49.2,74.8
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto 49.2,74.8
step
click Ravager Egg##181385
kill Razorfury Ravagers##16933
collect 12 Ravager Egg##23217 |q 9349/1 |goto 41.2,84.4
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto 49.2,74.8
accept Helboar, the Other White Meat##9361 |goto 49.2,74.8
step
kill Deranged Helboar##16863
collect Tainted Helboar Meat##23270
Use your Purification Mixture on the Tainted Helboar Meat |use Purification Mixture##23268
|tip The meat won't become purified every time, it can become toxic as well.
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto 50.2,74.8
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto 49.2,74.8
accept Smooth as Butter##9356 |goto 49.2,74.8
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 58.1,71.3
click Zeppelin Debris##183397
collect 30 Zeppelin Debris##28116 |q 10161/1 |goto 58.1,71.3
step
talk "Screaming" Screed Luckheed##19367
turnin In Case of Emergency...##10161 |goto 49.2,74.8
accept Voidwalkers Gone Wild##9351 |goto 49.2,74.8
talk Legassi##19344
turnin Smooth as Butter##9356 |goto 49.2,74.8
step
kill 15 Marauding Crust Burster##16857+ |q 9355/1 |goto 47.8,65.8
|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
collect Eroded Leather Case##23338 |n
Click the Eroded Leather Case |use Eroded Leather Case##23338
accept Missing Missive##9373 |goto 47.8,65.8
step
talk Foreman Biggums##16837
turnin A Job for an Intelligent Man##9355 |goto 52,62.6
step
talk Dumphry##21209
turnin Laying Waste to the Unwanted##10078 |goto 51.2,60
step
talk Honor Guard Wesilow##16827
turnin Unyielding Souls##10050 |goto 50.9,60.2
accept Looking to the Leadership##10057 |goto 50.9,60.2
step
talk Father Malgor Devidicus##16825
turnin An Old Gift##10058 |goto 54.3,63.4
step
talk Warp-Scryer Kryv##16839
turnin The Path of Glory##10047 |goto 56.7,66.5
step
talk Mirren Longbeard##16851
accept Gaining Mirren's Trust##9563 |goto 24.0,72.3
turnin Gaining Mirren's Trust##9563 |goto 24.0,72.3
accept The Finest Down##9420 |goto 24.0,72.3
step
talk Gremni Longbeard##16850
turnin The Longbeards##9558 |goto Hellfire Peninsula 23.9,72.2
accept The Arakkoa Threat##9417 |goto 23.9,72.2
accept Rampaging Ravagers##9385 |goto 23.9,72.2
stickystart "kalirifeather"
step
_Follow_ the path up |goto Hellfire Peninsula 26.1,77.1 < 10 |only if walking
kill Avruu##17084
collect 1 Avruu's Orb##23580 |n
Click Avruu's Orb |use Avruu's Orb##23580
accept Avruu's Orb##9418 |goto 25.7,75.1
step
click Haal'eshi Altar##181606
Place Avruu's Orb on the Altar
Fight Aeranas until he's almost dead
talk Aeranas##17085
turnin Avruu's Orb##9418 |goto 29,81.5
step
label "kalirifeather"
kill 4 Haal'eshi Windwalker##16966+ |q 9417/1 |goto 26.1,75.9
kill 6 Haal'eshi Talonguard##16967+ |q 9417/2 |goto 26.1,75.9
click Kaliri Nest##181582
kill Male Kaliri Hatchling##17039+, Kaliri Swooper##17053+, Female Kaliri Hatchling##17034+, Kaliri Matriarch##17035+
collect 8 Kaliri Feather##23588|q 9420/1 |goto 26.1,75.9
step
talk Gremni Longbeard##16850
turnin The Arakkoa Threat##9417 |goto 24,72.1
talk Mirren Longbeard##16851
turnin The Finest Down##9420 |goto 24,72.1
step
kill Quillfang Ravager##16934+, Quillfang Skitterer##19189+
kill 10 Quillfang Ravager |q 9385/1 |goto Hellfire Peninsula 22.4,67.4
step
talk Gremni Longbeard##16850
turnin Rampaging Ravagers##9385 |goto Hellfire Peninsula 23.9,72.2
step
kill Uncontrolled Voidwalker##16975+
collect 10 Condensed Voidwalker Essence##23218 |q 9351/1 |goto 49.5,81.8
step
kill Arch Mage Xintor##16977 |q 10057/1 |goto 53.6,81.1
|tip Near a bunch of practice fighting dummies.
step
kill Lieutenant Commander Thalvos##16978 |q 10057/2 |goto 54.7,83.7
|tip Walking around on a black platform thing. He's a blue ghost dwarf.
step
talk "Screaming" Screed Luckheed##19367
turnin Voidwalkers Gone Wild##9351 |goto 49.2,74.8
step
talk Honor Guard Wesilow##16827
turnin Looking to the Leadership##10057 |goto 50.9,60.2
step
kill Bleeding Hollow Peon##16907, Bleeding Hollow Grunt##16871
collect 12 Cursed Talisman##104320 |q 10484/1 |goto 64.2,71.8
step
talk Corporal Ironridge##21133
turnin Cursed Talismans##10484 |goto 71,63.4
accept Warlord of the Bleeding Hollow##10485 |goto 71,63.4
step
talk Wing Commander Dabir'ee##19409
accept Zeth'Gor Must Burn!##10895 |goto 71.3,62.8
step
Use your Smoke Beacon under the tower |use Smoke Beacon##31739
Mark the Forge Tower |q 10895/3 |goto 70.1,69.1
step
Use your Smoke Beacon under the tower |use Smoke Beacon##31739
Mark the Foothill Tower |q 10895/4 |goto 70.9,71.3
step
kill Warlord Morkh##16964
collect Morkh's Shattered Armor##30158 |q 10485/1 |goto 70.1,76.9
step
Use your Smoke Beacon under the tower |use Smoke Beacon##31739
Mark the Southern Tower |q 10895/2 |goto 66.4,76.6
step
Use your Smoke Beacon under the tower |use Smoke Beacon##31739
Mark the Northern Tower |q 10895/1 |goto 67.9,67
step
talk Corporal Ironridge##21133
turnin Warlord of the Bleeding Hollow##10485 |goto 71,63.4
accept Return to Honor Hold##10903 |goto 71,63.4
step
talk Wing Commander Dabir'ee##19409
turnin Zeth'Gor Must Burn!##10895 |goto 71.3,62.8
step
talk Assistant Klatu##22430
turnin Return to Honor Hold##10903 |goto 54.3,63.6
accept Fel Spirits##10909 |goto 54.3,63.6
accept Digging for Prayer Beads##10916 |goto 54.3,63.6
step
click Fei Fei's Cache##185302
|tip Outside behind the building.
collect Draenei Prayer Beads##31795|q 10916/1 |goto 54.17,63.32
If the cache is not there:
Buy a Silken Thread from Brumman here [54.11,63.97]
Give it to Warrant Officer Tracy Proudwell here [56.33,62.85]
Give the treat to Fei Fei here [56.39,62.93]
|tip Follow Fei Fei to the Cache.
step
Use the Anchorite Relic in your bags |use Anchorite Relic##31772
Pull orcs to the relic
Kill the orcs and a Fel Spirit will spawn
kill Fel Spirit##22454+
Jules Avenged |q 10909/1 |goto 45,75
step
talk Assistant Klatu##22430
turnin Fel Spirits##10909 |goto 54.3,63.6
turnin Digging for Prayer Beads##10916 |goto 54.3,63.6
accept The Exorcism of Colonel Jules##10935 |goto 54.3,63.6
step
talk Anchorite Barada##22431
Click 'I am ready...'
Target the purple skulls and oozes
Use the Ritual Prayer Beads when enemies are in the room |use Ritual Prayer Beads##31828
After the exorcism is done, talk to Colonel Jules on the bed to save him |q 10935/1 |goto 54.0,63.5
step
talk Assistant Klatu##22430
turnin The Exorcism of Colonel Jules##10935 |goto 54.3,63.6
accept Trollbane is Looking for You##10936 |goto 54.3,63.6
step
talk Force Commander Danath Trollbane##16819
turnin Trollbane is Looking for You##10936 |goto 56.6,66.7
step
talk Advance Scout Chadwick##54603
accept War on the Ramparts##29528 |goto Hellfire Ramparts 48.5,68.1
accept Demons in the Citadel##29529 |goto Hellfire Ramparts 48.5,68.1
accept Hitting Them Where It Hurts##29594 |goto Hellfire Ramparts 48.5,68.1
stickystart "hellfiresupplies"
step
kill Watchkeeper Gargolmar##17306+
collect Gargolmar's Hand##23881 |q 29529/1 |goto Hellfire Ramparts 74.8,33.2
step
kill Omor the Unscarred##17308+
collect Omor's Hoof##23886 |q 29529/1 |goto Hellfire Ramparts 38.4,19.4
step
kill Nazan##17307+
collect Nazan's Head##23901 |q 29528/2 |goto Hellfire Ramparts 35.9,81.4
step
label "hellfiresupplies"
As you go through the instance do the following:
click Hellfire Supplies##209348
collect 3 Hellfire Supplies##72160 |q 29594/1
step
talk Advance Scout Chadwick##54603
turnin War on the Ramparts##29528 |goto Hellfire Ramparts 48.5,68.1
turnin Demons in the Citadel##29529 |goto Hellfire Ramparts 48.5,68.1
turnin Hitting Them Where It Hurts##29594 |goto Hellfire Ramparts 48.5,68.1
step
talk Gunny##54629
accept Make Them Bleed##29538 |goto The Blood Furnace 50.9,90.2
accept Heart of Rage##29539 |goto The Blood Furnace 50.9,90.2
accept The Breaker##29540 |goto The Blood Furnace 50.9,90.2
stickystart "felorcblood"
step
kill The Maker##17381+
collect Fel Infusion Rod##73200 |q 29538/2 |goto The Blood Furnace 37.1,40.8
step
Fully Investigate the Blood Furnace |q 29539/1 |goto The Blood Furnace 65.2,41.1
step
kill Keli'dan the Breaker##17377 |q 29540/1 |goto The Blood Furnace 58.3,41.2
step
label "felorcblood"
As you go through this instance,
kill Laughing Skull Enforcer##17370+, Laughing Skull Rogue##17491+, Shadowmoon Summoner##17395+, Laughing Skull Legionnaire##17626+
collect 10 Fel Orc Blood Vial##29538 |q 29538
step
_Go through_ the tunnel |goto The Blood Furnace 62.3,51.4 < 10 |walk
talk Gunny##54629
turnin Make Them Bleed##29538 |goto The Blood Furnace 50.9,90.2
turnin Heart of Rage##29539 |goto The Blood Furnace 50.9,90.2
turnin The Breaker##29540 |goto The Blood Furnace 50.9,90.2
step
kill Overseer Ripsaw##21499
collect Illidari-Bane Shard##30756 |use Illidari-Bane Shard##30756 |n
accept Illidari-Bane Shard##10621 |goto Shadowmoon Valley,23.5,34.9
step
talk Ordinn Thunderfist##19370
turnin Illidari-Bane Shard##10621 |goto Shadowmoon Valley 36.8,54.9
accept Capture the Weapons##10626 |goto Shadowmoon Valley 36.8,54.9
step
kill Makazradon##21501
collect Makazradon's Glaive##30786 |q 10626/1 |goto 22.7,35.3
step
kill Morgroron##21500
collect Morgroron's Glaive##30785 |q 10626/2 |goto 23.2,38.4
step
talk Ordinn Thunderfist##19370
turnin Capture the Weapons##10626 |goto Shadowmoon Valley 36.8,54.9
accept The Hermit Smith##10662 |goto Shadowmoon Valley 36.8,54.9
step
talk David Wayne##21465
turnin The Hermit Smith##10662 |goto Terokkar Forest 77.6,38.7
accept Additional Materials##10664 |goto Terokkar Forest 77.6,38.7
step
talk Fantei##19678
buy 1 Demon Warding Totem##30823 |q 10664/3 |goto Shattrath City 64.7,70.7
step
#include "shatt_auctioneer"
buy 4 Heavy Knothide Leather##23793 |q 10664/2
step
talk Dealer Najeeb##20981
buy 1 Adamantite Frame##23784 |q 10664/1 |goto Netherstorm 45.0,36.5
step
Make sure you have everything on this list
collect 1 Adamantite Frame##23784 |q 10664/1
collect 4 Heavy Knothide Leather##23793 |q 10664/2
collect 1 Demon Warding Totem##30823 |q 10664/3
step
talk David Wayne##21465
turnin Additional Materials##10664 |goto Terokkar Forest 77.6,38.7
step
talk David Wayne##21465
accept Tear of the Earthmother##10670 |goto Terokkar Forest 77.6,38.7
|tip You'll have to complete the Mechanar (Fresh From the Mechanar) And Shadow Labyrinth (The Lexicon Demonica) portions of the dungeon guide in order to receive this quest.
|confirm
step
talk Force Commander Danath Trollbane##16819
accept Overlord##10400 |goto Hellfire Peninsula 56.6,66.6
accept Drill the Drillmaster##10937 |goto Hellfire Peninsula 56.6,66.6
accept Advancing the Campaign##29689 |goto Hellfire Peninsula 56.6,66.6
step
kill Drillmaster Zurok##19312 |q 10937/1 |goto Hellfire Peninsula/0 47.8,56.3
step
kill Arazzius the Cruel##19191 |q 10400/1 |goto Hellfire Peninsula/0 43.7,31.6
step
turnin Overlord##10400 |goto Hellfire Peninsula/0 56.6,66.7
turnin Drill the Drillmaster##10937 |goto Hellfire Peninsula/0 56.6,66.7
step
talk Advance Scout Chadwick##54933
turnin Advancing the Campaign##29689 |goto The Shattered Halls/1 58.6,88.4
talk Gunny##54934
accept One Last Favor##29652 |goto The Shattered Halls 58.6,88.5
step
talk Advance Scout Chadwick##54933
accept How to Save a Life##29649 |goto 58.6,88.5
accept O'mrogg's Warcloth##29656 |goto 58.6,88.5
accept Turning the Tide##29654 |goto 58.6,88.5
step
kill 4 Shattered Hand Legionnaire##16700 |q 29652/1 |goto 34.9,69.7
step
_Jump down_ into the sewers |goto 34.9,69.7 < 10 |walk
_Follow_ the sewer to the left, then Enter the Throne of the Damned |goto 37.0,61.8 < 10 |walk
kill Grand Warlock Nethekurse##16807
collect Grand Warlock's Amulet##23735 |q 29649 |goto 34.6,62.1
step
Use your Grand Warlock's Amulet next to the fire |use Grand Warlock's Amulet##23735
collect Fel Ember##23726 |q 29649/1 |goto 31.9,60.6
step
Run down this hallway and kill all the Orcs
Watch out for flaming arrows shot at the ground
kill Shattered Hand Blood Guard##17461+, Shattered Hand Archer##17427+ |goto The Shattered Halls 29.4,14.9 < 10
kill 2 Shattered Hand Champion##17671+ |q 29652/3 |goto 53.8,26.4
kill 2 Shattered Hand Centurion##17465+ |q 29652/2 |goto 53.8,26.4
step
kill Warbringer O'mrogg##16809
|tip He will fear random party members, this can make the fight healing intensive.
collect O'mrogg's Warcloth##72597 |q 29656/1 |goto 53.3,33.6
step
kill Warchief Kargath Bladefist##16808
|tip This boss will call in Reaver Guards to help during the fight. Tank needs to pick up aggro on them.
kill Reaver Guard##17623+
collect Warchief Kargath's Fist##23723 |q 29654/1 |goto 67.8,55.3
step
talk Advance Scout Chadwick##54933
turnin One Last Favor##29652 |goto 67.2,51.8
turnin How to Save a Life##29649 |goto 67.2,51.8
turnin O'mrogg's Warcloth##29656 |goto 67.2,51.8
turnin Turning the Tide##29654 |goto 67.2,51.8
step
talk David Wayne##21465
turnin Tear of the Earthmother##10670 |goto Terokkar Forest 77.6,38.7
step
At this point you will have to grind Instances in order to gain reputation
If you're past honored, you can do Shattered Halls, Heroic Hellfire Ramparts or Heroic Blood Furnace
Heroic Shattered Halls should also be available
You can also do the PVP daily quest to earn rep
|confirm
step
talk Warrant Officer Tracy Proudwell##18266
accept Hellfire Fortifications##13410 |only DeathKnight |goto Hellfire Peninsula 56.3,62.8
accept Hellfire Fortifications##13408 |only if not DeathKnight |goto Hellfire Peninsula 56.3,62.8
step
Capture The Overlook |q 13410/1 |goto 40.1,48.5
You will need to enable PVP in order to capture the objective
Type "/pvp" to enable player versus player combat
Players of the opposing faction will now be able to attack you, so be warned
|only DeathKnight
step
Capture The Stadium |q 13410/1 |goto 35.7,51.5
You will need to enable PVP in order to capture the objective
Type "/pvp" to enable player versus player combat
Players of the opposing faction will now be able to attack you, so be warned
|only DeathKnight
step
Capture Broken Hill |q 13410/3 |goto 40.2,56.7
You will need to enable PVP in order to capture the objective
Type "/pvp" to enable player versus player combat
Players of the opposing faction will now be able to attack you, so be warned
|only DeathKnight
step
Capture The Overlook |q 13408/1 |goto 40.1,48.5
You will need to enable PVP in order to capture the objective
Type "/pvp" to enable player versus player combat
Players of the opposing faction will now be able to attack you, so be warned
|only if not DeathKnight
step
Capture The Stadium |q 13408/1 |goto 35.7,51.5
You will need to enable PVP in order to capture the objective
Type "/pvp" to enable player versus player combat
Players of the opposing faction will now be able to attack you, so be warned
|only if not DeathKnight
step
Capture Broken Hill |q 13408/3 |goto 40.2,56.7
You will need to enable PVP in order to capture the objective
Type "/pvp" to enable player versus player combat
Players of the opposing faction will now be able to attack you, so be warned
|only if not DeathKnight
step
talk Warrant Officer Tracy Proudwell##18266
turnin Hellfire Fortifications##13408 |only DeathKnight |goto Hellfire Peninsula 56.3,62.8
turnin Hellfire Fortifications##13410 |only if not DeathKnight |goto Hellfire Peninsula 56.3,62.8
step
After the quest is completed you will unlock a daily version of the quest
|confirm
step
label "fort"
talk Warrant Officer Tracy Proudwell##18266
accept Hellfire Fortifications##10106 |goto Hellfire Peninsula 56.3,62.8
You can also run _Hellfire Ramparts_, _The Blood Furnace_ and _The Shattered Halls_ to gain reputation |confirm |next "dungeons"
step
Capture The Overlook |q 10106/1 |goto 40.1,48.5
You will need to enable PVP in order to capture the objective
Type "/pvp" to enable player versus player combat
Players of the opposing faction will now be able to attack you, so be warned
step
Capture The Stadium |q 10106/1 |goto 35.7,51.5
You will need to enable PVP in order to capture the objective
Type "/pvp" to enable player versus player combat
Players of the opposing faction will now be able to attack you, so be warned
step
Capture Broken Hill |q 10106/3 |goto 40.2,56.7
You will need to enable PVP in order to capture the objective
Type "/pvp" to enable player versus player combat
Players of the opposing faction will now be able to attack you, so be warned
step
talk Warrant Officer Tracy Proudwell##18266
turnin Hellfire Fortifications##10106 |goto Hellfire Peninsula 56.3,62.8
|next "fort" |only if rep('Honor Hold')<=Revered
|next "grats" |only if rep('Honor Hold')==Exalted
step
label "dungeons"
Choose a dungeon to gain reputation in:
Hellfire Ramparts |confirm |next "hellfiregrind"
The Blood Furnace |confirm |next "bloodfurnacegrind"
The Shattered Halls |confirm |next "shatteredgrind"
step
label "hellfiregrind"
Enter the dungeon and kill all enemies you come across |goto Hellfire Ramparts 50,69
Achieve Exalted rank with Honor Hold |complete rep('Honor Hold')==Exalted |next "grats"
_Click here_ to return to the dailies section |confirm |next "fort"
step
label "bloodfurnacegrind"
Enter the dungeon and kill all enemies you come across |goto The Blood Furnace 51,90
Achieve Exalted rank with Honor Hold |complete rep('Honor Hold')==Exalted |next "grats"
_Click here_ to return to the dailies section |confirm |next "fort"
step
label "shatteredgrind"
Enter the dungeon and kill all enemies you come across |goto The Shattered Halls 59,88
Achieve Exalted rank with Honor Hold |complete rep('Honor Hold')==Exalted |next "grats"
_Click here_ to return to the dailies section |confirm |next "fort"
step
label "grats"
Congratulations, you are now Exalted with Honor Hold!!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Keepers of Time",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Keepers of Time faction.",
},[[
step
This faction largely relies on running certain instances repeatedly in order to gain reputation
There are a few Daily Quests to look out for in Shattrath City
However, they won't be available to you every day
talk Innkeeper Allison##6740
home Trade District |goto Stormwind City 60.4,75.3
step
talk Wind Trader Zhareem##24369
accept Wanted: Aeonus's Hourglass##11382 |or |goto Shattrath City 75.1,36.6
accept Wanted: The Epoch Hunter's Head##11378 |or |goto 75.1,36.6
Neither of the quests may be available
If that is the case, click here to proceed |confirm
step
talk Nether-Stalker Mah'duun##24370
accept Wanted: Rift Lords##11383 |goto 75.5,37.3
This quest may not be available for the day
If it isn't, click here to proceed |confirm
step
talk Steward of Time##20142
accept To The Master's Lair##10279 |goto Tanaris 65.3,49.7
Ask the Steward of Time to take you to the master's lair |goto 59.1,53.9
step
talk Andormu##20130
turnin To The Master's Lair##10279 |goto 58.1,54.1
accept The Caverns of Time##10277 |goto 58.1,54.1
For this quest you can either follow the Custodian around or do something else while waiting
This is a long process
step
talk Andormu##20130
turnin The Caverns of Time##10277 |goto 58.1,54.1
accept Old HIllsbrad##10282 |goto 58.1,54.1
step
talk Erozion##18723
turnin Old Hillsbrad##10282 |goto Old Hillsbrad Foothills 29.0,48.3
accept Taretha's Diversion##29598 |goto 29.0,48.3
Tell him you need a pack of incendiary bombs
collect 1 Pack of Incendiary Bombs##25853 |q 29598 |goto 29.0,48.3
step
talk Brazen##18725 |goto 29.2,47.9 < 5
Tell him you're ready to go to Durnholde Keep |goto 69.3,71.6 < 5 |walk
_Go into_ Durnholde and cross the bridge |goto 72.2,63.4 < 10 |walk
_Go to_ this ledge and jump down |goto 77.2,61.6 < 10 |walk
click Barrel##2886
It will be somewhere inside of the building
Once you've clicked the barrel, click here to continue |confirm |q 29598 |goto 77.6,65.7
step
click Barrel##2886
It will be somewhere inside of this building
Once you've clicked the barrel, click here to continue |confirm |q 29598 |goto 76.0,68.1
step
click Barrel##2886
It will be somewhere inside of this building
Once you've clicked the barrel, click here to continue |confirm |q 29598 |goto 74.6,68.4
step
click Barrel##2886
It will be somewhere inside of this building
Once you've clicked the barrel, click here to continue |confirm |q 29598 |goto 69.0,62.4
step
click Barrel##2886
It will be somewhere inside of this building
Internment Lodges Set Ablaze |q 29598/1 |goto 68.6,58.7
step
kill Lieutenant Drake##17848
After you fight him, go up the stairs
Click here to continue |confirm |q 29598 |goto 75.6,64.7
step
_Go up_ the hill to the entrance of the barracks |goto 73.2,61.4 < 10 |walk
_Go down_ the steps |goto 74.6,58.4 < 5 |walk
talk Thrall##17876
turnin Taretha's Diversion##29598 |goto 74.5,57.7
accept Escape from Durnhold##29599 |goto 74.5,57.7
step
Tell him you're ready to get out of there
Follow and Protect Thrall
kill Captain Skarloc##17862+
After you kill Captain Skarloc, tell Thrall that Taretha cannot see him
Click here to proceed |confirm |q 29599
step
Continue following and protecting Thrall until he stops again
Tell him that you're ready
Click here to continue |confirm |q 29599
step
Follow and protect Thrall once more
Once you're upstairs with Taretha, ask her about the Strange Wizard
Click here to continue |confirm |q 29599
step
Follow Thrall outside and protect him
kill Epoch Hunter##18096+
Thrall's Destiny Fulfilled |q 29599/1
step
talk Erozion##18723
turnin Escape from Durnhold##29599 |goto 50.2,30.9
step
talk Andormu##20130
accept The Black Morass##10296 |goto Tanaris 58.1,54.1
step
talk Sa'at##20201
turnin The Black Morass##10296 |goto The Black Morass 49.3,6.5
accept The Opening of the Dark Portal##10297 |goto 49.3,6.5
step
Moving to this spot will activate the event
You will need to move to the portals that appear nearby, and kill everything that comes out of it
If Medivh is under attack you must kill whatever is attacking him
If his shield drops to 0% you will fail
Open the Dark Portal |q 10297/1 |goto 49.2,71.1
step
talk Sa'at##20201
turnin The Opening of the Dark Portal##10297 |goto 49.3,6.5
step
talk Wind Trader Zhareem##24369
turnin Wanted: Aeonus's Hourglass##11382 |or |goto Shattrath City 75.1,36.6
turnin Wanted: The Epoch Hunter's Head##11378 |or |goto 75.1,36.6
step
talk Nether-Stalker Mah'duun##24370
turnin Wanted: Rift Lords##11383 |goto 75.5,37.3
step
At this point you will need to grind The Black Morass and Old Hillsbrad Foothills to gain reputation
If you're revered with the Keepers of time, you'll be able to talk to Zephyr in Shattrath who will teleport you to Tanaris
Earn Exalted reputation with the Keepers of Time |complete rep('Keepers of Time')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Keepers of Time!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Kurenai",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Kurenai faction.",
achieveid={899},
patch='30009',
},[[
#include "Kurenai_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Lower City",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Lower City faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Lower City') < Exalted end,
},[[
step
talk Rilak the Redeemed##22292
accept The Eyes of Skettis##10847 |goto Shattrath City 52.6,21
step
_Follow_ the path up |goto Terokkar Forest 49.9,16.5 < 10 |only if walking
click Eye of Veil Reskk##182507
collect Eye of Veil Reskk##25638|q 10847/1 |goto 50.1,19.4
step
click Eye of Veil Shienor##182505
|tip Climb the path inside the other tree, run across the bridge
collect Eye of Veil Shienor##25642|q 10847/2 |goto 57.9,23.2
step
talk Rilak the Redeemed##22292
turnin The Eyes of Skettis##10847 |goto Shattrath City 52.6,21
accept Seek Out Kirrik##10849 |goto Shattrath City 52.6,21
step
talk Kirrik the Awakened##22272
turnin Seek Out Kirrik##10849 |goto Terokkar Forest 37.4,51.5
accept Veil Skith: Darkstone of Terokk##10839 |goto Terokkar Forest 37.4,51.5
step
talk Ethan##22365
accept Missing Friends##10852 |goto 37.7,51.3
step
talk Mekeda##22370
accept Before Darkness Falls##10878 |goto 37.4,51.2
step
kill 8 Cabal Skirmisher##21661+ |q 10878/1 |goto 39.6,58.6
kill 4 Cabal Spell-weaver##21902+ |q 10878/2 |goto 39.6,58.6
kill 2 Cabal Initiate##21907+ |q 10878/3 |goto 39.6,58.6
Get the Cabal Orders from orcs in this area
Click the Cabal Orders |use Cabal Orders##31707
accept Cabal Orders##10880 |goto 39.6,58.6
step
talk Mekeda##22370
turnin Cabal Orders##10880 |goto 37.4,51.2
accept The Shadow Tomb##10881 |goto 37.4,51.2
turnin Before Darkness Falls##10878 |goto 37.4,51.2
step
talk Mekeda##22370
turnin Before Darkness Falls##10878 |goto 37.4,51.2
step
click Cabal Chest##185226
collect Gavel of K'alen##31710 |q 10881/2 |goto 29.7,51.7
step
click Cabal Chest##185226
collect Drape of Arunen##31709 |q 10881/1 |goto 32.1,51.2
step
click Cabal Chest##185226
collect Scroll of Atalor##31708|q 10881/3 |goto 31.2,46.7
step
talk Mekeda##22370
turnin The Shadow Tomb##10881 |goto 37.4,51.2
stickystart "veilskith"
step
Use the Rod of Purification on the Darkstone of Terokk |use Rod of Purification##31610
Purify the Darkstone of Terokk |q 10839/1 |goto 30.8,42.1
step
label "veilskith"
kill Skithian Windripper##18453+,Skithian Dreadhawk##18452+
collect 5 Lathrai's Stolen Goods##27861 |q 10112/1 |goto 32.3,41.7
collect Veil Skith Prison Key##31655+ |n
click Veil Skith Cage##1787
Rescue 12 Children |q 10852/1 |goto 32.3,41.7
step
talk Kirrik the Awakened##22272
turnin Veil Skith: Darkstone of Terokk##10839 |goto 37.4,51.5
accept Veil Rhaze: Unliving Evil##10848 |goto 37.4,51.5
step
talk Ethan##22365
turnin Missing Friends##10852 |goto 37.7,51.3
step
kill 4 Deathtalon Spirit##21198+ |q 10848/1 |goto 30.2,51.1
kill 4 Screeching Spirit##21200+ |q 10848/2 |goto 30.2,51.1
kill 2 Spirit Raven##21324+ |q 10848/3 |goto 30.2,51.1
step
talk Kirrik the Awakened##22272
turnin Veil Rhaze: Unliving Evil##10848 |goto 37.4,51.5
accept Veil Lithic: Preemptive Strike##10861 |goto 37.4,51.5
step
click Cursed Egg##185211
Redeem 3 Hatchlings |q 10861/1 |goto 24.2,70.5
kill 3 Malevolent Hatchling##22337+ |q 10861/2 |goto 24.2,70.5
step
talk Commander Ra'vaj##22446
accept An Improper Burial##10913
talk Chief Archaeologist Letoll##22458
accept Digging Through Bones##10922
Escort the Archaeologists |q 10922/1 |goto 31,76.1
step
talk Dwarfowitz##22481
turnin Digging Through Bones##10922 |goto 31,76.1
step
Use your Sha'tari Torch on corpses |use Sha'tari Torch##31769
Burn 8 Slain Sha'tar Vindicator corpses |q 10913/1 |goto 35,76.5
Burn 8 Slain Auchenai Warrior corpses |q 10913/2 |goto 35,76.5
step
talk Commander Ra'vaj##22446
turnin An Improper Burial##10913 |goto 31,76.1
accept A Hero Is Needed##10914 |goto 31,76.1
step
kill 12 Auchenai Initiate##21284+ |q 10914/1 |goto 36.7,74.4
kill 5 Auchenai Doomsayer##21285+ |q 10914/2 |goto 36.7,74.4
step
talk Commander Ra'vaj##22446
turnin A Hero Is Needed##10914 |goto 31,76.1
accept The Fallen Exarch##10915 |goto 31,76.1
step
click Auchenai Coffin##184999
kill Reanimated Exarch##22452 |q 10915/1 |goto 35.9,65.7
step
talk Commander Ra'vaj##22446
turnin The Fallen Exarch##10915 |goto 31,76.1
step
talk Kirrik the Awakened##22272
turnin Veil Lithic: Preemptive Strike##10861 |goto 37.4,51.5
accept Veil Shalas: Signal Fires##10874 |goto 37.4,51.5
step
talk High Priest Orglum##22278
accept The Tomb of Lights##10840 |goto 37.5,50.8
accept Vengeful Souls##10842 |goto 37.5,50.8
step
_Enter_ the tomb |goto 47.0,55.2 < 10 |walk
kill 10 Ethereal Nethermancer##21370+ |q 10840/1 |goto 47.6,54.8
kill 10 Ethereal Plunderer##21368+ |q 10840/2 |goto 47.6,54.8
kill Vengeful Draenei##21636+
Slay 5 Vengeful Draenei |q 10842/1 |goto 47.6,54.8
step
_Leave_ the tomb |goto 47.0,55.2 < 10 |q 10842 |walk
_Follow_ the path up to Veil Shalas |goto Terokkar Forest 54.9,66.0 < 10 |only if walking
_Continue_ up the path to the Sapphire Signal Fire |goto 57.3,65.0 < 10 |only if walking
click Sapphire Signal Fire##185216
|tip Across the hanging bridge and down the spiraling stairs.
Extinguish the Sapphire Signal Fire |q 10874/1 |goto 55.2,67.1
step
_Follow_ the path to the Emerald Signal Fire |goto 57.0,71.8 < 10 |only if walking
click Emerald Signal Fire##185217
|tip Over the hanging bridge.
Extinguish the Emerald Signal Fire |q 10874/2 |goto 55.5,69.7
step
_Follow_ the path to the Bloodstone and Violet Signal Fires |goto 56.0,72.7 < 10 |only if walking
|tip It is a tunnel path inside the tree. The entrance is behind the tree to the right a little.
click Bloodstone Signal Fire##185219
|tip Up the path inside the tree, on your left as you reach the top.
Extinguish the Bloodstone Signal Fire |q 10874/4 |goto 56.1,72.4
step
click Violet Signal Fire##185218
|tip Across the hanging bridge from the Bloodstone Signal Fire.
Extinguish the Violet Signal Fire |q 10874/3 |goto 56.7,69.2
step
talk Kirrik the Awakened##22272
turnin Veil Shalas: Signal Fires##10874 |goto 37.4,51.5
accept Return to Shattrath##10889 |goto 37.4,51.5
step
talk High Priest Orglum##22278
turnin The Tomb of Lights##10840 |goto 37.5,50.8
turnin Vengeful Souls##10842 |goto 37.5,50.8
step
talk Rilak the Redeemed##22292
turnin Return to Shattrath##10889 |goto Shattrath City 52.6,21
talk Defender Grashna##22373
You're about to fight 3 waves of birds and a bird boss
Make sure you're ready
accept The Skettis Offensive##10879 |goto Shattrath City 52.6,21
step
Fight off the Minions of Terokk and eventually the Avatar of Terokk
Thwart the Attack |q 10879/1 |goto 52.6,21
step
talk Rilak the Redeemed##22292
turnin The Skettis Offensive##10879 |goto 52.6,21
step
talk Vekax##22429
accept The Outcast's Plight##10917 |goto Shattrath City 48.2,18.7
step
talk Oloraak##19045
accept Can't Stay Away##10180 |or |goto 58.0,15.2
accept Brother Against Brother##10097 |or |goto 58.0,15.2
step
kill Shienor Talonite##18449+, Shienor Sorcerer##18450+
collect 30 Arakkoa Feather##25719 |q 10917/1 |goto Terokkar Forest,50.2,17.4
step
talk Soolaveen##18675
accept Recover the Bones##10030 |goto 37.0,49.5
step
click Restless Bones##182584
|tip They look like white-glowing bones laying on the ground all around this area. They are kind of rare, so you may need to search around a little for them.
collect 10 Restless Bones##25842 |q 10030/1 |goto 32.4,56.5
step
_Enter_ the crypt |goto 31.2,52.7 < 10 |walk
talk Akuno##22377
accept Escaping the Tomb##10887 |goto 30.6,49.1
step
Protect Akuno and escort him to this spot |goto 33.8,51.6 < 10 |walk
Help Akuno find his way to the Refugee Caravan |q 10887/1 |goto 33.8,51.6
step
talk Mekeda##22370
turnin Escaping the Tomb##10887 |goto 38.1,51.8
step
talk Ramdor the Mad##19417
turnin Recover the Bones##10030 |goto 35.1,66.3
accept Helping the Lost Find Their Way##10031 |goto 35.1,66.3
step
kill 10 Lost Spirit##18460+ |q 10031/1 |goto 31.7,64.9
step
talk Dwarfowitz##22481
accept Fumping##10929 |goto 31.0,76.2
step
kill 10 Broken Skeleton##16805+ |q 10031/2 |goto 40.1,77.5
You can find more at the following location: |goto 48.2,71.9
step
Use your Fumper while standing on the ground |use Fumper##31810
|tip You can just keep using it in the same spot, it doesn't matter.
kill Mature Bone Sifter##22482+
collect 8 Mature Bone Sifter Carcass##31814 |q 10929/1 |goto 37.6,77.3
step
talk Dwarfowitz##22481
turnin Fumping##10929 |goto 31.0,76.2
accept The Big Bone Worm##10930 |goto 31.0,76.2
step
kill Decrepit Clefthoof##22105+
Use your Fumper next to Decrepit Clefthoof corpses |use Fumper##31825
|tip You may have to do this multiple times until the huge worm, Hai'shulud spawns.
kill Hai'shulud##22038
collect Enormous Bone Worm Organs##31826 |q 10930/1 |goto 48.0,75.1
step
talk Skywing##22424
accept Skywing##10898
Follow Skywing and protect him
Escort Skywing |q 10898/1 |goto 53.7,72.3
step
_Follow the path_ into the Ring of Observance |goto 42.1,65.6 < 10 |only if walking
talk Isfar##18933
turnin Can't Stay Away##10180 |goto Sethekk Halls 72.3,35.5
step
talk Dwarfowitz##22481
turnin The Big Bone Worm##10930 |goto Terokkar Forest 31.0,76.2
step
talk Soolaveen##18675
turnin Helping the Lost Find Their Way##10031 |goto 37.0,49.5
step
talk Rilak the Redeemed##22292
turnin Skywing##10898 |goto Shattrath City 52.6,21.0
step
talk Vekax##22429
turnin The Outcast's Plight##10917 |goto 50.3,18.3
step
At this point you will need to Farm instances for reuptation
You can farm Auchenai Crypts until 5,999/6,000 Friendly
After you reach Honored though, you will only be able to do Heroic mode for reputation
You can also grind Shadow Labyrinth and Sethekk Halls up until exalted without Heroic mode active
You can gain addition reputation by doing it on Heroic however
Click here to move onto Daily Heroic quests that may be available for reputation turn ins |confirm
step
label "h_daily"
talk Wind Trader Zhareem##24369
accept Wanted: Shaffar's Wondrous Pendant##11373 |or |goto Shattrath City,75.1,36.6
accept Wanted: The Headfeathers of Ikiss##11372 |or |goto Shattrath City,75.1,36.6
accept Wanted: The Exarch's Soul Gem##11374 |or |goto Shattrath City,75.1,36.6
accept Wanted: Murmur's Whisper##11375 |or |goto Shattrath City,75.1,36.6
These quests may no longer be available.
Click here if they are not offered |confirm |next "entrance"
step
Kill your way to the end of the instance.
kill Nexus-Prince Shaffar##18344
collect Shaffar's Wondrous Amulet##33835 |q 11373/1
only if haveq(11373)
step
Kill your way to the end of the instance
kill Talon King Ikiss##18473 |goto Sethekk Halls/2 32.2,29.5
collect The Headfeathers of Ikiss##33834 |q 11372/1
only if haveq(11372)
step
Kill your way to the end of the instance
kill Exarch Maladaar##18373
collect The Exarch's Soul Gem##33836 |q 11374/1 |goto Auchenai Crypts/2 74.2,49.9
only if haveq(11374)
step
Kill your way to the end of the instance.
kill Murmur##18708
collect Murmur's Whisper##33840 |q 11375/1 |goto Shadow Labyrinth/1 80.8,39.1
only if haveq(11375)
step
talk Wind Trader Zhareem##24369
turnin Wanted: Shaffar's Wondrous Pendant##11373 |or |goto Shattrath City,75.1,36.6
turnin Wanted: The Headfeathers of Ikiss##11372 |or |goto Shattrath City,75.1,36.6
turnin Wanted: The Exarch's Soul Gem##11374 |or |goto Shattrath City,75.1,36.6
turnin Wanted: Murmur's Whisper##11375 |or |goto Shattrath City,75.1,36.6
|next "h_daily" |only if rep('Lower City')<=Revered
|next "exalted" |only if rep('Lower City')==Exalted
step
label "entrance"
The entrance for _Shadow Labyrinth_ is here [Terokkar Forest 39.6,71.1]
The entrance for _Auchenai Crypts_ is here [Terokkar Forest 35.9,65.6]
The entrance for _Sethekk halls_ is here [Terokkar Forest 43.4,65.6]
Earn Exalted with Lower city |complete rep('Lower City')==Exalted
step
label "exalted"
Congratulations, you are now Exalted with the Lower City!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Ogri'la",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Ogri'la faction.",
achieveid={896},
patch='30001',
},[[
step
talk V'eru##22497
accept Speak with the Ogre##10984 |goto Shattrath City 56.5,49.1
step
talk Grok##22940
turnin Speak with the Ogre##10984 |goto 64.9,68.1
accept Mog'dorg the Wizened##10983 |goto 64.9,68.1
step
talk Mog'dorg the Wizened##22941
turnin Mog'dorg the Wizened##10983 |goto Blade's Edge Mountains 55.5,44.9
accept Grulloc Has Two Skulls##10995 |goto 55.5,44.9
accept Maggoc's Treasure Chest##10996 |goto 55.5,44.9
accept Even Gronn Have Standards##10997 |goto 55.5,44.9
step
kill Grulloc##20216 |n
click Grulloc's Dragon Skull##185567
collect 1 Grulloc's Dragon Skull##32379 |q 10995/1 |goto 60.9,47.6
step
map Blade's Edge Mountains
path follow loose; curved
path	59.3,64.7	59.6,56.8	65.0,54.1
path	67.5,58.5	68.4,65.8	68.4,73.7
Follow this Path to find Maggoc
kill Maggoc##20600 |n
click Maggoc's Treasure Chest##185569
collect 1 Maggoc's Treasure Chest##32380 |q 10996/1
step
kill Slaag##22199
click Slaag's Standard##185574
collect 1 Slaag's Standard##32382 |q 10997/1 |goto Terokkar Forest 20.3,17.5
step
talk Mog'dorg the Wizened##22941
turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains 55.5,44.9
turnin Maggoc's Treasure Chest##10996 |goto 55.5,44.9
turnin Even Gronn Have Standards##10997 |goto 55.5,44.9
accept Grim(oire) Business##10998 |goto 55.5,44.9
step
Stand in the fire until Vim'gol the Vile spawns
kill Vim'gol the Vile##22911 |n
click Vim'gol's Vile Grimoire##185562
collect 1 Vim'gol's Vile Grimoire##32358 |q 10998/1 |goto 77.3,31.8
step
talk Mog'dorg the Wizened##22941
turnin Grim(oire) Business##10998 |goto 55.5,44.9
accept Into the Soulgrinder##11000 |goto 55.5,44.9
step
Use Vim'gol's Grimoire |use Vim'gol's Grimoire##32467
Kill all adds that spawn, defending the soul grinder
Defeat Skulloc Soul Grinder
click Skulloc's Soul##185577
Capture Skulloc's Soul |q 11000/1 |goto 60.0,24.1
step
talk Mog'dorg the Wizened##22941
turnin Into the Soulgrinder##11000 |goto 55.5,44.9
accept Ogre Heaven##11009 |goto 55.5,44.9
step
talk Chu'a'lor##23233
turnin Ogre Heaven##11009 |goto 28.8,57.3
accept The Crystals##11025 |goto 28.8,57.3
step
Mixed in the larger clusters all around this area
click Apexis Shard Formation##185911
|tip You can also get these off the corpses of the Flayers
collect 5 Apexis Shard##32569 |q 11025/1 |goto 28.8,62.4
step
talk Chu'a'lor##23233
turnin The Crystals##11025 |goto 28.8,57.4
accept An Apexis Relic##11058 |goto 28.8,57.4
step
talk Torkus##23316
accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto 28.4,57.6
step
Mixed in the larger clusters all around this area
click Apexis Shard Formation##185911
|tip You can also get these off the corpses of the Flayers.
collect Apexis Shard##32569 |q 11058 |goto 29.2,65.2
step
Click the Apexis Relic
|tip It looks like a smaller floating crystal hovering over a white orb on the ground.
Insert an Apexis Shard, and begin!
Repeat the color patterns that are shown
|tip Ignore the floating crystal now, focus on the crystals on the ground. You will be shown a color sequence. Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 6 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
Attain the Apexis Vibrations |q 11058/1 |goto 27.7,68.1
If you fail, get another Apexis Shard at the following location |goto 29.2,65.2
step
talk Chu'a'lor##23233
turnin An Apexis Relic##11058 |goto 28.8,57.4
accept The Relic's Emanation##11080 |goto 28.8,57.4
step
Mixed in the larger clusters all around this area
click Apexis Shard Formation##185911
|tip You can also get these off the corpses of the Flayers
collect Apexis Shard##32569 |q 11080 |goto 29.2,65.2
step
Click the Apexis Relic
|tip It looks like a smaller floating crystal hovering over a white orb on the ground.
Insert an Apexis Shard, and begin!
Repeat the color patterns that are shown
|tip Ignore the floating crystal now, focus on the crystals on the ground. You will be shown a color sequence. Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
Attain the Apexis Vibrations |q 11080/1 |goto 31.5,63.4
If you fail, get another Apexis Shard at the following location |goto 29.2,65.2
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto 28.8,57.4
step
Mixed in the larger clusters all around this area
click Apexis Shard Formation##185911
|tip You can also get these off the corpses of the Flayers.
collect 10 Apexis Shard##32569 |q 11030 |goto 31.2,52.2
step
click a Fel Crystalforge##7392
|tip It looks like a metal machine with green bubbling floating out of it quickly.
Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards
collect Unstable Flask of the Beast##32598 |q 11030/1 |goto 32.8,40.5
step
talk Torkus##23316
turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto 28.4,57.6
accept A Father's Duty##11061 |goto 28.4,57.6
step
talk Chu'a'lor##23233
accept The Skyguard Outpost##11062 |goto 28.8,57.4
step
talk Sky Commander Keller##23334
turnin The Skyguard Outpost##11062 |goto 27.4,52.7
step
talk Sky Sergeant Vanderlip##23120
accept Bombing Run##11010 |only if not Druid |goto 27.6,52.9
accept Bombing Run##11102 |only Druid |goto 27.6,52.9
step
Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the gorund around this area.
Destroy 15 Fel Cannonball Stacks |q 11010/1 |goto 33.3,44.0
only if not Druid
step
Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the gorund around this area.
Destroy 15 Fel Cannonball Stacks |q 11102/1 |goto 33.3,44.0
only Druid
step
talk Sky Sergeant Vanderlip##23120
turnin Bombing Run##11010 |only if not Druid |goto 27.6,52.9
turnin Bombing Run##11102 |only Druid |goto 27.6,52.9
step
talk Sky Commander Keller##23334
accept Assault on Bash'ir Landing!##11119 |goto 27.4,52.7
step
talk Aether-tech Apprentice##23473
turnin Assault on Bash'ir Landing!##11119 |goto 27.9,52.2
step
talk Skyguard Khatie##23335
accept Wrangle Some Aether Rays!##11065 |goto 28.0,51.5
step
kill Aether Ray##22181+
Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698
|tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
Wrangle 5 Aether Rays |q 11065/1 |goto 31.6,56.4
step
talk Chu'a'lor##23233
accept Guardian of the Monument##11059 |goto 28.8,57.4
step
Mixed in the larger clusters all around this area
click Apexis Shard Formation##185911
|tip You can also get these off the corpses of the Flayers.
collect 35 Apexis Shard##32569 |q 11059 |goto 31.2,52.2
step
Click the Apexis Monument
|tip It's a huge floating crystal that changes colors.
Insert 35 Apexis Shards, and begin!
Click any of the 4 big colored buttons on the ground
|tip You will get hit for 7,000 damage, but if you are high level, it shouldn't be a big deal. This will make the quest mob spawn faster.
kill Apexis Guardian##22275
collect Apexis Guardian's Head##32697 |q 11059/1 |goto 31.8,63.8
step
talk Chu'a'lor##23233
turnin Guardian of the Monument##11059 |goto 28.8,57.4
step
talk Skyguard Khatie##23335
turnin Wrangle Some Aether Rays!##11065 |goto 28.0,51.5
step
talk Sky Commander Keller##23334
accept To Rule The Skies##11078 |goto 27.4,52.7
step
Mixed in the larger clusters all around this area
click Apexis Shard Formation##185911
|tip You can also get these off the corpses of the Flayers
collect 35 Apexis Shard##32569 |q 11078 |goto 31.2,52.2
step
Click Rivendark's Egg
|tip It looks like a big brown spiked egg sitting in a nest on the ground.
Place 35 Apexis Shards near the dragon egg to crack it open
kill Rivendark##23061
collect Dragon Teeth##32732 |q 11078/1 |goto 27.2,64.8
step
Mixed in the larger clusters all around this area
click Apexis Shard Formation##185911
|tip You can also get these off the corpses of the Flayers.
collect 10 Apexis Shard##32569 |q 11061 |goto 31.2,52.2
step
talk Sky Commander Keller##23334
turnin To Rule The Skies##11078 |goto 27.4,52.7
step
click the Bash'ir Crystalforge##7392
|tip It looks like a 3-layered well sitting on the ground in the middle of a big circular pink glowing symbol.
Purchase 1 Unstable Flask of the Sorcerer for the cost of 10 Apexis Shards
collect Unstable Flask of the Sorcerer##32601 |q 11061/1 |goto 54.4,10.8
step
talk Torkus##23316
turnin A Father's Duty##11061 |goto 28.4,57.6
step
talk Gahk##23300
accept A Fel Whip For Gahk##11079 |goto 28.5,58.1
step
Mixed in the larger clusters all around this area
click Apexis Shard Formation##185911
|tip You can also get these off the corpses of the Flayers.
collect 35 Apexis Shard##32569 |q 11079 |goto 31.2,52.2
step
Click the Fel Crystal Prism
|tip It's a big green crystal floating in green smoke above 4 metal vents.
Place 35 Apexis Shards into the prism
There are 4 different demons that can spawn:
kill Mo'arg Incinerator##23354
kill Braxxus##23353
kill Galvanoth##22281
kill Zarcsin##23355
collect Fel Whip##32733 |q 11079/1 |goto 33.9,44.2
step
talk Gahk##23300
turnin A Fel Whip For Gahk##11079 |goto 28.5,58.1
step
talk Chu'a'lor##23233
accept A Special Thank You##11091 |goto 28.8,57.4
step
talk Jho'nass##23428
turnin A Special Thank You##11091 |goto 28.1,58.7
step
label "reset"
talk Chu'a'lor##23233
accept The Relic's Emanation##11080 |goto Blade's Edge Mountains 28.8,57.4
step
talk Kronk##23253
accept Banish the Demons##11026 |goto 28.9,57.9
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
talk Kronk##23253
accept Banish More Demons##11051 |goto 28.9,57.9
|only if completedq(11026)
step
talk Skyguard Khatie##23335
accept Wrangle More Aether Rays!##11066 |goto 28.0,51.5
step
talk Sky Sergeant Vanderlip##23120
accept Bomb Them Again!##11023 |goto 27.6,52.9
step
Mixed in the larger clusters all around this area
click Apexis Shard Formation##185911
|tip You can also get these off the corpses of the Flayers.
collect Apexis Shard##32569 |q 11080 |goto 29.2,65.2
step
Click the Apexis Relic
|tip It looks like a smaller floating crystal hovering over a white orb on the ground.
Insert an Apexis Shard, and begin!
Repeat the color patterns that are shown
|tip Ignore the floating crystal now, focus on the crystals on the ground. You will be shown a color sequence. Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
Attain the Apexis Vibrations |q 11080/1 |goto 31.5,63.4
If you fail, get another Apexis Shard at the following location |goto 29.2,65.2
step
Use your Banishing Crystal |use Banishing Crystal##32696
Kill Fear Fiends and Abyssal Flamebringers near the portal that opens
15 Demons Banished |q 11026/1 |goto 29.1,79.3
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
Use your Banishing Crystal |use Banishing Crystal##32696
Kill Fear Fiends and Abyssal Flamebringers near the portal that opens
15 Demons Banished |q 11051/1 |goto 29.1,79.3
|only if completedq(11026)
step
kill Aether Ray##22181+
Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698
|tip You will see a message in your chat window
It may help to take off some of your gear if you are high level
Wrangle 5 Aether Rays |q 11066/1 |goto 31.6,56.4
step
Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the gorund around this area.
Destroy 15 Fel Cannonball Stacks |q 11023/1 |goto 33.3,44.0
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto 28.8,57.4
step
talk Kronk##23253
turnin Banish the Demons##11026 |goto 28.9,57.9
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
talk Kronk##23253
turnin Banish More Demons##11051 |goto 28.9,57.9
|only if completedq(11026)
step
talk Skyguard Khatie##23335
turnin Wrangle More Aether Rays!##11066 |goto 28.0,51.5
step
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto 27.6,52.9
step
You have reached the end of the dailies
Click here to go back to the beginning of this guide |confirm
|next "reset" |only if rep("Ogri'la")<=Exalted
|next "exalted" |only if rep("Ogri'la")==Exalted
step
label "exalted"
Congratulations, you are now Exalted with Ogri'la!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\The Scale of the Sands",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Scale of the Sands faction.",
achieveid={959},
patch='30001',
},[[
step
This reputation can be earned by running the Caverns of Time: Hyjal Summit raid
A full clear will grant roughly 7800 reputation
|confirm
step
This will _require_ you to be in a _raid group_
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label "start"
Kill every creature that is hostile in this instance in order to gain reputation |goto Hyjal Summit 10.5,65.1
|tip You will have to clear this place a few times to reach Exalted
Earn Exalted status with The Scale of the Sands |complete rep('The Scale of the Sands')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with The Scale of the Sands!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\The Scryers",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Scryers faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Scryers') < Exalted end,
achieveid={903, 1205},
patch='30001',
},[[
step
talk Haggard War Veteran##19684
accept A'dal##10210 |goto Shattrath City,61.2,12.6
step
talk A'dal##18481
turnin A'dal##10210 |goto 54,44.8
|tip She is the big glowing floating being in the middle of the room.
step
talk Khadgar##18166
accept City of Light##10211 |goto 54.8,44.3
Follow Khadgar's Servant
step
Follow Khadgar's Servant until the tour is over |q 10211/1
step
talk Khadgar##18166
turnin City of Light##10211 |goto 54.8,44.3
accept Allegiance to the Scryers##10552 |goto 54.8,44.3
step
talk Khadgar##18166
accept Voren'thal the Seer##10553 |goto 54.8,44.3
step
talk Magistrix Fyalenn##18531
accept Firewing Signets##10412 |goto 45.2,81.5
accept Sunfury Signets##10656 |goto 45.2,81.5
step
talk Voren'thal the Seer##18530
turnin Voren'thal the Seer##10553 |goto 42.8,91.7
accept Synthesis of Power##10416 |goto 42.8,91.7
step
talk Arcanist Savan##23272
accept Report to Spymaster Thalodien##11039 |goto Shattrath City 44.6,76.4
step
talk Spymaster Thalodien##19468
turnin Report to Spymaster Thalodien##11039 |goto Netherstorm 32,64
accept Manaforge B'naar##10189 |goto Netherstorm 32,64
step
kill Captain Arathyn##19635
|tip He walks around this area on a big purple bird.
collect B'naar Personnel Roster##28376 |q 10189/1 |goto 27.8,65
step
talk Spymaster Thalodien##19468
turnin Manaforge B'naar##10189 |goto 32.0,64.0
accept High Value Targets##10193 |goto 32.0,64.0
talk Magistrix Larynna##19469
accept Bloodgem Crystals##10204 |goto 32.0,64.0
only if rep ('The Scryers') >= Friendly
stickystart "sunfurysignet"
step
kill Sunfury Magister##18855+
collect Bloodgem Shard##28452 |n
Use the Bloodgem Shard next to a floating crystal |use Bloodgem Shard##28452
Siphon the Bloodgem Crystal |q 10204/1 |goto 26.3,66.7
kill 8 Sunfury Geologist##19779+ |q 10193/3 |goto 26.3,66.7
step
label "sunfurysignet"
kill 2 Sunfury Warp-Master##18857+ |q 10193/1 |goto 26.9,70.5
kill 6 Sunfury Warp-Engineer##18852+ |q 10193/2 |goto 26.9,70.5
collect 10 Sunfury Signet##30810 |q 10656/1 |goto 26.9,70.5
step
talk Spymaster Thalodien##19468
turnin High Value Targets##10193 |goto 32,64
accept Shutting Down Manaforge B'naar##10329 |goto 32,64
talk Magistrix Larynna##19469
turnin Bloodgem Crystals##10204 |goto 32,64
step
kill Overseer Theredis##20416
collect B'naar Access Crystal##29366 |q 10329/2 |goto 23.9,70.7
step
click the B'naar Control Console
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge B'naar |q 10329/1 |goto 23.2,68.1
step
talk Spymaster Thalodien##19468
turnin Shutting Down Manaforge B'naar##10329 |goto 32,64
accept Stealth Flight##10194 |goto 32,64
step
talk Veronia##20162
turnin Stealth Flight##10194 |goto 33.8,64.2
accept Behind Enemy Lines##10652 |goto 33.8,64.2
Tell her you're as ready as you'll ever be
You will fly to Manaforge Coruu |goto 48.0,86.0,2 |noway |c |q 10652
step
talk Caledis Brightdawn##19840
turnin Behind Enemy Lines##10652 |goto 48.2,86.6
accept A Convincing Disguise##10197 |goto 48.2,86.6
step
kill Sunfury Arcanists##20134+
collect Sunfury Arcanist Robes##28635 |q 10197/3 |goto 47.7,84.9
step
kill Sunfury Researcher##20136+
collect Sunfury Researcher Gloves##28636 |q 10197/1 |goto 49,81.5
step
kill Sunfury Guardsmen##18850
collect Sunfury Guardsman Medallion##28637 |q 10197/2 |goto 50.8,83.2
|tip Go outside.
step
talk Caledis Brightdawn##19840
turnin A Convincing Disguise##10197 |goto 48.2,86.6
accept Information Gathering##10198 |goto 48.2,86.6
step
Use the Sunfury Disguise in your bags |havebuff 133564 |use Sunfury Disguise##28607
step
_Enter_ Manaforge Coruu
Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you
Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
Listen to them talk
Gather the Information |q 10198/1 |goto 48.2,84.1
step
_Leave_ Manaforge Coruu
talk Caledis Brightdawn##19840
turnin Information Gathering##10198 |goto 48.2,86.6
accept Shutting Down Manaforge Coruu##10330 |goto 48.2,86.6
step
Go inside Manaforge Coruu
Kill Overseer Seylanna
collect Coruu Access Crystal##29396 |q 10330/2 |goto 49,81.5
click the Coruu Control Console##183956
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Coruu |q 10330/1 |goto 49,81.5
step
talk Caledis Brightdawn##19840
|tip Leave Manaforge Coruu.
turnin Shutting Down Manaforge Coruu##10330 |goto 48.2,86.6
accept Return to Thalodien##10200 |goto 48.2,86.6
step
talk Spymaster Thalodien##19468
turnin Return to Thalodien##10200 |goto 32,64
step
talk Magistrix Larynna##19469
accept Kick Them While They're Down##10341 |goto 32.0,64.0
talk Spymaster Thalodien##19468
accept Shutting Down Manaforge Duro##10338 |goto 32.0,64.0
only if rep ('The Scryers') >= Friendly
step
kill 8 Sunfury Conjurer##20139+ |q 10341/1 |goto 57.9,63.4
kill 6 Sunfury Bowman##20207+ |q 10341/2 |goto 57.9,63.4
kill 4 Sunfury Centurion##20140+ |q 10341/3 |goto 57.9,63.4
only if rep ('The Scryers') >= Friendly
step
_Enter_ Manaforge Duro |goto 60.0,68.5
kill Overseer Athanel##20435
collect 1 Duro Access Crystal##29397|q 10338/2
only if rep ('The Scryers') >= Friendly
step
click the Duro Control Console##184311
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Duro |q 10338/1 |goto 59.1,66.8
only if rep ('The Scryers') >= Friendly
step
talk Spymaster Thalodien##19468
turnin Shutting Down Manaforge Duro##10338 |goto 32.0,64.1
talk Magistrix Larynna##19469
turnin Kick Them While They're Down##10341 |goto 32.0,64.1
accept A Defector##10202 |goto 32.0,64.1
only if rep ('The Scryers') >= Friendly
step
talk Magister Theledorn##20920
turnin A Defector##10202 |goto 26.2,41.6
accept Damning Evidence##10432 |goto 26.2,41.6
only if rep ('The Scryers') >= Friendly
step
_Enter_ Manaforge Ara |goto 27.1,39.2 |walk
kill Gan'arg Warp-Tinker##20285+, Mo'arg Warp-Master##20326+, Daughter of Destiny##18860+
|tip You can also find more outside of Manaforge Ara.
collect 8 Orders From Kael'thas##29797 |q 10432/1
only if rep ('The Scryers') >= Friendly
step
talk Spymaster Thalodien##19468
turnin Damning Evidence##10432 |goto 32.0,64.1
accept A Gift for Voren'thal##10508 |goto 32.0,64.1
only if rep ('The Scryers') >= Friendly
step
kill Forgemaster Morug##20800
collect First Half of Socrethar's Stone##29624 |q 10508/1 |goto 37.1,27.8
only if rep ('The Scryers') >= Friendly
step
kill Silroth##20801+
collect Second Half of Socrethar's Stone##29625 |q 10508/2 |goto 40.8,19.6
only if rep ('The Scryers') >= Friendly
step
talk Spymaster Thalodien##19468
turnin A Gift for Voren'thal##10508 |goto 32.0,64.1
accept Bound for Glory##10509 |goto 32.0,64.1
step
talk Voren'thal the Seer##18530
turnin Bound for Glory##10509 |goto Shattrath City,42.8,91.7
accept Turnin Point##10507 |goto Shattrath City,42.8,91.7
step
Click Voren'thal's Package in your inventory |use Voren'thal's Package##30260
collect 1 Socrethar's Teleportation Stone##29796 |q 10409 |n |goto Netherstorm,36.4,18.4
collect 1 Voren'thal's Presence##30259 |q 10409 |goto Netherstorm,36.4,18.4
step
Step into the teleporter
Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6 < 10
Use Voren'thal's Presence on Socrethar |use Voren'thal's Presence##30259
Socrethar slain |q 10507/1 |goto 29.6,14.2
step
talk Voren'thal the Seer##18530
turnin Turnin Point##10507 |goto Shattrath City 42.8,91.7
step
talk Larissa Sunstrike##21954
accept Karabor Training Grounds##10687 |goto Shadowmoon Valley 55.7,58.2
step
talk Battlemage Vyara##22211
accept Sunfury Signets##10824 |goto 56.3,58.8
step
talk Arcanist Thelis##21955
accept Tablets of Baa'ri##10683 |goto 56.3,59.6
step
talk Varen the Reclaimer##21953
accept The Ashtongue Broken##10807 |goto Shadowmoon Valley 54.7,58.2
step
kill Eclipsion Soldier##22016+, Eclipsion Spellbinder##22017+, Eclipsion Cavalier##22018+
collect 10 Sunfury Signet##30810 |q 10824/1 |goto 51.7,65.6
step
talk Battlemage Vyara##22211
turnin Sunfury Signets##10824 |goto 56.3,58.8
step
kill Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
collect 8 Sunfury Glaive##30679 |q 10687/1 |goto 71.1,52.0
collect 1 Arcane Tome##29739 |q 10416/1 |goto 71.1,52.0
step
talk Larissa Sunstrike##21954
turnin Karabor Training Grounds##10687 |goto 55.7,58.2
accept A Necessary Distraction##10688 |goto 55.7,58.2
step
kill Sunfury Warlock##21503+
collect 1 Scroll of Demonic Unbanishing##30811 |n
Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
Free Azaloth |q 10688/1 |goto 70.0,51.4
step
talk Larissa Sunstrike##21954
turnin A Necessary Distraction##10688 |goto 55.7,58.2
accept Altruis##10689 |goto 55.7,58.2
step
kill 3 Ashtongue Handler##21803+ |q 10807/1 |goto 58.8,36.5
kill 4 Ashtongue Warrior##21454+ |q 10807/2 |goto 58.8,36.5
kill 6 Ashtongue Shaman##21453+ |q 10807/3 |goto 58.8,36.5
click Baar'ri Tablet Fragment##6420
kill Ashtongue Worker##21455
collect 12 Baa'ri Tablet Fragment##30596 |q 10683/1 |goto 58.8,36.5
step
talk Varen the Reclaimer##21953
turnin The Ashtongue Broken##10807 |goto Shadowmoon Valley,54.7,58.2
accept The Great Retribution##10817 |goto Shadowmoon Valley,54.7,58.2
step
talk Arcanist Thelis##21955
turnin Tablets of Baa'ri##10683 |goto 56.3,59.6
accept Oronu the Elder##10684 |goto 56.3,59.6
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10684/1 |goto 57.2,32.9
step
kill 8 Shadowmoon Slayer##22082+ |q 10817/1 |goto 67.4,37.6
kill 8 Shadowmoon Chosen##22084+ |q 10817/2 |goto 67.4,37.6
kill 4 Shadowmoon Darkweaver##22081+ |q 10817/3 |goto 67.4,37.6
step
talk Arcanist Thelis##21955
turnin Oronu the Elder##10684 |goto 56.3,59.6
accept The Ashtongue Corruptors##10685 |goto 56.3,59.6
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10685/2 |goto 57.1,73.3
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10685/1 |goto 51.3,52.9
step
kill Uylaru##21710
|tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10685/4 |goto 48.2,39.8
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10685/3 |goto 49.8,23.1
step
talk Arcanist Thelis##21955
turnin The Ashtongue Corruptors##10685 |goto 56.3,59.6
accept The Warden's Cage##10686 |goto 56.3,59.6
step
_Follow_ the path down |goto 57.4,49.7 < 10 |only if walking
talk Sanoru##21826
turnin The Warden's Cage##10686 |goto 57.3,49.6
step
talk Altruis the Sufferer##18417
turnin Altruis##10640 |goto Nagrand,27.2,43.0
accept Against All Odds##10669 |goto Nagrand,27.2,43.0
accept Against the Illidari##10668 |goto Nagrand,27.2,43.0
accept Against the Legion##10641 |goto Nagrand,27.2,43.0
step
Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
kill Xeleth##21894 |q 10669/1 |goto Zangarmarsh,16.2,40.7
step
kill Wrath Priestess##18859+
collect Freshly Drawn Blood##30850 |n
Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850
|tip It only last 1 minute, then it disappears if you don't use it in time.
kill Avatar of Sathal##21925 |q 10641/1 |goto Netherstorm,39.6,20.5
step
kill Lothros##21928 |q 10668/1 |goto Shadowmoon Valley,28.3,49.5
|tip He walks around this area, so you may need to search for him.
step
talk Altruis the Sufferer##18417
turnin Against the Legion##10641 |goto Nagrand,27.3,43.1
turnin Against the Illidari##10668 |goto Nagrand,27.3,43.1
turnin Against All Odds##10669 |goto Nagrand,27.3,43.1
accept Illidan's Pupil##10646 |goto Nagrand,27.3,43.1
step
talk Altruis the Sufferer##18417
Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
Listen to Illidan's Pupil |q 10646/1 |goto 27.3,43.1
step
talk Altruis the Sufferer##18417
turnin Illidan's Pupil##10646 |goto 27.3,43.1
accept The Book of Fel Names##10649 |goto 27.3,43.1
step
|goto Terokkar Forest,39.6,71.0 |n
Click the doors to the Shadow Labyrinth.
Go forth into the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
step
Kill through the instance until you reach Blackheart the Inciter.
kill Blackheart the Inciter##18667
collect 1 Book of Fel Names##30808|q 10649/1
step
Leave the instance. |goto Terokkar Forest |noway|c
step
talk Altruis the Sufferer##18417
turnin The Book of Fel Names##10649 |goto Nagrand,27.3,43.1
accept Return to the Scryers##10691 |goto Nagrand,27.3,43.1
step
talk Larissa Sunstrike##21954
turnin Return to the Aldor##10650 |goto Shadowmoon Valley,55.8,58.2
accept Varedis Must Be Stopped##10692 |goto Shadowmoon Valley,55.8,58.2
step
kill Netharel##21164 |q 10692/2 |goto Shadowmoon Valley,68.6,52.7
|tip He is walking amongst the Demon Hunter Supplicants.
step
kill Alandien##21171 |q 10692/4 |goto 69.6,54.1
step
kill Varedis##21178 |q 10692/1 |goto 72.2,53.7
step
kill Theras##21168 |q 10692/3 |goto 72.4,48.4
step
talk Larissa Sunstrike##21954
turnin Return to the Scryers##10692 |goto Shadowmoon Valley,55.8,58.2
step
talk Magistrix Fyalenn##18531
turnin Firewing Signets##10412 |goto Shattrath City,45.2,81.5
turnin Sunfury Signets##10656 |goto Shattrath City,45.2,81.5
After turning these quests in, you will unlock the daily versions of these quests, which you will have to farm
step
talk Voren'thal the Seer##18530
turnin Synthesis of Power##10416 |goto Shattrath City 42.8,91.7
When you're done turning items in, click here to farm. |next "farming" |only if rep('The Scryers')<=Revered |confirm
|next "exalted" |only if rep('The Scryers')==Exalted
step
label "farming"
kill Sunfury Bloodwarder##18853+, Sunfury Magister##18855+, Sunfury Geologist##19779+, Sunfury Astromancer##19643+, Sunfury Captain##19453+
collect Arcane Tome##29739 |n  |goto Netherstorm,27.8,72.6
collect Sunfury Signet##30810 |goto Netherstorm,27.8,72.6
|tip You will need to collect multiples of 10. |n
You can find more around at the following location |goto 25.7,67.2
Click here when you're ready to turn in |confirm
step
label "signets"
talk Magistrix Fyalenn##18531
accept More Sunfury Signets##10658 |n |goto Shattrath City 45.2,81.5
Click here to turn in Arcane Tomes |next "tomes" |confirm
Click here to continue farming |next "farming" |confirm
Earn Exalted reputation with The Scryers |next "exalted" |complete rep('The Scryers')==Exalted
step
label "tomes"
talk Voren'thal the Seer##18530
accept Arcane Tomes##10419 |n |goto Shattrath City 42.8,91.7
Click here to turn in Sunfury Signets |next "signets" |confirm
Click here to continue farming. |next "farming" |confirm
Earn Exalted reputation with The Scryers. |next "exalted" |complete rep('The Scryers')==Exalted
step
label "exalted"
Congratulations, you are now Exalted with The Scryers!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\The Sha'tar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Sha'tar faction.",
},[[
step
talk Haggard War Veteran##19684
accept A'dal##10210 |goto Shattrath City 61.2,12.6
step
talk A'dal##18481
turnin A'dal##10210 |goto 54,44.8
step
talk Ha'lei##19697
accept I See Dead Draenei##10227 |goto Terokkar Forest 35.1,65.1
step
talk Ramdor the Mad##19417
turnin I See Dead Draenei##10227 |goto 35.1,66.3
accept Ezekiel##10228 |goto 35.1,66.3
step
talk Ezekiel##19715
turnin Ezekiel##10228 |goto Shattrath City,53.7,32.6
accept What Book? I Don't See Any Book.##10231 |goto Shattrath City 53.7,32.6
step
talk "Dirty" Larry##19720
Tell him Ezekiel said that you might have a certain book...
Beat down "Dirty" Larry for information |q 10231/1 |goto 43.6,29.7
turnin What Book? I Don't See Any Book.##10231 |goto 43.6,29.7
accept The Master's Grand Design?##10251 |goto 43.6,29.7
step
talk Nitrin the Learned##19844
turnin The Master's Grand Design?##10251 |goto Nagrand,51.8,56.8
accept Vision of the Dead##10252 |goto Nagrand,51.8,56.8
step
kill Aged Clefthoof##17133+
collect Aged Clefthoof Blubber##28668 |q 10252/3 |goto 30.1,64.2
They are hard to find, searching will most likely be required
They are all around Oshu'gun
step
kill Mountain Gronn##19201+
collect Mountain Gronn Eyeball##28665 |q 10252/1 |goto 25.2,49.1
More can be found around the following location |goto 26.9,30.2
step
kill Greater Windroc##17129+
collect Flawless Greater Windroc Beak##28667 |q 10252/2 |goto 30.9,32.9
step
talk Nitrin the Learned##19844
turnin Vision of the Dead##10252 |goto 51.8,56.9
accept Levixus the Soul Caller##10253 |goto 51.8,56.9
step
kill Levixus##19847
collect 1 The Book of the Dead##28677 |q 10253/1 |goto Terokkar Forest 39.6,71.3
step
talk Ramdor the Mad##19417
turnin Levixus the Soul Caller##10253 |goto 35.1,66.2
step
talk Oakun##22456
accept The Dread Relic##10877 |goto 31.1,76.5
step
talk Scout Navrin##22364
accept Taken in the Night##10873 |goto 31.4,75.7
step
Collect Restless Bones from the ground as you travel
Click the Massive Treasure Chest
collect Dread Relic##31697 |q 10877/1 |goto 43.9,76.4
step
talk Vindicator Haylen##22462
accept For the Fallen##10920 |goto 49.7,76.2
step
kill 20 Dreadfang Widow##18467+ |q 10920/1 |goto 52.6,78.5
step
talk Vindicator Haylen##22462
turnin For the Fallen##10920 |goto 49.7,76.2
accept Terokkarantula##10921 |goto 49.7,76.2
step
kill Terokkarantula##20682 |q 10921/1 |goto 54.2,81.7
step
talk Vindicator Haylen##22462
turnin Terokkarantula##10921 |goto 49.7,76.2
accept Return to Sha'tari Base Camp##10926 |goto 49.7,76.2
step
talk Oakun##22456
turnin The Dread Relic##10877 |goto 31.1,76.5
accept Evil Draws Near##10923 |goto 31.1,76.5
stickystart "doomskull"
step
Use your Dread Relic on the Writhing Mound Summoning Circle |use Dread Relic##31811
|tip It looks like a purple glowing symbol on the ground.
kill Teribus the Cursed##22441+ |q 10923/1 |goto 48.7,67.2
step
label "doomskull"
kill Auchenai Death-Speaker##21242+, Auchenai Doomsayer##21285+
collect 20 Doom Skull##31812 |q 10923 |goto 50.0,67.8
step
talk Oakun##22456
turnin Evil Draws Near##10923 |goto 31.1,76.5
step
talk Earthmender Sophurus##21937
accept The Hand of Gul'dan##10680 |goto Shadowmoon Valley 36.4,56.9
step
talk Earthmender Torlok##21024
turnin The Hand of Gul'dan##10680 |goto 42.2,45.1
accept Enraged Spirits of Fire and Earth##10458 |goto 42.2,45.1
step
Use your Totem of Spirits |use Totem of Spirits##30094
|tip Kill the mobs next to the totems you plant.
kill Enraged Earth Spirit##21050+
Capture 8 Earthen Souls |q 10458/1 |goto 46.5,46.9
kill Enraged Fire Spirit##21061+
Capture 8 Fiery Souls |q 10458/2 |goto 46.5,46.9
step
talk Earthmender Torlok##21024
turnin Enraged Spirits of Fire and Earth##10458 |goto 42.2,45.1
accept Enraged Spirits of Water##10480 |goto 42.2,45.1
step
Use your Totem of Spirits |use Totem of Spirits##30094
|tip Kill the mobs next to the totems you plant.
kill Enraged Water Spirit##21059+
|tip You can find them in the pools of water.
Capture 5 Watery Souls |q 10480/1 |goto 45.8,27.9
step
talk Earthmender Torlok##21024
turnin Enraged Spirits of Water##10480 |goto 42.2,45.1
accept Enraged Spirits of Air##10481 |goto 42.2,45.1
step
Use your Totem of Spirits |use Totem of Spirits##30094
|tip Kill the mobs near the totems you plant.
kill Enraged Air Spirit##21060+
Capture 10 Airy Souls |q 10481/1 |goto 59.9,69.1
step
talk Earthmender Torlok##21024
turnin Enraged Spirits of Air##10481 |goto 42.2,45.1
accept Oronok Torn-heart##10513 |goto 42.2,45.1
step
talk Oronok Torn-heart##21183
turnin Oronok Torn-heart##10513 |goto 53.9,23.5
accept I Was A Lot Of Things...##10514 |goto 53.9,23.5
step
Use Oronok's Boar Whistle next to Shadowmoon Tuber Mounds while boars are nearby |use Oronok's Boar Whistle##30462
|tip They look like carrots sticking out of the ground around this area.
If a boar is close it will run over and eat the tuber
Click the Shadowmoon Tuber's that spawn
collect 10 Shadowmoon Tuber##30356 |q 10514/1 |goto 53.5,17.3
step
talk Oronok Torn-heart##21183
turnin I Was A Lot Of Things...##10514 |goto 53.9,23.5
accept A Lesson Learned##10515 |goto 53.9,23.5
step
click Ravenous Flayer Egg##184684
Destroy 10 Ravenous Flayer Eggs |q 10515/1 |goto 56.1,15.8
step
talk Oronok Torn-heart##21183
turnin A Lesson Learned##10515 |goto 53.9,23.5
accept The Cipher of Damnation - Truth and History##10519 |goto 53.9,23.5
step
talk Oronok Torn-heart##21183
Tell him you are ready to listen to his story
Listen to the Cipher of Damnation - History and Truth |q 10519/1 |goto 53.9,23.5
step
talk Oronok Torn-heart##21183
turnin The Cipher of Damnation - Truth and History##10519 |goto 53.9,23.5
accept Grom'tor, Son of Oronok##10521 |goto 53.9,23.5
accept Ar'tor, Son of Oronok##10527 |goto 53.9,23.5
accept Borak, Son of Oronok##10546 |goto 53.9,23.5
step
talk Grom'tor, Son of Oronok##21291
turnin Grom'tor, Son of Oronok##10521 |goto 44.5,23.6
accept The Cipher of Damnation - Grom'tor's Charge##10522 |goto 44.5,23.6
step
kill Coilskar Sorceress##19767+, Coilskar Myrmidon##19765+
collect Coilskar Chest Key##30426 |n
Click Coilskar Chests |tip They look like big gray stone containers around this area.
collect First Fragment of the Cipher of Damnation##30428 |q 10522/1 |goto 52.6,27.4
step
talk Grom'tor, Son of Oronok##21291
turnin The Cipher of Damnation - Grom'tor's Charge##10522 |goto 44.5,23.6
accept The Cipher of Damnation - The First Fragment Recovered##10523 |goto 44.5,23.6
step
talk Oronok Torn-heart##21183
turnin The Cipher of Damnation - The First Fragment Recovered##10523 |goto 53.9,23.5
step
talk Ar'tor, Son of Oronok##21292
turnin Ar'tor, Son of Oronok##10527 |goto 29.6,50.4
accept Demonic Crystal Prisons##10528 |goto 29.6,50.4
step
kill Painmistress Gabrissa##21309+
collect Crystalline Key##30442 |q 10528/1 |goto 28.0,47.5
step
talk Ar'tor, Son of Oronok##21292
turnin Demonic Crystal Prisons##10528 |goto 29.6,50.4
step
talk Spirit of Ar'tor##21318
accept Lohn'goron, Bow of the Torn-heart##10537 |goto 29.5,50.5
step
kill Illidari Satyr##21656+, Illidari Shocktrooper##19802+, Illidari Dreadbringer##19799+, Illidari Painlasher##19800+
collect Lohn'goron, Bow of the Torn-Heart##31072 |q 10537/1 |goto 29.6,50.3
step
talk Spirit of Ar'tor##21318
turnin Lohn'goron, Bow of the Torn-heart##10537 |goto 29.5,50.5
accept The Cipher of Damnation - Ar'tor's Charge##10540 |goto 29.5,50.5
step
Walk with the Spirit Hunter to this spot
kill Veneratus the Many##20427
collect Second Fragment of the Cipher of Damnation##30453 |q 10540/1 |goto 30.7,58.3
step
talk Spirit of Ar'tor##21318
turnin The Cipher of Damnation - Ar'tor's Charge##10540 |goto 29.5,50.5
accept The Cipher of Damnation - The Second Fragment Recovered##10541 |goto 29.5,50.5
step
talk Oronok Torn-heart##21183
turnin The Cipher of Damnation - The Second Fragment Recovered##10541 |goto Shadowmoon Valley,53.9,23.5
step
talk Borak, Son of Oronok##21293
turnin Borak, Son of Oronok##10546 |goto 47.6,57.2
accept Of Thistleheads and Eggs...##10547 |goto 47.6,57.2
step
click Rotten Arakkoa Egg##184796
collect Rotten Arakkoa Egg##30500 |q 10547/1 |goto 44.8,58.2
step
talk Tobias the Filth Gorger##21411
turnin Of Thistleheads and Eggs...##10547 |goto Shattrath City,64.0,70.0
accept The Bundle of Bloodthistle##10550 |goto Shattrath City,64.0,70.0
step
talk Borak, Son of Oronok##21293
turnin The Bundle of Bloodthistle##10550 |goto Shadowmoon Valley,47.6,57.2
accept To Catch A Thistlehead##10570 |goto Shadowmoon Valley,47.6,57.2
step
Use your Bundle of Bloodthistle at the other end of the bridge |use Bundle of Bloodthistle##30616
kill Envoy Icarius##21409
collect Stormrage Missive##30617 |q 10570/1 |goto 49.0,57.5
step
talk Borak, Son of Oronok##21293
turnin To Catch A Thistlehead##10570 |goto 47.6,57.2
accept The Shadowmoon Shuffle##10576 |goto 47.6,57.2
step
kill Eclipsion Centurion##19792+, Eclipsion Blood Knight##19795+, Eclipsion Archmage##19796+, Eclipsion Bloodwarder##19806+
collect 6 Eclipsion Armor##30640 |q 10576/1 |goto 49.3,60.5
step
talk Borak, Son of Oronok##21293
turnin The Shadowmoon Shuffle##10576 |goto 47.6,57.2
accept What Illidan Wants, Illidan Gets...##10577 |goto 47.6,57.2
step
Use your Blood Elf Disguise |use Blood Elf Disguise##30639
Talk to Grand Commander Ruusk at [46.5,71.9]
Deliver Illidan's Message |q 10577/1 |goto 45.3,68.2
step
talk Borak, Son of Oronok##21293
turnin What Illidan Wants, Illidan Gets...##10577 |goto 47.6,57.2
accept The Cipher of Damnation - Borak's Charge##10578 |goto 47.6,57.2
step
kill Ruul the Darkener##21315
collect Third Fragment of the Cipher of Damnation##30645 |q 10578/1 |goto 61.4,57.0
step
talk Borak, Son of Oronok##21293
turnin The Cipher of Damnation - Borak's Charge##10578 |goto 47.5,57.2
accept The Cipher of Damnation - The Third Fragment Recovered##10579 |goto 47.5,57.2
step
talk Oronok Torn-heart##21183
turnin The Cipher of Damnation - The Third Fragment Recovered##10579 |goto 53.9,23.5
accept The Cipher of Damnation##10588 |goto 53.9,23.5
step
Use the Cipher of Damnation while standing in front of the altar |use Cipher of Damnation##30657
talk Oronok Torn-heart##21183
|tip It may take a minute or so for him to show up
Tell him you are ready
Follow Oronok Torn-heart
kill Cyrukh the Firelord##21181 |q 10588/1 |goto 43.1,44.9
step
talk Earthmender Torlok##21024
turnin The Cipher of Damnation##10588 |goto 42.2,45.1
step
talk Khadgar##18166
accept The Tempest Key##10883 |goto Shattrath City,54.8,44.3
step
talk A'dal##18481
turnin The Tempest Key##10883 |goto 54.0,44.8
accept Trial of the Naaru: Mercy##10884 |goto 54.0,44.8
accept Trial of the Naaru: Strength##10885 |goto 54.0,44.8
accept Trial of the Naaru: Tenacity##10886 |goto 54.0,44.8
These quests will require that you do Heroic Shattered Halls, Shadow Labyrinth, The Steamvault and The Arcatraz
step
Before you enter The Shattered Halls, set your Dungeon Difficulty to _Heroic 5 Man_ |only if not heroic_dung() |confirm
kill Grand Warlock Nethekurse##16807 |goto The Shattered Halls 34.2,55.3
After you Kill Grand Warlock Nethekurse run through this doorway to gain _Korgath's Executioner Buff_ |havebuff 132338
|only if not completedq(10884)
step
Kill your way to the end of the instance
After the first boss you will have 55 minutes to clear your way to the last boss
kill Shattered Hand Executioner##17301
collect Unused Axe of the Executioner##31716 |q 10884/1 |goto The Shattered Halls 67.2,65.8
step
Before you enter The Steavmvault, set your Dungeon Difficulty to _Heroic 5 Man_ |only if not heroic_dung() |confirm
In order to reach the final boss you will need to kill the other bosses
kill Warlord Kalithresh##17798
collect Kalithresh's Trident##31721 |q 10885/1 |goto The Steamvault 80.6,43.6
step
Before you enter Shadow Labyrinth, set your Dungeon Difficulty to _Heroic 5 Man_ |only if not heroic_dung() |confirm
Kill your way to Murmur at the end of the instance
kill Murmur##18708
collect Murmur's Essence##31722 |q 10885/2 |goto Shadow Labyrinth 81.2,39.2
step
Before you enter The Arcatraz, set your Dungeon Difficulty to _Heroic 5 Man_ |only if not heroic_dung() |confirm
Fight your way to the end of the instance
kill Harbinger Skyriss##20912
Defeat Harbinger Skyriss and make sure Millhouse lives
Rescue Millhouse Manastorm. |q 10886/1 |goto The Arcatraz/3 62.8,30.6
|talk Millhouse Manastorm##20977
step
talk A'dal##18481
turnin Trial of the Naaru: Mercy##10884 |goto Shattrath City 54.0,44.8
turnin Trial of the Naaru: Strength##10885 |goto Shattrath City 54.0,44.8
turnin Trial of the Naaru: Tenacity##10886 |goto Shattrath City 54.0,44.8
step
talk Nether-Stalker Khay'ji##19880
accept Consortium Crystal Collection##10265 |goto Netherstorm 32.4,64.2
step
kill Pentatharon##20215
|tip To the right as you enter the ruins, up on a small stage looking platform
collect Arklon Crystal Artifact##28829 |q 10265/1 |goto 42.4,72.8
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
step
talk Gahruj##20066
turnin Request for Assistance##10266 |goto 46.7,56.9
accept Rightful Repossession##10267 |goto 46.7,56.9
step
talk Gahruj##20066
turnin Rightful Repossession##10267 |goto 46.7,56.9
accept An Audience with the Prince##10268 |goto 46.7,56.9
step
talk Image of Nexus-Prince Haramad##20084
turnin An Audience with the Prince##10268 |goto 45.9,36.0
accept Triangulation Point One##10269 |goto 45.9,36.0
step
Use the Triangulation Device in your bags |use Triangulation Device##28962
A red arrow will appear showing you where to go
Discover the first triangulation point |q 10269/1 |goto 66.8,34.8
step
talk Dealer Hazzin##20092
turnin Triangulation Point One##10269 |goto Netherstorm,58.3,31.3
accept Triangulation Point Two##10275 |goto Netherstorm,58.3,31.3
step
Use the Triangulation Device in your bags |use Triangulation Device##29018
A red arrow will appear showing you where to go
Discover the second triangulation point |q 10275/1 |goto 29.1,40.5
step
talk Wind Trader Tuluman##20112
turnin Triangulation Point Two##10275 |goto 34.6,38.0
accept Full Triangle##10276 |goto 34.6,38.0
step
kill Culuthas##20138+
collect Ata'mal Crystal##29026 |q 10276/1 |goto 53.5,21.5
step
talk Image of Nexus-Prince Haramad##20084
turnin Full Triangle##10276 |goto 45.9,36.0
accept Special Delivery to Shattrath City##10280 |goto 45.9,36.0
step
talk A'dal##18481
turnin Special Delivery to Shattrath City##10280 |goto Shattrath City,54.0,44.6
accept How to Break Into the Arcatraz##10704 |goto Shattrath City,54.0,44.6
step
Before you enter The Mechanar, set your Dungeon Difficulty to _Heroic 5 Man_ |only if not heroic_dung() |confirm
Kill your way through the instance
kill Pathaleon the Calculator##19220
collect Bottom Shard of the Arcatraz Key##31086 |q 10704/2 |goto The Mechanar/2 28.52,60.6
step
Before you enter The Botanica, set your Dungeon Difficulty to _Heroic 5 Man_ |only if not heroic_dung() |confirm
Kill your way through the instance
kill Warp Splinter##17977
collect Top Shard of the Arcatraz Key##31085 |q 10704/1 |goto The Botanica 34.0,37.8
step
talk A'dal##18481
turnin How to Break Into the Arcatraz##10704 |goto Shattrath City,54.0,44.6
step
talk Arcanist Thelis##21955
accept Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.3,59.6
only if rep ('The Scryers') >= Friendly
step
talk Anchorite Ceyla##21402
accept Tablets of Baa'ri##10568 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
click Baar'ri Tablet Fragment##6420
kill Ashtongue Worker##21455
collect 12 Baa'ri Tablet Fragment##30596 |q 10683/1 |goto 58.8,36.5
only if rep ('The Scryers') >= Friendly
step
Click Baar'ri Tablet Fragment
|tip They look like green glowing tablets on the ground around this area.
kill Ashtongue Worker##21455
collect 12 Baa'ri Tablet Fragment##30596 |q 10568/1 |goto 56.5,34.8
only if rep ('The Aldor') >= Friendly
step
talk Arcanist Thelis##21955
turnin Tablets of Baa'ri##10683 |goto 56.3,59.6
accept Oronu the Elder##10684 |goto 56.3,59.6
only if rep ('The Scryers') >= Friendly
step
talk Anchorite Ceyla##21402
turnin Tablets of Baa'ri##10568 |goto 62.6,28.4
accept Oronu the Elder##10571 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10684/1 |goto 57.2,32.9
only if rep ('The Scryers') >= Friendly
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10571/1 |goto 57.2,32.9
only if rep ('The Aldor') >= Friendly
step
talk Arcanist Thelis##21955
turnin Oronu the Elder##10684 |goto 56.3,59.6
accept The Ashtongue Corruptors##10685 |goto 56.3,59.6
only if rep ('The Scryers') >= Friendly
step
talk Anchorite Ceyla##21402
turnin Oronu the Elder##10571 |goto 62.6,28.4
accept The Ashtongue Corruptors##10574 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10685/2 |goto 57.1,73.3
only if rep ('The Scryers') >= Friendly
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10574/2 |goto 57.1,73.3
only if rep ('The Aldor') >= Friendly
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10685/1 |goto 51.3,52.9
only if rep ('The Scryers') >= Friendly
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10574/1 |goto 51.3,52.9
only if rep ('The Aldor') >= Friendly
step
kill Uylaru##21710
|tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10685/4 |goto 48.2,39.8
only if rep ('The Scryers') >= Friendly
step
kill Uylaru##21710
|tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10574/4 |goto 48.2,39.8
only if rep ('The Aldor') >= Friendly
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10685/3 |goto 49.8,23.1
only if rep ('The Scryers') >= Friendly
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10574/3 |goto 49.8,23.1
only if rep ('The Aldor') >= Friendly
step
talk Arcanist Thelis##21955
turnin The Ashtongue Corruptors##10685 |goto 56.3,59.6
accept The Warden's Cage##10686 |goto 56.3,59.6
only if rep ('The Scryers') >= Friendly
step
talk Anchorite Ceyla##21402
turnin The Ashtongue Corruptors##10574 |goto 62.6,28.4
accept The Warden's Cage##10575 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
talk Sanoru##21826
turnin The Warden's Cage##10686 |goto 57.3,49.6
accept Proof of Allegiance##10622 |goto 57.3,49.6
only if rep ('The Scryers') >= Friendly
step
talk Sanoru##21826
turnin The Warden's Cage##10575 |goto 57.3,49.6
accept Proof of Allegiance##10622 |goto 57.3,49.6
only if rep ('The Aldor') >= Friendly
step
Go back to the top of "Warden's Cage" |goto 57.5,49.8 < 10 |only if walking
kill Zandras##21827 |q 10622/1 |goto 57.1,48.6
|tip He patrols the top of the prison wall, so you may need to search for him.
step
Follow the path down |goto 57.4,49.7 < 10 |walk
talk Sanoru##21826
turnin Proof of Allegiance##10622 |goto 57.3,49.6
accept Akama##10628 |goto 57.3,49.6
step
Go to this spot and swim down to the other side |goto 57.5,47.8 < 10 |walk
talk Akama##21700
turnin Akama##10628 |goto 58.1,48.2
accept Seer Udalo##10705 |goto 58.1,48.2
step
clicknpc Udalo##21962
|tip It is in the room before Harbinger Skyriss, the final boss of the instance.
turnin Seer Udalo##10705 |goto The Arcatraz/3 31.6,25.0
accept A Mysterious Portent##10706 |goto The Arcatraz/3 31.6,25.0
step
talk Akama##21700
turnin A Mysterious Portent##10706 |goto Shadowmoon Valley 58.1,48.2
accept The Ata'mal Terrace##10707 |goto Shadowmoon Valley 58.1,48.2
step
kill Shadowmoon Soulstealer##22061+
|tip There will be 3 of them.
Once you kill him, it will trigger an event
Kill the Shadowmoon Retainers that spawn
kill Shadowlord Deathwail##22006+
collect Heart of Fury##31307 |q 10707/1 |goto Shadowmoon Valley 71.3,35.6
step
talk Akama##21700
turnin The Ata'mal Terrace##10707 |goto Shadowmoon Valley,58.1,48.2
accept Akama's Promise##11052 |goto Shadowmoon Valley,58.1,48.2
step
kill Val'zareq the Conqueror##21979
|tip He is an elite Blood Elf on a Hawkstrider patrolling this area with Eclipsion mobs protecting him.
collect 1 The Journal of Val'zareq##31345 |n |goto 53.3,59.0
Click The Journal of Val'zareq in your bags |use The Journal of Val'zareq##31345
accept The Journal of Val'zareq: Portends of War##10793 |goto 53.3,59.0
step
click Crystal Prison##185126
turnin The Journal of Val'zareq: Portends of War##10793 |goto 51.4,72.8
accept Battle of the Crimson Watch##10781 |goto 51.4,72.8
step
Fight off the waves of enemies that come
Crimson Sigil Forces Annihilated |q 10781/1
step
talk A'dal##18481
turnin Battle of the Crimson Watch##10781 |goto Shattrath City,54,44.8
turnin Akama's Promise##11052 |goto Shattrath City,54,44.8
step
At this point, you will need to grind for reputation. You can farm reputation in the instances below:
The Mechanar
The Botanica
and The Arcatraz
Doing these on Heroic will yield more reputation gains - However you can only do it on Heroic once per day.
Earn Exalted status with The Sha'tar |complete rep("The Sha'tar")==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with The Sha'tar!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Sha'tari Skyguard",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Sha'tari Skyguard faction.",
achieveid={894},
patch='30202',
},[[
step
label "pre"
talk Yuula##23449
accept Threat from Above##11096 |goto Shattrath City 64.3,42.3
step
kill 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1 |goto Terokkar Forest,21.8,16.1
You can find more around the following location |goto 24.4,8.9
step
talk Yuula##23449
turnin Threat from Above##11096 |goto Shattrath City 64.3,42.3
accept To Skettis!##11098 |goto Shattrath City 64.3,42.3
step
talk Sky Sergeant Doryn##23048
turnin To Skettis!##11098 |goto Terokkar Forest 64.5,66.7
step
talk Skyguard Handler Deesak##23415
accept Hungry Nether Rays##11093 |goto 63.5,65.8
step
talk Severin##23042
accept World of Shadows##11004 |goto 64.0,66.9
stickystart "shadowdust"
step
Use your Nether Ray Cage |use Nether Ray Cage##32834
|tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
kill Blackwind Warp Chaser##23219+
You can find more Warp Chasers at the following location |goto 64.5,84.4
Provide Nether Ray Meals |q 11093/1 |goto 61.4,81.8
step
label "shadowdust"
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 6 Shadow Dust##32388 |q 11004/1 |goto Terokkar Forest 61.6,75.3
You can find more at the following locations:
Location 1: [69.5,85.5]
Location 2: [73.2,87.9]
Location 3: [75.2,81.3]
Location 4: [69.2,74.1]
step
talk Severin##23042
turnin World of Shadows##11004 |goto 64.0,66.9
step
talk Skyguard Handler Deesak##23415
turnin Hungry Nether Rays##11093 |goto 63.5,65.8
step
talk Sky Commander Adaris##23038
accept Secrets of the Talonpriests##11005 |goto 64.1,66.9
step
Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446 |goto 69.7,74.7
You will get a buff Elixir of Shadows |havebuff 136152 |q 11005
step
kill Talonpriest Zellek##23068 |q 11005/3 |goto 70.1,74.5
step
kill Talonpriest Ishaal##23066+ |q 11005/1 |goto 69.3,78.1
collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523 |goto 69.3,78.1
accept Ishaal's Almanac##11021 |goto 69.3,78.1
step
kill Talonpriest Skizzik##23067+ |q 11005/2 |goto 69.8,81.8
step
talk Sky Commander Adaris##23038
turnin Secrets of the Talonpriests##11005 |goto 64.1,66.9
turnin Ishaal's Almanac##11021 |goto 64.1,66.9
accept An Ally in Lower City##11024 |goto 64.1,66.9
step
talk Rilak the Redeemed##22292
turnin An Ally in Lower City##11024 |goto Shattrath City 52.5,21.0
accept Countdown to Doom##11028 |goto 52.5,21.0
step
talk Nutral##18940
turnin Countdown to Doom##11028 |goto Terokkar Forest 64.1,66.9
step
talk Hazzik##23306
accept Hazzik's Bargain##11056 |goto 64.2,66.9
step
click Hazzik's Package##185954
collect Hazzik's Package##32687 |q 11056/1 |goto 74.8,80.1
step
talk Hazzik##23306
turnin Hazzik's Bargain##11056 |goto 64.3,66.9
accept A Shabby Disguise##11029 |goto 64.3,66.9
step
Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741 |goto 66.2,77.5
Wear the Shabby Arakkoa Disguise |havebuff 133707
step
talk Sahaak##23363
buy Adversarial Bloodlines##32742 |q 11029 |goto 67.0,79.7
step
talk Hazzik##23306
turnin A Shabby Disguise##11029 |goto 64.3,66.9
accept Adversarial Blood##11885 |goto 64.3,66.9
step
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 12 Shadow Dust##32388 |q 11885 |future |goto 61.6,75.3
You can find more at the following locations:
Location 1: [69.5,85.5]
Location 2: [73.2,87.9]
Location 3: [75.2,81.3]
Location 4: [69.2,74.1]
step
talk Severin##23042
accept More Shadow Dust##11006 |goto 64.0,66.9
collect 2 Elixir of Shadows##32446+ |q 11885 |future |goto 64.0,66.9
step
Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
You will get a buff Elixir of Shadows |havebuff 136152
step
kill Time-Lost Skettis High Priest##21787+
kill Time-Lost Skettis Reaver##21651+
kill Time-Lost Skettis Worshipper##21763+
collect 40 Time-Lost Scroll##32620+ |goto 61.6,75.3
You can find more at the following locations:
Location 1:|goto 69.5,85.5
Location 2: [73.2,87.9]
Location 3: [75.2,81.3]
Location 4: [69.2,74.1]
step
click Skull Pile##185913
|tip This will use 10 Time-Lost Scrolls.
<Call forth Darkscreecher Akkarai.>
<Call forth Karrog.>
<Call forth Gezzarak the Huntress.>
<Call forth Vakkiz the Windrager.>
kill Darkscreecher Akkarai##23161 |q 11885/1 |goto 69.7,74.7
collect Akkarai's Talons##32715
kill Karrog##23165 |q 11885/2 |goto 69.7,74.7
collect Karrog's Spine##32717
kill Gezzarak the Huntress##23163 |q 11885/3 |goto 69.7,74.7
collect Gezzarak's Claws##32716
kill Vakkiz the Windrager##23204 |q 11885/4 |goto 69.7,74.7
collect Vakkiz's Scale##32718
You can find more skull piles at the following locations:
Location 1: [70.1,79.5]
Location 1: [73.5,80.7]
Location 1: [70.2,83.3]
step
talk Hazzik##23306
turnin Adversarial Blood##11885 |goto 64.2,66.9
accept Tokens of the Descendants##11074 |goto 64.2,66.9
step
talk Sky Commander Adaris##23038
accept Terokk's Downfall##11073 |goto 64.1,66.9
step
click Skull Pile##185913
|tip This will use 1 Time-Lost Offering.
<Call forth Terokk.>
kill Terokk##21838 |goto 66.2,77.5
|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always
step
talk Sky Commander Adaris##23038
turnin Terokk's Downfall##11073 |goto 64.1,66.9
step
label "menu"
You can do a couple dailys and also grind for reputation with the _Sha'tari Skyguard_
Click here to do the Dailies and then grind |confirm always |next "dailies" |or
Click here to grind for reputation |confirm always |next "grind" |or
step
label "dailies"
talk Sky Sergeant Doryn##23048
accept Fires Over Skettis##11008 |goto Terokkar Forest 64.5,66.7
step
Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
Destroy 20 Monstrous Kaliri Eggs |q 11008/1 |goto 63.1,80.0
You can find more eggs here:
Location 1: [61.3,79.9]
Location 2: [67.5,79.3]
Location 3: [68.0,85.6]
Location 4: [70.3,84.5]
step
talk Sky Sergeant Doryn##23048
turnin Fires Over Skettis##11008 |goto 64.5,66.7
step
talk Skyguard Prisoner##23383
accept Escape from Skettis##11085 |goto 61.0,75.6
He can also be found at the following locations:
Location 1: [68.4,74.0]
Location 2: [75.0,86.5]
step
Escort the Skyguard Prisoner to the bottom of the bridge
|tip Help him kill any mobs on the way down.
Rescue the Skyguard Prisoner |q 11085/1
step
talk Sky Sergeant Doryn##23048
turnin Escape from Skettis##11085 |goto 64.5,66.7
step
label "grind"
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 12 Shadow Dust##32388 |goto 61.6,75.3
You can find more at the following locations:
Location 1: [69.5,85.5]
Location 1: [73.2,87.9]
Location 1: [75.2,81.3]
Location 1: [69.2,74.1]
step
talk Severin##23042
accept More Shadow Dust##11006 |n |goto 64.0,66.9
collect 2 Elixir of Shadows##32446 |goto 64.0,66.9
step
Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
You will get a buff Elixir of Shadows |havebuff 136152
step
kill Time-Lost Skettis High Priest##21787+
kill Time-Lost Skettis Reaver##21651+
kill Time-Lost Skettis Worshipper##21763+
collect 40 Time-Lost Scroll##32620+ |goto 61.6,75.3
You can find more at the following locations:
Location 1: [69.5,85.5]
Location 2: [73.2,87.9]
Location 3: [75.2,81.3]
Location 4: [69.2,74.1]
step
click Skull Pile##185913
|tip This will use 10 Time-Lost Scrolls
<Call forth Darkscreecher Akkarai.>
<Call forth Karrog.>
<Call forth Gezzarak the Huntress.>
<Call forth Vakkiz the Windrager.>
kill Darkscreecher Akkarai##23161
collect Akkarai's Talons##32715 |goto 69.7,74.7
kill Karrog##23165
collect Karrog's Spine##32717 |goto 69.7,74.7
kill Gezzarak the Huntress##23163
collect Gezzarak's Claws##32716 |goto 69.7,74.7
kill Vakkiz the Windrager##23204
collect Vakkiz's Scale##32718 |goto 69.7,74.7
You can find more skull piles at the following locations:
Location 1: [70.1,79.5]
Location 2: [73.5,80.7]
Location 3: [70.2,83.3]
step
talk Hazzik##23306
accept Tokens of the Descendants##11074 |n |goto 64.3,66.9
collect Time-Lost Offering##32720 |goto 64.3,66.9
step
click Skull Pile##185913
|tip This will use 1 Time-Lost Offering.
<Call forth Terokk.>
kill Terokk##21838 |goto 66.2,77.5
|tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Shattered Sun Offensive",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Shattered Sun Offensive faction.",
achieveid={897},
patch='30001',
},[[
step
#include "SSO_PreQuest_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Sporeggar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming Exalted with the Sporeggar faction.",
achieveid={900},
patch='30002',
},[[
#include "Sporeggar_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\The Violet Eye",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Violet Eye faction.",
achieveid={960},
patch='30001',
},[[
step
This reputation can be earned by running the Karazhan raid
This will _require_ you to be in a _raid group_
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label "start"
Enter _Karazhan_ here |goto Deadwind Pass 47.0,74.8
Kill every creature that is hostile in this instance in order to gain reputation
|tip You will have to clear this place a few times to reach Exalted.
Click here to go back to the beginning of the guide |next "start" |confirm
Earn Exalted status with The Violet Eye |complete rep('The Violet Eye')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with The Violet Eye!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Argent Tournament\\Aspirant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing your race's Aspirant Rank dailies in order to achieve Argent Tournament Grounds Valiant Rank with your own race and eventually Crusader title.",
},[[
step
label "start"
talk Arcanist Taelis##33625
accept Up To The Challenge##13672 |goto Icecrown 76.5,19.4
step
talk Arcanist Taelis##33625
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13666 |or |goto 76.5,19.4
accept A Worthy Weapon##13669 |or |goto 76.5,19.4
accept The Edge of Winter##13670 |or |goto 76.5,19.4
step
talk Avareth Swiftstrike##33646
accept Training in the Field##13671 |goto 76.5,19.4
step
talk Scout Shalyndria##33647
accept Learning the Reins##13625 |goto Icecrown 76.5,19.5
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13666/1 |goto Grizzly Hills 61.2,50.3
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13669 |goto Icecrown 69.1,76.2
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13669/1 |goto Dragonblight 93.2,26.1
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13670 |goto Crystalsong Forest 54.5,74.9
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13670/1 |goto Howling Fjord 42.2,19.7
step
kill Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
kill 8 Icecrown Scourge |q 13671/1 |goto Icecrown 71.3,37.5
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Quel'dorei Steed |invehicle |q 13625 |goto Icecrown 75.9,20.4
step
Target a Melee Target
If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
Use your Thrust ability to attack the target 5 times |q 13625/1 |goto 72.6,19.7
step
Target a Charge Target from a distance
Use Shield-Breaker ability until you notice the targets Defend is gone
Use your Charge ability on the Charge Target 2 times |q 13625/3 |goto 72.9,18.8
step
Target a Ranged Target from a distance
Use Shield-Breaker ability on Ranged Target to bring it's shields down
Use Shield-Breaker ability on Ranged Target twice, while it's shields are down |q 13625/2 |goto 73.1,19.0
step
talk Arcanist Taelis##33625
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13666 |goto 76.5,19.4
turnin A Worthy Weapon##13669 |goto 76.5,19.4
turnin The Edge of Winter##13670 |goto 76.5,19.4
step
talk Avareth Swiftstrike##33646
turnin Training in the Field##13671 |goto 76.5,19.4
step
talk Scout Shalyndria##33647
turnin Learning the Reins##13625 |goto Icecrown 76.5,19.5
step
talk Arcanist Taelis##33625
turnin Up To The Challenge##13672 |goto 76.5,19.4
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the guide |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Argent Tournament\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing your race's Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion Rank with your own race. You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section in order to have access to the quests in this guide section and earn the Crusader title.",
},[[
step
label "start"
talk Arcanist Taelis##33625
accept The Aspirant's Challenge##13679 |goto Icecrown 76.5,19.4
|tip You must turn in the Up To The Challenge quest before you can accept this quest.  The Up To The Challenge quest is turned in at the end of the ARGENT TOURNAMENT GROUNDS DAILIES (ASPIRANT RANK) guide section.
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Quel'dorei Steed |invehicle |q 13679 |goto 71.8,20.0
step
talk Squire David##33447
Tell him you are ready to fight!
|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
An Argent Valiant runs up on a horse
Use the abilities on your hotbar to defeat the Argent Valiant
|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13679/1 |goto 71.4,19.6
step
talk Arcanist Taelis##33625
turnin The Aspirant's Challenge##13679 |goto 76.5,19.4
accept A Valiant Of Stormwind##13684 |only Human |goto 76.5,19.4
accept A Valiant Of Darnassus##13689 |only NightElf |goto 76.5,19.4
accept A Valiant Of Ironforge##13685 |only Dwarf |goto 76.5,19.4
accept A Valiant Of Gnomeregan##13688 |only Gnome |goto 76.5,19.4
accept A Valiant Of The Exodar##13690 |only Draenei |goto 76.5,19.4
step
talk Marshal Jacob Alerius##33225
turnin A Valiant Of Stormwind##13684 |goto 76.6,19.2
accept The Valiant's Charge##13718 |goto 76.6,19.2
only Human
step
talk Jaelyne Evensong##33592
turnin A Valiant Of Darnassus##13689 |goto 76.3,19.1
accept The Valiant's Charge##13717 |goto 76.3,19.1
only NightElf
step
talk Lana Stouthammer##33312
turnin A Valiant Of Ironforge##13685 |goto 76.6,19.5
accept The Valiant's Charge##13714 |goto 76.6,19.5
only Dwarf
step
talk Ambrose Boltspark##33335
turnin A Valiant Of Gnomeregan##13688 |goto 76.5,19.8
accept The Valiant's Charge##13715 |goto 76.5,19.8
only Gnome
step
talk Colosos##33593
turnin A Valiant Of The Exodar##13690 |goto 76.1,19.2
accept The Valiant's Charge##13716 |goto 76.1,19.2
only Draenei
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13752 |or |goto 76.1,19.1
accept A Worthy Weapon##13753 |or |goto 76.1,19.1
accept The Edge Of Winter##13754 |or |goto 76.1,19.1
only Draenei
step
talk Saandos##33655
accept A Valiant's Field Training##13755 |goto 76.1,19.2
only Draenei
step
talk Ranii##33656
accept The Grand Melee##13756 |goto 76.2,19.1
accept At The Enemy's Gates##13854 |goto 76.2,19.1
only Draenei
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13752/1 |goto Grizzly Hills 61.2,50.3
only Draenei
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13753 |goto Icecrown 69.1,76.2
only Draenei
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13753/1 |goto Dragonblight 93.2,26.1
only Draenei
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13754 |goto Crystalsong Forest 54.5,74.9
only Draenei
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13754/1 |goto Howling Fjord 42.2,19.7
only Draenei
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13854 |goto Icecrown 48.9,71.4
only Draenei
step
kill 15 Boneguard Footman |q 13854/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13854/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13854/3 |goto 50.1,74.8
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Draenei
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854 |goto 49.1,71.4
only Draenei
step
kill 10 Converted Hero##32255 |q 13755/1 |goto 44.3,54.2
only Draenei
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13756 |goto 76.4,20.5
only Draenei
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13756/1 |goto 75.3,18.5
only Draenei
step
talk Colosos##33593
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13752 |goto 76.1,19.1
turnin A Worthy Weapon##13753 |goto 76.1,19.1
turnin The Edge Of Winter##13754 |goto 76.1,19.1
only Draenei
step
talk Saandos##33655
turnin A Valiant's Field Training##13755 |goto 76.1,19.2
only Draenei
step
talk Ranii##33656
turnin The Grand Melee##13756 |goto 76.2,19.1
turnin At The Enemy's Gates##13854 |goto 76.2,19.1
only Draenei
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13741 |or |goto 76.6,19.5
accept A Worthy Weapon##13742 |or |goto 76.6,19.5
accept The Edge Of Winter##13743 |or |goto 76.6,19.5
only Dwarf
step
talk Rollo Sureshot##33315
accept A Valiant's Field Training##13744 |goto 76.7,19.4
only Dwarf
step
talk Clara Tumblebrew##33309
accept The Grand Melee##13745 |goto 76.6,19.6
accept At The Enemy's Gates##13851 |goto 76.6,19.6
only Dwarf
step
Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13741/1 |goto Grizzly Hills,61.2,50.3
only Dwarf
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13742 |goto Icecrown 69.1,76.2
only Dwarf
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13742/1 |goto Dragonblight,93.2,26.1
only Dwarf
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13743 |goto Crystalsong Forest 54.5,74.9
only Dwarf
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13743/1 |goto Howling Fjord 42.2,19.7
only Dwarf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13851 |goto Icecrown 48.9,71.4
only Dwarf
step
kill 15 Boneguard Footman |q 13851/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13851/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13851/3 |goto 50.1,74.8
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Dwarf
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851 |goto 49.1,71.4
only Dwarf
step
kill 10 Converted Hero##32255 |q 13744/1 |goto 44.3,54.2
only Dwarf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13745 |goto 76.3,20.5
only Dwarf
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13745/1 |goto 75.3,18.5
only Dwarf
step
talk Lana Stouthammer##33312
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13741 |goto 76.6,19.5
turnin A Worthy Weapon##13742 |goto 76.6,19.5
turnin The Edge Of Winter##13743 |goto 76.6,19.5
only Dwarf
step
talk Rollo Sureshot##33315
turnin A Valiant's Field Training##13744 |goto 76.7,19.4
only Dwarf
step
talk Clara Tumblebrew##33309
turnin The Grand Melee##13745 |goto 76.6,19.6
turnin At The Enemy's Gates##13851 |goto 76.6,19.6
only Dwarf
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13603 |or |goto 76.6,19.1
accept A Worthy Weapon##13600 |or |goto 76.6,19.1
accept The Edge Of Winter##13616 |or |goto 76.6,19.1
only Human
step
talk Sir Marcus Barlowe##33222
accept A Valiant's Field Training##13592 |goto 76.5,19.1
only Human
step
talk Captain Joseph Holley##33223
accept The Grand Melee##13665 |goto 76.6,19.2
accept At The Enemy's Gates##13847 |goto 76.6,19.2
only Human
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13603/1 |goto Grizzly Hills 61.2,50.3
only Human
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13600 |goto Icecrown 69.1,76.2
only Human
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13600/1 |goto Dragonblight 93.2,26.1
only Human
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13616 |goto Crystalsong Forest 54.5,74.9
only Human
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13616/1 |goto Howling Fjord 42.2,19.7
only Human
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse|invehicle |q 13847 |goto Icecrown 48.9,71.4
only Human
step
kill 15 Boneguard Footman |q 13847/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13847/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13847/3 |goto 50.1,74.8
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Human
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847 |goto 49.1,71.4
only Human
step
kill 10 Converted Hero##32255 |q 13592/1 |goto 44.3,54.2
only Human
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13665 |goto 76.1,20.5
only Human
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13665/1 |goto 75.3,18.5
only Human
step
talk Marshal Jacob Alerius##33225
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13603 |goto 76.6,19.1
turnin A Worthy Weapon##13600 |goto 76.6,19.1
turnin The Edge Of Winter##13616 |goto 76.6,19.1
only Human
step
talk Sir Marcus Barlowe##33222
turnin A Valiant's Field Training##13592 |goto 76.5,19.1
only Human
step
talk Captain Joseph Holley##33223
turnin The Grand Melee##13665 |goto 76.6,19.2
turnin At The Enemy's Gates##13847 |goto 76.6,19.2
only Human
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13757 |or |goto 76.3,19.0
accept A Worthy Weapon##13758 |or |goto 76.3,19.0
accept The Edge Of Winter##13759 |or |goto 76.3,19.0
only NightElf
step
talk Illestria Bladesinger##33652
accept A Valiant's Field Training##13760 |goto 76.3,19.0
only NightElf
step
talk Airae Starseeker##33654
accept The Grand Melee##13761 |goto 76.4,19.0
accept At The Enemy's Gates##13855 |goto 76.4,19.0
only NightElf
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13757/1 |goto Grizzly Hills 61.2,50.3
only NightElf
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13758 |goto Icecrown 69.1,76.2
only NightElf
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13758/1 |goto Dragonblight 93.2,26.1
only NightElf
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13759 |goto Crystalsong Forest 54.5,74.9
only NightElf
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13759/1 |goto Howling Fjord 42.2,19.7
only NightElf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13855 |goto Icecrown 48.9,71.4
only NightElf
step
kill 15 Boneguard Footman |q 13855/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13855/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13855/3 |goto 50.1,74.8
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only NightElf
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855 |goto 49.1,71.4
only NightElf
step
kill 10 Converted Hero##32255 |q 13760/1 |goto 44.3,54.2
only NightElf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13761 |goto 76.0,20.4
only NightElf
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them
|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13761/1 |goto 75.3,18.5
only NightElf
step
talk Jaelyne Evensong##33592
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13757 |goto 76.3,19.0
turnin A Worthy Weapon##13758 |goto 76.3,19.0
turnin The Edge Of Winter##13759 |goto 76.3,19.0
only NightElf
step
talk Illestria Bladesinger##33652
turnin A Valiant's Field Training##13760 |goto 76.3,19.0
only NightElf
step
talk Airae Starseeker##33654
turnin The Grand Melee##13761 |goto 76.4,19.0
turnin At The Enemy's Gates##13855 |goto 76.4,19.0
only NightElf
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept A Blade Fit For A Champion##13746 |or |goto 76.5,19.8
accept A Worthy Weapon##13747 |or |goto 76.5,19.8
accept The Edge Of Winter##13748 |or |goto 76.5,19.8
only Gnome
step
talk Tickin Gearspanner##33648
accept A Valiant's Field Training##13749 |goto 76.6,19.8
only Gnome
step
talk Flickin Gearspanner##33649
accept The Grand Melee##13750 |goto 76.5,19.9
accept At The Enemy's Gates##13852 |goto 76.5,19.9
only Gnome
step
Use the Warts-B-Gone Lip Balm |use Warts-B-Gone Lip Balm##44986
Target Lake Frogs
Use the emote /kiss on the Lake Frogs
Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
talk Maiden of Ashwood Lake##33220
collect Ashwood Brand##44981 |q 13746/1 |goto Grizzly Hills 61.2,50.3
only Gnome
step
Click Winter Hyacinth
collect 4 Winter Hyacinth##45000 |q 13747 |goto Icecrown 69.1,76.2
only Gnome
step
Use Winter Hyacinths in the water here |use Winter Hyacinth##45000
Listen to the Maiden of Drak'Mar
Click the Blade of Drak'Mar that spawns
collect Blade of Drak'Mar##44978 |q 13747/1 |goto Dragonblight 93.2,26.1
only Gnome
step
kill Lord Everblaze##33289
collect 1 Everburning Ember##45005 |q 13748 |goto Crystalsong Forest 54.5,74.9
only Gnome
step
Use the Everburning Ember on Maiden of Winter's Breath |use Everburning Ember##45005
collect Winter's Edge##45003 |q 13748/1 |goto Howling Fjord 42.2,19.7
only Gnome
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Campaign Warhorse |invehicle |q 13852 |goto Icecrown 48.9,71.4
only Gnome
step
kill 15 Boneguard Footman |q 13852/1 |goto 50.1,74.8
|tip They are skeletons that walk around this area. You can simply run over these with your horse, you don't need to target or attack them at all.
kill 10 Boneguard Scout |q 13852/2 |goto 50.1,74.8
|tip They are gargoyles that fly around this area. Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
kill 3 Boneguard Lieutenant |q 13852/3 |goto 50.1,74.8
|tip They ride horses around this area. Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Gnome
step
Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852 |goto 49.1,71.4
only Gnome
step
kill 10 Converted Hero##32255 |q 13749/1 |goto 44.3,54.2
only Gnome
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13750 |goto 76.2,20.5
only Gnome
step
Talk to the riders on mounts of other Alliance races
Tell them you are ready to fight!
Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
collect 3 Mark of the Valiant##45127 |q 13750/1 |goto 75.3,18.5
only Gnome
step
talk Ambrose Boltspark##33335
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin A Blade Fit For A Champion##13746 |goto 76.5,19.8
turnin A Worthy Weapon##13747 |goto 76.5,19.8
turnin The Edge Of Winter##13748 |goto 76.5,19.8
only Gnome
step
talk Tickin Gearspanner##33648
turnin A Valiant's Field Training##13749 |goto 76.6,19.8
only Gnome
step
talk Flickin Gearspanner##33649
turnin The Grand Melee##13750 |goto 76.5,19.9
turnin At The Enemy's Gates##13852 |goto 76.5,19.9
only Gnome
step
Make sure you have 25 Valiant Seals:
collect 25 Valiant's Seal##44987 |q 13718/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Human
collect 25 Valiant's Seal##44987 |q 13714/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Dwarf
collect 25 Valiant's Seal##44987 |q 13717/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only NightElf
collect 25 Valiant's Seal##44987 |q 13715/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Gnome
collect 25 Valiant's Seal##44987 |q 13716/1
|tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section. It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Draenei
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Charge##13718 |goto 76.6,19.2
accept The Valiant's Challenge##13699 |goto 76.6,19.2
only Human
step
talk Jaelyne Evensong##33592
turnin The Valiant's Charge##13717 |goto 76.3,19.1
accept The Valiant's Challenge##13725 |goto 76.3,19.1
only NightElf
step
talk Lana Stouthammer##33312
turnin The Valiant's Charge##13714 |goto 76.6,19.5
accept The Valiant's Challenge##13713 |goto 76.6,19.5
only Dwarf
step
talk Ambrose Boltspark##33335
turnin The Valiant's Charge##13715 |goto 76.5,19.8
accept The Valiant's Challenge##13723 |goto 76.5,19.8
only Gnome
step
talk Colosos##33593
turnin The Valiant's Charge##13716 |goto 76.1,19.2
accept The Valiant's Challenge##13724 |goto 76.1,19.2
only Draenei
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Stormwind Steed |invehicle |q 13699 |goto 71.6,22.4
only Human
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13725 |goto 71.6,22.5
only NightElf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Ironforge Ram |invehicle |q 13713 |goto 71.8,22.5
only Dwarf
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13723 |goto 71.9,22.5
only Gnome
step
Equip the Alliance Lance in your bags |use Alliance Lance##46069
Click to mount the Stabled Exodar Elekk |invehicle |q 13724 |goto 71.7,22.4
only Draenei
step
talk Squire Danny##33518
Tell him you are ready to fight!
An Argent Champion runs up on a horse
Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability. Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
Defeat the Argent Valiant |q 13699/1 |only Human |goto 68.6,21.0
Defeat the Argent Valiant |q 13725/1 |only NightElf |goto 68.6,21.0
Defeat the Argent Valiant |q 13713/1 |only Dwarf |goto 68.6,21.0
Defeat the Argent Valiant |q 13723/1 |only Gnome |goto 68.6,21.0
Defeat the Argent Valiant |q 13724/1 |only Draenei |goto 68.6,21.0
step
talk Marshal Jacob Alerius##33225
turnin The Valiant's Challenge##13699 |goto 76.6,19.2
accept A Champion Rises##13702 |goto 76.6,19.2
only Human
step
talk Jaelyne Evensong##33592
turnin The Valiant's Challenge##13725 |goto 76.3,19.1
accept A Champion Rises##13735 |goto 76.3,19.1
only NightElf
step
talk Lana Stouthammer##33312
turnin The Valiant's Challenge##13713 |goto 76.6,19.5
accept A Champion Rises##13732 |goto 76.6,19.5
only Dwarf
step
talk Ambrose Boltspark##33335
turnin The Valiant's Challenge##13723 |goto 76.5,19.8
accept A Champion Rises##13733 |goto 76.5,19.8
only Gnome
step
talk Colosos##33593
turnin The Valiant's Challenge##13724 |goto 76.1,19.2
accept A Champion Rises##13734 |goto 76.1,19.2
only Draenei
step
talk Justicar Mariel Trueheart##33817
turnin A Champion Rises##13702 |only Human |goto 69.7,22.9
turnin A Champion Rises##13735 |only NightElf |goto 69.7,22.9
turnin A Champion Rises##13732 |only Dwarf |goto 69.7,22.9
turnin A Champion Rises##13733 |only Gnome |goto 69.7,22.9
turnin A Champion Rises##13734 |only Draenei |goto 69.7,22.9
accept The Scourgebane##13795 |only DeathKnight |goto 69.7,22.9
accept Eadric the Pure##13794 |only if not DeathKnight |goto 69.7,22.9
step
talk Crok Scourgebane##33762
turnin The Scourgebane##13795 |goto 73.8,20.1
only DeathKnight
step
talk Eadric the Pure##33759
turnin Eadric the Pure##13794 |goto 70.0,23.4
only if not DeathKnight
step
You have reached the end of the dailies for today
Click here to go back to the beginning of the guide |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Alliance Vanguard",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Alliance Vanguard faction.",
condition_suggested=function() return level >= 10 and level <= 50 end,
achieveid={1012},
patch='30008',
},[[
step
The most efficient way to earn reputation with the _Alliance Vanguard_ is to run any Northrend dungeon, or any Northrend Heroic.
Make sure that you _DO NOT_ have a tabard equipped, or you will not get reputation with the factions you need.
You will need to get Exalted with four factions, and as you get Exalted with each one, continue running dungeons to reach Exalted with all four.
|confirm
step
You are currently _Neutral_ with Explorers' League |only if rep("Explorers' League")==Neutral
You are currently _Friendly_ with Explorers' League |only if rep("Explorers' League")==Friendly
You are currently _Honored_ with Explorers' League |only if rep("Explorers' League")==Honored
You are currently _Revered_ with Explorers' League |only if rep("Explorers' League")==Revered
Exalted with Explorers' League |complete rep("Explorers' League")==Exalted
You are currently _Neutral_ with The Frostborn |only if rep('The Frostborn')==Neutral
You are currently _Friendly_ with The Frostborn |only if rep('The Frostborn')==Friendly
You are currently _Honored_ with The Frostborn |only if rep('The Frostborn')==Honored
You are currently _Revered_ with The Frostborn |only if rep('The Frostborn')==Revered
Exalted with The Frostborn |complete rep('The Frostborn')==Exalted
You are currently _Neutral_ with The Silver Covenant |only if rep('The Silver Covenant')==Neutral
You are currently _Friendly_ with The Silver Covenant |only if rep('The Silver Covenant')==Friendly
You are currently _Honored_ with The Silver Covenant |only if rep('The Silver Covenant')==Honored
You are currently _Revered_ with The Silver Covenant |only if rep('The Silver Covenant')==Revered
Exalted with The Silver Covenant |complete rep('The Silver Covenant')==Exalted
You are currently _Neutral_ with Valiance Expedition |only if rep('Valiance Expedition')==Neutral
You are currently _Friendly_ with Valiance Expedition |only if rep('Valiance Expedition')==Friendly
You are currently _Honored_ with Valiance Expedition |only if rep('Valiance Expedition')==Honored
You are currently _Revered_ with Valiance Expedition |only if rep('Valiance Expedition')==Revered
Exalted with Valiance Expedition |complete rep('Valiance Expedition')==Exalted
step
Congratulations, you are Exalted with the _Alliance Vanguard!_
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Argent Crusade",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Argent Crusade faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Argent Crusade') < Exalted end,
achieveid={947},
patch='30100',
},[[
#include "Argent_Crusade_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Ashen Verdict",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Ashen Verdict faction.",
achieveid={4598},
patch='30300',
},[[
step
This reputation can be earned by running the Icecrown Citadel raid.
|confirm
step
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label "start"
Kill every creature that is hostile in this instance in order to gain reputation. |goto Icecrown Citadel 39.0,7.3
|tip You will have to clear this place a few times to reach Exalted.
Click here to go back to the beginning of the guide |next "start" |confirm
Earn Exalted status with the Ashen Verdict |complete rep('Ashen Verdict')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Ashen Verdict!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\The Frenzyheart Tribe",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Frenzyheart Tribe faction.",
achieveid={950},
patch='40001',
},[[
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin,50.5,62.1
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto 50.5,76.6
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 55,69.1
accept The Ape Hunter's Slave##12529 |goto 55,69.1
step
Talk to Goregek the Gorilla Hunter who is following you
accept Tormenting the Softknuckles##12530
stickystart "matriarch"
step
kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
step
kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
step
label "matriarch"
Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
|tip Softknuckles are baby gorillas.
A Hardknuckle Matriarch will spawn eventually
kill 1 Hardknuckle Matriarch |q 12530/1 |goto 66.9,73.2
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 55,69.1
turnin Tormenting the Softknuckles##12530 |goto 55,69.1
accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.5,69.7
step
kill 6 Sapphire Hive Wasp |q 12533/1 |goto 59.6,75.8
kill 9 Sapphire Hive Drone |q 12533/2 |goto 59.6,75.8
step
The path down to The Sapphire Queen starts here |goto 59.4,79.1 < 5 |walk
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1 |goto 57.1,79.3 |walk
step
_Leave_ the cave
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto 55.0,69.1
turnin The Sapphire Queen##12534 |goto 55.0,69.1
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.5,69.7
step
They are all around the village
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12532/1
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.5,69.7
accept The Underground Menace##12531 |goto 55.5,69.7
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 55,69.1
stickystart "skyreachcrystalcluster"
step
kill Serfex the Reaver##28083
collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
step
label "skyreachcrystalcluster"
Click the Skyreach Crystal Formations
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 55,69.1
turnin Mischief in the Making##12535 |goto 55,69.1
accept A Rough Ride##12536 |goto 55,69.1
step
talk Captive Crocolisk##28298
Tell him let's do this
Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
step
When you jump off the crocodile:
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536
accept Lightning Definitely Strikes Twice##12537
accept The Mist Isn't Listening##12538
step
Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
|tip It's a tall rectangle stone monument.
Click the Arranged Crystal Formation that appears
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
step
Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
step
Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 55,69.1
accept Just Following Orders##12540 |goto 55,69.1
step
talk Injured Rainspeaker Oracle##28217
Pull it to its feet
Kill the crocodile that spawns
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto 55.7,64.9
accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
Tell him you are ready to travel to his village now.
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 55.7,64.9
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
step
kill 1 Venomtip |q 12571/2 |goto 57.5,52.4
|tip He walks back and forth on this small path near the waterfall.
step
label "shinytreas"
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
accept Making Peace##12573 |goto 54.6,56.3
turnin Gods like Shiny Things##12572 |goto 54.6,56.3
step
talk Shaman Vekjik##28315
Tell him you brought an offering
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.5,62.1
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.6,56.3
accept Back So Soon?##12574 |goto 54.6,56.3
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.1,38.6
accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
accept Forced Hand##12576 |goto 42.1,38.6
stickystart "frenzyheartscav"
step
kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
label "frenzyheartscav"
kill 8 Frenzyheart Spearbearer |q 12576/1 |goto 40.4,26.4
kill 6 Frenzyheart Scavenger |q 12576/2 |goto 40.4,26.4
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
turnin Forced Hand##12576 |goto 42.1,38.6
accept Home Time!##12577 |goto 42.1,38.6
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.6,56.3
accept The Angry Gorloc##12578 |goto 54.6,56.3
step
Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
talk Mosswalker Victim##28113
Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
Click Lifeblood Shards on the ground
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
step
You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
label "daily"
During this next part you will fight a boss
If you kill Jaloot during the fight, you will be able to pick up the Frenzyheart Tribe quest, and vice versa
NOTE** _You must kill Artuis Slowly if you are high level_
This will decrease your Reputation with the _Oracles_ to _Hated_
kill Jaloot##28667
|confirm always
step
_Enter_ the cave |goto 72.2,57.3 < 10
kill Artruis the Heartless##28659 |q 12581/1 |goto 70.8,58.7
click Artruis' Phylactery##190777
|tip This will spawn after the fight
turnin A Hero's Burden##12581 |goto 70.8,58.7
talk Zepik the Gorloc Hunter##28668
accept Frenzyheart Champion##12582 |goto 70.8,58.7
accept Return of the Lich Hunter##12692 |goto 70.8,58.7
If you cannot accept than you will need to wait until the next day and try again
|confirm
step
talk Elder Harkek##28138
turnin Return of the Lich Hunter##12692 |goto 55.4,69.6
step
talk Elder Harkek##28138
accept Chicken Party!##12702
Tell him you need to find Goregek
collect Goregek's Shackles##38619 |q 12702 |goto 55.5,69.7
step
talk Rejek##29043
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Hero's Headgear##12758 |or |goto 55.7,69.5
accept Rejek: First Blood##12734 |or |goto 55.7,69.5
accept Strength of the Tempest##12741 |or |goto 55.7,69.5
accept The Heartblood's Strength##12732 |or |goto 55.7,69.5
step
talk Vekgar##29146
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Kartak's Rampage##12703 |or |goto 55.5,68.7
accept Secret Strength of the Frenzyheart##12760 |or |goto 55.5,68.7
accept Tools of War##12759 |or |goto 55.5,68.7
stickystart "capturechicken"
step
kill Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
collect Venture Co. Explosives##39651 |q 12758 |goto 33.1,47.3
step
label "capturechicken"
They are all around the village
Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12702/1
step
kill Stormwatcher##28877+
Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
Click the Stormwatcher's Head that spawns
collect Stormwatcher's Head##39667 |q 12758/1 |goto 26.0,35.4
step
kill Hardknuckle Charger##28096+
Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
Blood your Blade on a Hardknuckle Charger |q 12734/2 |goto 59.7,70.9
step
kill Sapphire Hive Wasp##28086+
Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
Blood your Blade on a Sapphire Hive Wasp |q 12734/1 |goto 59.3,75.7
step
kill Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
Blood your Blade on 3 Mistwhisper Members |q 12734/3 |goto 43.1,40.4
step
kill Aqueous Spirit##28862+
collect 3 Essence of the Monsoon##39616 |q 12741 |goto 26.5,35.1
kill Storm Revenant##28858+
collect 3 Essence of the Storm##39643 |q 12741 |goto 26.5,35.1
step
Stand right up next to the tall stone altar
|tip You may even need to rub against, or stand next to it so that you are touching it.
Feel the True Power of the Tempest |q 12741/1 |goto 22.4,33.8
step
kill Goretalon Matriarch##29044
|tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
collect Matriarch's Heartblood##39573 |q 12732 |goto 59.7,23.9
step
Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
collect Suntouched Water##39576 |n
Click the Suntouched Water in your bags |use Suntouched Water##39576
collect Suntouched Heartblood##39575 |q 12732/1 |goto 33.8,52.1
step
kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
collect Oracle Blood##39265 |q 12703 |goto 31.6,69.5
step
Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265
|tip The Altar of Kartak has a big skull on top of it, with long curved horns. There are 3 small fires at the base of the altar, also.
Take Control of Kartak |invehicle |c |q 12703 |goto 23.3,83.0
step
Use Kartak's abilities to kill Oracle mobs around this area
kill 50 Sparktouched Gorloc |q 12703/1 |goto 30.7,78.0
step
Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
kill Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
Kill 30 Sparktouched Gorlocs |q 12760/1 |goto 30.1,70.7
step
Click Zepik's Trap Stash
|tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
collect Spike Bomb##39697 |q 12759 |goto 24.0,83.1
collect Ensnaring Trap##39695 |q 12759 |goto 24.0,83.1
collect Volatile Trap##39696 |q 12759 |goto 24.0,83.1
step
Use your Spike Bomb |use Spike Bomb##39697
Use your Ensnaring Trap |use Ensnaring Trap##39695
Use your Volatile Trap |use Volatile Trap##39696
Use your traps near Oracles mobs around this area
Kill 50 Sparktouched Gorlocs |q 12759/1 |goto 28.4,76.1
step
talk Shaman Jakjek##28106
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
turnin Kartak's Rampage##12703 |goto 23.4,83.3
turnin Secret Strength of the Frenzyheart##12760 |goto 23.4,83.3
turnin Tools of War##12759 |goto 23.4,83.3
step
talk Elder Harkek##28138
turnin Chicken Party!##12702 |goto 55.5,69.7
step
talk Rejek##29043
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Hero's Headgear##12758 |goto 55.7,69.5
turnin Rejek: First Blood##12734 |goto 55.7,69.5
turnin Strength of the Tempest##12741 |goto 55.7,69.5
turnin The Heartblood's Strength##12732 |goto 55.7,69.5
step
You will now have to run daily quests in order to gain reputation
Click here to go back to the start of the dailies. Note that this will not actually reset the daily quests |confirm |next "daily"
|next "exalted" |only if rep('Frenzyheart Tribe')==Exalted
step
label "exalted"
Congratulations, you are now Exalted with the Frenzyheart Tribe!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Kalu'ak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Kalu'ak faction.",
achieveid={949},
patch='30001',
},[[
#include "Kaluak_rep"
step
label "exalted"
Congratulations, you are Exalted with the Kalu'ak!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Kirin Tor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Kirin Tor faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Kirin Tor') < Exalted end,
achieveid={1008},
patch='30008',
},[[
step
talk Librarian Donathan##25262
accept Prison Break##11587 |goto Borean Tundra 45.3,33.3
step
talk Librarian Garren##25291
accept Monitoring the Rift: Cleftcliff Anomaly##11576 |goto 45,33.4
step
kill Beryl Mage Hunter##25585+
collect Beryl Prison Key##34688 |n
click Arcane Prison##187561
Free an Arcane Prisoner |q 11587/1 |goto 40.5,39.2
step
_Go towards_ the Monitoring the Rift: Cleftcliff Anomaly |goto 41.2,41.8 < 10 |only if walking
Use your Arcanometer in this spot next to the purple glowing crack in the ground |use Arcanometer##34669
Take the Cleftcliff Anomaly Reading |q 11576/1 |goto 34.3,42
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Cleftcliff Anomaly##11576 |goto 45,33.4
accept Monitoring the Rift: Sundered Chasm##11582 |goto 45,33.4
step
talk Librarian Donathan##25262
turnin Prison Break##11587 |goto 45.3,33.3
accept Abduction##11590 |goto 45.3,33.3
step
_Go towards_ the Monitoring the Rift: Sundered Chasm |goto 46.8,29.3 < 10 |only if walking
Go down the path and underwater
Use your Arcanometer next to the huge purple glowing crack underwater |use Arcanometer##34669
Take the Sundered Chasm Reading |q 11582/1 |goto 44,28.6
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Sundered Chasm##11582 |goto 45,33.4
accept Monitoring the Rift: Winterfin Cavern##12728 |goto 45,33.4
step
_Enter_ the Monitoring the Rift: Winterfin Cavern|goto 46.8,29.3 < 10 |only if walking
Stand in the mouth of the cave, past the torches
Use your Arcanometer |use Arcanometer##34669
Take the Winterfin Cavern Reading |q 12728/1 |goto 40.1,19.7
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Winterfin Cavern##12728 |goto 45,33.4
step
Fight a Beryl Sorcerer
Use your Arcane Binder on him when you see the 'Beryl Sorcerer can now be captured message in your chat |use Arcane Binder##34691
Capture a Beryl Sorcerer |q 11590/1 |goto 43.5,37.4
step
talk Librarian Donathan##25262
turnin Abduction##11590 |goto 45.3,33.3
accept The Borean Inquisition##11646 |goto 45.3,33.3
step
_Enter_ the tower |goto 46.3,32.8 |walk
talk Librarian Normantis##25480
turnin The Borean Inquisition##11646
accept The Art of Persuasion##11648
step
Use your Neural Needler on the Imprisoned Beryl Sorcerer repeatedly to Interrogate the Prisoner |use Neural Needler##34811
Interrogate the Prisoner |q 11648/1
step
talk Librarian Normantis##25480
turnin The Art of Persuasion##11648 |goto 46.3,32.8
accept Sharing Intelligence##11663 |goto 46.3,32.8
step
Go outside the tower |goto 45.3,33.3 |walk
talk Librarian Donathan##25262
turnin Sharing Intelligence##11663
accept A Race Against Time##11671
step
Use your Beryl Shield Detonator inside the big blue glowing circle |use Beryl Shield Detonator##34897
|tip If it won't let you, wait until Inquisitor Salrand appears again.
kill Inquisitor Salrand##25584+ |n
click Salrand's Lockbox##187875
collect Salrand's Broken Key##34909 |q 11671/1 |goto 42.1,39.5
step
talk Librarian Donathan##25262
turnin A Race Against Time##11671 |goto 45.3,33.3
accept Reforging the Key##11679 |goto 45.3,33.3
step
talk Surristrasz##24795
turnin Reforging the Key##11679 |goto 45.3,34.5
accept Taking Wing##11680 |goto 45.3,34.5
step
talk Warmage Anzim##25356
turnin Taking Wing##11680 |goto 46.4,37.3
accept Rescuing Evanor##11681 |goto 46.4,37.3
step
Watch the cutscene, then you'll get teleported back to Amber Ledge |goto 46.4,32.6 < 5
talk Archmage Evanor##25785
turnin Rescuing Evanor##11681 |goto 46.4,32.4
accept Dragonspeak##11682 |goto 46.4,32.4
step
_Leave_ the tower
talk Surristrasz##24795
turnin Dragonspeak##11682 |goto 45.3,34.5
accept Traversing the Rift##11733 |goto 45.3,34.5
step
talk Archmage Berinand##25314
turnin Traversing the Rift##11733 |goto 32.9,34.4
step
talk Archmage Alvareaux##32287
buy 1 Tabard of the Kirin Tor##43157 |goto Dalaran 25.3,47.7
step
Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep
Wear the Tabard of the Kirin Tor in order to earn reputation while you clear the instance |use Tabard of the Kirin Tor##43157
Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
Earn Exalted status with the Kirin Tor |complete rep('Kirin Tor')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with The Kirin Tor!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Knights of the Ebon Blade",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Knights of the Ebon Blade faction.",
achieveid={1009},
patch='30008',
},[[
step
map Icecrown
The Skybreaker flies in a circular pattern at the following locations:
Location 1: |goto Icecrown 57.4,37.2
Location 2: |goto Icecrown 64.4,55.4
Find The Skybreaker flying around in the sky
|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
On the Skybreaker airship:
talk Thassarian##29799
accept It's All Fun and Games##12887
step
Use your Eyesore Blaster on The Ocular |use Eyesore Blaster##41265
|tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
Destroy The Ocular |q 12887/1 |goto 44.3,21.5
step
talk Baron Sliver##29804
turnin It's All Fun and Games##12887 |goto 44.1,24.7
accept I Have an Idea, But First...##12891 |goto 44.1,24.7
step
kill Shadow Cultist##29717+
collect 1 Cultist Rod##41359 |q 12891/1 |goto 43.7,24.8
kill Morbid Carcass##29719+
collect 1 Abomination Hook##41361 |q 12891/2 |goto 43.7,24.8
kill Vault Geist##29720+
collect 1 Geist Rope##41362 |q 12891/3 |goto 43.7,24.8
kill Rabid Cannibal##29722+, Death Knight Master##29738+
collect 5 Scourge Essence##41363 |q 12891/4 |goto 43.7,24.8
step
talk Baron Sliver##29804
turnin I Have and Idea, But First...##12891 |goto 44.1,24.7
accept Free Your Mind##12893 |goto 44.1,24.7
step
kill The Leaper##29840
Use your Sovereign Rod on The Leaper's corpse |use Soveriegn Rod##41366
Turn The Leaper |q 12893/3 |goto 43.4,19.1
step
kill Vile##29769
Use your Sovereign Rod on Vile's corpse |use Soveriegn Rod##41366
Turn Vile |q 12893/1 |goto 44.4,27.0
step
kill Lady Nightswood##29770
Use your Sovereign Rod on Lady Nightswood's corpse |use Soveriegn Rod##41366
Turn Lady Nightswood |q 12893/2 |goto 41.8,24.5
step
talk Baron Sliver##29804
turnin Free Your Mind##12893 |goto 44.1,24.7
accept If He Cannot Be Turned##12896 |goto 44.1,24.7
step
The entrance to the Shadow Vault starts here |goto 43.7,23.6,0.3 |c
step
click General's Weapon Rack##191779
|tip It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
General Lightsbane spawns
kill General Lightsbane##29851 |q 12896/1 |goto 44.9,19.9
step
The Skybreaker flies in a circular pattern at the following locations:
Location 1: [57.4,37.2]
Location 2: [64.4,55.4]
Find The Skybreaker flying around in the sky
|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
talk Thassarian##29799
turnin If He Cannot Be Turned##12896
accept The Shadow Vault##12898
step
talk Baron Sliver##29343
turnin The Shadow Vault##12898 |goto 42.8,24.9
accept The Duke##12938 |goto 42.8,24.9
accept Blackwatch##13106 |goto 42.8,24.9
step
talk Initiate Brenners##30308
home The Shadow Vault |goto 44.0,22.2
step
talk Duke Lankral##30002
turnin The Duke##12938 |goto 44.7,20.3
accept Honor Challenge##12939 |goto 44.7,20.3
step
talk The Leaper##30074
accept Eliminate the Competition##12955 |goto 43.6,24.7
step
Watch out for the Mjordin Combatants
They will attack you
talk Efrem the Faithful##30081
Challenge him to a duel
Defeat Efrem the Faithful |q 12955/2 |goto 37.9,25.1
step
talk Tinky Wickwhistle##30162
Tell her you can't afford her as a distraction
Defeat Tinky Wickwhistle |q 12955/4 |goto 36.1,23.6
step
Use your Challenge Flag on Mjordin Combatants to challenge them |use Challenge Flag##41372
Challenge and defeat 6 Mjordin Combatants |q 12939/1 |goto 37.5,24.6
step
talk Sigrid Iceborn##30086
Tell her you heard vrykul women cannot fight at all
Defeat Sigrid Iceborn |q 12955/1 |goto 37.1,22.5
step
talk Onu'zun##30180
Tell him you have bad news for him
Defeat Onu'zun |q 12955/3 |goto 37.9,22.9
step
talk Duke Lankral##30002
turnin Honor Challenge##12939 |goto 44.7,20.3
accept Shadow Vault Decree##12943 |goto 44.7,20.3
step
talk The Leaper##30074
turnin Eliminate the Competition##12955 |goto 43.6,24.7
accept The Bone Witch##12999 |goto 43.6,24.7
step
_Enter_ the Ufrang's Hall |goto 38.8,24.0 < 10 |walk
talk Vaelen the Flayed##30056
accept Get the Key##12949 |goto 41.0,23.9
step
Use your Shadow Vault Decree on Thane Ulfrang the Mighty |use Shadow Vault Decree##41776
kill Thane Ulfrang the Mighty##29919 |q 12943/1 |goto 40.3,23.9
step
_Leave_ Ufrang's Hall |goto 38.8,24.0 < 10 |walk
kill Instructor Hroegar##29915
collect Key to Vaelan's Chains##41843 |q 12949/1 |goto 36.5,23.6
step
_Enter_ Ufrang's Hall starts |goto 38.8,24.0 < 10 |walk
talk Vaelen the Flayed##30056
turnin Get the Key##12949 |goto 41.0,23.9
accept Let the Baron Know##12951 |goto 41.0,23.9
step
_Leave_ Ufrang's Hall |goto 38.8,24.0 < 10 |walk
talk Baron Sliver##29343
turnin Let the Baron Know##12951 |goto 42.8,24.9
accept Vaelen Has Returned##13085 |goto 42.8,24.9
step
talk Vaelen the Flayed##30218
turnin Vaelen Has Returned##13085 |goto 43.1,21.1
step
talk Duke Lankral##30002
turnin Shadow Vault Decree##12943 |goto 44.7,20.3
step
talk Duchess Mynx##32538
buy 1 Tabard of the Ebon Blade##43155 |goto 43.4,20.6
step
Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep
Wear the Tabard of the Ebon Blade in order to earn reputation while you clear the instance |use Tabard of the Ebon Blade##43155
Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
Earn Exalted status with the Knights of the Ebon Blade |complete rep('Knights of the Ebon Blade')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Knights of the Ebon Blade!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\The Oracles",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the The Oracles faction.",
achieveid={951},
patch='30008',
},[[
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto Sholazar Basin 50.5,62.1
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.5,77.3
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto 50.5,76.6
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto 55,69.1
accept The Ape Hunter's Slave##12529 |goto 55,69.1
step
talk Goregek the Gorilla Hunter##28214
If he is not following your, use his Shackles in your bags |use Goregek's Shackles##38619
accept Tormenting the Softknuckles##12530
stickystart "hardmatriarch"
step
kill 8 Hardknuckle Forager##28098+ |q 12529/1 |goto 57.5,73.3
step
kill 6 Hardknuckle Charger##28096+ |q 12529/2 |goto 61.1,71.7
step
label "hardmatriarch"
Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467
|tip Softknuckles are baby gorillas.
A Hardknuckle Matriarch will spawn eventually
kill 1 Hardknuckle Matriarch##28213 |q 12530/1 |goto 66.9,73.2
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 55,69.1
turnin Tormenting the Softknuckles##12530 |goto 55,69.1
accept The Wasp Hunter's Apprentice##12533 |goto 55,69.1
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.5,69.7
step
kill 6 Sapphire Hive Wasp##28086+ |q 12533/1 |goto 59.6,75.8
kill 9 Sapphire Hive Drone##28085+ |q 12533/2 |goto 59.6,75.8
step
The path down to The Sapphire Queen starts here |goto 59.4,79.1 < 5 |walk
_Follow_ the path down |goto 57.1,79.3 |walk
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1
step
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto 55.0,69.1
turnin The Sapphire Queen##12534 |goto 55.0,69.1
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.5,69.7
step
Throw your Chicken Net at the Chicken Escapees |use Chicken Net##38689
clicknpc Chicken Escapee##28161+
collect 12 Captured Chicken##38483 |q 12532/1
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.5,69.7
accept The Underground Menace##12531 |goto 55.5,69.7
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 55,69.1
step
click the Skyreach Crystal Formation##190500
|tip They are in the rocky areas along this river.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
step
kill Serfex the Reaver##28083
|tip You will find him along the bank of this river. Look for the rumbling rocks.
collect Claw of Serfex##38473 |q 12531/1 |goto 49.8,85
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 55,69.1
turnin Mischief in the Making##12535 |goto 55,69.1
accept A Rough Ride##12536 |goto 55,69.1
step
talk Captive Crocolisk##28298
Tell him let's do this
Travel to Mistwhisper Refuge |q 12536/1 |goto 57.3,68.4
step
When you jump off the crocodile:
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536
accept Lightning Definitely Strikes Twice##12537
accept The Mist Isn't Listening##12538
stickystart "mistwhispergorlocs"
step
Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510
|tip It's a tall rectangle stone monument.
Click the Arranged Crystal Formation that appears
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.4,37.2
step
label "mistwhispergorlocs"
Kill 12 Mistwhisper Gorlocs |q 12538/1 |goto 45.5,39.8
step
Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 55,69.1
accept Just Following Orders##12540 |goto 55,69.1
step
talk Injured Rainspeaker Oracle##28217
Pull it to its feet
Kill the crocodile that spawns
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.7,64.9
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto 55.7,64.9
accept Fortunate Misunderstandings##12570 |goto 55.7,64.9
Tell him you are ready to travel to his village now
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.6,56.3
accept Make the Bad Snake Go Away##12571 |goto 54.6,56.3
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
talk Lafoo##28120
accept Gods like Shiny Things##12572
step
kill 1 Venomtip##28358 |q 12571/2 |goto 57.5,52.4
|tip He walks back and forth on this small path near the waterfall.
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 52.4,53.2
kill 10 Emperor Cobra |q 12571/1 |goto 52.4,53.2
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.6,56.3
accept Making Peace##12573 |goto 54.6,56.3
turnin Gods like Shiny Things##12572 |goto 54.6,56.3
step
talk Shaman Vekjik##28315
Tell him you brought an offering
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.3,64.6
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.5,62.1
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.6,56.3
accept Back So Soon?##12574 |goto 54.6,56.3
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.1,38.6
accept The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
accept Forced Hand##12576 |goto 42.1,38.6
stickystart "frenzyheart"
step
kill 1 Warlord Tartek##28105 |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
label "frenzyheart"
kill 8 Frenzyheart Spearbearer##28080 |q 12576/1 |goto 40.4,26.4
kill 6 Frenzyheart Scavenger##28081 |q 12576/2 |goto 40.4,26.4
step
click the Mistwhisper Treasure##190578
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.1,38.6
turnin Forced Hand##12576 |goto 42.1,38.6
accept Home Time!##12577 |goto 42.1,38.6
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.6,56.3
accept The Angry Gorloc##12578 |goto 54.6,56.3
step
Travel to Mosswalker Village |q 12578/1 |goto 75.3,54.1
step
Use Moodle's Stress Ball if Moodle is not standing next to you: |use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
talk Mosswalker Victim##28113
Rescue 6 Mosswalker Victims |q 12580/1 |goto 75.4,52.4
step
Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
Click Lifeblood Shards on the ground
|tip They look like small red crystals on the ground around this area.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 68.9,54.6
step
You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
talk Moodle##28122
turnin Lifeblood of the Mosswalker Shrine##12579 |goto 54.5,56.6
accept A Hero's Burden##12581 |goto 54.5,56.6
step
label "daily"
During this next part you will fight a boss
If you kill Zepik the Gorloc Hunter during the fight, you will be able to pick up the Oracle quest, and vice versa
NOTE** _You must kill Artuis Slowly if you are high level_
This will decrease your Reputation with the _Frenzyheart Tribe_ to _Hated_
kill Zepik the Gorloc Hunter##28668
|confirm always
step
Enter the cave here
_Enter_ the cave |goto 72.2,57.3
kill Artruis the Heartless##28659 |q 12581/1 |goto 70.8,58.7
click Artruis' Phylactery##190777
|tip This will spawn after the fight
turnin A Hero's Burden##12581 |goto 70.8,58.7
talk Jaloot##28667
accept Hand of the Oracles##12689 |goto 70.8,58.7
accept Return of the Friendly Dryskin##12695 |goto 70.8,58.7
If you cannot accept than you will need to wait until the next day and try again |confirm
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.6,56.4
step
talk High-Oracle Soo-say##28027
accept Appeasing the Great Rain Stone##12704
Tell him you need to find Lafoo
collect Lafoo's Bug Bag##38622 |q 12704 |goto 54.6,56.4
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
accept A Cleansing Song##12735 |or |goto 53.3,56.5
accept Song of Fecundity##12737 |or |goto 53.3,56.5
accept Song of Reflection##12736 |or |goto 53.3,56.5
accept Song of Wind and Water##12726 |or |goto 53.3,56.5
step
talk Oracle Soo-dow##29149
You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
accept Mastery of the Crystals##12761 |or |goto 54.2,53.8
accept Power of the Great Ones##12762 |or |goto 54.2,53.8
accept Will of the Titans##12705 |or |goto 54.2,53.8
step
Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
Stand on top of the twinkles of light on the ground around this area
Lafoo will dig up the treasure
Click the random items that appear on the ground
collect 6 Shiny Treasures##38575|q 12704/1 |goto 52.4,53.2
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Atha |q 12735/1 |goto 42.7,42.8
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Ha-Khalan |q 12735/2 |goto 49.4,62.7
step
Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
kill Spirit of Koosu |q 12735/3 |goto 48.8,70.5
step
Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
Play the Song of Fecundity 8 Times |q 12737/1 |goto 26.2,37.1
step
Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Glimmering Pillar |q 12736/1 |goto 50.0,37.4
step
Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Suntouched Pillar |q 12736/4 |goto 33.6,52.3
step
Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Mosslight Pillar |q 12736/2 |goto 36.4,74.7
step
Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
Contemplate at the Skyreach Pillar |q 12736/3 |goto 53.3,79.4
step
Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
Haiphoon has 2 forms: Water and Air
|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area
When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them
When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area
When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them
After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate
Keep repeating this process
Devour 3 Aqueous Spirits |q 12726/1 |goto 26.2,37.1
Devour 3 Storm Revenants |q 12726/2 |goto 26.2,37.1
step
Click the Sparktouched Crystal Defenses
|tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
collect 1 Crystal of the Violent Storm##39694 |q 12761 |goto 33.0,75.7
collect 1 Crystal of Unstable Energy##39693 |q 12761 |goto 33.0,75.7
collect 1 Crystal of the Frozen Grip##39689 |q 12761 |goto 33.0,75.7
step
Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
Use your crystals near Frenzyheart mobs around this area
Kill 50 Frenzyheart Attackers |q 12761/1 |goto 22.2,78.0
step
Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
collect Energized Polished Crystal##39748 |q 12762/2 |goto 65.5,60.2
stickystart "taintedcrystal"
step
Use your Energized Polished Crystal |use Energized Polished Crystal##39748
|tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
Kill 30 Frenzyheart Attackers |q 12762/1 |goto 22.2,78.0
step
label "taintedcrystal"
kill Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
collect 1 Tainted Crystal##39266 |q 12705 |goto 22.9,76.0
step
Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
Take control of Soo-holu |invehicle |c |q 12705 |goto 33.7,75.0
step
Use Soo-holu's abilities to kill Frenzyheart mobs around this area
kill 50 Frenzyheart Attacker |q 12705/1 |goto 22.2,78.0
step
talk Lightningcaller Soo-met##28107
turnin Mastery of the Crystals##12761 |goto 33.5,74.8
turnin Power of the Great Ones##12762 |goto 33.5,74.8
turnin Will of the Titans##12705 |goto 33.5,74.8
step
talk Oracle Soo-nee##29006
You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
turnin A Cleansing Song##12735 |goto 53.3,56.5
turnin Song of Fecundity##12737 |goto 53.3,56.5
turnin Song of Reflection##12736 |goto 53.3,56.5
turnin Song of Wind and Water##12726 |goto 53.3,56.5
step
talk High-Oracle Soo-say##28027
turnin Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
step
After you complete the dailies above, you will need to repeat them in order to attain Exalted.
Click here to go back to the start of the dailies guide.  Keep in mind that they will not be reset by clicking here. |confirm |next "daily"
|next "exalted" |only if rep('The Orcales')==Exalted
step
label "exalted"
Congratulations, you are now Exalted with The Oracles!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\The Sons of Hodir",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Sons of Hodir faction.",
},[[
step
Proceeding to Prequests next step |next |only if rep('The Sons of Hodir')<=Friendly
Proceeding to Honored Dailies |next "Daily2" |only if rep('The Sons of Hodir')==Honored
Proceeding to Revered Dailies |next "Daily3" |only if rep('The Sons of Hodir')==Revered
step
talk Jeer Sparksocket##29431
turnin Luxurious Getaway!##12853 |goto The Storm Peaks 41,86.4
accept Clean Up##12818 |goto 41,86.4
step
talk Smilin' Slirk Brassknob##29904
home K3 |goto 41.1,85.9
step
talk Gretchen Fizzlespark##29473
accept They Took Our Men!##12843 |goto 41.1,86.1
accept Equipment Recovery##12844 |goto 41.1,86.1
step
talk Ricket##29428
accept Reclaimed Rations##12827 |goto 40.9,85.3
accept Expression of Gratitude##12836 |goto 40.9,85.3
step
talk Skizzle Slickslide##29721
fpath K3 |goto 40.8,84.5
step
click Charred Wreckage##191535
collect 10 Charred Wreckage##40603 |q 12818/1 |goto 39.8,86.4
step
kill Savage Hill Scavenger##29404+, Savage Hill Brute##29623+
click Dried Gnoll Rations##191843
collect 16 Dried Gnoll Rations##40645 |q 12827/1 |goto 35,83.8
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
collect Sparksocket's Tools##40642 |q 12819/1 |goto 35.1,87.8
step
talk Jeer Sparksocket##29431
turnin Just Around the Corner##12819 |goto 41,86.4
accept Slightly Unstable##12826 |goto 41,86.4
step
talk Ricket##29428
turnin Slightly Unstable##12826 |goto 40.9,85.3
accept A Delicate Touch##12820 |goto 40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
|tip Garm Invaders and Snowblind Followers will run over the mines and die.
kill 12 Garm Attackers |q 12820/1 |goto 43.1,81.2
step
talk Tore Rumblewrench##29430
accept Moving In##12829 |goto 41.7,80
accept Ore Repossession##12830 |goto 41.7,80
step
click the U.D.E.D. Dispenser##191553
Retrieve a bomb from the dispenser
collect U.D.E.D.##40686 |q 12828 |goto 41.7,80
step
Use your U.D.E.D. on an Ironwool Mammoth |use U.D.E.D.##40686
|tip They walk around this area spread out.
click  Mammoth Meat##191567
collect 8 Hearty Mammoth Meat##40728 |q 12828/1 |goto 43.9,79.0
|tip Move quickly.
stickystart "crystalspider"
step
_Enter_ the cave |goto 40.4,77.8 < 10 |walk
talk Injured Goblin Miner##29434
accept Only Partly Forgotten##12831 |goto 41.5,74.9
step
kill Snowblind Diggers##29413
collect 5 Impure Saronite Ore##40744 |q 12830/1 |goto 44,75.9
step
kill Icetip Crawler##29461
collect 1 Icetip Venom Sac##40944 |q 12831/1 |goto 47.1,72.3
step
label "crystalspider"
kill 12 Crystalweb Spiders |q 12829/1
step
talk Injured Goblin Miner##29434
turnin Only Partly Forgotten##12831 |goto 43.5,75.2
accept Bitter Departure##12832 |goto 43.5,75.2
step
talk Injured Goblin Miner##29434
Tell the miner you're ready
Escort the Injured Goblin Miner to K3 |q 12832/1 |goto 43.5,75.2
step
kill Sifreldar Storm Maiden##29323+
collect 5 Cold Iron Key##40641 |n
click Rusty Cage##191544
Free 5 Goblin Prisoners |q 12843/1 |goto 39.8,73.3
click K3 Equipment##191568
collect 8 K3 Equipment##40726 |q 12844/1 |goto 39.8,73.3
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
accept Leave No Goblin Behind##12846 |goto 41.1,86.1
turnin Equipment Recovery##12844 |goto 41.1,86.1
step
click Transporter Power Cell##191576
collect Transporter Power Cell##40731 |q 12821/1 |goto 45.1,82.4
step
Use your Transporter Power Cell next to the Teleportation Pad |use Transporter Power Cell##40731
|tip It looks like a tall machine with a fan in the bottom of it.
Activate the Garm Teleporter |q 12821/2 |goto 50.7,81.9
step
talk Ricket##29428
turnin Cell Block Tango##12821 |goto 40.9,85.3
accept Know No Fear##12822 |goto 40.9,85.3
step
talk Gino##29432
accept A Flawless Plan##12823 |goto 50.0,81.8
stickystart "garmdevotee"
step
_Enter_ the cave
Use your Hardpacked Explosive Bundle next to Frostgut's Altar |use Hardpacked Explosive Bundle##41431
|tip It's a stone altar with a bunch of melted red candles on it. Follow the path in the cave that spirals up all the way to the top of the cave to find it.
kill Tormar Frostgut##29626 |q 12823/2 |goto 50.5,77.8
step
label "garmdevotee"
kill 6 Garm Watcher##29409+ |q 12822/1 |goto 48.1,81.9
kill 8 Snowblind Devotee##29407+ |q 12822/2 |goto 48.1,81.9
step
talk Gino##29432
|tip Leave the cave.
turnin A Flawless Plan##12823 |goto 50.0,81.8
accept Demolitionist Extraordinaire##12824 |goto 50.0,81.8
step
talk Lok'lira the Crone##29481
turnin Leave No Goblin Behind##12846 |goto 42.8,68.9
accept The Crone's Bargain##12841 |goto 42.8,68.9
step
kill Overseer Syra##29518
collect 1 Runes of the Yrkvinn##40690 |q 12841/1 |goto 44.2,68.9
step
talk Lok'lira the Crone##29481
turnin The Crone's Bargain##12841 |goto 42.8,68.9
accept Mildred the Cruel##12905 |goto 42.8,68.9
step
talk Mildred the Cruel##29885
turnin Mildred the Cruel##12905 |goto 44.4,68.9
accept Discipline##12906 |goto 44.4,68.9
step
Use your Disciplining Rod on Exhausted Vrykul |use Disciplining Rod##42837
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
Follow the path in the mine east out to the other side to
talk Lok'lira the Crone##29975
turnin A Change of Scenery##12921 |goto 47.5,69.1
accept Is That Your Goblin?##12969 |goto 47.5,69.1
step
Talk to Agnetta Tyrsdottar##30154
Tell her to skip the warmup
kill 1 Agnetta Tyrsdottar##30154 |q 12969/1 |goto 48.2,69.8
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
clicknpc Captive Proto-Drake##29708
Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard
|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
Rescue 9 Brunnhildar Prisoners |q 12856/1 |goto 63.9,62.5
Free 3 Proto-Drakes |q 12856/2 |goto 63.9,62.5
|tip Fly to this area.
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
Use your Reins of the Warbear Matriarch outside the building to ride a bear |invehicle |c |use Reins of the Warbear Matriarch##42481
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
Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Warbear Matriarch##42499
Use the abilities on your hotbar to fight Hyldsmeet Warbears
kill 6 Hyldsmeet Warbear##30174+ |q 12997/1 |goto 49.1,69.4
step
Click the red arrow to get off the bear|script VehicleExit() |outvehicle |c
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
Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake |use Hyldnir Harpoon##41058
kill Hyldsmeet Drakerider##29694+
Repeat this process 9 more times
Defeat 10 Hyldsmeet Drakeriders  |q 12886/1
step
They look like light fixtures on the side of the stone columns.
Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake |outvehicle |c |use Hyldnir Harpoon##41058
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
Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612
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
Click the red arrow to get off the gun |script VehicleExit() |outvehicle |c
step
talk Ricket##29428
turnin Demolitionist Extraordinaire##12824 |goto 40.9,85.3
turnin Know No Fear##12822 |goto 40.9,85.3
accept Overstock##12833 |goto 40.9,85.3
step
Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676
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
Use Thorim's Charm of Earth on the Stormforged Iron Giants |use Thorim's Charm of Earth##41505
Help the dwarves kill them
kill 5 Stormforged Iron Giant##29375+ |q 12915/2 |goto 75.8,63
collect Slag Covered Metal##41556 |q 12922 |future |n |goto 75.8,63
use Slag Covered Metal##41556
accept The Refiner's Fire##12922 |goto 75.8,63
step
kill Seething Revenant##29504+
collect 10 Furious Spark##41558|q 12922/1 |goto 75.4,63.5
step
click Granite Boulder##191815
Use Thorim's Charm of Earth on Fjorn |use Thorim's Charm of Earth##41505
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
clicknpc Snorri##30123
Ride Snorri |invehicle |q 12967 |goto 75.7,63.9
step
Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts |petaction Gather Snow
|tip The Snowdrifts look like piles of snow on the ground.
Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants |petaction Throw Snowball
kill 10 Seething Revenant##29504+ |q 12967/1 |goto 76.7,63.4
step
Click the red arrow on your hotbar to leave Snorri |outvehicle |q 12967
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
kill Brittle Revenant##30160+
collect 6 Essence of Ice##42246 |q 12981 |goto 69.7,60.2
step
Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246
click  Frozen Iron Scrap##192127
collect 6 Frozen Iron Scrap##42252 |q 12981/1 |goto 75.3,62.8
step
click Horn Fragment##192082
collect 8 Horn Fragment##42162 |q 12975/1 |goto 72.1,49.4
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
|tip If the Horn is not here, fly far from this area, then return and it should appear.
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
Use your Diamond Tipped Pick on Dead Iron Giants |use Diamond Tipped Pick##42424
kill Stormforged Ambusher##30208+
collect 8 Stormforged Eye##42423 |q 12985/1 |goto 69.7,58.9
step
talk Njormeld##30127
turnin Forging a Head##12985 |goto 63.2,63.2
accept Placing Hodir's Helm##12987 |goto 63.2,63.2
step
Fly to the tip of this ice spike
Use the Tablets of Pronouncement in your bags |use Tablets of Pronouncement##42442
Mount Hodir's Helm |q 12987/1 |goto 64.3,59.2
step
talk Njormeld##30127
turnin Placing Hodir's Helm##12987 |goto 63.2,63.2
step
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto 64.2,59.2
step
kill Viscous Oil##30325+
collect 5 Viscous Oil##42640|q 13006/1 |goto 55.6,63.4
Use your Everfrost Razor on Dead Icemaw Bears |use Everfrost Razor##42732
collect 1 Icemaw Bear Flank##42733 |q 13011 |goto 55.6,63.4
step
Follow the path inside the cave to this spot
Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it |use Icemaw Bear Flank##42733
kill 1 Jorcuttar##30340 |q 13011/1 |goto 54.7,60.8
step
talk Thorim##29445
turnin A New Beginning##13009 |goto 33.4,58
accept Veranus##13050 |goto 33.4,58
step
click Small Proto-Drake Egg##192536
collect 5 Small Proto-Drake Egg##42784 |q 13050/1 |goto 43.7,67.4
You can find more Small Proto-Drake Eggs at the following location: |goto 45.2,66.9
step
talk Thorim##29445
turnin Veranus##13050 |goto 33.4,58
accept Territorial Trespass##13051 |goto 33.4,58
step
Stand in this big nest
use the Stolen Proto-Dragon Eggs in your bags |use Stolen Proto-Dragon Eggs##42797
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
step
Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
Fight mobs around this area
kill 7 Iron Sentinel##29984+ |q 13005/1 |goto 57.3,46.7
kill 20 Iron Dwarf Assailant##29978+ |q 13005/2 |goto 57.3,46.7
step
_Enter_ the Hall of the Shaper |goto The Storm Peaks/0 57.1,44.2 < 10
Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
kill Eisenfaust##30341 |q 13035/1 |goto 55.3,43.3
step
Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
kill Halefnir the Windborn##30376 |q 13035/2 |goto 48.6,45.6
step
Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
kill Duronn the Runewrought##30353 |q 13035/3 |goto 45,38.1
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
accept When All Else Fails##12862 |goto 40.9,85.3
step
talk Ricket##29428
Tell her you are ready to head further into Storm Peaks |goto 40.9,85.3 < 5 |walk
You will fly to Frosthold |goto 28.6,74.6 < 10 |walk
talk Faldorf Bitterchill##29750
fpath Frosthold |goto 29.5,74.3
step
talk Archaeologist Andorin##29650
accept On Brann's Trail##12854 |goto 29.5,74.1
step
talk Lagnus##29743
accept Offering Thanks##12863 |goto 29.4,73.8
step
talk Rork Sharpchin##29744
turnin When All Else Fails##12862 |goto 28.8,74.1
accept Ancient Relics##12870 |goto 28.8,74.1
step
talk Gunda Boldhammer##29926
home Frosthold |goto The Storm Peaks 28.7,74.4
step
talk Glorthal Stiffbeard##29727
turnin Offering Thanks##12863 |goto 29.2,74.9
accept Missing Scouts##12864 |goto 29.2,74.9
step
talk Fjorlin Frostbrow##29732
accept Loyal Companions##12865 |goto 29.8,75.7
step
talk Frostborn Scout##29811
|tip High up on this frozen waterfall.
Ask him if he is okay
Locate the Missing Scout |q 12864/1 |goto 36.4,77.3
step
kill Vrykuls
Get 10 Relics of Ulduar |q 12870/1 |goto 46.5,68.3
step
kill Ice Steppe Rhino##29469+, Ice Steppe Bull##30445+ |n
collect 8 Fresh Ice Rhino Meat##41340 |q 12865 |goto 44.5,60.4
step
click Disturbed Snow##191708
collect Burlap-Wrapped Note##40947 |q 12854/1 |goto 36.1,64.1
step
Use your Fresh Ice Rhino Meat on Stormcrest Eagles at the top of this mountain |use Fresh Ice Rhino Meat##41340
Feed 8 Stormcrest Eagles |q 12865/1 |goto 33.2,73.7
step
talk Archaeologist Andorin##29650
turnin On Brann's Trail##12854 |goto 29.5,74.1
accept Sniffing Out the Perpetrator##12855 |goto 29.5,74.1
step
talk Rork Sharpchin##29744
turnin Ancient Relics##12870 |goto 28.8,74.1
step
talk Glorthal Stiffbeard##29727
turnin Missing Scouts##12864 |goto 29.2,74.9
accept Stemming the Aggressors##12866 |goto 29.2,74.9
step
talk Fjorlin Frostbrow##29732
turnin Loyal Companions##12865 |goto 29.8,75.7
accept Baby Stealers##12867 |goto 29.8,75.7
step
click Eagle Egg##244841
collect 15 Stormcrest Eagle Egg##41341 |q 12867/1 |goto 33,66.8
kill 8 Frostfeather Screecher##29792+ |q 12866/1 |goto 33,66.8
kill 8 Frostfeather Witch##29793+ |q 12866/2 |goto 33,66.8
step
Use the Frosthound's Collar in your bags next to this broken down tent |use Frosthound's Collar##41430
Use the abilities on your hotbar to keep the dwarves away from you
Track down the thief |q 12855/1 |goto 36.4,64.1
step
kill Tracker Thulin##29695 |q 12855/2 |goto 48.5,60.8
collect Brann's Communicator##40971|q 12871 |goto 48.5,60.8
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Sniffing Out the Perpetrator##12855
accept Pieces to the Puzzle##12858
step
kill Library Guardian##29724
collect 6 Inventor's Disk Fragment##41130 |n
Click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
collect The Inventor's Disk##41132 |q 12858/1 |goto 37.6,43.5
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Pieces to the Puzzle##12858
accept Data Mining##12860
step
Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179
|tip They look like floating round star things.
Gather 7 Hidden Data |q 12860/1 |goto 38.5,44.2
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Data Mining##12860
accept The Library Console##13415
step
click Inventor's Library Console##191760
turnin The Library Console##13415 |goto 37.4,46.8
accept Norgannon's Shell##12872 |goto 37.4,46.8
step
Click the Charged Disk in your bags |use Charged Disk##44704
kill Archivist Mechaton##29775
collect Norgannon's Shell##41258 |q 12872/1
step
Use Brann's Communicator in your bags |use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Norgannon's Shell##12872
accept Aid from the Explorers' League##12871
accept The Exiles of Ulduar##12885
step
talk Breck Rockbrow##29950
fpath Bouldercrag's Refuge |goto 30.6,36.3
step
Go inside the building to 31.4,38.1 |goto 31.4,38.1
talk Bouldercrag the Rockshaper##29801
turnin The Exiles of Ulduar##12885
accept Rare Earth##12930
step
talk Lagnus##29743
turnin Aid from the Explorers' League##12871 |goto 29.4,73.8
accept The Frostborn King##12873 |goto 29.4,73.8
step
talk Glorthal Stiffbeard##29727
turnin Stemming the Aggressors##12866 |goto 29.2,74.9
step
talk Fjorlin Frostbrow##29732
turnin Baby Stealers##12867 |goto 29.8,75.7
step
talk Yorg Stormheart##29593
turnin The Frostborn King##12873 |goto 30.31,74.8
accept Fervor of the Frostborn##12874 |goto 30.31,74.8
step
talk Fjorlin Frostbrow##29732 |goto 29.8,75.7 |walk
Tell him you are ready for your test |goto The Storm Peaks 53.5,35.1 < 10 |walk
click Battered Storm Hammer##192243
collect Battered Storm Hammer##42624 |q 12874 |goto 53.6,35.1
step
Use your Battered Storm Hammer on The Iron Watcher repeatedly |use Battered Storm Hammer##42624
While he is stunned, run away so the Hammer can recharge
When his health is low enough, he will run to the end of the bridge
Throw your hammer one last time and he will fall off
kill The Iron Watcher##30142 |q 12874/1 |goto 53.5,37.9
step
talk Yorg Stormheart##29593
turnin Fervor of the Frostborn##12874 |goto 30.31,74.8
accept An Experienced Guide##12875 |goto 30.31,74.8
step
talk Fjorlin Frostbrow##29732
accept Unwelcome Guests##12876 |goto 29.8,75.7
step
_Follow_ the path |goto The Storm Peaks 27.0,66.9 < 5
kill 10 Stormforged Invaders |q 12876/1 |goto 26.3,66.7
kill Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
collect 5 Frostweave Cloth##33470 |q 12930/2 |goto 26.3,66.7
step
talk Drom Frostgrip##29751
turnin An Experienced Guide##12875 |goto 25.2,68.5
accept The Lonesome Watcher##12877 |goto 25.2,68.5
step
kill the Stormforged Monitor##29862
collect Frostgrip's Signet Ring##41393 |q 12877/1 |goto 27.1,67.3
step
talk Creteus##30052
turnin The Lonesome Watcher##12877 |goto 39.6,59.8
accept Fate of the Titans##12986 |goto 39.6,59.8
step
Use Creteus's Mobile Databank at the top of this temple |use Creteus's Mobile Databank##42679
Investigate the Temple of Winter |q 12986/2 |goto 52.6,56.9
step
Use Creteus's Mobile Databank in this broken temple |use Creteus's Mobile Databank##42679
Investigate the Temple of Life |q 12986/3 |goto 64.3,46.7
step
Use Creteus's Mobile Databank Databank at the top of this temple |use Creteus's Mobile Databank##42679
Investigate the Temple of Order |q 12986/4 |goto 53.5,42.3
step
Use Creteus's Mobile Databank Databank at the top of this temple |use Creteus's Mobile Databank##42679
Investigate the Temple of Invention |q 12986/1 |goto 45.6,49.2
step
talk Creteus##30052
turnin Fate of the Titans##12986 |goto 39.6,59.8
accept The Hidden Relic##12878 |goto 39.6,59.8
step
_Follow_ the path to The Hidden Relic |goto The Storm Peaks 41.5,62.1 < 5 |walk
click The Guardian's Charge##192076
turnin The Hidden Relic##12878 |goto 44.5,64.5
accept Fury of the Frostborn King##12879 |goto 44.5,64.5
step
talk Creteus##30052
turnin Fury of the Frostborn King##12879 |goto 38.2,61.7
accept The Master Explorer##12880 |goto 38.2,61.7
step
talk Brann Bronzebeard##29579
turnin The Master Explorer##12880 |goto 39.6,56.4
accept The Brothers Bronzebeard##12973 |goto 39.6,56.4
step
clicknpc Brann's Flying Machine##30134
kill the dwarves that jump on the plane as you fly |n
Accompany Brann Bronzebeard to Frosthold |q 12973/1
step
talk Velog Icebellow##30401
turnin The Brothers Bronzebeard##12973 |goto 30.3,74.8
step
talk Fjorlin Frostbrow##29732
turnin Unwelcome Guests##12876 |goto 29.8,75.7
accept Pushed Too Far##12869 |goto 29.8,75.7
step
Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
kill 16 Stormpeak Wyrm##29753+ |q 12869/1 |goto 44.6,59.8
step
Click the red arrow on your hotbar to get off the eagle |script VehicleExit()
talk Fjorlin Frostbrow##29732
turnin Pushed Too Far##12869 |goto 29.8,75.7
step
click Enchanted Earth##191845
collect 7 Enchanted Earth##41614|q 12930/1 |goto 28.3,29.4
step
talk Bouldercrag the Rockshaper##29801
turnin Rare Earth##12930 |goto 31.4,38.1
accept Fighting Back##12931 |goto 31.4,38.1
accept Relief for the Fallen##12937|goto 31.4,38.1
step
talk Magorn##29963
home Bouldercrag's Refuge |goto The Storm Peaks 30.9,37.3
step
kill Stormforged Raider##29377+, Stormforged Reaver##29382+
kill 10 Stormforged Attacker|q 12931/1 |goto 28.1,36.7
Use your Telluric Poultice on Fallen Earthen Defenders|use Telluric Poultice##41988
Heal 8 Fallen Earthen Defenders |q 12937/1 |goto 28.1,36.7
step
talk Bouldercrag the Rockshaper##29801
turnin Fighting Back##12931 |goto 31.4,38.1
turnin Relief for the Fallen##12937 |goto 31.4,38.1
accept Slaves of the Stormforged##12957 |goto 31.4,38.1
accept The Dark Ore##12964 |goto 31.4,38.1
step
kill 3 Stormforged Taskmaster##29369+ |q 12957/2 |goto 27.5,49.7
talk Captive Mechagnome##29384
Attempt to free 8 Captive Mechagnomes |q 12957/1 |goto 27.5,49.7
clicknpc Ore Cart##25986
collect 5 Dark Ore Sample##42109|q 12964/1 |goto 27.5,49.7
step
talk Bouldercrag the Rockshaper##29801
turnin Slaves of the Stormforged##12957 |goto 31.4,38.1
turnin The Dark Ore##12964 |goto 31.4,38.1
accept The Gifts of Loken##12965 |goto 31.4,38.1
step
talk Bruor Ironbane##30152
accept Facing the Storm##12978 |goto 31.3,38.2
stickystart "stormforged"
step
click Loken's Fury##192120
Destroy Loken's Fury |q 12965/1 |goto 24,42.6
step
click Loken's Power##192121
Destroy Loken's Power |q 12965/2 |goto 26.2,47.7
step
click Loken's Favor##192122
Destroy Loken's Favor |q 12965/3 |goto 24.6,48.4
step
label "stormforged"
kill Stormforged Champion##29370+, Stormforged Magus##29374+
kill 10 Nidavelir Stormforged|q 12978/1 |goto 25,42.9
kill Stormforged War Golem##29380+
collect 1 Dark Armor Plate##42203|n |goto 25,42.9
Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
accept Armor of Darkness##12979 |goto 25,42.9
step
kill Stormforged War Golem##29380+
collect 4 Dark Armor Sample##42204 |q 12979/1 |goto 28.7,43.3
step
talk Bouldercrag the Rockshaper##29801
turnin The Gifts of Loken##12965 |goto 31.4,38.1
step
talk Bruor Ironbane##30152
turnin Facing the Storm##12978 |goto 31.3,38.2
turnin Armor of Darkness##12979 |goto 31.3,38.2
accept The Armor's Secrets##12980 |goto 31.3,38.2
step
_Enter_ Mimir's Workshop |goto 33.6,39.6 < 5 |walk
talk Attendant Tock##30190
Tell him you found a strange armor plate
Investigate the Armor Plate |q 12980/1 |goto 32.0,40.7
step
Leave Mimir's Workshop |goto 33.6,39.6 < 10 |walk
talk Bruor Ironbane##30152
turnin The Armor's Secrets##12980 |goto 31.3,38.2
step
talk Bouldercrag the Rockshaper##29801
accept Valduran the Stormborn##12984 |goto 31.4,38.1
step
Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
Help fight Valduran the Stormborn
kill Valduran the Stormborn##29368 |q 12984/1 |goto 24.4,52.1
step
talk Bouldercrag the Rockshaper##29801
turnin Valduran the Stormborn##12984 |goto 31.4,38.1
accept Destroy the Forges!##12988 |goto 31.4,38.1
step
talk Bruor Ironbane##30152
accept Hit Them Where it Hurts##12991 |goto 31.3,38.2
stickystart "stormart"
step
Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
Damage the North Lightning Forge |q 12988/1 |goto 29.0,45.8
step
Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
Damage the Central Lightning Forge |q 12988/2 |goto 29.5,45.9
step
Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441
|tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
Damage the South Lightning Forge |q 12988/3 |goto 30.2,46.1
step
label "stormart"
kill 10 Stormforged Artificer##29376 |q 12991/1 |goto 30.0,46.3
step
talk Bouldercrag the Rockshaper##29801
turnin Destroy the Forges!##12988 |goto 31.4,38.1
step
talk Bruor Ironbane##30152
turnin Hit Them Where it Hurts##12991 |goto 31.3,38.2
step
talk Bouldercrag the Rockshaper##29801
accept A Colossal Threat##12993 |goto 31.4,38.1
step
click Colossus Attack Specs##192171
collect Colossus Attack Specs##42475 |q 12993/1 |goto 28.9,44.1
step
click Colossus Defense Specs##192172
collect Colossus Defense Specs##42476 |q 12993/2 |goto 29.9,45.8
step
talk Bouldercrag the Rockshaper##29801
turnin A Colossal Threat##12993 |goto 31.4,38.1
accept The Heart of the Storm##12998 |goto 31.4,38.1
step
_Enter_ the big round metal door |goto 32.4,63.9 < 10 |walk
|tip It's a big metal hole on in the side of the mountain.
click Heart of the Storm##7800
Attempt to Secure the Heart of the Storm |q 12998/1 |goto 36.2,60.9
step
Go outside |goto 32.4,63.9 < 10 |walk
talk Bouldercrag the Rockshaper##29801
turnin The Heart of the Storm##12998 |goto 31.4,38.1
accept The Iron Colossus##13007 |goto 31.4,38.1
step
click Jormungar Control Orb##192262
Start controlling a Jormungar |invehicle |c |q 13007 |goto 27.2,35.9
step
In order to move as the Jormungar, use the Submerge ability on your hotbar. When you want to come back up to the surface, use the Emerge ability while submerged underground.
kill Iron Colossus##30300 |q 13007/1 |goto 27.2,42.0
|tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
step
Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
step
talk Bouldercrag the Rockshaper##29801
turnin The Iron Colossus##13007 |goto 31.4,38.1
step
label "Daily"
click Hodir's Helm##192080
accept A Viscious Cleaning##13006 |goto The Storm Peaks 64.2,59.2
step
talk Lorekeeper Randvir##30252
accept Forging Hodir's Spear##13001 |goto The Storm Peaks 64.8,59.1
only if rep ('The Sons of Hodir')>=Honored
step
click Fjorn's Anvil##192071
accept Hot and Cold##12981 |goto 63.2,62.9
step
click Hodir's Horn##192078
accept Hodir's Call##12977 |goto 64.1,65.1
step
kill Viscous Oil##30325+
collect 5 Viscous Oil##42640 |q 13006/1 |goto 55.6,63.4
step
kill Stoic Mammoth##30260+
collect 3 Stoic Mammoth Hide##42542 |q 13001/2 |goto 59.0,61.2
only if rep ('The Sons of Hodir')>=Honored
step
The entrance to the cave starts here |goto 55.9,64.2 < 10 |walk
click Everfrost Shard##192191
collect 3 Everfrost Shard##42541 |q 13001/1 |goto 54.7,60.8
only if rep ('The Sons of Hodir')>=Honored
step
_Leave_ the cave |goto 55.9,64.2 < 10 |walk
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
If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently
You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect
If you don't want to do this, skip this step
kill Scion of Storm##30184+
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
|tip This is a repeatable quest, turn in all of your Relics of Ulduar.
step
Click here to reset the daily quests |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
Become honored with The Sons of Hodir |complete rep('The Sons of Hodir')>=Honored |next "Daily2"
step
label "Daily2"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks 63.5,59.8
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
stickystart "viscousoil"
step
Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
Repeat this process 2 more times
kill 3 Stormforged Infiltrators##30222+ |q 12994/1 |goto 57.2,64.0
step
Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
While fighting the Wild Wyrm, there will be 2 phases to the fight
Phase 1:
You will be underneath the Wild Wyrm. Use your Grab On ability to keep your grip high, or you will fall off and die
Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack
When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that
Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
label "viscousoil"
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
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster
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
In order to repeat these daily quests, click here to reset the daillies |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
Become Revered with The Sons of Hodir |complete rep('The Sons of Hodir')>=Revered |next "Daily3"
step
label "Daily3"
talk Frostworg Denmother##30294
accept Spy Hunter##12994 |goto The Storm Peaks 63.5,59.8
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
stickystart "viscousoil2"
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
While fighting the Wild Wyrm, there will be 2 phases to the fight
Phase 1:
You will be underneath the Wild Wyrm
Use your Grab On ability to keep your grip high, or you will fall off and die
Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack
When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that
Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins
In phase 2 of the fight with the Wild Wyrm, the strategy changes:
|tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
Kill the Wild Wyrm |q 13003/1 |goto 56.6,64.3
step
label "viscousoil2"
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
kill Scion of Storm##30184+
|tip They are air elementals all around inside this big cave.
You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster
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
|tip This is a repeatable quest. Turn in all of your Relics of Ulduar.
step
To restart the Hodir daily quests, click here. |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Revered
Become Exalted with The Sons of Hodir |complete rep('The Sons of Hodir')==Exalted |next "Exalted"
step
label "Exalted"
Congratulations, you are now Exalted with the Sons of Hodir!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\The Wyrmrest Accord",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Wyrmrest Accord faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Wyrmrest Accord') < Exalted end,
achieveid={1007},
patch='30008',
},[[
step
talk Raelorasz##26117
accept Basic Training##11918 |goto Borean Tundra,33.3,34.5
step
kill 10 Coldarra Spellweaver##25722+ |q 11918/1 |goto Borean Tundra,24.3,34.1
|tip You can find them all around Coldarra.
step
kill Coldarra Spellbinder##25719+
collect 1 Scintillating Fragment##35648 |n
Click the Scintillating Fragment in your bags|use Scintillating Fragment##35648
accept Puzzling...##11941 |goto 32.7,29
step
talk Raelorasz##26117
turnin Basic Training##11918 |goto 33.3,34.5
accept Hatching a Plan##11936 |goto 33.3,34.5
turnin Puzzling...##11941 |goto 33.3,34.5
accept The Cell##11943 |goto 33.3,34.5
stickystart "frozenaxe"
step
kill Warbringer Goredrak##25712
collect Energy Core##35669|q 11943/1 |goto 24.1,29.6
step
label "frozenaxe"
kill Coldarra Wyrmkin##25728+
collect 5 Frozen Axe##35586 |goto 24.1,29.6
step
kill General Cerulean##25716
collect Prison Casing##35668|q 11943/2 |goto 27.3,20.5
step
click Blue Dragon Egg##188133
Destroy 5 Dragon Eggs |q 11936/1 |goto 27.8,24.2
step
talk Raelorasz##26117
turnin Hatching a Plan##11936 |goto 33.3,34.5
accept Drake Hunt##11919 |goto 33.3,34.5
turnin The Cell##11943 |goto 33.3,34.5
step
Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506
|tip They are flying above you in the sky.
Do not kill it, let it hit you until it becomes friendly |havebuff 134155 |q 11919 |goto 24.6,27.1 |c
step
Capture the Nexus Drake |q 11919/1 |goto 33.3,34.5
talk Raelorasz##26117
turnin Drake Hunt##11919 |goto 33.3,34.5
accept Cracking the Code##11931 |goto 33.3,34.5
step
Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
talk Keristrasza##26237
accept Keristrasza##11946
turnin Keristrasza##11946
accept Bait and Switch##11951
stickystart "crystallizedmana"
step
kill Coldarra Spellbinder##25719+
collect 3 Shimmering Rune##35629|q 11931/1 |goto 32.7,29
step
kill Inquisitor Caleras##25720
collect Azure Codex##35628|q 11931/2 |goto 32.7,27.8
step
label "crystallizedmana"
click Crystallized Mana##188140
collect 10 Crystallized Mana Shard##35685|q 11951/1 |goto 28.8,30.0
step
Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
talk Keristrasza##26237
turnin Bait and Switch##11951
accept Saragosa's End##11957
step
Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
talk Keristrasza##26206
Tell her you are ready to face Saragosa |goto 21.2,22.5 < 10
She teleports you to a platform
Use the Arcane Power Focus in your bags |use Arcane Power Focus##35690
kill Saragosa##26231
collect Saragosa's Corpse##35709|q 11957/1
step
Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
talk Keristrasza##26206
turnin Saragosa's End##11957
accept Mustering the Reds##11967
step
Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
talk Keristrasza##26206
Tell her to return you to Transitus Shield |goto 33.3,34.4 < 10
talk Raelorasz##26117
turnin Cracking the Code##11931 |goto 33.3,34.5
turnin Mustering the Reds##11967 |goto 33.3,34.5
accept Springing the Trap##11969 |goto 33.3,34.5
step
Use Raelorasz' Spark next to the Signal Fire |use Raelorasz' Spark##44950
Watch the cutscene
Lure Malygos |q 11969/1 |goto 25.4,21.7
step
talk Raelorasz##26117
turnin Springing the Trap##11969 |goto 33.3,34.5
step
talk Warmage Kaitlyn##55531
accept Prisoner of War##11973 |goto The Nexus 36.2,81.4
step
kill Keristrasza##26206 |q 11973/1
|tip She's at the center of the Nexus. You won't be able to activated her until you kill the other bosses of The Nexus.
step
talk Warmage Kaitlyn##55531
turnin Prisoner of War##11973 |goto 36.2,81.4
step
accept The Struggle Persists##13124 |goto The Oculus/1 64.0,39.2
|tip This quest should automatically appear and be accepted after entering The Oculus.
step
Fight the mobs up until this point, and click the Nexus Portal |goto The Oculus/1 38.6,51.3
confirm
step
kill Drakos the Interrogator##27654
talk Belgaristrasz##27658
|tip You will only be able to talk to him after Drakos is dead.
turnin The Struggle Persists##13124
accept A Unified Front##13126
step
Talk to either Eternos, Belgaristrasz or Verdisa and get a Dragon Essence.
|tip You will only be able to get one type of Dragon Essence.
Click the Ruby Essence in your bags |use Ruby Essence##37860
Click the Emerald Essence in your bags |use Emerald Essence##37815
Click the Amber Essence in your bags |use Amber Essence##37859
Click here to proceed |confirm |q 13126
step
You will need to kill 10 Constructs to proceed
You can find them on the platforms above you
You also need to kill constructs at the center ring
Once you've killed all constructs, click here to continue |confirm |q 13126
step
kill Varos Cloudstrider##27447 |q 13126/2
Once you kill him Belgaristrasz appears
talk Image of Belgaristrasz##28012
turnin A Unified Front##13126
accept Mage-Lord Urom##13127
step
Click the Ruby Essence in your bags |use Ruby Essence##37860
Click the Emerald Essence in your bags |use Emerald Essence##37815
Click the Amber Essence in your bags |use Amber Essence##37859
Fly up another level to the ring above
|confirm |q 13126
step
Kill Mage-Lord Urom on all 3 platforms
Once you kill the Fake Mage-Lord Urom, fly to the center
kill Mage-Lord Urom##27655 |q 13127/1
step
talk Image of Belgaristrasz##28012
turnin Mage-Lord Urom##13127
accept A Wing and a Prayer##13128
step
Click the Ruby Essence in your bags |use Ruby Essence##37860
Click the Emerald Essence in your bags |use Emerald Essence##37815
Click the Amber Essence in your bags |use Amber Essence##37859
Fly up to the top of the construct
Once there, click here to continue |confirm |q 13126
step
Once at the top, use your dragons abilities to kill Ley-Guardian Eregos
kill Ley-Guardian Eregos##27656 |q 13128/1
step
talk Raelorasz##26117
turnin A Wing and a Prayer##13128 |goto Borean Tundra 33.3,34.5
step
talk Librarian Serrah##26110
accept Corastrasza##13412 |goto Borean Tundra 33.5,34.4
step
|tip You will have to fly up pretty high to the floating platforms.
talk Corastrasza##32548
turnin Corastrasza##13412 |goto 29.5,24.8
accept Aces High!##13413 |goto 29.5,24.8
step
Tell Corastrasza you have the courage to face Malygos drakes
She will give you a Wyrmrest Skytalon to ride
Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
Target a Scalesworn Elite flying above Corastrasza
To cause damage, stack Flamestrike five times, then use Engulf in Flames
To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst
Keep Revivify up while Life Burst is in use
Be ready to cast Flame Shield if they cast Arcane Surge
kill 5 Scalesworn Elite##32534 |q 13413/1
step
Click the red arrow on your action bar to get off the Wyrmrest Skytalon |script VehicleExit() |outvehicle |c |goto 29.5,24.8
step
talk Corastrasza##32548
turnin Aces High!##13413 |goto 29.5,24.8
step
talk Image of Archmage Modera##26673
accept Rifle the Bodies##12000 |goto Dragonblight 29,55.5
step
_Enter_ the cave |goto 22.3,54.1 |walk
Loot the Dead Mage Hunters around the area
collect Mage Hunter Personal Effects##35792+ |n
Open the Mage Hunter Personal Effects bags |use Mage Hunter Personal Effects##35792
collect Moonrest Gardens Plans##35783 |q 12000/1
step
talk Image of Archmage Modera##26673
turnin Rifle the Bodies##12000 |goto 29,55.5
accept Prevent the Accord##12004 |goto 29,55.5
step
Go inside the building |goto 19.4,58.1
kill Goramosh##26349
collect The Scales of Goramosh##35801 |q 12004/2
collect Goramosh's Strange Device##36742 |n
Click Goramosh's Strange Device |use Goramosh's Strange Device##36742
accept A Strange Device##12055
step
talk Image of Archmage Modera##26673
turnin A Strange Device##12055 |goto 29,55.5
accept Projections and Plans##12060 |goto 29,55.5
step
Use your Surge Needle Teleporter |use Surge Needle Teleporter##36747
Walk around on the platform you get teleported onto
Observe the Object on the Surge Needle |q 12060/1 |goto 24.2,55.6
step
Use your Surge Needle Teleporter to go back down to the ground |goto Dragonblight 22.6,57.0,1.0 |use Surge Needle Teleporter##36747|noway|c |q 12060
step
talk Image of Archmage Modera##26673
turnin Projections and Plans##12060 |goto 29,55.5
accept The Focus on the Beach##12065 |goto 29,55.5
step
kill Captain Emmy Malin##26762
collect Ley Line Focus Control Ring##36751 |n
Use the Ley Line Focus Control Ring next to the half-circle |use Ley Line Focus Control Ring##36751
|tip It's a big half-circle purple glowing thing.
Retrieve ley line focus information |q 12065/1 |goto 26.4,65
step
talk Image of Archmage Modera##26673
turnin The Focus on the Beach##12065 |goto 29,55.5
accept Atop the Woodlands##12083 |goto 29,55.5
step
kill Lieutenant Ta'zinni##26815
|tip He walks in a circle around the half-circle purple glowing thing.
collect Ley Line Focus Control Amulet##36779 |q 12083 |goto 32.2,70.6
step
Use your Ley Line Focus Control Amulet on the Ley Line Focus |use Ley Line Focus Control Amulet##36779
|tip It's a big half-circle purple glowing thing.
Retrieve ley line focus information |q 12083/1 |goto 32.2,71.2
step
talk Image of Archmage Modera##26673
turnin Atop the Woodlands##12083 |goto 29,55.5
accept Search Indu'le Village##12098 |goto 29,55.5
step
clicknpc Mage-Commander Evenstar##26873
|tip His body is floating underwater here.
turnin Search Indu'le Village##12098 |goto 40.3,66.9
accept The End of the Line##12107 |goto 40.3,66.9
step
Use your Ley Line Focus Control Talisman on the Ley Line Focus |use Ley Line Focus Control Talisman##36815
|tip It's a big half-circle purple glowing thing underwater.
Retrieve ley line focus information |q 12107/1 |goto 39.8,66.9
step
Go to this spot on the cliff to Observe Azure Dragonshrine |q 12107/2 |goto 53,66.4
step
talk Image of Archmage Modera##26673
turnin The End of the Line##12107 |goto 29,55.5
accept Gaining an Audience##12119 |goto 29,55.5
step
talk Tariolstrasz##26443
turnin Gaining an Audience##12119 |goto 57.9,54.2
accept Speak with your Ambassador##12766 |goto 57.9,54.2
step
talk Lauriel Trueblade##27803
turnin Speak with your Ambassador##12766 |goto 60,55.1
accept Report to the Ruby Dragonshrine##12460 |goto 60,55.1
step
talk Ceristrasz##27506
turnin Report to the Ruby Dragonshrine##12460 |goto 52.2,50
accept Heated Battle##12416 |goto 52.2,50
step
Help kill the following:
12 Frigid Ghoul Attackers |kill 12 Frigid Ghoul Attacker |q 12416/1 |goto 52.7,46.2
8 Frigid Geist Attackers |kill 8 Frigid Geist Attacker |q 12416/2 |goto 52.7,46.2
1 Frigid Abomination Attacker |kill 1 Frigid Abomination Attacker |q 12416/3 |goto 52.7,46.2
You can find more of these at the following location: |goto 50.9,52.4
step
talk Ceristrasz##27506
turnin Heated Battle##12416 |goto 52.2,50
accept Return to the Earth##12417 |goto 52.2,50
step
click Ruby Acorn##189992
collect 6 Ruby Acorn##37727 |n |goto 46.7,52.8
Use the Ruby Acorns on the Ruby Keeper corpses |use Ruby Acorn##37727
|tip The Ruby Keepers look like huge red dragons on fire.
Return 6 Ruby Keepers to the Earth |q 12417/1 |goto 46.7,52.8
step
talk Ceristrasz##27506
turnin Return to the Earth##12417 |goto 52.2,50
accept Through Fields of Flame##12418 |goto 52.2,50
step
_Enter_ the valley |goto 48.2,47.8
kill 6 Frigid Necromancer##27539+ |q 12418/1
step
_Enter_ the tree trunk
kill Dahlia Suntouch##27680
Cleanse the Ruby Corruption |q 12418/2 |goto Dragonblight 47.6,49
collect Ruby Brooch##37833|n
Click the Ruby Brooch in your bags |use Ruby Brooch##37833
accept The Fate of the Ruby Dragonshrine##12419
step
talk Ceristrasz##27506
turnin Through Fields of Flame##12418 |goto 52.2,50
accept The Steward of Wyrmrest Temple##12768 |goto 52.2,50
step
talk Tariolstrasz##26443
turnin The Steward of Wyrmrest Temple##12768 |goto 57.9,54.2
accept Informing the Queen##12123 |goto 57.9,54.2
step
talk Tariolstrasz##26443
Tell him you need to go to the top of the temple |goto Dragonblight 59.7,53.1 < 10
talk Alexstrasza the Life-Binder##26917
turnin Informing the Queen##12123 |goto 59.8,54.7
accept Report to Lord Devrestrasz##12435 |goto 59.8,54.7
step
talk Lord Devrestrasz##27575
turnin Report to Lord Devrestrasz##12435 |goto 59.2,54.3
accept Defending Wyrmrest Temple##12372 |goto 59.2,54.3
step
talk Wyrmrest Defender##27629
Tell him you are ready to get into the fight
Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
kill 3 Azure Dragon##27608+ |q 12372/1 |goto 58.3,55.2
kill 5 Azure Drake##27682+ |q 12372/2 |goto 58.3,55.2
step
Fly into the huge purple swirling column
Use your Destabilize Azure Dragonshrine ability |petaction Destabilize Azure Dragonshrine
Destabilize the Azure Dragonshrine |q 12372/3 |goto 55.1,66.4
step
talk Lord Devrestrasz##27575
turnin Defending Wyrmrest Temple##12372 |goto 59.2,54.3
step
Follow the fleeing kobolds
kill Chilltusk##27005
collect Emblazoned Battle Horn##36854 |n
Click the Emblazoned Battle Horn |use Emblazoned Battle Horn##36855
accept Disturbing Implications##12146 |goto 72.5,29.2
step
talk Aurastrasza##26983
turnin Disturbing Implications##12146 |goto 60,55.1
accept One of a Kind##12148 |goto 60,55.1
step
kill Bonesunder##27006
collect Emblazoned Battle Horn##36854 |q 12148/1 |goto 50.0,60.0
step
talk Aurastrasza##26983
turnin One of a Kind##12148 |goto 60,55.2
accept Mighty Magnataur##12149 |goto 60,55.2
step
He patrols around this area
Search along the canyon until you find him
kill Bloodfeast##27008 |q 12149/2 |goto 66.3,70.5
step
kill Iceshatter##27007 |q 12149/1 |goto 68.4,50.5
step
kill Drakegore##27009 |q 12149/3 |goto 68.0,37.7
step
talk Aurastrasza##26983
turnin Mighty Magnataur##12149 |goto 60,55.2
accept Reclusive Runemaster##12150 |goto 60,55.2
step
Fight with Dregmar Runebrand until he reveals the name of the Magnataur Warlord
Name of the Magnataur Warlord revealed |q 12150/1 |goto 72.8,49.9
step
talk Aurastrasza##26983
turnin Reclusive Runemaster##12150 |goto 60,55.2
accept Wanton Warlord##12151 |goto 60,55.2
step
Use the Emblazoned Battle Horn at this location |use Emblazoned Battle Horn##36864
kill Grom'thar the Thunderbringer##27002
collect Grom'thar's Head##36853 |q 12151/1 |goto Dragonblight 57.1,76.2
step
talk Aurastrasza##26983
turnin Wanton Warlord##12151 |goto 60,55.2
step
talk Chromie##27856
accept Mystery of the Infinite##12470 |goto 60,54.5
step
talk Nalice##27765
accept The Obsidian Dragonshrine##12447 |goto 60.1,54.2
step
Use your Hourglass of Eternity anywhere around this area |use Hourglass of Eternity##37923
Fight the mobs that spawn
Protect the Hourglass of Eternity |q 12470/1 |goto 71.7,38.9
step
_Enter_ the cave
talk Serinar##26593
turnin The Obsidian Dragonshrine##12447 |goto 35.2,30.0
accept No One to Save You##12262 |goto 35.2,30.0
accept No Place to Run##12261 |goto 35.2,30.0
step
_Leave_ the cave
kill 6 Burning Depths Necrolyte##27356+ |q 12262/1 |goto 37.9,32.0
kill 10 Smoldering Skeleton##27360+ |q 12262/2 |goto 37.9,32.0
step
Use your Destructive Wards in this spot |use Destructive Wards##37445
Defend the Destructive Ward from the mobs that spawn
Fully Charge the Destructive Ward |q 12261/1 |goto 42.1,32
step
_Enter_ the cave
talk Serinar##26593
turnin No One to Save You##12262 |goto 35.2,30.0
turnin No Place to Run##12261 |goto 35.2,30.0
accept The Best of Intentions##12263 |goto 35.2,30.0
step
Uncover the Magmawyrm Resurrection Chamber |q 12263/1 |goto 31.8,30.5
step
talk Serinar##26593
turnin The Best of Intentions##12263 |goto 35.2,30.0
accept Culling the Damned##12264 |goto 35.2,30.0
accept Defiling the Defilers##12265 |goto 35.2,30.0
step
_Enter_ the cave
kill 3 Burning Depths Necromancer##27358+ |q 12264/1 |goto 34.2,26.8
kill 6 Smoldering Construct##27362+ |q 12264/2 |goto 34.2,26.8
kill 6 Smoldering Geist##27363+ |q 12264/3 |goto 34.2,26.8
click Necromantic Rune##188695
|tip The Necromantic Runes look like round purple symbols on the ground around this area in the cave.
Destroy 8 Necromantic Runes |q 12265/1 |goto 34.2,26.8
step
talk Serinar##26593
turnin Culling the Damned##12264 |goto 35.2,30.0
turnin Defiling the Defilers##12265 |goto 35.2,30.0
accept Neltharion's Flame##12267 |goto 35.2,30.0
step
Use Neltharion's Flame to Cleanse the Summoning Area |use Neltharion's Flame##37539
|tip Stand on the edge of the rock, next to the lava.
kill Rothin the Decaying##27355 |q 12267/2 |goto 31.6,31.2
step
talk Serinar##26593
turnin Neltharion's Flame##12267 |goto 35.2,30.0
accept Tales of Destruction##12266 |goto 35.2,30.0
step
talk Tariolstrasz##26443 |goto 57.9,54.2 < 10 |walk
Tell him you want to go to the top of the temple |goto 59.7,53.1 < 10 |walk
talk Nalice##27765
turnin Tales of Destruction##12266 |goto 60.1,54.2
step
talk Chromie##27856
turnin Mystery of the Infinite##12470 |goto 60,54.5
step
talk Lord Itharius##27785
accept Seeds of the Lashers##12458 |goto 59.6,54.4
step
kill Emerald Lasher##27254+
collect 3 Lasher Seed##140458 |q 12458/1 |goto 63.3,71
step
talk Nishera the Garden Keeper##27255
accept Cycle of Life##12454 |goto 63.7,71.9
step
kill 5 Emerald Skytalon##27244+ |q 12454/1 |goto 63.8,72.4
|tip They fly around over your head around the lake.
step
talk Nishera the Garden Keeper##27255
turnin Cycle of Life##12454 |goto 63.7,71.9
accept The Plume of Alystros##12456 |goto 63.7,71.9
step
Use Skytalon Molts at this spot |use Skytalon Molts##37881
kill Alystros the Verdant Keeper##27249
collect The Plume of Alystros##37880 |q 12456/1 |goto Dragonblight 64.6,77.2
step
talk Nishera the Garden Keeper##27255
turnin The Plume of Alystros##12456 |goto 63.7,71.9
step
talk Lord Itharius##27785
turnin Seeds of the Lashers##12458 |goto 59.6,54.4
accept That Which Creates Can Also Destroy##12459 |goto 59.6,54.4
step
talk Torastrasza##26949 |goto 59.5,53.3 < 10
Tell him you want to go to the ground level of the temple |goto 58.0,55.2 < 10
step
Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it |use Seeds of Nature's Wrath##37887
|tip They fly around in the sky.
kill Weakened Reanimated Frost Wyrm##27821 |q 12459/1 |goto 55.2,45.7
step
Use your Seeds of Nature's Wrath on a Turgid the Vile to weaken him |use Seeds of Nature's Wrath##37887
|tip He's an abomination standing in a small room inside this abandoned fort.
kill Weakened Turgid the Vile##27809 |q 12459/2 |goto 86.2,47
step
Use your Seeds of Nature's Wrath on Overseer Deathgaze to weaken him|use Seeds of Nature's Wrath##37887
|tip He's standing on an undead looking platform.
kill Weakened Overseer Deathgaze##27807 |q 12459/3 |goto 89.5,19.1
step
talk Lord Itharius##27785
turnin That Which Creates Can Also Destroy##12459 |goto 59.6,54.4
step
talk Krasus##27990
turnin The Fate of the Ruby Dragonshrine##12419 |goto 59.8,54.7
step
At this point, you will need to buy the tabard from the vendor in Dragonblight
confirm
step
talk Cielstrasza##32533
buy Tabard of the Wyrmrest Accord##43156 |goto Dragonblight 59.9,53.0
step
Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep
Wear the Tabard of the Wyrmrest Accord in order to earn reputation while you clear the instance |use Tabard of the Wyrmrest Accord##43156
Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons
Become Exalted with The Wyrmrest Accord |complete rep('The Wyrmrest Accord')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with The Wyrmrest Accord!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Avengers of Hyjal",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Avengers of Hyjal faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Avengers of Hyjal') < Exalted end,
},[[
step
label "start"
This reputation can be gained by running the Firelands raid.
A full run will grant roughly 2400 reputation.
|confirm
step
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
Enter the Firelands here |goto Mount Hyjal 47.2,78.1 < 5 |walk
step
Kill every creature that is hostile in this instance in order to gain reputation.
|tip This will only work until you reach Honored, after that only bosses and larger mobs will grant reputation.
Click here to go back to the beginning of the guide |next "start" |confirm
Earn Exalted status with the Avengers of Hyjal |complete rep('Avengers of Hyjal')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Avengers of Hyjal!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Baradin's Wardens",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Baradin's Wardens faction.",
achieveid={5375},
patch='40003',
},[[
step
label "daily_reset"
#include "A_Baradin_Hold_Dailies"
step
Earn Exalted status with Baradin's Wardens |complete rep("Baradin's Wardens")==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with Hellscream's Reach!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\The Earthen Ring",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Earthen Ring faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Earthen Ring') < Exalted end,
achieveid={4881},
patch='40003',
},[[
step
To gain reputation with The Earthen Ring you will either need to quest or run dungeons wearing The Earthen Ring Tabard.
Click here to load our "Deepholm (30-50)" leveling guide |confirm |next "Leveling Guides\\Cataclysm (10-50)\\Deepholm (30-50)"
Click here to load our "Vashj'ir (30-50)" leveling guide |confirm |next "Leveling Guides\\Cataclysm (10-50)\\Vashj'ir (30-50)"
Click here to run dungeons. |next "dungeon" |confirm
step
label "dungeon"
talk Provisioner Arok##50324
buy Tabard of the Earthen Ring##65905 |goto Shimmering Expanse 49.1,42.2
step
Equip The Earthen Ring tabard and run Cataclysm dungeons with it. |equipped Tabard of the Earthen Ring##65905 |use Tabard of the Earthen Ring##65905
Earn Exalted reputation with The Earthen Ring |complete rep('The Earthen Ring')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with The Earthen Ring!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Gilneas",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Gilneas faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Gilneas') < Exalted end,
},[[
step
talk Lord Candren##50307
buy Gilneas Tabard##64882 |n |goto Darnassus 37.1,47.5
Equip your Gilneas Tabard |equipped Gilneas Tabard##64882 |use Gilneas Tabard##64882 |future
You can run any dungeon that grants experience to gain reputation for Gilneas
Become Exalted with Gilneas |complete rep('Gilneas')==Exalted
step
Congratulations, you have reached exalted with Gilneas!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Guardians of Hyjal",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Guardians of Hyjal faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Guardians of Hyjal') < Exalted end,
achieveid={5827},
patch='40200',
},[[
step
click Hero's Call Board##250720
accept Hero's Call: Mount Hyjal!##27726 |goto Stormwind City 62.9,71.6
step
talk Emissary Windsong##39865
turnin Hero's Call: Mount Hyjal!##27726 |goto Moonglade 45.5,44.9
accept As Hyjal Burns##25316 |goto Moonglade 45.5,44.9
step
talk Sebelia##40843
home Nordrassil |goto 63.1,24.1
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto Mount Hyjal 62.0,24.9
accept Protect the World Tree##25317 |goto Mount Hyjal 62.0,24.9
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
collect 4 Juniper Berries##53009 |n |goto 67.1,22.6
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
stickystart "twilightflame"
step
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 48.4,29.3
You can find more fragments at the following location: |goto 44.7,33.3
step
label "twilightflame"
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
Enter the cave |goto 52.5,17.3 < 10 |q 25324 |walk
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto 56.8,18.8
accept Through the Dream##25325 |goto 56.8,18.8
step
Leave the cave |goto 52.5,17.3 < 10 |walk
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
kill 6 Twilight Hunter##39437+ |q 25255/1
kill 4 Twilight Proveditor##39436+ |q 25233/1
click Twilight Supplies##202652
|tip The slaves will drop them after you kill the Twilight Slavedriver.
collect 36 Twilight Supplies##52568 |q 25234/1 |goto 38.1,23.0
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.7,19.7
turnin In the Rear With the Gear##25234 |goto 35.7,19.7
accept The Voice of Goldrinn##25268 |goto 35.7,19.7
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Ian Duran##39433
turnin The Voice of Goldrinn##25268 |goto 30.1,31.3
accept Goldrinn's Ferocity##25271 |goto 30.1,31.3
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25271/1 |goto 29.3,30.3
step
talk Ian Duran##39433
turnin Goldrinn's Ferocity##25271 |goto 30.1,31.3
accept Lycanthoth the Corruptor##25273 |goto 30.1,31.3
step
Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25273/1 |goto 32.4,37.3
step
talk Spirit of Goldrinn##39627
turnin Lycanthoth the Corruptor##25273 |goto 32.3,37.0
step
talk Spirit of Goldrinn##39627
accept The Shrine Reclaimed##25280 |goto 29.6,29.3
step
talk Ian Duran##39433
turnin The Shrine Reclaimed##25280 |goto 28.2,29.8
accept Cleaning House##25278 |goto 28.2,29.8
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
_Enter_ the cave |goto 27.0,36.0 < 10|walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
|tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
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
_Leave_ the cave |goto 27.1,36.0 < 10
Escort Kristoff Out |q 25332/1
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto 28.6,30.2
turnin Get Me Outta Here!##25332 |goto 28.6,30.2
step
talk Ian Duran##39433
turnin Cleaning House##25278 |goto 28.2,29.8
accept Sweeping the Shelf##25352 |goto 28.2,29.8
accept Lightning in a Bottle##25353 |goto 28.2,29.8
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
step
kill 8 Twilight Stormcaller##39843+ |q 25352/1 |goto 27.4,39.2
kill 5 Howling Riftdweller##39844+ |q 25352/2 |goto 27.4,39.2
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25353/1 |goto 27.4,39.2
step
Use your Totem of Goldrinn |use Totem of Goldrinn##52853
talk Spirit of Goldrinn##39627
turnin Lightning in a Bottle##25353
accept Into the Maw!##25618
step
_Enter_ the blue portal |goto 26.2,41.0 < 5 |walk
talk Jordan Olafson##40834
turnin Into the Maw!##25618 |goto 26.3,41.9
accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
accept Crushing the Cores##25577 |goto 26.3,41.9
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
Do the following in the Firelands Forgeworks
kill 12 Dark Iron Laborer##40838+ |q 25576/1
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1
click Twilight Arms Crate##9393+
Destroy 10 Twilight Arms Crates |q 25575/1
step
talk Yargra Blackscar##40837
turnin Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
talk Jordan Olafson##40834
turnin Forged of Shadow and Flame##25575 |goto 26.3,41.9
turnin Crushing the Cores##25577 |goto 26.3,41.9
accept Cindermaul, the Portal Master##25599 |goto 26.3,41.9
step
kill Cindermaul##40844 |q 25599/1 |goto 30.7,41.7
click Battered Stone Chest##203089
collect Tome of Openings##55136 |q 25599/2 |goto 30.7,41.7
step
talk Jordan Olafson##40834
turnin Cindermaul, the Portal Master##25599 |goto 26.3,41.9
accept Forgemaster Pyrendius##25600 |goto 26.3,41.9
step
Click the Portal Runes
|tip They are brown metal plates on the ground on this small circular island in the lava.
Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.6,46.0
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
accept Return from the Firelands##25611 |goto 26.3,41.9
step
Go inside the blue portal |goto 25.9,40.9 < 5 |q 25352 |walk
talk Ian Duran##39433
turnin Sweeping the Shelf##25352 |goto 28.2,29.8
turnin Return from the Firelands##25611 |goto 28.2,29.8
step
talk Vision of Ysera##46987
accept Avian's Legacy##27874 |goto Mount Hyjal 28.2,29.8
|tip Skip if you have completed Wings Over Mount Hyjal
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto 28.2,29.9
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto 19.0,40.9
accept Fighting Fire With ... Anything##25381 |goto 19.0,40.9
accept Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto 19.2,37.9
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto 19.0,37.0
step
talk Elizil Wintermoth##41860
fpath Grove of Aessina |goto 19.6,36.4
step
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.3,44.9
accept Seeds of Their Demise##25408 |goto 22.3,44.9
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.8,43.7
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.3,44.9
accept A New Master##25411 |goto 22.3,44.9
stickystart "panicbunny"
step
kill Twilight Inferno Lord##39974
Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.4,45.4
talk Subjugated Inferno Lord##40093
turnin A New Master##25411 |goto 14.4,45.4
accept The Name Never Spoken##25412 |goto 14.4,45.4
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto 11.6,41.5
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
step
label "panicbunny"
kill 10 Raging Firestorm##39939 |q 25381/1 |goto 13.3,41.4
kill 6 Twilight Inferno Lord##39974 |q 25382/1 |goto 13.3,41.4
Click Panicked Bunnies and Terrified Squirrels
collect 10 Frightened Animal##53060 |q 25385/1 |goto 13.3,41.4
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto 19.0,40.9
turnin Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto 19.2,37.9
accept Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto 22.3,44.9
accept Black Heart of Flame##25428 |goto 22.3,44.9
step
Use your Charred Branch while in the burning forest area |use Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 12.9,41.4
step
clicknpc Injured Fawn##39999+
Lead the Injured Fawns back to Mylune at [19.2,37.9]
Escort 3 Injured Fawns Home |q 25392/1 |goto 14.5,40.8
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.3,44.9
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.6,32.8
accept The Bears Up There##25462 |goto 13.6,32.8
step
Click the ladder at the base of the tree
clicknpc Hyjal Bear Cub##40240
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow arrow at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1  |goto 14.2,32.1
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto 13.6,32.8
accept Smashing Through Ashes##25490 |goto 13.6,32.8
step
kill 8 Charbringer##40336 |q 25490/1 |goto 21.6,59.1
step
talk Arch Druid Hamuul Runetotem##39858
turnin Smashing Through Ashes##25490 |goto 27.1,62.6
accept Durable Seeds##25491 |goto 27.1,62.6
accept Fresh Bait##25493 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.1,63.0
step
talk Ranela Featherglen##54392
fpath Sanctuary of Malorne |goto 27.8,63.4
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto 36.2,58.6
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 36.2,58.6
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 36.2,58.6
step
talk Arch Druid Hamuul Runetotem##39858
turnin Durable Seeds##25491 |goto 27.1,62.6
turnin Fresh Bait##25493 |goto 27.1,62.6
accept Hell's Shells##25507 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto 27.1,63.0
accept Prepping the Soil##25502 |goto 27.1,63.0
step
Click the Flameward
|tip It's a floating stone in a golden claw stand.
Activate the Flameward |q 25502/1 |goto 33.0,64.6
Defend the Flameward |q 25502/2 |goto 33.0,64.6
step
Use your Heap of Core Hound Innards near Nemesis |use Heap of Core Hound Innards##54744
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##40340
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 39.3,54.1
step
talk Arch Druid Hamuul Runetotem##39858
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
Disable Rod of Subjugation 1 |q 25514/1 |goto 23.8,56.0
step
click Rod of Subjugation##9469
Disable Rod of Subjugation 2 |q 25514/2 |goto 25.3,54.8
step
talk Tortolla##41504
turnin Breaking the Bonds##25514 |goto 24.7,55.7
step
kill Deep Corruptor##40561+
|tip They are found underwater
Save 6 Tortolla's Eggs |q 25519/1 |goto 24.4,57.4
step
talk Tortolla##41504
turnin Children of Tortolla##25519 |goto 24.7,55.7
accept An Ancient Awakens##25520 |goto 24.7,55.7
step
talk Arch Druid Hamuul Runetotem##39858
turnin An Ancient Awakens##25520 |goto 27.1,62.6
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto 44.4,46.2
accept An Offering for Aviana##25663 |goto 44.4,46.2
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto 42.2,45.5
accept Scrambling for Eggs##25656 |goto 42.2,45.5
step
talk Dinorae Swiftfeather##43481
fpath Shrine of Aviana |goto 41.2,42.6
step
Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto 40.3,44.3
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto 40.3,44.3
accept A Plea From Beyond##25665 |goto 40.3,44.3
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Kill 10 Wormwing Harpies |q 25655/1 |goto 38.5,43.0
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto 38.5,43.0
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto 42.2,45.5
turnin Scrambling for Eggs##25656 |goto 42.2,45.5
accept A Bird in Hand##25731 |goto 42.2,45.5
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto 44.4,46.2
accept A Prayer and a Wing##25664 |goto 44.4,46.2
step
click Harpy Signal Fire##7290
Fight Marion Wormwing until she gets captured |q 25731/1 |goto 38.3,44.2
talk Marion Wormwing##41112
Ask her why she is stealing eggs, then tell Thisalee to kill her
Interrogate Marion Wormwing |q 25731/2 |goto 38.3,44.2
step
Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto 35.7,42.3
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto 42.2,45.5
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto 44.4,46.2
step
talk Skylord Omnuron##40997
|tip He is up on the platform above Choluna.
accept Fact-Finding Mission##25740 |goto 43.5,45.9
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.8,70.8
accept Sethria's Brood##25746 |goto 32.8,70.8
accept A Gap in Their Armor##25758 |goto 32.8,70.8
step
click the Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.3,77.1
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay 12 Sethria's Minions |q 25746/1 |goto 30.9,76.9
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.9
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.8,70.8
turnin A Gap in Their Armor##25758 |goto 32.8,70.8
accept Disassembly##25761 |goto 32.8,70.8
turnin The Codex of Shadows##25763 |goto 32.8,70.8
accept Egg Hunt##25764 |goto 32.8,70.8
step
Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883
|tip Use Thisalee's Shiv 5 times to remove the Twilight Juggernauts' Armor Plating completely.
kill 3 Twilight Juggernaut##41031 |q 25761/1 |goto 31.6,75.8
click Shadow Cloak Generator##203208
|tip It may not be in the first one, so keep searching.
Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.6,75.8
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.8,70.8
turnin Egg Hunt##25764 |goto 32.8,70.8
accept Sethria's Demise##25776 |goto 32.8,70.8
step
Fight Sethria
Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
kill Sethria##41255 |q 25776/1 |goto 35.5,98.0
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.8,70.8
accept Return to the Shrine##25795 |goto 32.8,70.8
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto 44.3,48.0
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto 44.2,47.8
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto 44.1,45.9
step
talk Vision of Ysera##47002
accept The Last Living Lorekeeper##25830 |goto 43.8,46.0
If you cannot pick up the quest, you can also find it at the following location: |goto 62.0,24.9
step
_Enter_ the blue portal |goto 38.77,58.01 < 10
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
accept Flight in the Firelands##25523 |goto 37.2,56.2
step
click the Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto 37.2,56.1
step
Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523 |goto 37.4,56.0
clicknpc Aviana's Guardian##40723 |goto 37.4,56.0
Ride Aviana's Guardian |invehicle |c |q 25523 |goto 37.4,56.0
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Land next to the Guardian Flag
Visit the Guardian Flag |q 25523/1 |goto 36.6,53.4
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto 37.2,56.2
accept Wave One##25525 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
Kill 10 Twilight Knight Riders |q 25525/1 |goto 35.4,51.7
|tip The knights are riding buzzards.
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578 |goto 37.2,56.2
turnin Wave One##25525 |goto 37.2,56.2
accept Wave Two##25544 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
Kill 10 Twilight Lancers|q 25544/1 |goto 35.4,51.7
|tip The lancers are riding buzzards.
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto 37.2,56.2
accept Egg Wave##25560 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy 40 Firelands Eggs |q 25560/1 |goto 36.6,53.3
You can find more Firelands Eggs at the following location: |goto 39.3,54.1
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto 37.2,56.2
accept Return to Aviana##25832 |goto 37.2,56.2
step
Don't forget to equip your real weapon again
Go inside the blue glowing orb |goto 39.1,57.6 < 10 |q 25832 |walk
talk Aviana##41308
turnin Return to Aviana##25832 |goto 44.3,48.0
step
talk Nordu##41381
turnin The Last Living Lorekeeper##25830 |goto 27.4,55.6
accept Firefight##25842 |goto 27.4,55.6
step
kill 5 Fiery Tormentor##41396 |q 25842/1 |goto 27.1,54.5
step
talk Nordu##41381
turnin Firefight##25842 |goto 27.4,55.6
accept Aessina's Miracle##25372 |goto 27.4,55.6
step
talk Arch Druid Hamuul Runetotem##39858
turnin Aessina's Miracle##25372 |goto 19.5,37.8
accept Tortolla's Revenge##25843 |goto 19.5,37.8
step
talk Tortolla##41504
turnin Tortolla's Revenge##25843 |goto 41.9,60.7
accept The Hammer and the Key##25904 |goto 41.9,60.7
step
talk Niden##41507
accept Lost Wardens##25881 |goto 42.3,60.6
accept Breakthrough##25899 |goto 42.3,60.6
step
kill Twilight Field Captain##41502
collect Glyph of Opening##56177 |q 25904/1
kill 10 Twilight Scorchlord##41500 |q 25899/1 |goto 46.8,58.7
talk Lost Warden##41499
Tell them to get on their feet
Rescue 8 Lost Wardens |q 25881/1 |goto 46.8,58.7
step
talk Tortolla##41504
turnin The Hammer and the Key##25904 |goto 41.9,60.7
accept The Third Flamegate##25906 |goto 41.9,60.7
step
talk Captain Irontree##41492
turnin Lost Wardens##25881 |goto 57.1,56.0
accept Pressing the Advantage##25886 |goto 57.1,56.0
turnin Breakthrough##25899 |goto 57.1,56.0
step
talk Logram##41497
accept Hyjal Recycling Program##25901 |goto 56.8,56.0
stickystart "twifieldcap"
step
click Warden's Arrows##203310
collect 15 Warden's Arrow##56176 |q 25901/1 |goto 56.3,57.2
step
label "twifieldcap"
kill 4 Twilight Field Captain##41502+ |q 25886/1 |goto 49.0,54.0
|tip They are uncommon, so you may need to search for them.
step
talk Logram##41497
turnin Hyjal Recycling Program##25901 |goto 56.8,56.0
step
talk Captain Irontree##41492
turnin Pressing the Advantage##25886 |goto 57.1,56.0
step
Go inside the blue portal |goto 64.53,53.54 < 5 |walk
talk Garunda Mountainpeak##41498
turnin The Third Flamegate##25906 |goto 64.3,53.6
accept The Time for Mercy has Passed##25910 |goto 64.3,53.6
accept The Strength of Tortolla##25915 |goto 64.3,53.6
stickystart "shadowtorment"
step
Follow the path down
Stand next to a Nemesis Crystal with your Child of Tortolla turtle next to you
Examine the Nemesis Crystal |q 25915/1 |goto 65.9,58.2
step
label "shadowtorment"
kill 4 Shadowflame Master##41563 |q 25910/1 |goto 61.8,56.8
kill 10 Molten Tormentor##41565 |q 25910/2 |goto 61.8,56.8
step
talk Garunda Mountainpeak##41498
turnin The Time for Mercy has Passed##25910 |goto 64.3,53.6
turnin The Strength of Tortolla##25915 |goto 64.3,53.6
accept Finish Nemesis##25923 |goto 64.3,53.6
step
Follow the path down
Fight Nemesis
Use your Totem of Tortolla when Nemesis is about to finish casting Molten Fury |use Totem of Tortolla##56207
kill Nemesis##40340 |q 25923/1 |goto 63.2,62.2
step
talk Garunda Mountainpeak##41498
turnin Finish Nemesis##25923 |goto 64.3,53.6
accept Tortolla's Triumph##25928 |goto 64.3,53.6
step
Go inside the blue portal |goto 64.8,53.6 < 10 |q 25928 |walk
talk Tortolla##41504
turnin Tortolla's Triumph##25928 |goto 41.9,60.7
accept The Ancients are With Us##25653 |goto 41.9,60.7
step
talk Ysera##40928
turnin The Ancients are With Us##25653 |goto 62.0,24.9
accept Commander Jarod Shadowsong##25597 |goto 62.0,24.9
step
talk Elementalist Ortell##39621
turnin Commander Jarod Shadowsong##25597 |goto 71.9,58.1
accept Signed in Blood##25274 |goto 71.9,58.1
step
talk Twilight Recruit##39619
Lure the Twilight Recruit away from the group to [72.3,58.9]
Use your Blackjack on the Twilight Recruit |use Blackjack##52683
kill Twilight Recruit
collect Twilight Recruitment Papers##52685 |q 25274/1 |goto 73.5,60.5
step
talk Elementalist Ortell##39621
turnin Signed in Blood##25274 |goto 71.9,58.1
accept Your New Identity##25276 |goto 71.9,58.1
step
talk Condenna the Pitiless##39442
turnin Your New Identity##25276 |goto 76.9,62.0
accept Trial By Fire##25223 |goto 76.9,62.0
accept In Bloom##25224 |goto 76.9,62.0
step
talk Instructor Cargall##39451
accept Waste of Flesh##25330 |goto 77.0,62.1
step
kill 8 Fiery Instructor##40564 |q 25223/1 |goto 83.6,62.8
click Flame Blossom##202619
collect 5 Flame Blossom##52537 |q 25224/1 |goto 83.6,62.8
Use your Frostgale Crystal on an Immolated Supplicant
|tip They are on fire running around this area.  They must be alive for you to be able to save them.  You may need to search for one of them, since they aren't very common. |use Frostgale Crystal##52819
Save an Immolated Supplicant |q 25330/1 |goto 83.6,62.8
step
talk Instructor Cargall##39451
turnin Waste of Flesh##25330 |goto 77.0,62.1
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
stickystart "spinelode"
step
click Crate of Scrolls##202968
collect Twilight Communique##52724 |q 25296/1 |goto 89.5,55.5
step
click Hyjal Battleplans##202969
collect Hyjal Battleplans##52725 |q 25296/2 |goto 92.0,51.5
step
label "spinelode"
kill Spinescale Basilisk##39658+
collect 5 Charred Basilisk Meat##52708 |q 25294 |goto 87.3,52.7
click Darkwhisper Lodestone##202952
Break 5 Darkwhisper Lodestones |q 25509/1 |goto 87.3,52.7
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
Complete your Physical Training |q 25499/1 |goto 89.2,58.0
step
talk Instructor Mylva##39413
turnin Agility Training: Run Like Hell!##25499 |goto 89.6,59.1
accept Mental Training: Speaking the Truth to Power##25299 |goto 89.6,59.1
step
Use your Orb of Ascension |use Orb of Ascension##52828
Use the abilities on your action bar to answer Yes or No as the Orb of Ascenion asks questions
You must answer 10 questions correct.
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
kill 5 Failed Supplicant##39752 |q 25309/1 |goto 92.1,48.9
step
kill Spinescale Matriarch##40403
collect Spiked Basilisk Hide##54610 |q 25494/1 |goto 84.9,47.0
step
Use your Ogre Disguise next to the Ogre Outhouse |use Ogre Disguise##55137
Put on your Ogre Disguise |havebuff 306868 |q 25308 |goto 77.5,48.1
step
talk Karr'gonn##40489
Tell him one of the boys is causing some trouble outside
kill High Cultist Azennios##40491 |q 25308/1 |goto 76.5,49.1
step
Right-click the Seeds of Discord buff next to your minimap to take off your Ogre Disguise |nobuff Interface\Icons\inv_misc_ogrepinata |q 25308
step
click Outhouse Hideout##202701
turnin Seeds of Discord##25308 |goto 88.3,58.6
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
kill Gromm'ko
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
kill Garnoth, Fist of the Legion##39726 |q 25310/1 |goto 65.3,65.1
step
label "horrorguard"
kill 10 Horrorguard##48725 |q 25311/1 |goto 66.6,66.9
step
talk Instructor Mylva##39413
turnin The Greater of Two Evils##25310 |goto 89.6,59.1
turnin Twilight Territory##25311 |goto 89.6,59.1
step
click Outhouse Hideout##202701
accept Speech Writing for Dummies##25314 |goto 88.3,58.6
step
kill Okrog##40922 |q 25314/1 |goto 78.8,56.4
|tip You will find him walking up this road from the south.
step
click Outhouse Hideout##202701
turnin Speech Writing for Dummies##25314 |goto 88.3,58.6
accept Head of the Class##25601 |goto 88.3,58.6
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
talk Commander Jarod Shadowsong##40619
turnin Graduation Speech##25315 |goto 95.3,51.3
accept Twilight Riot##25531 |goto 95.3,51.3
step
talk Commander Jarod Shadowsong##41025
turnin Twilight Riot##25531 |goto 72.2,74.7
accept Slash and Burn##25608 |goto 72.2,74.7
step
clicknpc Emerald Drake##40780
Ride the Emerald Drake |invehicle |noway |c |q 25608 |goto 71.9,75.2
step
Use your Aerial Swipe ability on Twilight Stormwakers
kill 5 Twilight Stormwaker##40573+ |q 25608/1 |goto 77.9,61.2
Use your Acid Blast ability on Fiery Instructors and Twilight Initiates on the ground
Kill 40 Twilight's Hammer Units |q 25608/2 |goto 77.9,61.2
step
Click the red arrow on your hotbar to stop riding on the Emerald Drake |outvehicle
step
talk Commander Jarod Shadowsong##41025
turnin Slash and Burn##25608 |goto 72.2,74.7
step
talk Commander Jarod Shadowsong##40772
accept Might of the Firelord##25548 |goto 72.1,74.0
step
talk Cenarius##41631
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
kill 4 Flame Ascendant##40709+ |q 25548/1 |goto 58.6,81.3
kill 5 Twilight Subjugator##40463+ |q 25548/2 |goto 58.6,81.3
step
talk Cenarius##41631
turnin Secrets of the Flame##25554 |goto 71.9,74.1
accept The Gatekeeper##25555 |goto 71.9,74.1
step
talk Commander Jarod Shadowsong##41025
turnin Might of the Firelord##25548 |goto 72.1,74.0
accept The Sanctum of the Prophets##25549 |goto 72.1,74.0
step
talk Aronus##40816
turnin The Twilight Egg##25644 |goto 72.3,74.0
accept Brood of Evil##25552 |goto 72.3,74.0
stickystart "emisflame"
step
kill Young Twilight Drake##40687
collect Young Twilight Drake Skull##54973 |q 25552/1 |goto 59.1,78.5
step
Use your Horn of Cenarius |use Horn of Cenarius##55153
kill Azralon the Gatekeeper##40814 |q 25555/1 |goto 57.4,68.0
step
label "emisflame"
kill 4 Twilight Augur##40713+ |q 25549/1 |goto 57.0,69.4
kill 4 Twilight Retainer##40767+ |q 25549/2 |goto 57.0,69.4
kill 1 Emissary of Flame##40755 |q 25549/3 |goto 57.0,69.4
The Emissary of Flame patrols between the following locations:
Location 1: [54.7,67.0]
Location 2: [60.7,72.6]
step
talk Aronus##40816
turnin Brood of Evil##25552 |goto 72.3,74.0
accept Death to the Broodmother##25553 |goto 72.3,74.0
step
talk Commander Jarod Shadowsong##41025
turnin The Sanctum of the Prophets##25549 |goto 72.1,74.0
accept Magma Monarch##25550 |goto 72.1,74.0
step
talk Cenarius##41631
turnin The Gatekeeper##25555 |goto 71.9,74.1
step
Use your Young Twilight Drake Skull |use Young Twilight Drake Skull##55173
kill Desperiona##40974 |q 25553/1 |goto 54.4,85.8
step
Use your Drums of the Turtle God |use Drums of the Turtle God##55179
kill King Moltron##40998 |q 25550/1 |goto 43.5,83.6
step
talk Commander Jarod Shadowsong##41025
turnin Magma Monarch##25550 |goto 72.1,74.0
step
talk Aronus##40816
turnin Death to the Broodmother##25553 |goto 72.3,74.0
step
talk Cenarius##40773
accept The Firelord##25551 |goto 71.9,74.1
step
Go through the blue portal |goto 55.5,66.3 < 10 |q 25551 |walk
talk Cenarius##41631
Tell him you're ready.
kill Ragnaros##41634 |q 25551/1 |goto 44.7,79.2
Wait for Hamuul to open a portal back to Hyjal |goto Mount Hyjal,72.2,74.8
Click the portal to Hyjal |q 25551 |goto 44.7,79.2 |walk
step
talk Commander Jarod Shadowsong##40772
turnin The Firelord##25551 |goto 72.1,74.0
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Ramkahen",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Ramkahen faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Ramkahen') < Exalted end,
achieveid={4884},
patch='40003',
},[[
step
Completing quests in Uldum awards Ramkahen reputation
Click here to load our "Uldum (30-50)" leveling guide |confirm |next "Leveling Guides\\Cataclysm (10-50)\\Uldum (30-50)"
|tip After completing the leveling guide, you will need to run dailies and dungeons to build up reputation with Ramkahen.
Click here to move to the start of the dailies |confirm |next "daily"
Click here to run dungeons for reputation |confirm |next "dungeon"
step
label "daily"
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto Uldum,60.3,38.3
step
Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
Smash 30 Thieving Pluckers |q 28250/1 |goto 59.1,38.4
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto 60.3,38.3
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum,41.4,5.5
step
Click the Confiscated Artillery
|tip It looks like a war catapult car machine.
Use the Designate Target ability on your hotbar on the Infantrymen
Slay 100 Infantrymen |q 28736/1 |goto 41.4,5.5
step
talk Weathered Nomad##49523
turnin Fire From the Sky##28736 |goto 41.4,5.5
step
Click here to move to the start of the dailies |confirm |next "daily"
Click here to run dungeons for reputation |confirm |next "dungeon"
step
label "dungeon"
talk Blacksmith Abasi##48617
buy 1 Tabard of Ramkahen##65904 |goto Uldum 54.0,33.2
step
Equip your Ramkahen tabard and run Cataclysm dungeons with it. |equipped Tabard of Ramkahen##65904 |use Tabard of Ramkahen##65904
Earn Exalted reputation with Ramkahen|complete rep('Ramkahen')==Exalted |next "exalted"
Click here to return to the start of the dailies |confirm |next "daily"
step
label "exalted"
Congratulations, you are now Exalted with Ramkahen!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Therazane",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Therazane faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Therazane') < Exalted end,
achieveid={4881},
patch='40003',
},[[
step
Completing quests in Deepholm awards reputation with Terazane
Click here to load our "Deepholm (30-50)" leveling guide |confirm |next "Leveling Guides\\Cataclysm (10-50)\\Deepholm (30-50)"
|tip After completing this guide, you will need to complete daily quests to continue gaining reputation.
Click here to begin daily quests |confirm
step
label "daily"
#include "Therazane_Dailies"
step
Once you've completed the daily quests, you will have to wait a day in order to do them again.
To go to the start of the dailies, click here. |confirm |next "daily" |only if rep('Therazane')<=Revered
Earn Exalted reputation with Therazane |complete rep('Therazane')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with Therazane!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Wildhammer Clan",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming Exalted with the Wildhammer Clan faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Wildhammer Clan') < Exalted end,
achieveid={4885},
patch='40003',
},[[
step
Completing quests in Twilight Highlands awards reputation with the Wildhammer Clan
Click here to load our "Twilight Highlands (30-50)" leveling guide |confirm |next "Leveling Guides\\Cataclysm (10-50)\\Twilight Highlands (30-50)"
|tip After completing this guide, you will need to complete daily quests to continue gaining reputation.
Click here to begin daily quests |confirm
step
label "dailies"
talk Craw MacGraw##49386
accept Warlord Halthar is Back##28863 |goto Twilight Highlands,48.6,30.7
|tip This is a 2-person group quest.
step
talk Colin Thundermar##46591
accept Keeping the Dragonmaw at Bay##28860 |goto 49.0,29.8
accept Beer Run##28864 |goto 49.0,29.8
step
talk Low Shaman Blundy##48010
accept Fight Like a Wildhammer##28861 |goto 49.8,29.2
accept Never Leave a Dinner Behind##28862 |goto 49.8,29.2
stickystart "wildhammerkeg"
step
kill Warlord Halthar |q 28863/1 |goto 49.0,37.3
|tip He flies around on a red drake in the sky, but he lands in this spot to start fighting.  He is elite, and this is marked as a 2-person group quest, so you may need help killing him.
step
label "wildhammerkeg"
kill Dragonmaw Marauder##46310+
collect 8 Dragonmaw Insignia##62332 |q 28860/1 |goto 46.2,37.4
Click Thundermar Ale Kegs
|tip They look like wooden barrels on the ground around this area.
collect 10 Keg of Thundermar Ale##62330 |q 28861/1 |goto 46.2,37.4
Click Wildhammer Food Stores
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28862/1 |goto 46.2,37.4
You can find more around the following location |goto 49.1,37.3
step
talk Hammelhand##48758
Tell him you're here to escort a delivery to Kirthaven
Follow the dwarves
kill Dragonmaw Skirmisher##48799+
Escort the Supply Caravan |q 28864/1 |goto 64.4,22.6
step
talk Low Shaman Blundy##48010
turnin Fight Like a Wildhammer##28861 |goto 49.8,29.2
turnin Never Leave a Dinner Behind##28862 |goto 49.8,29.2
step
talk Colin Thundermar##46591
turnin Keeping the Dragonmaw at Bay##28860 |goto 49.0,29.8
turnin Beer Run##28864 |goto 49.0,29.8
step
talk Craw MacGraw##49386
turnin Warlord Halthar is Back##28863 |goto 48.6,30.7
step
Click here to return to the start of the dailies, you will only be able to do these once a day. |next "dailies" |confirm
Click here to farm dungeons for reputation |next "dungeon" |confirm
step
label "dungeon"
talk Craw MacGraw##49386
buy Tabard of the Wildhammer Clan##65908 |goto Twilight Highlands,48.6,30.6
step
Use the Wildhammer Clan tabard and run through instances with it. |equipped Tabard of the Wildhammer Clan##65908 |use Tabard of the Wildhammer Clan##65908
Earn Exalted reputation with the Wildhammer Clan |complete rep('Wildhammer Clan')==Exalted |next "exalted"
Click here to go back to the dailies section of this guide. |confirm |next "dailies"
step
label "exalted"
Congratulations, you are Exalted with the Wildhammer Clan!
]])
