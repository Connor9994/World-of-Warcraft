local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsH") then return end
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
The Bloodsail Buccaneer reputation requires a lot of farming.
|confirm |next "bruiser"|only if completedq(26679)
|confirm |next "rum" |only if not completedq(26679)
step
label "bruiser"
If you are going to attempt to get exalted with the Bloodsail Buccaneers, our suggestion is that you are max level, have high level gear, and have friends with you.
The quickest way to gain reputation with the Bloodsail Buccaneers is to farm Booty Bay Bruisers.
Bruisers have proven to be incredibly difficult to kill. They have a variety of knockbacks and nets, they have high damage and health, and they will call for help so you can quickly find yourself overwhelmed.
|confirm
step
In order to farm reputation you must be "At War" with Booty Bay. Do this by hitting _[U]_ and finding the Booty Bay reputation among your list. Click on it and then check the box next to "At War" on the new window that appears.
kill Booty Bay Bruiser##4624 |goto Northern Stranglethorn 41.6,73.2
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
turnin Scaring Shaky##26593 |goto The Cape of Stranglethorn,40.5,67.7
accept Return to MacKinley##26594 |goto The Cape of Stranglethorn,40.5,67.7
step
talk "Sea Wolf" MacKinley##2501
turnin Return to MacKinley##26594 |goto 42.1,73.4
accept Kill-Collect##26595 |goto 42.1,73.4
step
kill Freewheelin' Juntz Fitztittle##43376
collect Fitztittle's Ratcheting Torque Wrench##59034 |q 26595/2 |goto The Cape of Stranglethorn,56.6,57.6
step
click Half-Buried Bottle##204406
accept Message in a Bottle##26603 |goto The Cape of Stranglethorn 57.0,54.4
step
talk Ephram "Midriff" Moonfall##43377
Tell him, So you kno why I'm here then. all right Midriff, pay up.
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
kill Jaguero Stalker##2522+ |q 26604 |goto The Cape of Stranglethorn 58.4,80.4
|tip They are stealthed around this area, so you may need to search a bit.
step
talk Princess Poobah##2634
turnin Protecting Her Royal Highness Poobah##26604 |goto The Cape of Stranglethorn 59.4,79.1
accept Grubby Little Paws##26605 |goto The Cape of Stranglethorn 59.4,79.1
step
kill Skymane Gorilla##2521+
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
accept Bloodsail Treachery##26610  |goto 41.3,61.2
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
At [42.0,83.2]
At [40.9,82.8]
kill 8 Bloodsail Sea Dog##1565+ |q 26612/1
kill 8 Bloodsail Elder Magus##1653+ |q 26612/2
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
Tell him you need an extra-large pirate hat. Seahorn's orders.
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
You can find more Lime Crates around [The Cape of Stranglethorn,56.6,80.0]
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
Return to the Wild Shore |goto 46.0,89.4,0.5 |noway |c |q 26649
step
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
stickystart "drawsteel"
step
talk Long John Copper##43659
Ask him if the Brashtide Crew is ready for battle
Speak with Long John Copper |q 26662/1 |goto 51.3,91.4
step
Go all the way downstairs in this ship
click Grog Barrel##204454
<Nudge the cork.>
Sabotage the Grog |q 26663/1 |goto 50.6,91.5
step
Go all the way downstairs in this ship
talk Enormous Shawn Stooker##43660
Ask him what he can tell you about the Brashtide Crew
Speak with Enormous Shawn Stooker |q 26662/2 |goto 46.7,94.2
step
click Gunpowder Barrel##204455
<Pour the water onto the gunpowder.>
Sabotage the Gunpowder |q 26663/2 |goto 46.8,93.7
step
Go downstairs in this ship
talk Wailing Mary Smitts##43661
Ask her if she knows the battle plan
Speak with Wailing Mary Smitts |q 26662/3 |goto 44.5,93.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin The Brashtide Crew##26662
step
Go all the way downstairs in this ship
click Cannonball Crate##204456
<Grease the cannonballs.>
Sabotage the Cannonballs |q 26663/3 |goto 44.7,92.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Sinking From Within##26663
step
label "drawsteel"
talk Bloodsail Corsair##43636
Tell them they're mutinous dogs, and to draw steel!
Accuse and kill 9 Bloodsail Corsairs |q 26664/1 |goto 44.8,92.9
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
Every enemy npc in this instance gives reputation and has a chance to drop Scarabs and the Bosses drop Ancient Qiraji Artifacts. Collect as many of these as you can. Do not use them yet.
When you have _2999/3000_ Neutral reputation: |only if rep('Brood of Nozdormu')<Friendly
Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
step
label "turninmob"
Use Ancient Qiraji Artifact |use Ancient Qiraji Artifact##21230
accept Secrets of the Qiraji##8784 |n |goto Ahn'Qiraj/2 59.6,68.2
talk Andorgos##15502
turnin Secrets of the Qiraji##8784 |n |goto Ahn'Qiraj/2 59.6,68.2
Repeat this step until you run out of Ancient Scarabs.
Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
Click here to go back to farming. |next "farm" |confirm
Earn Exalted status with the Brood of Nozdormu |complete rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label "turninboss"
talk Kandrostrasz##15503
accept Mortal Champions##8579 |only if not completedq(8579) |n |goto Ahn'Qiraj/2 59.1,68.8
accept Mortal Champions##8595 |only if completedq(8579) |n |goto Ahn'Qiraj/2 59.1,68.8
turnin Mortal Champions##8579 |only if not completedq(8579) |n |goto Ahn'Qiraj/2 59.1,68.8
turnin Mortal Champions##8595 |only if completedq(8579) |n |goto Ahn'Qiraj/2 59.1,68.8
Repeat this step until you run out of Qiraji Lord's Insignias.
Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
Click here to go back to farming. |next "farm" |confirm
Earn Exalted status with the Brood of Nozdormu |complete rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label "farm"
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
step
label "menu"
There are several ways to earn reputation with _Cenarion Circle_.  Earning exalted with this Faction is half of the _Achievement Guardian of Cenarius_.
You can _farm mobs and bosses_ in the _Ruins of Ahn'Qiraj_.  You would need at least 1 other person to form the raid.
or
There are a large number of _quests_ available _at Cenarion Hold_, but once those are completed you'll need to grind your way to exalted. Click here to go to these quests |confirm always |next "quest"
or
The _only repeatable quest_ as of 4.2 is from Bor Wildmane at Cenarion Hold.  You will need to _collect 10 Encrypted Twilight Text_ per _turn in_. Click here to continue |confirm always |next "farm_text"
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
label "quest"
talk Windcaller Proudhorn##15191
accept Securing the Supply Lines##8280 |goto Silithus,54.9,36.0
step
click the Wanted Poster: Deathclasp##180448
|tip It looks like a wooden message board.
accept Wanted - Deathclasp, Terror of the Sands##8283 |goto 55.0,36.0
|tip You must kill an elite mob for this quest, so you may need a partner if you cannot solo it.  You can skip this quest if you can't solo it and can't find a partner to help.
step
talk Calandrath##15174
home Cenarion Hold |goto 55.5,36.8
step
talk Beetix Ficklespragg##15189
accept Deadly Desert Venom##8277 |goto 55.4,36.3
step
talk Scout Bloodfist##17081
accept Report to General Kirika##9416 |goto 53.0,34.6
step
talk Runk Windtamer##15178
fpath Cenarion Hold |goto 52.8,34.6
step
talk Huum Wildmane##15270
accept Twilight Geolords##8320 |goto 53.2,35.2
step
talk Bor Wildmane##15306
accept Secret Communication##8318 |goto 53.2,35.1
stickystart "dredgestrike"
step
kill Twilight Avenger##11880+, Twilight Stonecaller##11882+
collect 10 Encrypted Twilight Text##20404 |q 8318/1 |goto 45.4,41.3
kill 10 Twilight Geolord##11881+ |q 8320/1 |goto 45.4,41.3
step
label "dredgestrike"
kill Sand Skitterer##11738+
collect 8 Sand Skitterer Fang##20376 |q 8277/2 |goto 46.2,34.8
kill Stonelash Scorpid##11735+
collect 8 Stonelash Scorpid Stinger##20373 |q 8277/1 |goto 46.2,34.8
kill 15 Dredge Striker##11740+ |q 8280/1 |goto 46.2,34.8
step
talk Beetix Ficklespragg##15189
turnin Deadly Desert Venom##8277 |goto 55.4,36.3
accept Noggle's Last Hope##8278 |goto 55.4,36.3
step
talk Windcaller Proudhorn##15191
turnin Securing the Supply Lines##8280 |goto 54.9,36.0
accept Stepping Up Security##8281 |goto 54.9,36.0
step
talk Bor Wildmane##15306
turnin Secret Communication##8318 |goto 53.2,35.1
step
talk Huum Wildmane##15270
turnin Twilight Geolords##8320 |goto 53.2,35.2
accept Vyral the Vile##8321 |goto 53.2,35.2
step
talk Geologist Larksbane##15183
accept The Twilight Mystery##8284 |goto 53.6,35.3
step
click Twilight Tablet Fragments##180436
|tip They look like small blue-glowing stone pieces on the ground around this area.
collect 8 Twilight Tablet Fragment##20378 |q 8284/1 |goto 31.0,13.6
step
talk Geologist Larksbane##15183
turnin The Twilight Mystery##8284 |goto 53.6,35.3
accept The Deserter##8285 |goto 53.6,35.3
step
talk Hermit Ortell##15194
turnin The Deserter##8285 |goto 68.7,63.0
accept The Twilight Lexicon##8279 |goto 68.7,63.0
stickystart "dredgecrush"
step
kill Stonelash Pincer##11736+
collect 3 Stonelash Pincer Stinger##20374 |q 8278/2 |goto 53.0,53.1
step
kill Twilight Keeper Havunth##11804
|tip He walks around this area in a purple robe, so you may need to search for him.
collect Twilight Lexicon - Chapter 3##20396 |q 8279/3 |goto 46.2,39.8
step
kill Twilight Keeper Mayna##15200
|tip She walks around this area carrying a book, so you may need to search for her.
collect Twilight Lexicon - Chapter 1##20394 |q 8279/1 |goto 33.9,34.1
step
label "dredgecrush"
kill 20 Dredge Crusher##11741+ |q 8281/1 |goto 44.9,48.7
You can find more Dredge Crushers around [37.9,32.4]
step
kill Stonelash Flayer##11737+
collect 3 Stonelash Flayer Stinger##20375 |q 8278/1 |goto 51.7,64.7
kill Rock Stalker##11739+
collect 3 Rock Stalker Fang##20377 |q 8278/3 |goto 51.7,64.7
step
talk Windcaller Proudhorn##15191
turnin Stepping Up Security##8281 |goto 54.9,36.0
step
talk Beetix Ficklespragg##15189
turnin Noggle's Last Hope##8278 |goto 55.4,36.3
step
talk Noggle Ficklespragg##15190
accept Noggle's Lost Satchel##8282 |goto 55.3,36.2
step
Enter the cave |goto 70.2,16.1 < 10 |walk
Follow the path inside the cave
kill Vyral the Vile##15202
collect Vyral's Signet Ring##20466 |q 8321/1 |goto 73.1,16.5
step
Leave the cave |goto 70.2,16.1 < 10 |walk
talk Huum Wildmane##15270
turnin Vyral the Vile##8321 |goto 52.7,35.6
step
talk Commander Mar'alith##15181
accept Dearest Natalia##8304 |goto 53.2,32.5
step
talk Frankal Stonebridge##15171
Tell him you've heard he might have some information as to the weareabouts of Mistress Natalia Mar'alith
Question Frankal |q 8304/1 |goto 46.0,79.4
step
talk Rutgar Glyphshaper##15170
Tell him the Commander has sent you here to gather some information about his missing wife
Question Rutgar |q 8304/2 |goto 46.4,79.1
step
Click the Quest Complete Box under your minimap
turnin Dearest Natalia##8304
accept Into The Maw of Madness##8306
step
Follow the path up |goto 47.4,81.1 < 10 |only if walking
click Noggle's Satchel##180435
|tip It looks like a tan bag sitting on the ground next to the wall.  Be careful of Deathclasp, the elite scorpion that patrols this small area.
collect Noggle's Satchel##20379 |q 8282/1 |goto 49.2,81.6
step
kill Deathclasp##15196
|tip He's an elite scorpion that patrols this small area with his 2 guards.
collect Deathclasp's Pincer##20385 |q 8283/1 |goto 49.5,81.3
|tip Deathclasp is an elite mob, so you may need a partner if you cannot solo him.  You can skip this quest if you can't solo it and can't find a partner to help.
step
kill Twilight Keeper Exeter##11803
collect Twilight Lexicon - Chapter 2##20395 |q 8279/2 |goto 24.8,77.3
step
talk Noggle Ficklespragg##15190
turnin Noggle's Lost Satchel##8282 |goto 55.3,36.2
step
Follow the path up |goto 54.3,34.0 < 10 |only if walking
talk Vish Kozus##15182
turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto 54.5,32.0
step
talk Frankal Stonebridge##15171
accept Breaking the Code##8310 |goto 46.0,79.4
step
talk Rutgar Glyphshaper##15170
accept Glyph Chasing##8309 |goto 46.4,79.1
stickystart "brannlost"
step
Enter the hive |goto 58.5,78.4 < 10 |walk
Follow this path |goto 57.2,79.2 < 10 |walk
Follow this path |goto 56.4,83.0 < 10 |walk
Follow this path |goto 56.1,87.8 < 10 |walk
kill Mistress Natalia Mar'alith##15215
Discover the Fate of Mistress Natalia Mar'alith |q 8306/1 |goto 55.6,90.6
step
click the Hive'Regal Glyphed Crystal
|tip It looks like a white and green crystal on the ground.
<Use the transciption device to gather a rubbing.>
collect Hive'Regal Rubbing##20456 |q 8309/1 |goto 55.6,90.5
step
label "brannlost"
Follow this path |goto 56.1,87.8 < 10 |walk
Follow this path |goto 56.4,83.0 < 10 |walk
Follow this path |goto 57.2,79.2 < 10 |walk
Leave the hive |goto 58.5,78.4 < 10 |walk
kill Hive'Regal Ambusher##11730+, Hive'Regal Slavemaker##11733+, Hive'Regal Spitfire##11732+, Hive'Regal Hive Lord##11734+
collect Hive'Regal Silithid Brain##20459 |q 8310/1 |goto 59.3,74.8
collect Brann Bronzebeard's Lost Letter##20461 |n
Use Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
accept Brann Bronzebeard's Lost Letter##8308
step
Follow the path up |goto 65.8,76.5 < 10 |only if walking
talk Hermit Ortell##15194
turnin The Twilight Lexicon##8279 |goto 68.7,63.0
accept A Terrible Purpose##8287 |goto 68.7,63.0
accept True Believers##8323 |goto 68.7,63.0
step
talk Commander Mar'alith##15181
turnin Into The Maw of Madness##8306 |goto 53.2,32.5
turnin A Terrible Purpose##8287 |goto 53.2,32.5
step
kill Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
collect 10 Encrypted Twilight Text##20404 |q 8323/1 |goto 45.4,41.3
step
talk Frankal Stonebridge##15171
turnin Breaking the Code##8310 |goto 46.0,79.4
step
talk Rutgar Glyphshaper##15170
turnin Brann Bronzebeard's Lost Letter##8308 |goto 46.4,79.1
turnin Glyph Chasing##8309 |goto 46.4,79.1
accept Unraveling the Mystery##8314 |goto 46.4,79.1
step
Follow the path up |goto 65.8,76.5 < 10 |only if walking
talk Hermit Ortell##15194
turnin True Believers##8323 |goto 68.7,63.0
step
talk Geologist Larksbane##15183
turnin Unraveling the Mystery##8314 |goto 53.6,35.3
|next "menu"
step
label "farm_text"
kill Twilight Avenger##11880+, Twilight Keeper Havunth##11804+, Twilight Stonecaller##11882+, Twilight Geolord##11881+
collect Encrypted Twilight Text##20404 |n |goto Silithus,45.6,40.1
More Twilight mobs can be found at [28.0,74.8]
Here [69.7,16.6]
Here [33.5,33.9]
When you have a lot of Twilight Texts to turn in, click here |confirm always
step
talk Bor Wildmane##15306
accept Encrypted Twilight Texts##8319 |repeatable |goto Silithus,53.2,35.1
You can click here to farm more Texts |confirm always |next "farm_text"
or
Click here to do quests outside of Silithus for more rep |confirm always
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
talk Zen'Aliri##38269
accept Finding Stormclaw##24854 |goto Un'Goro Crater,55.7,60.6
step
talk Garl Stormclaw##38274
turnin Finding Stormclaw##24854 |goto 70.8,76.4
accept Claws of White##24719 |goto 70.8,76.4
step
kill Ravasaur##6505+,Ravasaur Runner##6506+,Ravasaur Hunter##6507+,Venomhide Ravasaur##6508+
collect 5 White Ravasaur Claw##11477 |q 24719/1 |goto 67.4,72.3
More can be found around [Un'Goro Crater,69.1,57.1]
step
talk Garl Stormclaw##38274
turnin Claws of White##24719 |goto 70.6,76.8
accept Carried on the Waves##24686 |goto 70.6,76.8
step
While traveling to the coordinates, look in the water for Bloodpetal Seeds
Catch the Bloodpetal Seeds with Garl's Net. |use Garl's Net##50441
collect 4 Un'Goro Lasher Seed##50253 |q 24686/1 |goto 73.5,60.2
step
talk Garl Stormclaw##38274
turnin Carried on the Waves##24686 |goto 70.6,75.9
accept Flowing to the North##24689 |goto 70.6,75.9
step
talk Ithis Moonwarden##38263
turnin Flowing to the North##24689 |goto 76.4,48.3
accept Bouquets of Death##24687 |goto 76.4,48.3
step
Attack the Juvenile Bloodpetals in the area.
kill 6 Pack of Juvenile Bloodpetal##38213+ |q 24687/1 |goto 75.8,44.1
step
talk Ithis Moonwarden##38263
turnin Bouquets of Death##24687 |goto 76.4,48.3
accept Aberrant Flora##24855 |goto 76.4,48.3
step
kill 11 Bloodpetal##6512+ |q 24855/1 |goto 69.9,34.1
step
talk Ithis Moonwarden##38263
turnin Aberrant Flora##24855 |goto 76.4,48.3
step
talk Adrine Towhide##44456
accept Zen'Kiki, the Druid##26953 |goto Western Plaguelands/0 48.9,54.8
step
talk Selyria Groenveld##44457
accept I Ain't Sayin' You a Gourd-Digger...##26956 |goto 48.5,54.9
stickystart "wildlifekill"
step
Click Unhealthy-Looking Pumpkins
|tip They look like pumpkins with green bottoms on the ground around this area.
kill Thrashing Pumpkin##44487+
Remove 3 Unhealthy-Looking Pumpkins |q 26956/3 |goto 47.4,52.9
step
Click Rotten Apples
|tip They look like red apples sitting on the ground around this area.
kill Pome Wraith##44488+
Remove 4 Rotten Apples |q 26956/2 |goto 46.8,54.1
step
Click Bad Corn
|tip They look like yellow-ish pieces of corn laying on the ground around this area.
kill Corn Stalker##44489+
Remove 6 Bad Corn |q 26956/1 |goto 45.8,53.4
step
label "wildlifekill"
kill Plague Lurker##1824+, Venom Mist Lurker##1822+, Diseased Wolf##1817+, Hulking Plaguebear##44482+
|tip You must do this with the troll Zen'Kiki next to you. If you lose him, return to the Menders' Stead and talk to him.
Kill 20 Wildlife with Zen'Kiki |q 26953/1 |goto 50.3,59.6
step
talk Adrine Towhide##44456
turnin Zen'Kiki, the Druid##26953 |goto 48.9,54.8
accept A Different Approach##26954 |goto 48.9,54.8
step
talk Selyria Groenveld##44457
turnin I Ain't Sayin' You a Gourd-Digger...##26956 |goto 48.5,54.9
step
Click Zen'Kiki
|tip He's the troll that's following you around.  Keep clicking him to pull the Diseased Hawks down to you.
kill 7 Diseased Hawk##44481 |q 26954/1 |goto 53.9,53.7
step
talk Adrine Towhide##44456
turnin A Different Approach##26954 |goto 48.9,54.8
step
talk Field Agent Kaartish##44454
accept A New Era for the Plaguelands##26999 |goto 49.3,55.0
step
kill Hulking Plaguebear##44482+
collect 4 Hulking Plaguebear Sample##60762 |q 26999/3 |goto 46.0,48.7
kill Diseased Wolf##1817+
collect 4 Diseased Wolf Sample##60763 |q 26999/4 |goto 46.0,48.7
step
kill Plague Lurker##1824+
collect 4 Plague Lurker Sample##60760 |q 26999/1 |goto 57.0,62.7
kill Venom Mist Lurker##1822+
collect 4 Venom Mist Lurker Sample##60761 |q 26999/2 |goto 57.0,62.7
step
talk Field Agent Kaartish##44454
turnin A New Era for the Plaguelands##26999 |goto 49.3,55.0
accept Northridge Lumber Mill##26935 |goto 49.3,55.0
step
talk Nathaniel Dumah##11616
turnin Northridge Lumber Mill##26935 |goto 48.1,32.4
accept Learning the Ropes##27000 |goto 48.1,32.4
step
Click a Hearthglen Mustang
|tip They are brown horses.
Ride the Hearthglen Mustang |invehicle |c |q 27000 |goto 47.7,31.7
step
Use your Whinny ability on your hotbar near Northridge Spiders
Frighten 25 Northridge Spiders |q 27000/1 |goto 47.4,35.0
step
talk Nathaniel Dumah##11616
turnin Learning the Ropes##27000 |goto 48.1,32.4
accept This Means WAR (Wild Arachnid Roundup)##27001 |goto 48.1,32.4
step
Click a Hearthglen Mustang |tip They are brown horses.
Ride the Hearthglen Mustang |invehicle |c |q 27001 |goto 47.7,31.7
step
Use your Whinny ability on your hotbar near Northridge Spiders
Continuously scare the Northridge Spiders and try to make them run to [48.0,32.9]
The Hearthglen Recruits will kill the Northridge Spiders
Lure 10 Northridge Spiders to Lumber Mill |q 27001/1 |goto 47.0,35.3
step
Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
step
talk Nathaniel Dumah##11616
turnin This Means WAR (Wild Arachnid Roundup)##27001 |goto 48.1,32.4
accept An Audience with the Highlord##27002 |goto 48.1,32.4
step
talk Highlord Tirion Fordring##44441
turnin An Audience with the Highlord##27002 |goto 42.0,14.8
step
talk Field Agent Kaartish##44454
accept Gahrron's Withering Cauldron##27053 |goto 49.3,54.9
step
kill Cauldron Lord Soulwrath##11078
collect Gahrron's Withering Cauldron Key##13196 |q 27053/1 |goto 62.7,58.9
step
Click the Scourge Cauldron
|tip It's a huge shaking black pot with orange liquid in it on a stone platform.
turnin Gahrron's Withering Cauldron##27053 |goto 62.6,58.6
accept Return to the Stead##27057 |goto 62.6,58.6
step
talk Field Agent Kaartish##44454
turnin Return to the Stead##27057 |goto 49.3,55.0
step
talk Adrine Towhide##44456
accept Zen'Kiki and the Cultists##26955 |goto 48.9,54.8
step
Click Cultist Cages
|tip They look like big yellow cages around this area
Free and Heal 4 Captive Plaguebears |q 26955/1 |goto 66.7,48.9
step
talk Adrine Towhide##44456
turnin Zen'Kiki and the Cultists##26955 |goto 48.9,54.8
step
talk Carlin Redpath##11063
accept Little Pamela##27383 |goto Eastern Plaguelands,35.6,68.9
step
talk Pamela Redpath##10926
turnin Little Pamela##27383 |goto Eastern Plaguelands,32.5,83.7
accept Pamela's Doll##27384 |goto Eastern Plaguelands,32.5,83.7
step
click Pamela's Doll's Right Side##176143
collect Pamela's Doll's Right Side##12888 |q 27384 |goto 34.0,85.4
click Pamela's Doll's Left Side##176142
collect Pamela's Doll's Left Side##12887 |q 27384 |goto 34.0,85.4
click Pamela's Doll's Head##176116
collect Pamela's Doll's Head##12886 |q 27384 |goto 34.0,85.4
You can find more pieces here [34.0,85.0] here [35.5,85.5] and here [35.6,82.9]
step
Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
collect Pamela's Doll##12885 |q 27384/1
step
talk Pamela Redpath##10926
turnin Pamela's Doll##27384 |goto 32.4,83.7
accept I'm Not Supposed to Tell You This##27392 |goto 32.4,83.7
step
kill The Lone Hunter##45450+
collect Joseph's Hunting Blade##60987 |q 27392/1 |goto 40.3,83.8
step
talk Pamela Redpath##10926
turnin I'm Not Supposed to Tell You This##27392 |goto 32.5,83.6
accept Uncle Carlin##27385 |goto 32.5,83.6
step
talk Carlin Redpath##11063
turnin Uncle Carlin##27385 |goto 35.6,68.9
accept A Strange Historian##27386 |goto 35.6,68.9
step
talk Chromie##10667
turnin A Strange Historian##27386 |goto 35.3,68.1
step
talk Urk Gagbaz##45500
accept Cenarion Tenacity##27544 |goto Eastern Plaguelands,35.0,68.1
step
talk Rayne##16135
turnin Cenarion Tenacity##27544 |goto 30.2,56.9
accept Postponing the Inevitable##27420 |goto 30.2,56.9
accept Amidst Death, Life##27421 |goto 30.2,56.9
stickystart "plagdissem"
step
Go inside the necropolis
Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
Plant a Seed in the Western Necropolis |q 27421/2 |goto 33.7,44.4
step
Go inside the necropolis
Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
Plant a Seed in the Northeastern Necropolis |q 27421/3 |goto 37.8,42.5
step
Go inside the necropolis
Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
Plant a Seed in the Southeastern Necropolis |q 27421/1 |goto 37.6,48.3
step
label "plagdissem"
kill Shadowmage##8550+, Dark Adept##8546+
collect Plague Disseminator Control Rune##61037 |n
Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
Destroy 3 Plague Disseminators |q 27420/1 |goto 36.4,46.0
step
talk Rayne##16135
turnin Postponing the Inevitable##27420 |goto 30.2,56.9
turnin Amidst Death, Life##27421 |goto 30.2,56.9
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
This is the end of the questing
Click here to go back to the Silithus Reputation menu |confirm always |next "menu"
step
label "exalted"
Congratulations, you are Exalted with Cenarion Circle |only if rep('Cenarion Circle')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Darkmoon Faire",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Darkmoon Faire faction.",
achieveid={2336},
patch='30100',
},[[
step
The Darkmoon Faire starts the first Sunday of the month and lasts for one week. The easiest way to earn reputation with
The Darkmoon Faire is to do dailies on Darkmoon Faire Island every day that the Faire is in town.
|confirm
step
Click here to go to the Darkmoon Faire Dailies Guide. |next "dailies"
You can also earn reputation by turning in Darkmoon Decks. Click here to view the Darkmoon Deck statistics. |next "cards" |confirm
step
label "dailies"
Continuing...
leechsteps "Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies"
step
label "cards"
You can now only get cards using _Inscription_, or buying them at the _Auction House_.
Cards may be the most expensive turnin for the Faire, but they also provide the most reputation.
The higher level of card that you turn in, the more reputation you will receive.
You will receive 350 reputation for turning in any Epic Darkmoon Decks and 25 reputation for rogues decks.
This means that without guild perks you need 109 epic decks or 1520 rogues decks to become Exalted from Friendly.
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\The Defilers",{
author="support@zygorguides.com",
description="\nComplete Arathi Basin and the Comp Stomp brawl to gain reputation.",
achieveid={710},
patch='30001',
},[[
step
Reach "Friendly" Reputation with The Defilers |complete rep('The Defilers') >= Friendly
|tip Use the Player vs. Player Group Finder tool and queue for Arathi Basin.
|tip If the "Comp Stomp Brawl" bonus battleground is avalable, queue for that instead.
|tip Continue running these battlegrounds for reputation.
step
talk Zidormi##141649
Ask her _"Can you show me what Arathi Highlands was like before the war broke out?"_
Travel to the Past |complete ZGV.InPhase('Old Arathi') or rep('The Defilers') == Exalted |goto Arathi Highlands/0 38.24,90.09
step
talk Rutherford Twing##15126
accept Defiler's Basic Care Package##8263 |goto 68.47,30.37 |only if default
accept Defiler's Standard Care Package##8264 |goto 68.47,30.37 |only if level >= 35 and level < 45
accept Defiler's Advanced Care Package##8265 |goto 68.47,30.37 |only if level >= 45
step
Reach "Exalted" Reputation with The Defilers |complete rep('The Defilers') == Exalted
|tip Use the Player vs. Player Group Finder tool and queue for Arathi Basin.
|tip If the "Comp Stomp Brawl" bonus battleground is avalable, queue for that instead.
|tip Continue running these battlegrounds for reputation.
step
_Congratulations!_
You are Now Exalted with "The Defilers."
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Frostwolf Clan",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Frostwolf Clan faction.",
achieveid={708},
patch='30002',
},[[
step
In order to gain reputation with the Frostwolf Clan you must participate in Alterac Valley, but first you should pick up a few quests.
|confirm
step
talk Voggah Deathgrip##13817
accept The Battle for Alterac##7142 |goto Hillsbrad Foothills 58.7,34.2
step
talk Warmaster Laggrond##13840
accept Proving Grounds##7161 |goto 57.8,33.3
step
Enter the cave |goto 58.7,33.4 < 5 |q 7161 |walk
talk Corporal Teeka Bloodsnarl##13776
accept Towers and Bunkers##7101 |goto 59.7,31.2
accept The Graveyards of Alterac##7082 |goto 59.7,31.2
accept Capture a Mine##7124 |goto 59.7,31.2
step
To join Alterac Valley hit the _[H]_ key, click _Alterac Valley_, and click _Join Battle_.
|confirm
step
talk Smith Regzar##13176
accept Enemy Booty##7224 |goto Alterac Valley 49.6,82.6
step
Enter the cave |goto 52.9,89.5 < 5 |q 7161 |walk
Follow the path around and click the Frostwolf Banner
click Frostwolf Banner##179025
collect Frostwolf Banner##17850 |q 7161/1 |goto 50.6,93.3
step
Exit the cave |goto 52.9,89.5 < 5 |c |q 7161 |walk
step
label "checklist"
While in Alterac Valley:
|tip You probably won't be able to do everything in one game, keep joining Alterac Valley matches.
Click Alliance Flag
Assault any Graveyard |q 7082/1
Capture any Mine |q 7124/1
Click Horde Flag
Assault any Tower |q 7101/1
Loot Alliance players when they die.
collect 20 Armor Scraps##17422 |q 7224/1
kill Vanndar Stormpike##11948 |q 7142/1
step
Before you leave Alterac Valley:
talk Smith Regzar##13176
turnin Enemy Booty##7224 |goto Alterac Valley 49.6,82.6
step
To return to the Alterac Valley checklist click here. |next "checklist" |confirm
To continue forward click here. |confirm
step
talk Voggah Deathgrip##13817
turnin The Battle for Alterac##7142 |goto Hillsbrad Foothills 58.7,34.2
step
talk Warmaster Laggrond##13840
turnin Proving Grounds##7161 |goto 57.8,33.3
step
Enter the cave |goto 58.7,33.4 < 5 |q 7124 |walk
talk Corporal Teeka Bloodsnarl##13776
turnin Towers and Bunkers##7101 |goto 59.7,31.2
turnin The Graveyards of Alterac##7082 |goto 59.7,31.2
turnin Capture a Mine##7124 |goto 59.7,31.2
step
Continue joining Alterac Valley until you reach Friendly with the Frostwolf Clan. |complete rep('Frostwolf Clan')>=Friendly |next "friendly"
step
label "friendly"
talk Warmaster Laggrond##13840
accept Rise and Be Recognized##7163 |goto Hillsbrad Foothills 57.8,33.3
step
Continue joining Alterac Valley until you reach Honored with the Frostwolf Clan. |complete rep('Frostwolf Clan')>=Honored |next "honored"
step
label "honored"
talk Warmaster Laggrond##13840
accept Honored Amongst the Clan##7164 |goto Hillsbrad Foothills 57.8,33.3
step
Continue joining Alterac Valley until you reach Revered with the Frostwolf Clan. |complete rep('Frostwolf Clan')==Revered |next "revered"
step
label "revered"
talk Warmaster Laggrond##13840
accept Earned Reverence##7165 |goto Hillsbrad Foothills 57.8,33.3
step
Continue joining Alterac Valley until you reach Exalted with the Frostwolf Clan. |complete rep('Frostwolf Clan')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Frostwolf Clan!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Hydraxian Waterlords",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Hydraxian Waterlords faction.",
achieveid={955},
patch='30001',
},[[
step
talk Lothos Riftwaker##14387 |goto Burning Steppes 18.2,24.9
Ask Lothos to transport you to Molten Core |goto Molten Core |noway |c
step
Kill every creature that is hostile in this instance in order to gain reputation.
|tip You will have to clear this place many times to reach Exalted.
Click here to go back to the beginning of the guide |next "start" |confirm
Earn Exalted status with the Hydraxian Waterlords |complete rep('Hydraxian Waterlords')==Exalted |next "exalted"
|tip You can only become Exalted by killing Golemagg the Incinerator or Ragnaros, the maximum rep you can get without these two dying is 20999/21000 Revered.
step
Congratulations, you are now Exalted with the Hydraxian Waterlords!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Orgrimmar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Orgrimmar faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Orgrimmar') < Exalted end,
},[[
step
talk Stone Guard Nargol##50488
buy Orgrimmar Tabard##45581 |n |goto Orgrimmar,50.4,58.4
Equip your Orgrimmar Tabard |equipped Orgrimmar Tabard##45581 |use Orgrimmar Tabard##45581 |future
You can run any dungeon that grants experience to gain reputation for Orgrimmar
Become Exalted with Orgrimmar |complete rep('Orgrimmar')==Exalted
step
Congratulations, you have reached exalted with Orgrimmar!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Ravenholdt",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Ravenholdt faction.",
achieveid={2336},
patch='30100',
},[[
step
In order to get Exalted with Ravenholdt Faction, you need to grind mobs to _11,999/12,000_ Honored reputation.
Once you've reached Honored, you will need to collect a lot of Heavy Junkboxes.  If you aren't a rogue, you will need the assistance of one.
You can get a lot of Heavy Junkboxes frequently if you go to Blackrock Spire, but unless you're an engineer, it will be time consuming to run back and forth to a mailbox to clear up space.
|confirm always
step
kill Syndicate Mercenary##2589+, Syndicate Highwayman##2586+, Syndicate Pathstalker##2587+, Syndicate Conjuror##2590+, Syndicate Magus##2591+, Syndicate Thief##24477+, Syndicate Prowler##2588+ |goto Arathi Highlands,27.1,30.6
You can find more Syndicate here: [Arathi Highlands,19.5,61.5]
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
Click here to continue and turn in your Boxes. |confirm
step
talk Winstone Wolfe##7323
accept Junkboxes Needed##8249 |repeatable |n |goto Hillsbrad Foothills 71.4,45.0
You are currently _Honored_ with Ravenholdt |only if rep('Ravenholdt')==Honored
You are currently _Revered_ with Ravenholdt |only if rep('Ravenholdt')==Revered
Reach Exalted with Ravenholdt |complete rep('Ravenholdt')==Exalted |next end
or
Click here to get more _Heavy Junkboxes_ |confirm |next "boxes"
step
label "end"
Congratulations, you have reached Exalted with Ravenholdt!
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
label "farmbbcloth"
map Thousand Needles
path	10.7,9.2	11.6,9.4
path	13.7,7.9	12.6,4.9
kill Grimtotem Pillager##39947+
collect 40 Silk Cloth##4306 |n
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Silk Cloth for reputation. |confirm |next "turninbbcloth"
step
label "turninbbcloth"
#include "vendor_Tailoring"
buy 4 Red Dye##2604 |n
|tip You will need 4 Red Dye for every 40 Silk Cloth.
|confirm
step
talk Bloodsail Traitor##16399
accept Traitor to the Bloodsail##9259 |n |goto The Cape of Stranglethorn 48.6,63.2
turnin Traitor to the Bloodsail##9259 |n |goto The Cape of Stranglethorn 48.6,63.2
Turn this quest in until you are Neutral with Booty Bay |complete rep('Booty Bay')>=Neutral
Click here to continue gathering cloth for turn-ins. |confirm |next "farmbbcloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "farmgadgetcloth"
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
Turn this quest in until you are Neutral with Gadgetzan. |complete rep('Gadgetzan')>=Neutral
Click here to continue gathering cloth for turn-ins. |confirm |next "farmgadgetcloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "farmevercloth"
map Silithus
path	44.5,38.0	46.5,40.4	44.9,44.7
path	42.9,41.4	34.2,33.7	31.6,32.1
path	32.9,30.1	35.2,29.9
kill Twilight Avenger##11880+
kill Twilight Geolord##11881+
|tip AVOID Twilight Stonecaller##11882+
collect 40 Runecloth##14047 |n
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Silk Cloth for reputation. |confirm |next "turninevercloth"
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
Click here to continue gathering cloth for turn-ins. |confirm |next "farmevercloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "ratchetcloth"
kill Dragonmaw Whelpstealer##42041+
kill Ebon Slavehunter##42043+
collect 40 Linen Cloth##2589 |n |goto Wetlands/0 67.3,47.3
|tip Each stack of 40 cloth will grant you 500 rep, up to Neutral.
You can also buy these from the _Auction House_
Click here to turn in the Silk Cloth for reputation. |confirm |next "turninratchetcloth"
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
Click here to continue gathering cloth for turn-ins. |confirm |next "turninratchetcloth"
Click here to go back to the main menu. |confirm |next "Steam_Menu2"
step
label "gadget"
kill Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+ |goto Tanaris,72.3,47.1
You can find more Pirates around here: [69.5,53.8]
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
Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+ |goto Tanaris,72.3,47.1
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Thorium Brotherhood",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Thorium Brotherhood faction.",
},[[
step
The Thorium Brotherhood reputation is gained through questing in Searing Gorge and Burning Steppes. It is also gained by turning certain items in to Lokhtos Darkbargainer, most of these items come from Molten Core. See our Hydraxian Waterlords guide for more information on Molten Core.
Click here to start questing in Searing Gorge |next "searing" |confirm
Click here to start questing in Burning Steppes |next "burning" |confirm
Click here to turn in items to Lokhtos Darkbargainer |next "turnin" |confirm
step
label "searing"
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
The path up to Margol the Rager starts here |goto 65.1,75.9 < 5 |only if walking
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
Follow the path down |goto 63.4,38.5 < 5 |only if walking
kill Dark Iron Footman##47275+, Dark Iron Excavator##47276+
Eventually, Dig-Boss Dinwhisker will spawn
|tip You will see him yell in your chat window, asking what in hell's name is going on out here.  He spawns in the location where this step's arrow points to.
kill Dig-Boss Dinwhisker##47271
click Dark Ember##206573
collect Dark Ember##62806 |q 27964/1 |goto 54.2,44.4
step
Follow the path up |goto 58.2,40.6 < 10 |only if walking
talk Jack Rockleg##47266
turnin Dig-Boss Dinwhisker##27964 |goto 68.6,53.4
accept Thorium Point: The Seat of the Brotherhood##27965
step
The path up to Thorium Point starts here |goto 40.9,36.7 < 10 |only if walking
talk Grisha##3305
fpath Thorium Point |goto 34.8,30.6
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
kill Rasha'krak##47553
|tip He's a magma elemental that patrols the lava pools around this area.  You may need to search for him.
collect Rasha'krak's Bracers of Binding##63028 |q 28099/1 |goto 42.6,36.6
Use your Furnace Flasks on Blazing Elementals, Magma Elementals and Inferno Elementals while they are alive |use Furnace Flasks##62826
collect 10 Filled Furnace Flask##62827 |q 27981/1 |goto 42.6,36.6
You can also find Rasha'krak, along with more elementals at the following locations:
At [Searing Gorge,39.3,40.5]
At [Searing Gorge,31.6,43.1]
step
kill 9 Greater Lava Spider##5858+ |q 27980/1 |goto 29.8,42.0
step
kill 12 Heavy War Golem##5854+ |q 27976/1 |goto 32.3,46.6
step
The path up to Thorium Point starts here |goto 40.9,36.7 < 10 |only if walking
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
Follow the path up |goto 24.3,33.0 < 5 |only if walking
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
stickystart "twicollar"
step
click Twilight's Hammer Crate##206597
collect Prayer to Elune##10458 |q 27985/1 |goto 23.1,35.4
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Prayer to Elune##27985
step
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
step
talk Agnes Flimshale##47440
accept The Mysteries of the Fire-Gizzard##28032 |goto 38.8,68.9
stickystart "firegizzard"
step
click Sentry Brazier##149025
Set the Southwestern Tower Ablaze |q 28029/2 |goto 35.7,60.7
step
click Sentry Brazier##149025
Set the Western Tower Ablaze |q 28029/1 |goto 33.3,54.5
step
label "firegizzard"
kill Incendosaur##9318+
collect 6 Fire-Gizzard##62914 |q 28032/1 |goto 33.3,66.2
step
click Sentry Brazier##149025
Set the Southeastern Tower Ablaze |q 28029/3 |goto 44.0,60.9
step
Cross the hanging wooden bridge |goto 52.5,58.0 < 10 |only if walking
click Sentry Brazier##149025
Set the Eastern Tower Ablaze |q 28029/4 |goto 50.1,54.7
step
Cross the hanging wooden bridge |goto 51.4,55.6 < 10 |only if walking
kill 9 Dark Iron Marksman##8338+ |q 28028/1 |goto 49.6,63.0
click Dark Iron Bullet##1868+
collect 200 Dark Iron Bullet##62916 |q 28030/1 |goto 49.6,63.0
step
Follow the path up |goto 45.0,67.3 < 10 |only if walking
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
stickystart "darktask"
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
label "darktask"
talk Slave Worker##5843
|tip Talk to them as you walk through The Slag Pit and do other quests.
Tell them to come and get out of here
Free or kill 12 Slave Workers |q 28055/1 |goto 42.1,25.1
kill Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+ |q 28054/1
step
talk Evonice Sootsmoker##14628
turnin Slavery is Bad##28054 |goto 43.8,28.7
turnin Sweet, Horrible Freedom##28055 |goto 43.8,28.7
turnin Rise, Obsidion##28056 |goto 43.8,28.7
accept Kill 'em With Sleep Deprivation##28057 |goto 43.8,28.7
step
ding 49
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
Jump off the bridge to the path below |goto 47.7,42.0 |n
|confirm
step
talk Overseer Oilfist##14625
turnin Twisted Twilight Ties##28060 |goto 50.0,39.0
accept From Whence He Came##28062 |goto 50.0,39.0
accept Minions of Calcinder##28061 |goto 50.0,39.0
accept Mouton Flamestar##28515 |goto 50.0,39.0
step
kill 6 Searing Flamewraith##47463+ |q 28061/1
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Minions of Calcinder##28061 |goto 48.0,27.4
step
kill Archduke Calcinder##47462
Use your Consecrated Tripetricine on Archduke Calcinder when he is sufficiently weakened |use Consecrated Tripetricine##62925
|tip You will see a message pop up when he is at about half health.
Banish Archduke Calcinder |q 28062/1 |goto 42.7,30.3
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin From Whence He Came##28062 |goto 42.7,30.3
accept Welcome to the Brotherhood##28064 |goto 42.7,30.3
step
talk Lunk##47429
accept Lunk Like Your Style##28053 |goto 39.0,26.0
step
talk Overseer Oilfist##14625
turnin Welcome to the Brotherhood##28064 |goto 38.1,27.0
step
label "burning"
talk Ariok##48559
accept Burning Vengeance##28418 |goto Burning Steppes 17.5,51.6
step
talk Mouton Flamestar##47779
turnin Mouton Flamestar##28515 |only if haveq(28515) |goto 17.0,51.3
accept Done Nothing Wrong##28417 |goto 17.0,51.3
stickystart "blackbrood"
step
clicknpc Fettered Green Whelpling##47820
Free a Green Whelpling |q 28417/2 |goto 17.5,60.5
step
clicknpc Fettered Blue Whelpling##47821
Free a Blue Whelpling |q 28417/3 |goto 19.2,61.6
step
Follow the path up |goto 17.8,61.4 < 10 |only if walking
clicknpc Fettered Bronze Whelpling##47822
Free a Bronze Whelpling |q 28417/4 |goto 15.1,69.7
step
clicknpc Fettered Red Whelpling##47814
Free a Red Whelpling |q 28417/1 |goto 14.2,66.8
step
label "blackbrood"
kill 5 Blackrock Whelper##47782+ |q 28418/1 |goto 16.0,66.0
kill 5 Flamescale Broodling##7049+ |q 28418/2 |goto 16.0,66.0
step
talk Ariok##48559
turnin Burning Vengeance##28418 |goto 17.5,51.6
accept Stocking Up##28419 |goto 17.5,51.6
accept A Future Project##28420 |goto 17.5,51.6
accept Mud Hunter##28421 |goto 17.5,51.6
step
talk Mouton Flamestar##47779
turnin Done Nothing Wrong##28417 |goto 17.0,51.3
stickystart "venomworg"
step
click Obsidian-Flecked Mud##206853
collect 9 Obsidian-Flecked Mud##63124 |q 28421/1 |goto 15.5,45.0
step
label "venomworg"
kill Ember Worg##9690+
collect 11 Ember Worg Hide##63136 |q 28420/1 |goto 11.8,47.7
kill Venomtip Scorpid##9691+
collect 5 Razor-Sharp Scorpid Barb##63135 |q 28419/1 |goto 11.8,47.7
step
talk Ariok##48559
turnin Stocking Up##28419 |goto 17.5,51.6
turnin A Future Project##28420 |goto 17.5,51.6
turnin Mud Hunter##28421 |goto 17.5,51.6
accept The Sand, the Cider, and the Orb##28422 |goto 17.5,51.6
step
talk Gorzeeki Wildeyes##14437
turnin The Sand, the Cider, and the Orb##28422 |goto 8.4,35.8
accept Warlocks Have the Neatest Stuff##28423 |goto 8.4,35.8
accept Shadow Boxing##28424 |goto 8.4,35.8
step
kill Ner'gosh the Shadow##47805+ |q 28424/1 |goto 9.9,29.7
step
click Slumber Sand##206881
collect Slumber Sand##3434 |q 28423/2 |goto 5.4,32.0
step
click Fel Slider Cider##206882
collect Fel Slider Cider##63133 |q 28423/3 |goto 5.2,30.9
step
kill Blackrock Warlock##7028+
collect Clear Glass Orb##63134 |q 28423/1 |goto 6.8,31.8
step
talk Gorzeeki Wildeyes##14437
turnin Warlocks Have the Neatest Stuff##28423 |goto 8.4,35.8
turnin Shadow Boxing##28424 |goto 8.4,35.8
accept Return to Ariok##28425 |goto 8.4,35.8
step
talk Ariok##48559
turnin Return to Ariok##28425 |goto 17.5,51.6
accept Chiselgrip, the Heart of the Steppes##28426 |goto 17.5,51.6
step
kill Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+ |q 28426/1 |goto 31.5,52.1
step
talk Stebben Oreknuckle##48033
turnin Chiselgrip, the Heart of the Steppes##28426 |goto 46.8,44.1
accept Prove Yer Allegiance##28225 |goto 46.8,44.1
accept Scrapped Golems##28226 |goto 46.8,44.1
step
talk Grimly Singefeather##48321
fpath Chiselgrip |goto 46.1,41.8
step
talk Eitrigg##48568
accept A Needle in a Hellhole##28427 |goto 44.5,44.4
step
talk Thelaron Direneedle##48001
turnin A Needle in a Hellhole##28427
He will offer you one of the following four quests:
accept A Perfect Costume##28428 |or |goto 45.5,46.4
accept A Perfect Costume##28429 |or |goto 45.5,46.4
accept A Perfect Costume##28430 |or |goto 45.5,46.4
accept A Perfect Costume##28431 |or |goto 45.5,46.4
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
|confirm
only Orc
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 3 Hides
Take 2 Handfuls of Mud
Take 1 Spool of Thread
|confirm
only Troll
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 1 Hide
Take 3 Handfuls of Mud
Take 4 Spools of Thread
|confirm
only Goblin
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 2 Hides
Take 4 Handfuls of Mud
Take 2 Spools of Thread
|confirm
only Scourge
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 4 Hides
Take 1 Handful of Mud
Take 3 Spools of Thread
|confirm
only Tauren
step
click Tailor's Table##206947 |goto 45.6,46.3
Investigate the hides.
Take 3 Hides
Take 2 Handfuls of Mud
Take 1 Spool of Thread
|confirm
only BloodElf
step
talk Thelaron Direneedle##48001
Tell him you brought him some hides, mud, and thread
Create the Perfect Costume |q 28428/1 |goto 45.5,46.4
Create the Perfect Costume |q 28429/1 |goto 45.5,46.4
Create the Perfect Costume |q 28430/1 |goto 45.5,46.4
Create the Perfect Costume |q 28431/1 |goto 45.5,46.4
step
talk Eitrigg##48568
turnin A Perfect Costume##28428 |goto 44.5,44.4
turnin A Perfect Costume##28429|goto 44.5,44.4
turnin A Perfect Costume##28430 |goto 44.5,44.4
turnin A Perfect Costume##28431 |goto 44.5,44.4
step
From this point you will need to turn in items to Lokhtos Darkbargainer. He is found in Blackrock Depths.
Click here to for the path to him. |next "turnin" |confirm
step
label "turnin"
Go through this Door |goto Blackrock Depths 37.7,66.0 < 10 |walk
Enter this doorway |goto Blackrock Depths 40.8,66.8 < 10 |walk
Click the Shadowforge lock to open the door upstairs |goto Blackrock Depths/2 41.4,88.3 < 10 |walk
Go up the stairs and follow this path to the left |goto Blackrock Depths/2 45.9,86.2 < 10 |walk
Go down these stairs and to the right |goto Blackrock Depths/2 36.5,77.2 < 10 |walk
Enter the Grim Guzzler and speak with Lokhtos Darkbargainer |goto Blackrock Depths/2 50.3,58.4 < 10 |walk
step
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Thunder Bluff",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Thunder Bluff faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Thunder Bluff') < Exalted end,
},[[
step
talk Brave Tuho##50483
buy Thunder Bluff Tabard##45584 |n |goto Thunder Bluff,47.0,50.2
Equip your Thunder Bluff Tabard |equipped Thunder Bluff Tabard##45584 |use Thunder Bluff Tabard##45584 |future
You can run any dungeon that grants experience to gain reputation for Thunder Bluff
Become Exalted with Thunder Bluff |complete rep('Thunder Bluff')==Exalted
step
Congratulations, you have reached exalted with Thunder Bluff!
]])
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Undercity",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Undercity faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Undercity') < Exalted end,
},[[
step
talk Captain Donald Adams##50304
buy Undercity Tabard##45583 |n |goto Undercity,63.0,49.1
Equip your Undercity Tabard |equipped Undercity Tabard##45583 |use Undercity Tabard##45583 |future
You can run any dungeon that grants experience to gain reputation for Undercity
Become Exalted with Undercity |complete rep('Undercity')==Exalted
step
Congratulations, you have reached exalted with Undercity!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Classic Reputations\\Warsong Outriders",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Warsong Outriders faction.",
achieveid={712},
patch='30001',
},[[
step
In order to gain reputation with the Warsong Outriders you and your team must capture flags in Warsong Gulch.
To join Warsong Gulch hit the _[H]_ key, click _Warsong Gulch_, and click _Join Battle_.
Earn Exalted status with the Warsong Outriders |complete rep('Warsong Outriders')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Warsong Outriders!
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
Ride the elevator up to the Aldor Rise |goto Shattrath City,41.7,38.6 < 5 |q 11038 |only if walking
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
Go inside Manaforge B'naar |goto 23.9,70.7
kill Overseer Theredis##20416
collect B'naar Access Crystal##29366 |q 10299/2
step
Kill all Warp-Engineers in the nearest area to make your life easier.
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
Go inside Manaforge Coruu
kill 5 Sunfury Researcher##20136+ |q 10246/1 |goto 49,81.5
Kill Overseer Seylanna
collect Coruu Access Crystal##29396 |q 10321 |goto 49,81.5
click the Coruu Control Console##183956
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Coruu |q 10321/1 |goto 49,81.5
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
Go inside Manaforge Duro
kill Overseer Athanel##20435
collect 1 Duro Access Crystal##29397|q 10322/2 |goto 60.0,68.5
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
stickystart "ganmoarg"
step
kill 3 Daughter of Destiny##18860+ |q 10380/2 |goto 30.8,40.8
step
label "ganmoarg"
kill 6 Gan'arg Warp-Tinker##20285+ |q 10380/1 |goto 26.4,42.3
kill 6 Mo'arg Warp-Master##20326+ |q 10380/3 |goto 26.4,42.3
step
It's inside Manaforge Ara.
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
stickystart "markarma"
step
kill Forgemaster Morug##20800
collect First Half of Socrethar's Stone##29624 |q 10407/1 |goto 37.1,27.8
step
kill Silroth##20801+
collect Second Half of Socrethar's Stone##29625 |q 10407/2 |goto 40.8,19.6
step
label "markarma"
kill Terrorguard Protector##21923+, Gan'arg Mekgineer##16949+, Wrathbringer##18858+, Cyber-Rage Forgelord##16943+
collect 10 Mark of Sargeras##30809+ |q 10653/1 |goto 38.0,27.4
collect 1 Fel Armament##29740 |q 10420/1 |goto 38.0,27.4
More can be found at :
[40.4,22.9]
[42.4,21.5]
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
collect 1 Socrethar's Teleportation Stone##29796 |q 10409 |n
collect 1 Voren'thal's Presence##30259 |q 10409 |goto Netherstorm,36.4,18.4 |n
Step into the teleporter
Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6,1 |noway|c
step
Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
Defeat Socrethar.
Deathblow to the Legion. |q 10409/1 |goto 29.6,14.2
step
talk Ishanah##18538
turnin Deathblow to the Legion##10409 |goto Shattrath City 24,29.7
step
talk Exarch Onaala##21860
accept Karabor Training Grounds##10587 |goto Shadowmoon Valley,61.2,29.2
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
kill Uylaru##21710 |tip You must destroy the totems first before you can attack him.
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
Click the doors to the Shadow Labyrinth. |goto Terokkar Forest,39.6,71.0 |n
Go forth into the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
step
Kill through the instance until you reach Blackheart the Inciter.
kill Blackheart the Inciter##18667
collect 1 Book of Fel Names##30808|q 10649/1
step
talk Altruis the Sufferer##18417
turnin The Book of Fel Names##10649 |goto Nagrand,27.3,43.1
accept Return to the Aldor##10650 |goto Nagrand,27.3,43.1
step
talk Exarch Onaala##21860
turnin Return to the Aldor##10650 |goto Shadowmoon Valley,61.2,29.2
accept Varedis Must Be Stopped##10651 |goto Shadowmoon Valley,61.2,29.2
step
kill Netharel##21164 |q 10651/2 |goto Shadowmoon Valley,68.6,52.7
|tip He is walking amongst the Demon Hunter Supplicants.
step
kill Alandien##21171 |q 10651/4 |goto 69.6,54.1
step
kill Varedis##21178 |q 10651/1 |goto 72.2,53.7
When he begins to cast _Metamorphosis_, you will need to use your _Book of Fel Names_ to weaken him. |use Book of Fel Names##30854
step
kill Theras##21168 |q 10651/3 |goto 72.4,48.4
step
talk Exarch Onaala##21860
turnin Return to the Aldor##10650 |goto Shadowmoon Valley,61.2,29.2
step
At this point, you will need to grind repeatable quests.
You can grind Marks of Kil'jaeden if you are below Honored, or you can farm Marks of Sargeras.
Every spot that drops either of these marks also drops Fel Armaments, which give 100 more rep than 10 marks.
Click here to proceed. |confirm
step
label "farming"
kill Wrathwalker##19740+, Terrormaster##21314+, Makazradon##21501+, Shadow Council Warlock##21302+, Mo'arg Weaponsmith##19755+
collect Mark of Sargeras###30809 |goto Shadowmoon Valley 22.5,34.6
|tip You will need to collect these in multiples of 10.
collect Fel Armament##29740 |goto Shadowmoon Valley 22.5,34.6
When you're ready to turn in, click here. |confirm
step
label "marks"
talk Adyen the Lightwarden##18537
accept More Marks of Sargeras##10654 |n |goto Shattrath City,30.8,34.6
Click here to go back to farming. |next "farming" |confirm
Click here to turn in Fel Armaments |next "fel" |confirm
Earn Exalted Status with The Aldor |complete rep('The Aldor')==Exalted |next "exalted"
step
label "fel"
talk Ishanah##18538
accept Fel Armaments##10421 |n |goto 24.0,29.7
Click here to go back to farming. |next "farming"
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
Kill every creature that is hostile in this instance in order to gain reputation. |goto Black Temple/2 21.9,59.5
|tip You will have to clear this place a few times to reach Exalted.
Click here to go back to the beginning of the guide |next "start" |confirm
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
step
You will need to farm Cenarion Circle and Cenarion Expedition reputation.
Farming rep in the dungeons Slave Pens and Underbog is a good way to gain reputation up to honoroed.
You can also kill naga or any mobs for Unidentified Plant Parts until friendly.
You can also grind reputation from Heroic Coilfang Instances up to exalted if you would rather do that.
|confirm always
step
kill Crust Burster##16844+
|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
collect Eroded Leather Case##23338 |n |goto Hellfire Peninsula,47.8,65.8
Click the Eroded Leather Case |use Eroded Leather Case##23338
accept Missing Missive##9373
step
talk Thiah Redmane##16991
turnin Missing Missive##9373 |goto 15.7,52
accept Demonic Contamination##9372 |goto 15.7,52
step
kill Hulking Helboar##16880+
collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto 24.9,54.3
step
talk Thiah Redmane##16991
turnin Demonic Contamination##9372 |goto 15.7,52
accept Testing the Antidote##10255 |goto 15.7,52
step
talk Mahuram Stouthoof##16888
accept Keep Thornfang Hill Clear!##10159 |goto 15.7,52
step
Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
kill Dreadtusk##16992
Administer the Antidote |q 10255/1 |goto 25,54
step
talk Thiah Redmane##16991
turnin Testing the Antidote##10255 |goto 15.7,52
step
kill 8 Thornfang Ravager##19349+ |q 10159/1 |goto 10.1,53.2
kill 8 Thornfang Venomspitter##19350+ |q 10159/2 |goto 10.1,53.2
step
talk Mahuram Stouthoof##16888
turnin Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula,15.7,52
step
talk Tola'thion##19293
accept Colossal Menace##10132 |goto 15.6,52.0
step
kill 5 Raging Colossus##19188+ |q 10132/1 |goto 14.7,44.6
collect Crimson Crystal Shard##29476 |n
Click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
accept Crimson Crystal Clue##10134
step
talk Tola'thion##19293
turnin Colossal Menace##10132 |goto 15.6,52.0
turnin Crimson Crystal Clue##10134 |goto 15.6,52.0
accept The Earthbinder##10349 |goto 15.6,52.0
step
talk Earthbinder Galandria Nightbreeze##19294
turnin The Earthbinder##10349 |goto 16.0,51.6
accept Natural Remedies##10351 |goto 16.0,51.6
step
Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478
|tip It's a bright green symbol on the ground.
kill Goliathon##19305
Revitalize Fallen Sky Ridge |q 10351/1 |goto 13.6,39.1
step
talk Earthbinder Galandria Nightbreeze##19294
turnin Natural Remedies##10351 |goto 16.0,51.6
step
talk Lauranna Thar'well##17909
accept Plants of Zangarmarsh##9802 |goto Zangarmarsh,80.4,64.2
talk Ikeyen##17956
accept The Umbrafen Tribe##9747 |goto Zangarmarsh,80.4,64.2
step
talk Warden Hamoot##17858
accept A Warm Welcome##9728 |goto 79.1,65.3
step
talk Lethyn Moonfire##17834
accept The Dying Balance##9895 |goto 78.5,63.1
step
talk Ysiel Windsinger##17841
turnin The Cenarion Expedition##9912 |goto 78.4,62
accept Disturbance at Umbrafen Lake##9716 |goto 78.4,62
stickystart "plantparts"
step
kill Boglash##18281 |q 9895/1 |goto 81,72.2
|tip He is a tall alien looking thing with really long legs. Kill him, he's really easy, despite his elite status. He walks around in the water, so some searching may be necessary.
step
label "plantparts"
Kill all mobs in this area
collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 80.1,73.3
step
talk Lauranna Thar'well##17909
turnin Plants of Zangarmarsh##9802 |goto 80.4,64.2
step
talk Lethyn Moonfire##17834
turnin The Dying Balance##9895 |goto 78.5,63.1
stickystart "umbraoracle"
step
kill Kataru##18080 |q 9747/1 |goto 85.3,90.9
|tip In the big building, all the way at the top.
step
label "umbraoracle"
kill 6 Umbrafen Oracle##18077+ |q 9747/2 |goto 83.1,85.2
kill 8 Umbrafen Seer##18079+ |q 9747/3 |goto 83.1,85.2
kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4 |goto 83.1,85.2
step
talk Kayra Longmane##17969
accept Escape from Umbrafen##9752 |goto 83.4,85.5
Escort Kayra Longmane to safety |q 9752/1 |goto 83.4,85.5
step
talk Ikeyen##17956
turnin The Umbrafen Tribe##9747 |goto 80.4,64.2
accept A Damp, Dark Place##9788 |goto 80.4,64.2
talk Lauranna Thar'well##17909
accept Saving the Sporeloks##10096 |goto 80.4,64.2
step
talk Windcaller Blackhoof##18070
accept Safeguarding the Watchers##9894 |goto 80.4,64.7
step
talk Ysiel Windsinger##17841
turnin Escape from Umbrafen##9752 |goto 78.4,62
step
The path to 'Ikeyen's Belongings' starts here |goto Zangarmarsh,74.7,91.6 < 10 |q 9788
Go southwest inside the cave |goto 70.5,97.9 |walk
click Ikeyen's Belongings##182122
collect Ikeyen's Belongings##24411 |q 9788/1
stickystart "marshlurkdredge"
step
Go northeast inside the cave |goto 72.5,94.0 |walk
kill Lord Klaq##18282 |q 9894/1
|tip On the bottom level of the cave, in the small round room all the way in the back.
step
label "marshlurkdredge"
kill 10 Marsh Lurker##18136+ |q 10096/2 |goto 75.7,90.2
kill 10 Marsh Dredger##18137+ |q 10096/1 |goto 75.7,90.2
step
Stand here to Investigate Umbrafen Lake |q 9716/1 |goto 70.9,82.1
kill Darkcrest Slaver##19946+,Darkcrest Sorceress##19947+
collect 10 Unidentified Plant Parts##24401|q 9802/1
collect 30 Naga Claws##24280|q 9728/1 |goto 70.9,82.1
You can find more Naga at:
[73.4,82.3]
[72.2,75.8]
step
talk Windcaller Blackhoof##18070
turnin Safeguarding the Watchers##9894 |goto 80.4,64.7
step
talk Ikeyen##17956
turnin A Damp, Dark Place##9788 |goto 80.4,64.2
talk Lauranna Thar'well##17909
turnin Saving the Sporeloks##10096 |goto 80.4,64.2
Turn in any stacks of 10 Unidentified Plant Parts you have
If you found an Uncatalogued Species, turn that in also
step
talk Warden Hamoot##17858
turnin A Warm Welcome##9728 |goto 79.1,65.3
step
talk Lethyn Moonfire##17834
accept What's Wrong at Cenarion Thicket?##9957 |goto 78.5,63.1
step
talk Ysiel Windsinger##17841
turnin Disturbance at Umbrafen Lake##9716|goto 78.4,62
accept As the Crow Flies##9718 |goto 78.4,62
step
Use your Stormcrow Amulet |use Stormcrow Amulet##25465
Watch yourself fly as a crow.
Explore the Lakes of Zangarmarsh |q 9718/1
step
talk Ysiel Windsinger##17841
turnin As the Crow Flies##9718 |goto 78.4,62
accept Balance Must Be Preserved##9720 |goto 78.4,62
step
talk Windcaller Blackhoof##18070
accept Blessings of the Ancients##9785 |goto 80.4,64.7
step
talk Keleth##17901
Get the Mark of War |q 9785/2 |goto 78.1,63.8
step
talk Ashyen##17900
Get the Mark of Lore |q 9785/1 |goto 81.1,63.9
step
talk Windcaller Blackhoof##18070
turnin Blessings of the Ancients##9785 |goto 80.4,64.7
step
Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
Disable the Umbrafen Lake Pump Controls |q 9720/1 |goto 70.6,80.3
|tip The pump controls look like a little box with some levers on it
step
Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355
Disable the Lagoon Pump Controls |q 9720/4 |goto 63.1,64.1
|tip The pump controls look like a little box with some levers on it
step
Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355
|tip The pump controls look like a little box with some levers on it
Disable the Serpent Lake Controls |q 9720/3 |goto 62,40.8
kill Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, and Bloodscale Wavecaller##20089+
Get a Drain Schematics
Click the Drain Schematics in your bags |use Drain Schematics##24330
accept Drain Schematics##9731
step
Swim straight down into the big bubbling pipe opening below until you discover the drain
Locate the drain in Serpent Lake |q 9731/1 |goto 50.4,40.8
step
Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
Disable the Umbrafen Lake Pump Controls |q 9720/2 |goto 25.4,42.9
|tip The pump controls look like a little box with some levers on it
step
talk Ysiel Windsinger##17841
turnin Balance Must Be Preserved##9720 |goto 78.4,62
turnin Drain Schematics##9731 |goto 78.4,62
accept Warning the Cenarion Circle##9724 |goto 78.4,62
step
talk Lethyn Moonfire##17834
accept What's Wrong at Cenarion Thicket?##9957 |goto 78.5,63.1
step
talk Amythiel Mistwalker##16885
turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula,16,52.2
accept Return to the Marsh##9732 |goto Hellfire Peninsula,16,52.2
step
talk Ysiel Windsinger##17841
turnin Return to the Marsh##9732 |goto Zangarmarsh,78.4,62
accept Checking Up##29566 |goto Zangarmarsh,78.4,62
accept Storming the Steamvault##29616 |goto Zangarmarsh,78.4,62
step
talk Watcher Jhang##54667
turnin Checking Up##29566 |goto The Slave Pens 18.9,11.3
step
talk Watcher Jhang##54667
accept Lost in Action##29563 |goto The Slave Pens 18.9,11.3
accept The Heart of the Matter##29565 |goto The Slave Pens 18.9,11.3
step
talk Nahuud##54668
accept A Brother Betrayed##29564 |goto 17.9,12.1
step
Follow the path and go straight through this main room |goto 25.0,51.2 < 10 |q 29565 |walk
Follow this hallway |goto 40.2,35.5 < 10 |q 29565 |walk
You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro.
kill Mennu the Betrayer##17941 |q 29564/1 |goto 48.8,24.3
step
talk Weeder Greenthumb##17890
Discover Weeder Greenthumb |q 29563/2 |goto 48.9,83.4
step
kill Rokmar the Crackler##17991+
collect The Invader's Claw##72118 |q 29565/1 |goto 57.3,45.4
step
Follow this path up |goto 74.9,51.4 < 5 |q 29565
talk Naturalist Bite##17893
Discover Naturalist Bite |q 29563/2 |goto 95.7,66.2
step
Be ready to fight a couple mobs
kill Coilfang Champion##17957+, Coilfang Enchantress##17961+
talk Naturalist Bite##17893 |goto 95.7,66.2
Tell him
<Naturalist, please grant me your boon |havebuff 132127 |q 29565
step
kill Quagmirran##17942+
collect The Slave Master's Eye##72119 |q 29565/2 |goto The Slave Pens 86.2,67.9
step
talk Nahuud##54668
turnin A Brother Betrayed##29564 |goto The Slave Pens 17.9,12.2
step
talk Watcher Jhang##54667
turnin Lost in Action##29563 |goto 18.8,11.3
step
talk Naturalist Bite##54678
accept A Necessary Evil##29568 |goto The Underbog 29.5,64.7
step
talk Watcher Jhang##54675
accept Rescuing the Expedition##29570 |goto 30.9,65.3
step
talk T'shu##54674
accept Stalk the Stalker##29567 |goto 31.5,65.5
accept Bring Me A Shrubbery!##29691 |goto 31.5,65.5
stickystart "sanghib"
step
Keep following this straight path |goto 42.5,62.0 < 5 |walk
Follow this path up and around |goto 57.4,82.9 < 5 |walk
He will summon mushrooms, these will explode to deal damage to player, and heal the boss
Keep moving him so that doesn't happen
kill Hungarfen##17770 |q 29568/1 |goto 70.0,90.0
step
Follow the path around until you get here
kill Ghaz'an##18105 |goto 77.2,43.8
|confirm
step
Jump down in the water here  |goto 78.9,24.5 < 10 |walk
Swim across the water and jump down here |goto 79.6,15.2 < 10 |walk
talk Earthbinder Rayge##17885
Discover Earthbinder Rayge |q 29570/1 |goto 67.4,21.3
step
Follow this path down and to the right |goto 67.0,14.0 < 10 |walk
kill Swamplord Musel'ek##17826, Claw##17827
Talk to Windcaller Claw
Discover Windcaller Claw |q 29570/2 |goto 41.5,25.4
step
kill The Black Stalker##17882
collect Black Stalker's Brain##24248 |q 29567/1 |goto The Underbog 25.9,45.5
step
label "sanghib"
As you go through the dungeon, look for Sanguine Hibiscus
click Sanguine Hibiscus##183385
collect 5 Sanguine Hibiscus##24246 |q 29691/1
step
talk Naturalist Bite##54678
turnin A Necessary Evil##29568 |goto The Underbog 29.5,64.5
step
talk Watcher Jhang##54675
turnin Rescuing the Expedition##29570 |goto 30.8,65.3
step
talk T'shu##54674
turnin Stalk the Stalker##29567 |goto 31.6,65.5
turnin Bring Me A Shrubbery!##29691 |goto 31.6,65.5
step
talk Watcher Jhang##54848
turnin Storming the Steamvault##29616 |goto The Steamvault 17.9,27.3
accept A Proper Fate##29613 |goto The Steamvault 17.9,27.3
step
talk Naturalist Bite##54849
accept Containment is Key##29614 |goto 17.5,25.9
step
talk Windcaller Claw##54851
accept Windcaller Claw and the Water Thief##29615 |goto 18.9,27.8
step
kill 3 Bog Overlord##21694+|q 29614/1 |goto 33.7,22.7
step
kill Hydromancer Thespia##17797 |q 29615/1 |goto The Steamvault 54.3,12.4
step
click Main Chambers Access Panel##7147 |goto 54.2,10.6
You hear a faint echo...
|confirm always
step
Go through the opening on your left. |goto 42.1,32.9 < 10 |walk
Go up the ramp |goto 49.3,42.8 < 10 |walk
Go up to the bridge on the right side |goto 55.8,47.3 < 10 |walk
Cross the bridge and go through the hallway |goto 39.7,69.0 < 10 |walk
kill Mekgineer Steamrigger##17796
collect Irradiated Gear##72574 |q 29614/3 |goto The Steamvault 33.6,81.2
kill 6 Coilfang Leper##21338+ |q 29614/2 |goto The Steamvault 33.6,81.2
step
click Main Chambers Access Panel##7147 |goto 31.8,84.0
You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
|confirm always
step
Follow the tunnel back to the bridge |goto 54.0,51.4 < 10 |walk
Take a right after crossing the bridge, and go up a ramp |goto 69.8,43.4 < 10 |walk
kill Warlord Kalithresh##17798 |q 29613/1 |goto 78.7,43.3 |n
step
Follow the path down to the ramp |goto 49.1,42.6 < 10 |walk
Enter this doorway |goto 42.5,33.0 < 10 |walk
talk Windcaller Claw##54851
turnin Windcaller Claw and the Water Thief##29615 |goto 18.8,27.6
step
talk Watcher Jhang##54848
turnin A Proper Fate##29613 |goto 18.0,27.2
step
talk Naturalist Bite##54849
turnin Containment is Key##29614 |goto 17.6,25.9
step
click Wanted Poster##184945
accept Leader of the Darkcrest##9730 |goto Zangarmarsh 79.1,64.8
accept Leader of the Bloodscale##9817 |goto Zangarmarsh 79.1,64.8
step
kill Rajah Haghazed##18046 |q 9730/1 |goto Zangarmarsh 65.1,68.7
step
kill Rajis Fyashe##18044 |q 9817/1 |goto Zangarmarsh 65.1,40.9
step
talk Warden Hamoot##17858
turnin Leader of the Darkcrest##9730 |goto 79.1,65.2
turnin Leader of the Bloodscale##9817 |goto 79.1,65.2
step
talk Earthbinder Tavgren##18446
turnin What's Wrong at Cenarion Thicket?##9957 |goto Terokkar Forest,44.3,26.3
accept Strange Energy##9968 |goto Terokkar Forest,44.3,26.3
accept Clues in the Thicket##9971 |goto Terokkar Forest,44.3,26.3
step
talk Warden Treelos##18424
accept It's Watching You!##9951 |goto 45,22.5
step
click Strange Object##183789
Examine the Strange Object |q 9971/1 |goto 45.1,21.8
|tip Inside the building, looks like a white ball on the floor next to a dead guy.
step
kill Naphthal'ar##18438 |q 9951/1 |goto 43.4,22.1
|tip At the top of the big tower.
step
talk Warden Treelos##18424
turnin It's Watching You!##9951 |goto 45,22.5
step
talk Earthbinder Tavgren##18446
turnin Clues in the Thicket##9971 |goto 44.3,26.3
step
kill Vicious Teromoth##18437+
collect 4 Vicious Teromoth Sample##24279 |q 9968/2 |goto 44.1,23.8
step
kill Teromoth##18468+
collect 4 Teromoth Sample##25672 |q 9968/1 |goto 45.8,29.8
step
talk Earthbinder Tavgren##18446
turnin Strange Energy##9968 |goto 44.3,26.3
accept By Any Means Necessary##9978 |goto 44.3,26.3
step
talk Empoor##18482
Fight Empoor until he's almost dead
turnin By Any Means Necessary##9978 |goto 47.1,27
accept Wind Trader Lathrai##9979 |goto 47.1,27
step
talk Wind Trader Lathrai##18484
turnin Wind Trader Lathrai##9979 |goto Shattrath City,72.2,30.7
accept A Personal Favor##10112 |goto Shattrath City,72.2,30.7
step
kill Skithian Windripper##18453+
kill Skithian Dreadhawk##18452+
collect 5 Lathrai's Stolen Goods##27861 |q 10112/1 |goto Terokkar Forest 30.9,42.0
step
talk Wind Trader Lathrai##18484
turnin A Personal Favor##10112 |goto Shattrath City 72.3,30.9
accept Investigate Tuurem##9990 |goto Shattrath City 72.3,30.9
step
click Sealed Box##182542
collect Sealed Box##25727 |q 9990/1 |goto Terokkar Forest 54.0,30.0
step
talk Earthbinder Tavgren##18446
turnin Investigate Tuurem##9990 |goto 44.4,26.3
accept What Are These Things?##9995 |goto 44.4,26.3
step
talk Tooki##18447
turnin What Are These Things?##9995 |goto 50.0,45.9
accept Report to Stonebreaker Camp##10448 |goto 50.0,45.9
step
talk Sergeant Chawni##21007
turnin Report to Stonebreaker Camp##10448 |goto 63.3,42.0
accept Attack on Firewing Point##9997 |goto 63.3,42.0
step
kill 10 Firewing Defender##5355+ |q 9997/1 |goto 70.5,37.4
kill 10 Firewing Bloodwarder##1410+ |q 9997/2 |goto 70.5,37.4
kill 10 Firewing Warlock##16769+ |q 9997/3 |goto 70.5,37.4
step
talk Sergeant Chawni##21007
turnin Attack on Firewing Point##9997 |goto 63.3,42.4
accept The Final Code##10447 |goto 63.3,42.4
step
Enter this building |goto 73.4,36.3 < 10 |walk
click Orb of Translocation##184500
Run up the ramp |goto 73.9,35.8
kill Sharth Voldoun##18554+
collect The Final Code##29912 |q 10447/1 |goto 73.3,34.6
step
click Orb of Translocation##184500
Teleport to the bottom of the tower |goto 73.3,36.3 < 10
step
click Mana Bomb##184725
Activate Mana Bomb |q 10447/1 |goto 71.3,37.4
step
talk Tooki##18447
turnin The Final Code##10447 |goto 50.0,45.9
accept Letting Earthbinder Tavgren Know##10006 |goto 50.0,45.9
step
talk Earthbinder Tavgren##18446
turnin Letting Earthbinder Tavgren Know##10006 |goto Terokkar Forest,44.3,26.3
step
talk Lakotae##22420
accept The Infested Protectors##10896 |goto 37.9,51.7
step
kill Infested Root-walker##22095+
Kill the Wood Mites that come out of their corpses
kill 25 Wood Mite |q 10896/1 |goto 35.2,48.8
You can find more Infested Root-walkers at [39.1,47.0]
step
talk Lakotae##22420
turnin The Infested Protectors##10896 |goto 37.9,51.7
step
talk Timeon##21782
accept Creating the Pendant##10567 |goto Blade's Edge Mountains 62.2,39.1
step
talk Tree Warden Chawn##22007
accept A Time for Negotiation...##10682 |goto 62.0,39.5
step
talk Faradrella##22133
accept Culling the Wild##10753 |goto 62.5,38.2
step
talk Mosswood the Ancient##22053
accept From the Ashes##10771 |goto 61.3,38.4
accept Little Embers##10770 |goto 61.3,38.4
step
talk Overseer Nuaar##21981
|tip He wanders around the Wyrmcult camps.
Negotiate with Overseer Nuaar |q 10682/1 |goto 58.8,39.1
step
talk Tree Warden Chawn##22007
turnin A Time for Negotiation...##10682 |goto 62,39.5
accept ...and a Time for Action##10713 |goto 62,39.5
step
talk Samia Inkling##21983
accept Poaching from Poachers##10717 |goto 61.8,39.6
step
kill 10 Wyrmcult Hewer##21810+ |q 10713/1 |goto 59.9,37.8
kill Wyrmcult Poacher##21809+
collect 5 Wyrmcult Net##31119 |q 10717/1 |goto 59.9,37.8
collect Meeting Note##31120 |n
Click the Meeting Note in your bags |use Meeting Note##31120
accept Did You Get The Note?##10719
step
kill Ruuan'ok Ravenguard##19987+, Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Matriarch##20211+
collect 6 Ruuan'ok Claw##30704 |q 10567 |goto 63.9,31.5
step
Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
kill Harbinger of the Raven##21767
|tip On the little island in the pond.
collect Harbinger's Pendant##30706 |q 10567/1 |goto 64.5,33.1
step
talk Timeon##21782
turnin Creating the Pendant##10567 |goto 62.2,39.1
accept Whispers of the Raven God##10607 |goto 62.2,39.1
step
talk Samia Inkling##21983
turnin Poaching from Poachers##10717 |goto 62,39.5
step
talk Tree Warden Chawn##22007
turnin ...and a Time for Action##10713 |goto 62.0,39.6
turnin Did You Get The Note?##10719 |goto 62.0,39.6
accept Wyrmskull Watcher##10894 |goto 62.0,39.6
step
talk Watcher Moonshade##22386
turnin Wyrmskull Watcher##10894 |goto 49.9,35.9
accept Longtail is the Lynchpin##10893 |goto 49.9,35.9
step
kill Draaca Longtail##22396 |q 10893/1 |goto 46.7,32.9
|tip She walks near the Raven's Wood end of the cave.
step
talk Watcher Moonshade##22386
turnin Longtail is the Lynchpin##10893 |goto 49.9,35.9
accept Meeting at the Blackwing Coven##10722 |goto 49.9,35.9
step
kill Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+ |goto 42.2,25.1
Get the Understanding Ravenspeech buff |havebuff 132188
|tip Must be within melee range to receive the buff.
Anytime the buff wears off, kill Grishna mobs again to get it back
step
Stand next to the wooden totem with the Understanding Ravenspeech buff on you
|tip On the ground, next to a pond with basilisks in it.
Receive the Third Prophecy |q 10607/3 |goto 40.7,18.7
step
Stand next to the wooden totem with the Understanding Ravenspeech buff on you
|tip Up the left ramp, then left across the hanging bridge.
Receive the First Prophecy |q 10607/1 |goto 39,17.2
step
Stand next to the wooden totem with the Understanding Ravenspeech buff on you
|tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.
Receive the Second Prophecy |q 10607/2 |goto 42.5,21.6
step
Stand next to the wooden totem with the Understanding Ravenspeech buff on you
|tip On the ground, in front of a hut.
Receive the Fourth Prophecy |q 10607/4 |goto 40.2,23
step
Go inside the cave
kill Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
collect 5 Costume Scraps##31121 |q 10722 |goto 32.3,34.9
step
Combine your 5 Costume Scraps to make an Overseer Disguise |use Costume Scraps##31121
Put on the Overseer Disguise |havebuff 132760 |q 10722 |use Overseer Disguise##31122
talk Kolphis Darkscale##22019
Attend the meeting with Kolphis Darkscale |q 10722/1 |goto 32.6,37.5
step
talk Tree Warden Chawn##22007
turnin Meeting at the Blackwing Coven##10722 |goto 62.0,39.5
accept Maxnar Must Die!##10748 |goto 62.0,39.5
step
Go inside the cave |goto Blade's Edge Mountains,32.1,34.1 < 5 |walk
kill Maxnar the Ashmaw##21389 |q 10748/1 |goto 33.9,35.4
|tip Follow the cave path until it dead ends into him.
step
Leave the cave. |goto Blade's Edge Mountains,32.1,34.1 < 5 |walk
talk Tree Warden Chawn##22007
turnin Maxnar Must Die!##10748 |goto 62,39.5
step
talk Timeon##21782
turnin Whispers of the Raven God##10607 |goto 62.2,39.1
step
kill 4 Felsworn Scalewing##21123+ |q 10753/1 |goto 68.9,35.6
kill 4 Felsworn Daggermaw##21124+ |q 10753/2 |goto 68.9,35.6
kill 2 Fel Corrupter##21300+ |q 10753/3 |goto 68.9,35.6
collect Damaged Mask##31384|n
Click the Damaged Mask |use Damaged Mask##31384
accept Damaged Mask##10810
stickystart "scimp"
step
click Fertile Volcanic Soil##185148
Plant the Ironroot Seeds |q 10771/1 |goto 71.7,22.4
step
click Fertile Volcanic Soil##185148
Plant the Ironroot Seeds|q 10771/2 |goto 71.6,20.3
step
click Fertile Volcanic Soil##185148
Plant the Ironroot Seeds |q 10771/3 |goto 71.6,18.5
step
label "scimp"
kill 8 Scorch Imp##21021+ |q 10770/1 |goto 70.7,20.2
step
talk O'Mally Zapnabber##22020
turnin Damaged Mask##10810 |goto 62.7,40.4
accept Mystery Mask##10812 |goto 62.7,40.4
step
talk Wildlord Antelarion##22127
turnin Mystery Mask##10812 |goto 62.2,40.1
accept Felsworn Gas Mask##10819 |goto 62.2,40.1
step
talk Faradrella##22133
turnin Culling the Wild##10753 |goto 62.6,38.2
step
talk Mosswood the Ancient##22053
turnin Little Embers##10770 |goto 61.2,38.4
turnin From the Ashes##10771 |goto 61.2,38.4
step
Make sure you have your Felsworn Gas Mask in your bags |collect Felsworn Gas Mask##31366 |q 10819
It has a 60 minute timer on it
If you need another one, talk to Wildlord Antelarion |goto 62.6,39.6
Click here to continue. |confirm always
step
Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
Wear the Felsworn Gas Mask |havebuff 133133 |c |q 10819
Click the Legion Communicator
|tip Between 2 big green floating crystals. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
turnin Felsworn Gas Mask##10819 |goto 73.3,40.1
accept Deceive thy Enemy##10820 |goto 73.3,40.1
step
kill 4 Doomforge Attendant##19961+ |q 10820/1 |goto 74.9,39.9
kill 4 Doomforge Engineer##19960+ |q 10820/2 |goto 74.9,39.9
step
Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
Wear the Felsworn Gas Mask |havebuff 133133 |c |q 10819
Click the Legion Communicator
turnin Deceive thy Enemy##10820 |goto 73.3,40.1
|tip Between 2 big green floating crystals. Click the Legion Communicator. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
accept You're Fired!##10821 |goto 73.3,40.1
step
kill Anger Guard##16952+
collect 5 Camp Anger Key##31536 |q 10821 |goto 73.0,41.0
step
Click the Legion Obelisk to activate it |goto 73.5,43.5
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
Click the Legion Obelisk to activate it |goto 75.3,41.7
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
Click the Legion Obelisk to activate it |goto 73.8,41.0
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
Click the Legion Obelisk to activate it |goto 75.4,40.6
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
Click the Legion Obelisk to activate it |goto 74.0,39.9
|tip It's a metal structure with a floating tall metal piece in the middle of it.
Click here to proceed. |confirm always
step
kill Doomcryer##19963 |q 10821/1 |goto 74.3,42.5
step
talk Wildlord Antelarion##22127
turnin You're Fired!##10821 |goto 62.4,38.4
accept Death's Door##10910 |goto 62.4,38.4
step
Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
Talk to Evergrove Druid
turnin Death's Door##10910 |goto 63.2,65.5
accept Harvesting the Fel Ammunition##10904 |goto 63.2,65.5
step
kill Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
collect 5 Fel Cannonball##31757 |q 10904/1 |goto 63.8,66.5
step
Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
Talk to Evergrove Druid
turnin Harvesting the Fel Ammunition##10904
accept Fire At Will!##10911
step
Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807
|tip It looks like a big metal green-glowing bullet shaped machine.
Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
Destroy the South Warp-Gate |q 10911/1 |goto 64.8,68.3
step
Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807
|tip It looks like a big metal green-glowing bullet shaped machine.
Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
Destroy the North Warp-Gate |q 10911/2 |goto 62.0,60.3
step
Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
Talk to Evergrove Druid
turnin Fire At Will!##10911
accept The Hound-Master##10912
step
kill Baelmon the Hound-Master##19747 |q 10912/1 |goto 63.6,59.1
step
talk Wildlord Antelarion##22127
turnin The Hound-Master##10912 |goto 62.7,39.4
step
talk Aurine Moonblaze##20871
accept Flora of the Eco-Domes##10426 |goto Netherstorm,42.3,32.6
step
Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
kill Mutated Farahlon Lasher##20774+
Test Energy Modulator 10 times |q 10426/1 |goto 41.2,32.2
step
talk Aurine Moonblaze##20871
turnin Flora of the Eco-Domes##10426 |goto 42.3,32.6
accept Creatures of the Eco-Domes##10427 |goto 42.3,32.6
step
kill Talbuk Doe##20610+, Talbuk Sire##20777
Use the Talbuk Tagger on talbuks when they are below 20 percent health. |use Talbuk##29817
Tag 12 Talbuk |q 10427/1 |goto 40.4,35.5
step
talk Aurine Moonblaze##20871
turnin Creatures of the Eco-Domes##10427 |goto 42.3,32.6
accept When Nature Goes Too Far##10429 |goto 42.3,32.6
step
kill Markaru##20775+
collect Hulking Hydra Heart##29768 |q 10429/1 |goto 44.3,28.5
step
talk Aurine Moonblaze##20871
turnin When Nature Goes Too Far##10429 |goto 42.3,32.6
step
talk Arch Druid Lathorius##25809
accept A Mission Statement##11864 |goto Borean Tundra,57,44.3
accept Ears of Our Enemies##11866 |goto Borean Tundra,57,44.3
accept Help Those That Cannot Help Themselves##11876 |goto Borean Tundra,57,44.3
step
talk Hierophant Cenius##25810
accept Happy as a Clam##11869 |goto 57.3,44.1
step
talk Killinger the Den Watcher##25812
accept Ned, Lord of Rhinos...##11884 |goto 57,44
step
talk Zaza##25811
accept Unfit for Death##11865 |goto 56.8,44
stickystart "lootear"
step
Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves|use D.E.H.T.A. Trap Smasher##35228
|tip They look like baby elephants laying on the ground in a trap.
Free 8 Mammoth Calves |q 11876/1 |goto 53.8,40.6
step
label "lootear"
kill 10 Loot Crazed Diver##25836 |q 11869/1 |goto 53.4,42.7
kill Loot Crazed Divers|n
collect 15 Nesingwary Lackey Ear##35188|q 11866/1 |goto 53.4,42.7
step
Find and kill "Lunchbox"|kill "Lunchbox"|q 11884/2 |goto 46.4,40
kill Nedar, Lord of Rhinos##25801|q 11884/1 |goto 46.4,40
|tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
Stand inside the Caribou Traps on the ground
|tip They look like metal spiked traps on the ground.
Use your Pile of Fake Furs|use Pile of Fake Furs##35127
Trap 8 Nesingwary Trappers |q 11865/1 |goto 56.2,50.5
step
talk Arch Druid Lathorius##25809
turnin Ears of Our Enemies##11866 |goto 57,44.3
turnin Help Those That Cannot Help Themselves##11876 |goto 57,44.3
accept Khu'nok Will Know##11878 |goto 57,44.3
After you turn in Ears of Our Enemies, you will get a repeatable quest called Can't Get Ear-nough...
step
talk Hierophant Cenius##25810
turnin Happy as a Clam##11869 |goto 57.3,44.1
accept The Abandoned Reach##11870 |goto 57.3,44.1
step
talk Killinger the Den Watcher##25812
turnin Ned, Lord of Rhinos...##11884 |goto 57,44
step
talk Zaza##25811
turnin Unfit for Death##11865 |goto 56.8,44
accept The Culler Cometh##11868 |goto 56.8,44
step
Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |goto 59.5,30.4
step
talk Khu'nok the Behemoth##25862
turnin Khu'nok Will Know##11878 |goto 59.5,30.4
accept Kaw the Mammoth Destroyer##11879 |goto 59.5,30.4
step
Ride around and find a Wooly Mammoth Bull |n
Click it to ride it |invehicle |c
step
Use the skills on your mammoth action bar to do the following:
kill Kaw the Mammoth Destroyer##25802
Click Kaw's War Halberd on the ground
collect Kaw's War Halberd##35234|q 11879/1 |goto 53.7,23.9
step
talk Arch Druid Lathorius##25809
turnin Kaw the Mammoth Destroyer##11879 |goto 57,44.3
step
kill 1 Karen "I Don't Caribou" the Culler##25803 |q 11868/1 |goto 57.3,56.5
|tip She walks around in this spot.  Be careful, she has 2 stealthed guards that come with her.
step
talk Hierophant Liandra##25838
turnin The Abandoned Reach##11870 |goto 57.8,55.1
accept Not On Our Watch##11871 |goto 57.8,55.1
step
kill Northsea Thugs##25843 |n
Click the Shipment of Animal Parts containers on the ground
|tip They look like brown bags and crates sitting on the ground around this area.
collect 12 Shipment of Animal Parts##35222|q 11871/1 |goto 59.1,55.9
step
talk Hierophant Liandra##25838
turnin Not On Our Watch##11871
accept The Nefarious Clam Master...##11872 |goto 57.8,55.1
step
kill 1 Clam Master K##25800 |q 11872/1 |goto 61.5,66.5
|tip He's walking around underwater.
step
talk Hierophant Cenius##25810
turnin The Nefarious Clam Master...##11872 |goto 57.3,44.1
step
talk Zaza##25811
turnin The Culler Cometh##11868 |goto 56.8,44
step
talk King Mrgl-Mrgl##25197
accept Learning to Communicate##11571 |goto 43.5,14
stickystart "winterfinclam"
step
Go underwater |goto 42.5,15.9
kill Scalder##25226
Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
collect The King's Filled Conch##34623 |q 11571/1
step
label "winterfinclam"
click Winterfin Clam##187367
collect 5 Winterfin Clam##34597 |goto 42.5,16.4
step
talk King Mrgl-Mrgl##25197
turnin Learning to Communicate##11571 |goto 43.5,14
accept Winterfin Commerce##11559 |goto 43.5,14
step
talk Ahlurglgr##25206
turnin Winterfin Commerce##11559 |goto 43,13.8
step
click Winterfin Clam##187367
|tip They are on the ground underwater.
collect 5 Winterfin Clam##34597|q 11559/1 |goto 41.5,13.4
step
talk Ahlurglgr##25206
turnin Winterfin Commerce##11559 |goto 43,13.8
step
talk Brglmurgl##25199
accept Them!##11561 |goto 42.8,13.7
step
talk King Mrgl-Mrgl##25197
accept Oh Noes, the Tadpoles!##11560 |goto 43.5,14
step
kill 15 Winterfin murlocs|q 11561/1 |goto 40.6,17.5
click the yellow cage##1787+
Rescue 20 Winterfin Tadpoles |q 11560/1 |goto 40.6,17.5
step
talk Brglmurgl##25199
turnin Them!##11561 |goto 42.8,13.7
step
talk King Mrgl-Mrgl##25197
turnin Oh Noes, the Tadpoles!##11560 |goto 43.5,14
accept I'm Being Blackmailed By My Cleaner##11562 |goto 43.5,14
step
talk Mrmrglmr##25205
turnin I'm Being Blackmailed By My Cleaner##11562 |goto 42,12.8
accept Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42,12.8
step
talk Cleaver Bmurglbrm##25211
accept Succulent Orca Stew##11564 |goto 42,13.2
stickystart "succulentorca"
step
kill Glrggl##25203
collect Glrggl's Head##34617|q 11563/1 |goto 37.4,9.8
step
label "succulentorca"
kill Glimmer Bay Orcas##25204+ |n
collect 7 Succulent Orca Blubber##34618|q 11564/1 |goto 40.3,12.4
step
talk Mrmrglmr##25205
turnin Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42,12.8
accept The Spare Suit##11565 |goto 42,12.8
step
talk Cleaver Bmurglbrm##25211
turnin Succulent Orca Stew##11564 |goto 42,13.2
step
talk King Mrgl-Mrgl##25197
turnin The Spare Suit##11565 |goto 43.5,14
accept Surrender... Not!##11566 |goto 43.5,14
step
Go southwest to Winterfin Village |n
Use King Mrgl-Mrgl's Spare Suit |havebuff 134169 |use King Mrgl-Mrgl's Spare Suit##34620
step
Go inside the cave |goto 37.8,23.2
talk Glrglrglr##28375
accept Keymaster Urmgrgl##11569
step
Go down the path and underneath you |goto 38.4,22.7
kill Keymaster Urmgrgl##25210
collect Urmgrgl's Key##34600|q 11569/1
step
Follow the path up and to the back of the cave |goto 37.6,27.4
kill Claximus##25209
collect Claw of Claximus##34621|q 11566/1
step
Go back up the path |goto 37.8,23.2
talk Glrglrglr##28375
turnin Keymaster Urmgrgl##11569
step
talk Lurgglbr##25208
accept Escape from the Winterfin Caverns##11570 |goto 37.8,23
Escort Lurgglbr to safety |q 11570/1 |goto 37.8,23
step
talk King Mrgl-Mrgl##25197
turnin Surrender... Not!##11566 |goto 43.5,14
turnin Escape from the Winterfin Caverns##11570 |goto 43.5,14
step
If you are not Exalted with the Cenarion Expedition, you can turn in Lackey Ears for a repeatable quest, or run Heroic Dungeons.
The Heroic Dungeons are Slave Pens, Underbog and Steamvault.
Click here to do the repeatable quest |confirm
step
label "ears"
kill Northsea Mercenary##25839+, Northsea Thug##25843+
collect Nesingwary Lackey Ear##35188 |goto Borean Tundra 60.9,63.4
Collect Lackey Ears in stacks of 15. |goto Borean Tundra 60.9,63.4
When you want to turn in Lackey Ears, click here. |next "turnin" |confirm
step
label "turnin"
talk Arch Druid Lathorius##25809
accept Can't Get Ear-Nough##11867 |n |goto 57.1,44.3
Click here to go back to farming ears. |next "ears" |confirm
Keep repeating this quest until you are Exalted with the Cenarion Expedition |complete rep('Cenarion Expedition')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Cenarion Expedition!
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Keepers of Time",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Keepers of Time faction.",
},[[
step
This faction largely relies on running certain instances repeatedly in order to gain reputation
There are a few Daily Quests to look out for in Shattrath City.  However, they won't be available to you every day
|confirm
step
talk Wind Trader Zhareem##24369
accept Wanted: Aeonus's Hourglass##11382 |or |goto Shattrath City,75.1,36.6
accept Wanted: The Epoch Hunter's Head##11378 |or |goto Shattrath City,75.1,36.6
Neither of the quests may be available. If that is the case, click here to proceed. |confirm
step
talk Nether-Stalker Mah'duun##24370
accept Wanted: Rift Lords##11383 |goto 75.5,37.3
This quest may not be available for the day.  If it isn't, click here to proceed. |confirm
step
talk Steward of Time##20142
accept To The Master's Lair##10279 |goto Tanaris,65.3,49.7
step
talk Andormu##20130
turnin To The Master's Lair##10279 |goto Tanaris/18 41.5,38.5
accept The Caverns of Time##10277 |goto Tanaris/18 41.5,38.5
For this quest you can either follow the Custodian around or do something else while waiting.  This is a long process
step
talk Andormu##20130
turnin The Caverns of Time##10277 |goto 41.5,38.5
accept Old HIllsbrad##10282 |goto 41.5,38.5
step
talk Erozion##18723
turnin Old Hillsbrad##10282 |goto Old Hillsbrad Foothills,29.0,48.3
accept Taretha's Diversion##29598 |goto Old Hillsbrad Foothills,29.0,48.3
Tell him you need a pack of incendiary bombs.
collect 1 Pack of Incendiary Bombs##25853 |q 29598 |goto Old Hillsbrad Foothills,29.0,48.3
step
talk Brazen##18725 |goto 29.2,47.9
Tell him you're ready to go to Durnholde Keep. |goto Old Hillsbrad Foothills,69.3,71.6 |c
step
Go into Durnholde and cross the bridge. |goto 72.2,63.4 < 5 |walk
Go to this ledge and jump down. |goto Old Hillsbrad Foothills,77.2,61.6 < 5 |walk
click Barrel##2886 |goto 77.6,65.7
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
step
click Barrel##2886 |goto Old Hillsbrad Foothills,76.0,68.1
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
step
click Barrel##2886 |goto 74.6,68.4
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
step
click Barrel##2886 |goto 69.0,62.4
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
step
click Barrel##2886 |goto 68.6,58.7
It will be somewhere inside of this building.
Once you've clicked the barrel, click here to continue. |confirm
Internment Lodges Set Ablaze. |q 29598/1 |goto 68.6,58.7
step
kill Lieutenant Drake##17848 |n |goto 75.6,64.7
After you fight him, go up the stairs
Click here to continue. |confirm
step
Go up the hill to the entrance of the barracks. |goto 73.2,61.4 < 5 |walk
Go down the steps here. |goto Old Hillsbrad Foothills,74.6,58.4 < 5 |walk
Click here once you're in the basement. |confirm
step
talk Thrall##17876
turnin Taretha's Diversion##29598 |goto Old Hillsbrad Foothills,74.5,57.7
accept Escape from Durnhold##29599 |goto Old Hillsbrad Foothills,74.5,57.7
step
Tell him you're ready to get out of there
Follow and Protect Thrall
kill Captain Skarloc##17862+ |n
After you kill Captain Skarloc, tell Thrall that Taretha cannot see him
Click here to proceed. |confirm
step
Continue following and protecting Thrall until he stops again
Tell him that you're ready
Click here to continue. |confirm
step
Follow and protect Thrall once more
Once you're upstairs with Taretha, ask her about the Strange Wizard
Click here to continue. |confirm
step
Follow Thrall outside and protect him
kill Epoch Hunter##18096+ |n
Thrall's Destiny Fulfilled. |q 29599/1
step
talk Erozion##18723
turnin Escape from Durnhold##29599 |goto Old Hillsbrad Foothills,50.2,30.9
step
talk Andormu##20130
accept The Black Morass##10296 |goto Tanaris,58.1,54.1
step
talk Sa'at##20201
turnin The Black Morass##10296 |goto The Black Morass,49.3,6.5
accept The Opening of the Dark Portal##10297 |goto The Black Morass,49.3,6.5
step
Moving to this spot will activate the event
You will need to move to the portals that appear nearby, and kill everything that comes out of it.
If Medivh is under attack you must kill whatever is attacking him.  If his shield drops to 0% you will fail
Open the Dark Portal. |q 10297/1 |goto The Black Morass,49.2,71.1
|talk Medivh##15608
step
talk Sa'at##20201
turnin The Opening of the Dark Portal##10297 |goto 49.3,6.5
step
talk Wind Trader Zhareem##24369
turnin Wanted: Aeonus's Hourglass##11382 |or |goto Shattrath City,75.1,36.6
turnin Wanted: The Epoch Hunter's Head##11378 |or |goto Shattrath City,75.1,36.6
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Lower City",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Lower City faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Lower City') < Exalted end,
},[[
step
talk Rilak the Redeemed##22292
accept The Eyes of Skettis##10847 |goto Shattrath City,52.6,21
step
kill Shimmerscale Eels##18750
collect 8 Pristine Shimmerscale Eel##25891 |q 10037/1 |goto Terokkar Forest,38.6,8.5
step
The path up to the Eye of Veil Reskk starts here |goto Terokkar Forest,49.9,16.5 < 5 |q 10847 |walk
click Eye of Veil Reskk##182507
collect Eye of Veil Reskk##25638|q 10847/1 |goto 50.1,19.4
step
click Eye of Veil Shienor##182505
|tip Climb the path inside the other tree, run across the bridge
collect Eye of Veil Shienor##25642|q 10847/2 |goto 57.9,23.2
step
talk Rilak the Redeemed##22292
turnin The Eyes of Skettis##10847 |goto Shattrath City,52.6,21
accept Seek Out Kirrik##10849 |goto Shattrath City,52.6,21
step
talk Kirrik the Awakened##22272
turnin Seek Out Kirrik##10849 |goto Terokkar Forest,37.4,51.5
accept Veil Skith: Darkstone of Terokk##10839 |goto Terokkar Forest,37.4,51.5
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
collect 10 Mark of Kil'jaeden##29425 |q 10325/1 |only if rep ('The Aldor') >= Neutral |goto 39.6,58.6
Get the Cabal Orders from orcs in this area
Click the Cabal Orders |use Cabal Orders##31707
accept Cabal Orders##10880
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
collect Drape of Arunen##31709|q 10881/1 |goto 32.1,51.2
step
click Cabal Chest##185226
collect Scroll of Atalor##31708|q 10881/3 |goto 31.2,46.7
step
Go outside |goto 37.4,51.2 |walk
talk Mekeda##22370
turnin The Shadow Tomb##10881
stickystart "lathrai"
step
Use the Rod of Purification on the Darkstone of Terokk |use Rod of Purification##31610
Purify the Darkstone of Terokk |q 10839/1 |goto 30.8,42.1
step
label "lathrai"
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
accept An Improper Burial##10913 |goto 31,76.1
talk Chief Archaeologist Letoll##22458
accept Digging Through Bones##10922 |goto 31,76.1
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
Enter the tomb |goto 47.0,55.2 < 5 |q 10842 |walk
kill 10 Ethereal Nethermancer##21370+ |q 10840/1 |goto 47.6,54.8
kill 10 Ethereal Plunderer##21368+ |q 10840/2 |goto 47.6,54.8
kill Vengeful Draenei##21636+
Slay 5 Vengeful Draenei |q 10842/1 |goto 47.6,54.8
step
Leave the tomb |goto 47.0,55.2 < 5 |q 10842 |walk
The path up to Veil Shalas starts here |goto Terokkar Forest,54.9,66.0 < 5 |q 10874 |only if walking
The path up to the Sapphire Signal Fire starts here |goto 57.3,65.0 < 5 |q 10874 |only if walking
click Sapphire Signal Fire##185216
|tip Across the hanging bridge and down the spiraling stairs.
Extinguish the Sapphire Signal Fire |q 10874/1 |goto 55.2,67.1
step
The path up to the Emerald Signal Fire starts here |goto 57.0,71.8 < 5 |q 10874 |only if walking
click Emerald Signal Fire##185217
|tip Over the hanging bridge.
Extinguish the Emerald Signal Fire|q 10874/2 |goto 55.5,69.7
step
The path up to the Bloodstone and Violet Signal Fires starts here |goto 56.0,72.7 < 5 |only if walking
|tip It is a tunnel path inside the tree. The entrance is behind the tree to the right a little. |q 10874
click Bloodstone Signal Fire##185219
|tip Up the path inside the tree, on your left as you reach the top.
Extinguish the Bloodstone Signal Fire |q 10874/4 |goto 56.1,72.4
step
click Violet Signal Fire##185218
|tip Across the hanging bridge from the Bloodstone Signal Fire.
Extinguish the Violet Signal Fire|q 10874/3 |goto 56.7,69.2
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
You're about to fight 3 waves of birds and a bird boss. Make sure you're ready.
accept The Skettis Offensive##10879 |goto Shattrath City 52.6,21
step
Fight off the Minions of Terokk and eventually the Avatar of Terokk
Thwart the Attack |q 10879/1 |goto 52.6,21
step
talk Rilak the Redeemed##22292
turnin The Skettis Offensive##10879 |goto 52.6,21
step
talk Vekax##22429
accept The Outcast's Plight##10917 |goto Shattrath City,48.2,18.7
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
|tip They look like white-glowing bones laying on the ground all around this area.  They are kind of rare, so you may need to search around a little for them.
collect 10 Restless Bones##25842 |q 10030/1 |goto 32.4,56.5
step
Enter the crypt |goto 31.2,52.7 < 5 |q 10030 |walk
talk Akuno##22377
accept Escaping the Tomb##10887 |goto 30.6,49.1
step
Protect Akuno and escort him to this spot |goto 33.8,51.6,0.5 |noway |c |q 10887
Help Akuno find his way to the Refugee Caravan |q 10887/1 |goto 33.8,51.6 |n
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
stickystart "brokenskel"
step
Use your Fumper while standing on the ground |use Fumper##31810
|tip You can just keep using it in the same spot, it doesn't matter.
kill Mature Bone Sifter##22482+
collect 8 Mature Bone Sifter Carcass##31814 |q 10929/1 |goto 37.6,77.3
step
label "brokenskel"
kill 10 Broken Skeleton##16805+ |q 10031/2 |goto 40.1,77.5
You can find more around [48.2,71.9]
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
accept Skywing##10898 |goto 53.7,72.3
Follow Skywing and protect him
Escort Skywing |q 10898/1 |goto 53.7,72.3
step
Fly into the Ring of Observance and follow this path |goto 42.1,65.6 < 5 |q 10898
talk Isfar##18933
turnin Can't Stay Away##10180 |goto 44.1,65.0
step
talk Dwarfowitz##22481
turnin The Big Bone Worm##10930 |goto 31.0,76.2
step
talk Soolaveen##18675
turnin Helping the Lost Find Their Way##10031 |goto 37.0,49.5
step
talk Rilak the Redeemed##22292
turnin Skywing##10898 |goto 52.6,21.0
step
talk Vekax##22429
turnin The Outcast's Plight##10917 |goto 50.3,18.3
step
At this point you will need to Farm instances for reuptation
You can farm Auchenai Crypts until 5,999/6,000 Friendly.  After you reach Honored though, you will only be able to do Heroic mode for reputation
You can also grind Shadow Labyrinth and Sethekk Halls up until exalted without Heroic mode active.  You can gain addition reputation by doing it on Heroic however
Click here to move onto Daily Heroic quests that may be available for reputation turn ins. |confirm
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
|goto Terokkar Forest,43.2,65.6 |n
Go straight in, through the swirling portal |goto 44.9,65.6
Enter Sethekk Halls. |goto Sethekk Halls|noway|c
only if haveq(11372)
step
Kill your way to the end of the instance.
kill Talon King Ikiss##18473
collect The Headfeathers of Ikiss##33834 |q 11372/1
only if haveq(11372)
step
|goto Terokkar Forest,36.0,65.6 |n
Go straight in, through the swirling portal |goto 34.3,65.6
Enter the Auchenai Crypts. |goto Auchenai Crypts |noway|c
only if haveq(11374)
step
Kill your way to the end of the instance.
kill Exarch Maladaar##18373
collect The Exarch's Soul Gem##33836 |q 11374/1
only if haveq(11374)
step
|goto Terokkar Forest,39.6,71.0 |n
Go straight into the building and go into the swirling portal to the Shadow Labyrinth |goto 39.6,73.5
Enter the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
only if haveq(11375)
step
Kill your way to the end of the instance.
kill Murmur##18708
collect Murmur's Whisper##33840 |q 11375/1
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Mag'har",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming Exalted with the Mag'har faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Mag\'har') < Exalted end,
achieveid={901},
patch='30100',
},[[
step
talk Lieutenant General Orion##19253
accept Arrival in Outland##10120 |goto Hellfire Peninsula/0 87.35,49.80
step
talk Vlagga Freyfeather##18930
turnin Arrival in Outland##10120 |goto 87.34,48.14
accept Journey to Thrallmar##10289 |goto 87.34,48.14
step
talk Vlagga Freyfeather##18930 |goto 87.34,48.14
Tell her _"Send me to Thrallmar!"_
Fly to Thrallmar |goto 56.27,36.38 < 20 |noway |c |q 10289
step
talk General Krakork##19255
turnin Journey to Thrallmar##10289 |goto 55.87,36.87
accept Report to Nazgrel##10291 |goto 55.87,36.87
step
Follow the path |goto 56.06,37.51 < 15 |only if walking
Enter the building |goto 56.44,37.76 < 7 |walk
talk Floyd Pinkus##16602
home Thrallmar |goto 56.71,37.47 |q 10291
step
Enter the building |goto 55.14,37.35 < 7 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Report to Nazgrel##10291 |goto 55.02,35.96
accept Eradicate the Burning Legion##10121 |goto 55.02,35.96
step
talk Sergeant Shatterskull##19256
turnin Eradicate the Burning Legion##10121 |goto 58.06,41.28
accept Felspark Ravine##10123 |goto 58.06,41.28
step
kill 1 Dreadcaller##19434 |q 10123/1 |goto 63.80,37.41
kill 4 Flamewaker Imp##19136 |q 10123/2 |goto 63.80,37.41
kill 6 Infernal Warbringer##19261 |q 10123/3 |goto 63.80,37.41
step
talk Sergeant Shatterskull##19256
turnin Felspark Ravine##10123 |goto 58.06,41.28
accept Forward Base: Reaver's Fall##10124 |goto 58.06,41.28
step
Follow the path |goto 63.72,46.43 < 20 |only if walking
talk Forward Commander To'arch##19273
turnin Forward Base: Reaver's Fall##10124 |goto 65.89,43.59
accept Disrupt Their Reinforcements##10208 |goto 65.89,43.59
step
Follow the path |goto 68.14,45.34 < 15 |only if walking
Kill demon enemies around this area
collect 4 Demonic Rune Stone##28513 |q 10208 |goto 70.83,45.48
step
click Portal Xilus##184290
|tip Stand inside the portal.
Disrupt Port Xilus |q 10208/1 |goto 70.83,45.48
step
Follow the path |goto Hellfire Peninsula/0 73.06,44.10 < 15 |only if walking
Follow the path |goto 73.78,42.82 < 15 |only if walking
Kill demon enemies around this area
collect 4 Demonic Rune Stone##28513 |q 10208 |goto 74.01,38.73
step
click Portal Kruul##184289
|tip Stand inside the portal.
Disrupt Port Kruul |q 10208/2 |goto 74.01,38.73
step
Follow the path |goto 72.51,40.80 < 20 |only if walking
Follow the path |goto 70.80,42.46 < 20 |only if walking
Follow the path |goto 69.45,43.89 < 20 |only if walking
Follow the path |goto 68.15,44.90 < 15 |only if walking
talk Forward Commander To'arch##19273
turnin Disrupt Their Reinforcements##10208 |goto 65.89,43.59
accept Mission: Gateways Murketh and Shaadraz##10129 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"I'm on a bombing mission for Forward Commander To'arch. I need a wyvern destroyer!"_
Mount a Wyvern Destroyer |complete _G.UnitOnTaxi("player") |goto 66.10,43.72 |q 10129
step
|use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use the bomb in your bags to bomb Gateway Shaadraz.
Bomb Gateway Shaadraz |q 10129/2 |goto 77.73,51.81
step
|use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use the bomb in your bags to bomb Gateway Murketh.
Bomb Gateway Murketh |q 10129/1 |goto 78.02,47.19
step
Return the Wyvern Destroyer |complete not _G.UnitOnTaxi("player") |goto 66.10,43.72
step
talk Forward Commander To'arch##19273
turnin Mission: Gateways Murketh and Shaadraz##10129 |goto 65.89,43.59
accept Mission: The Abyssal Shelf##10162 |goto 65.89,43.59
accept Return to Thrallmar##10388 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"Send me to the Abyssal Shelf!"_
Mount a Wyvern Destroyer |complete _G.UnitOnTaxi("player") |q 10162 |goto 66.10,43.72
step
|use Area 52 Special##28132
|tip Use the bomb in your bags to bomb the mobs.
|tip If you don't complete this in the first run, you can fly again until it is done.
Destroy #5# Fel Cannons |q 10162/3 |goto 72.63,17.94
kill 5 Mo'arg Overseer##19397 |q 10162/2 |goto 72.63,17.94
kill 20 Gan'arg Peon##19398 |q 10162/1 |goto 72.63,17.94
step
Return the Wyvern Destroyer |complete not _G.UnitOnTaxi("player") |goto 66.10,43.72
step
talk Forward Commander To'arch##19273
turnin Mission: The Abyssal Shelf##10162 |goto 65.89,43.59
step
Enter the building |goto 55.15,37.40 < 5 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Return to Thrallmar##10388 |goto 55.02,35.97
accept The Assassin##9400 |goto 55.02,35.97
step
Find Krun Spinebreaker |q 9400/1 |goto 33.62,43.53
step
clicknpc Fel Orc Corpse##17062
turnin The Assassin##9400 |goto 33.62,43.53
accept A Strange Weapon##9401 |goto 33.62,43.53
step
Enter the building |goto 55.15,37.40 < 5 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin A Strange Weapon##9401 |goto 55.02,35.97
accept The Warchief's Mandate##9405 |goto 55.02,35.97
step
talk Far Seer Regulkut##16574
turnin The Warchief's Mandate##9405 |goto 54.23,37.90
accept A Spirit Guide##9410 |goto 54.23,37.90
step
use the Ancestral Spirit Wolf Totem##23669
|tip Use it next to the Fel Orc Corpse.
Summon the Ancestral Spirit Wolf |havebuff 132328 |goto 33.62,43.53 |q 9410
step
Watch the dialogue
|tip Stay close to the wolf and follow it until it stops.
Follow the Spirit Wolf |goto 32.05,27.83 < 10 |walk |q 9410
step
talk Gorkan Bloodfist##16845
turnin A Spirit Guide##9410 |goto 31.99,27.79
accept The Mag'har##9406 |goto 31.99,27.79
step
Enter the building |goto 55.15,37.40 < 5 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin The Mag'har##9406 |goto 55.02,35.97
step
talk Shado 'Fitz' Farstrider##18200
accept Windroc Mastery##9854 |goto Nagrand/0 71.57,40.52
step
talk Hemet Nesingwary##18180
accept Clefthoof Mastery##9789 |goto 71.52,40.82
step
talk Harold Lane##18218
accept Talbuk Mastery##9857 |goto 71.38,40.63
stickystart "Slay_12_Windrocs"
stickystart "Slay_12_Clefthoofs"
stickystart "Collect_3_Pairs_of_Ivory_Tusks"
step
kill 12 Talbuk Stag##17130+ |q 9857/1 |goto 72.20,38.42
You can find more Talbuk Stags at [70.81,46.37]
step
label "Slay_12_Windrocs"
kill 12 Windroc##17128+ |q 9854/1 |goto 66.61,39.30
step
label "Slay_12_Clefthoofs"
kill 12 Clefthoof##18205+ |q 9789/1 |goto 64.02,45.11
You can find more Clefthoofs at [70.81,46.37]
step
label "Collect_3_Pairs_of_Ivory_Tusks"
kill Wild Elekk##18334
collect 3 Pair of Ivory Tusks##25463 |q 9914 |future |goto 64.02,45.11
You can find more Elekks at [70.81,46.37]
step
kill Dust Howlers##17158+
collect Howling Wind##24504 |n
accept The Howling Wind##9861 |goto 64.02,45.11
|tip You will eventually automatically accept this quest.
You can find more Dust Howlers at [70.81,46.37]
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9854 |goto 71.57,40.52
accept Windroc Mastery##9855 |goto 71.57,40.52
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9789 |goto 71.52,40.82
accept Clefthoof Mastery##9850 |goto 71.52,40.82
step
talk Harold Lane##18218
turnin Talbuk Mastery##9857 |goto 71.38,40.63
accept Talbuk Mastery##9858 |goto 71.38,40.63
step
talk Gursha##18808
fpath Garadar |goto 57.19,35.25
step
talk Matron Drakia##18302
|tip She walks around inside the building.
accept Missing Mag'hari Procession##9944 |goto 57.10,34.87
step
talk Matron Tikkit##18913
home Garadar |goto 56.73,34.51 |q 9944
step
talk Jorin Deadeye##18106
accept The Impotent Leader##9888 |goto 55.56,37.62
step
talk Warden Bullrok##18407
accept Proving Your Strength##10479 |goto 55.79,37.94
step
click Garadar Bulletin Board##182392
accept Wanted: Giselda the Crone##9935 |goto 55.77,38.01
accept Wanted: Zorbo the Advisor##9939 |goto 55.77,38.01
step
talk Elementalist Yal'hah##18234
|tip He walks around this area.
accept The Throne of the Elements##9870 |goto 55.10,39.05
step
talk Farseer Kurkush##18066
accept Vile Idolatry##9863 |goto 54.78,39.41
step
talk Farseer Corhuk##18067
accept The Missing War Party##9864 |goto 54.80,39.86
step
talk Farseer Margadesh##18068
accept Murkblood Leaders...##9867 |goto 54.53,39.96
step
talk Consortium Recruiter##18335
accept The Consortium Needs You!##9913 |goto 51.95,34.78
step
talk Elementalist Morgh##18074
turnin The Howling Wind##9861 |goto 60.50,22.37
accept Murkblood Corrupters##9862 |goto 60.50,22.37
step
talk Elementalist Sharvak##18072
turnin The Throne of the Elements##9870 |goto 60.66,22.10
step
talk Elementalist Lo'ap##18073
accept A Rare Bean##9800 |goto 60.80,22.38
accept Muck Diving##9815 |goto 60.80,22.38
step
talk Elementalist Untrag##18071
accept The Underneath##9818 |goto 60.66,22.65
step
talk Gordawg##18099
|tip He walks around this area.
turnin The Underneath##9818 |goto 61.77,24.50
accept The Tortured Earth##9819 |goto 61.77,24.50
stickystart "Collect_Digested_Caracoli"
stickystart "Slay_12_Clefhoof_Bulls"
step
kill 12 Talbuk Thorngrazer##17131+ |q 9858/1 |goto 52.10,25.59
step
label "Collect_Digested_Caracoli"
click Dung##182128
|tip They looks like small green piles of swirled poop on the ground around this area.
collect 8 Digested Caracoli##24419 |q 9800/1 |goto 52.10,25.59
step
label "Slay_12_Clefhoof_Bulls"
kill 12 Clefthoof Bull##17132+ |q 9850/1 |goto 51.52,30.86
You can find more at [49.96,35.93]
stickystart "Slay_Warmaul_Enemies"
stickystart "Collect_Obsidian_Warbeads"
step
Enter the cave |goto 46.23,18.78 < 5 |walk
kill Zorbo the Advisor##18413 |q 9939/1 |goto 46.48,18.17
|tip Inside the cave.
step
label "Slay_Warmaul_Enemies"
kill 5 Warmaul Shaman##18064+ |q 9939/2 |goto 47.03,23.58
kill 5 Warmaul Reaver##17138+ |q 9939/3 |goto 47.03,23.58
step
label "Collect_Obsidian_Warbeads"
Kill Warmaul enemies around this area
collect 10 Obsidian Warbeads##25433 |q 10479/1 |goto 47.03,23.58
step
talk Saurfang the Younger##18229
turnin The Missing War Party##9864 |goto 32.44,36.03
accept Once Were Warriors##9865 |goto 32.44,36.03
step
talk Elder Yorley##18414
turnin Missing Mag'hari Procession##9944 |goto 32.31,36.15
accept War on the Warmaul##9945 |goto 32.31,36.15
step
talk Elder Ungriz##18415
accept Finding the Survivors##9948 |goto 32.36,36.21
stickystart "Free_Maghar_Prisoners"
step
Follow the path |goto 29.31,31.92 < 10 |only if walking
kill 8 Warmaul Brute##18065+ |q 9945/1 |goto 24.23,29.71
kill 8 Warmaul Warlock##18037+ |q 9945/2 |goto 24.23,29.71
step
label "Free_Maghar_Prisoners"
Kill Warmaul enemies around this area
collect Warmaul Prison Key##25604 |n
click Warmaul Prisons
Free #5# Mag'har Prisoners |q 9948/1 |goto 24.23,29.71
step
talk Elder Yorley##18414
turnin War on the Warmaul##9945 |goto 32.31,36.15
step
talk Elder Ungriz##18415
turnin Finding the Survivors##9948 |goto 32.36,36.21
step
kill Muck Spawn##17154+
collect 5 Muck-ridden Core##24469 |q 9815/1 |goto 41.66,40.79
stickystart "Slay_Murkblood_Enemies"
stickystart "Collect_10_Murkblood_Idols"
step
kill Ortor of Murkblood##18204
|tip Inside the building.
collect Head of Ortor of Murkblood##24543 |q 9867/1 |goto 30.84,42.36
step
label "Slay_Murkblood_Enemies"
kill 20 Murkblood Scavenger##18207+ |q 9865/1 |goto 31.95,41.41
kill 10 Murkblood Raider##18203+ |q 9865/2 |goto 31.95,41.41
kill 5 Murkblood Putrifier##18202+ |q 9862/1 |goto 31.95,41.41
step
label "Collect_10_Murkblood_Idols"
Kill Murkblood enemies around this area
collect 10 Murkblood Idol##24542 |q 9863/1 |goto 31.95,41.41
step
talk Saurfang the Younger##18229
turnin Once Were Warriors##9865 |goto 32.44,36.03
accept He Will Walk The Earth...##9866 |goto 32.44,36.03
step
talk Zerid##18276
accept Gava'xi##9900 |goto 30.78,58.13
accept Matters of Security##9925 |goto 30.78,58.13
step
talk Gezhe##18265
turnin The Consortium Needs You!##9913 |goto 31.36,57.79
accept Stealing from Thieves##9882 |goto 31.36,57.79
step
talk Shadrek##18333
accept A Head Full of Ivory##9914 |goto 31.77,56.78
turnin A Head Full of Ivory##9914 |goto 31.77,56.78
stickystart "Slay_Voidspawns"
step
click Oshu'gun Crystal Fragment##182258+
|tip They look like green and white crystals on the ground around this area.
kill Vir'aani Raider##17149+
collect 10 Oshu'gun Crystal Fragment##25416 |q 9882/1 |goto 33.40,62.39
step
label "Slay_Voidspawns"
kill 8 Voidspawn##17981+ |q 9925/1 |goto 31.28,67.73
step
kill Gava'xi##18298 |q 9900/1 |goto 42.41,73.49
|tip He walks around this area.
step
kill 12 Ravenous Windroc##18220+ |q 9855/1 |goto 48.44,61.49
step
talk Zerid##18276
turnin Gava'xi##9900 |goto 30.78,58.13
turnin Matters of Security##9925 |goto 30.78,58.13
step
talk Gezhe##18265
turnin Stealing from Thieves##9882 |goto 31.36,57.79
step
talk Wazat##19035
accept I Must Have Them!##10109 |goto 61.67,67.14
step
kill 10 Tortured Earth Spirit##17156+ |q 9819/1 |goto 65.40,70.81
step
kill Dust Howler##17158+
collect 3 Air Elemental Gas##27807 |q 10109/1 |goto 69.42,56.91
You can find more Dust Howlers at [65.46,46.90]
step
talk Wazat##19035
turnin I Must Have Them!##10109 |goto 61.67,67.14
step
talk Kilrath##18273
turnin The Impotent Leader##9888 |goto Terokkar Forest/0 19.77,60.85
accept Don't Kill the Fat One##9889 |goto Terokkar Forest/0 19.77,60.85
step
kill 10 Boulderfist Invader##18260+ |q 9889/1 |goto 19.99,63.07
step
kill Unkor the Ruthless##18262 |q 9889/2 |goto 20.06,63.25
|tip He will eventually submit.
step
talk Unkor the Ruthless##18262
turnin Don't Kill the Fat One##9889 |goto 20.06,63.25
accept Success!##9890 |goto 20.06,63.25
step
talk Kilrath##18273
turnin Success!##9890 |goto 19.77,60.85
accept Because Kilrath is a Coward##9891 |goto 19.77,60.85
step
talk Jorin Deadeye##18106
turnin Because Kilrath is a Coward##9891 |goto Nagrand/0 55.56,37.62
accept Message in a Battle##9906 |goto Nagrand/0 55.56,37.62
step
talk Warden Bullrok##18407
turnin Proving Your Strength##10479 |goto 55.79,37.94
turnin Wanted: Zorbo the Advisor##9939 |goto 55.79,37.94
step
talk Elkay'gan the Mystic##18300
accept Standards and Practices##9910 |goto 55.63,37.53
step
talk Farseer Kurkush##18066
turnin Vile Idolatry##9863 |goto 54.78,39.41
step
talk Farseer Corhuk##18067
turnin He Will Walk The Earth...##9866 |goto 54.80,39.86
step
talk Farseer Margadesh##18068
turnin Murkblood Leaders...##9867 |goto 54.53,39.96
step
talk Gordawg##18099
|tip He walks around this area.
turnin The Tortured Earth##9819 |goto 61.77,24.50
accept Eating Damnation##9821 |goto 61.77,24.50
step
talk Elementalist Lo'ap##18073
turnin A Rare Bean##9800 |goto 60.80,22.38
accept Agitated Spirits of Skysong##9804 |goto 60.80,22.38
turnin Muck Diving##9815 |goto 60.80,22.38
step
talk Elementalist Morgh##18074
turnin Murkblood Corrupters##9862 |goto 60.50,22.37
step
kill 8 Lake Spirit##17153+ |q 9804/1 |goto 59.80,27.25
step
talk Elementalist Lo'ap##18073
turnin Agitated Spirits of Skysong##9804 |goto 60.80,22.38
accept Blessing of Incineratus##9805 |goto 60.80,22.38
step
kill Enraged Crusher##18062+
collect 10 Enraged Crusher Core##24473 |q 9821/1 |goto 52.02,20.09
step
talk Gordawg##18099
|tip He walks around this area.
turnin Eating Damnation##9821 |goto 61.77,24.50
accept Shattering the Veil##9849 |goto 61.77,24.50
step
talk Harold Lane##18218
turnin Talbuk Mastery##9858 |goto 71.38,40.63
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9850 |goto 71.52,40.82
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9855 |goto 71.57,40.52
step
Enter the building |goto 70.94,51.30 < 5 |walk
use the Living Fire##24467
|tip Inside the hut.
Destroy the Western Hut |q 9805/2 |goto 70.76,51.12
step
Follow the path up |goto 72.24,51.12 < 5 |only if walking
Enter the building |goto 72.35,50.56 < 5 |walk
use the Living Fire##24467
|tip Inside the hut.
Destroy the Large Hut |q 9805/1 |goto 72.41,50.28
step
Enter the building |goto 72.67,54.58 < 5 |walk
use the Living Fire##24467
|tip Inside the hut.
Destroy the Eastern Hut |q 9805/4 |goto 72.75,54.70
step
Enter the building |goto 71.37,53.06 < 5 |walk
use the Living Fire##24467
|tip Inside the hut.
Destroy the Southern Hut |q 9805/3 |goto 71.21,53.24
step
talk Elementalist Lo'ap##18073
turnin Blessing of Incineratus##9805 |goto 60.80,22.38
accept The Spirit Polluted##9810 |goto 60.80,22.38
stickystart "Slay_Boulderfist_Enemies"
step
use the Mag'har Battle Standard##25458
|tip Use it next to the bonfire.
Place the First Battle Standard |q 9910/1 |goto 72.25,69.98
step
Follow the path |goto 73.16,69.56 < 10 |only if walking
Follow the path up |goto 72.95,68.65 < 10 |only if walking
Continue up the path |goto 74.75,67.64 < 10 |only if walking
use the Mag'har Battle Standard##25458
|tip Use it next to the bonfire.
Place the Second Battle Standard |q 9910/2 |goto 74.68,69.83
step
Follow the path |goto 74.68,68.65 < 10 |only if walking
Continue up the path |goto 75.39,67.57 < 10 |only if walking
use the Mag'har Battle Standard##25458
|tip Use it next to the bonfire.
Place the Third Battle Standard |q 9910/3 |goto 75.79,68.30
step
label "Slay_Boulderfist_Enemies"
kill 8 Boulderfist Mystic##17135+ |q 9906/1 |goto 72.88,69.81
kill 8 Boulderfist Crusher##17134+ |q 9906/2 |goto 72.88,69.81
step
talk Jorin Deadeye##18106
turnin Message in a Battle##9906 |goto 55.56,37.62
accept An Audacious Advance##9907 |goto 55.56,37.62
step
talk Elkay'gan the Mystic##18300
turnin Standards and Practices##9910 |goto 55.63,37.54
accept Bleeding Hollow Supply Crates##9916 |goto 55.63,37.54
stickystart "Collect_Bleeding_Hollow_Supply_Crates"
step
kill 10 Boulderfist Warrior##17136+ |q 9907/1 |goto 40.77,31.63
kill 10 Boulderfist Mage##17137+ |q 9907/2 |goto 40.77,31.63
step
label "Collect_Bleeding_Hollow_Supply_Crates"
click Bleeding Hollow Supply Crate##182265+
collect 10 Bleeding Hollow Supply Crate##25460 |q 9916/1 |goto 40.77,31.63
|tip They look like wooden boxes with a red symbol on the side of them.
stickystart "Slay_8_Lake_Surgers"
step
kill Watoosun's Polluted Essence##18145 |q 9810/1 |goto 32.99,50.89
|tip Underwater.
step
label "Slay_8_Lake_Surgers"
kill 8 Lake Surger##17155+ |q 9810/2 |goto 34.67,48.78
|tip Underwater.
step
kill Shattered Rumbler##17157+
use Gordawg's Boulder##24501
|tip Use it on their corpses.
kill 30 Minion of Gurok##18181+ |q 9849/1 |goto 28.18,77.65
step
talk Elkay'gan the Mystic##18300
turnin Bleeding Hollow Supply Crates##9916 |goto 55.63,37.54
step
talk Jorin Deadeye##18106
turnin An Audacious Advance##9907 |goto 55.56,37.62
accept Diplomatic Measures##10107 |goto 55.56,37.62
step
Follow the path |goto 73.56,68.18 < 10 |only if walking
Follow the path up |goto 74.70,67.96 < 10 |only if walking
Continue up the path |goto 75.57,67.60 < 10 |only if walking
talk Lantresor of the Blade##18261
Watch the dialogue
Hear the story of the Blademaster |q 10107/1 |goto 73.81,62.60
step
talk Lantresor of the Blade##18261
turnin Diplomatic Measures##10107 |goto 73.81,62.60
accept Armaments for Deception##9928 |goto 73.81,62.60
accept Ruthless Cunning##9927 |goto 73.81,62.60
stickystart "Plant_Warmaul_Ogre_Banners"
stickystart "Slay_Kilsorrow_Agents"
stickystart "Collect_Kilsorrow_Armaments"
step
Enter the building |goto 70.93,81.25 < 5 |walk
kill Giselda the Crone##18391 |q 9935/1 |goto 71.16,82.36
|tip Inside the building.
step
label "Plant_Warmaul_Ogre_Banners"
Kill Kil'sorrow enemies around this area
use the Warmaul Ogre Banner##25552
|tip Use it on their corpses.
Plant #10# Warmaul Ogre Banners |q 9927/1 |goto 70.28,79.76
step
label "Slay_Kilsorrow_Agents"
Kill Kil'sorrow enemies around this area
Slay #10# Kil'sorrow Agents |q 9935/2 |goto 70.28,79.76
step
label "Collect_Kilsorrow_Armaments"
click Kil'sorrow Armaments##182355+
|tip They look like small tan boxes on the ground with a red axe logo on the ground around this area.
collect 10 Kil'sorrow Armaments##25554 |q 9928/1 |goto 70.28,79.76
step
talk Lantresor of the Blade##18261
turnin Armaments for Deception##9928 |goto 73.81,62.60
turnin Ruthless Cunning##9927 |goto 73.81,62.60
accept Returning the Favor##9931 |goto 73.81,62.60
accept Body of Evidence##9932 |goto 73.81,62.60
step
talk Warden Bullrok##18407
turnin Wanted: Giselda the Crone##9935 |goto 55.79,37.94
step
talk Gordawg##18099
|tip He walks around this area.
turnin Shattering the Veil##9849 |goto 61.77,24.50
step
talk Elementalist Lo'ap##18073
turnin The Spirit Polluted##9810 |goto 60.80,22.38
stickystart "Plant_Kilsorrow_Banners"
step
use the Damp Woolen Blanket##25658
|tip Use it on the Blazing Warmaul Pyre.
|tip Defend the 2 ogres that spawn until they finish placing corpses.
Plant the Kil'sorrow Bodies |q 9932/1 |goto 46.57,24.28
step
label "Plant_Kilsorrow_Banners"
Kill Warmaul enemies around this area
use the Kil'sorrow Banner##25555
|tip Use it on their copses.
Plant #10# Kil'sorrow Banners |q 9931/1 |goto 46.57,24.28
step
talk Lantresor of the Blade##18261
turnin Returning the Favor##9931 |goto 73.81,62.60
turnin Body of Evidence##9932 |goto 73.81,62.60
accept Message to Garadar##9934 |goto 73.81,62.60
step
talk Garrosh##18063
turnin Message to Garadar##9934 |goto 55.44,37.64
step
talk Warden Bullrok##18407
accept Wanted: Durn the Hungerer##9937 |goto 55.79,37.94
step
talk Matron Celestine##18301
accept He Called Himself Altruis...##9983 |goto 55.20,36.10
step
map Nagrand
path follow loose;loop;ants curved
path	46.7,63.7	40.8,63.5	37.4,62.1
path	34.0,62.7	31.7,65.4	30.5,71.3
path	32.0,75.9	35.5,78.5	39.8,78.7
path	42.4,75.5	46.0,70.2
Follow the path around looking for Durn the Hungerer
kill Durn the Hungerer |q 9937/1
|tip He walks around this area.
step
talk Altruis the Sufferer##18417
turnin He Called Himself Altruis...##9983 |goto 27.34,43.09
accept Survey the Land##9991 |goto 27.34,43.09
step
Watch the dialogue
Survey the Forge Camps |q 9991/1
step
talk Altruis the Sufferer##18417
turnin Survey the Land##9991 |goto 27.34,43.09
accept Buying Time##9999 |goto 27.34,43.09
stickystart "Slay_Moarg_Engineers"
stickystart "Slay_Ganarg_Tinkerers"
step
kill 2 Felguard Legionnaire |q 9999/1 |goto 24.50,37.92
step
label "Slay_Moarg_Engineers"
kill 3 Mo'arg Engineer |q 9999/2 |goto 24.50,37.92
step
label "Slay_Ganarg_Tinkerers"
kill 8 Gan'arg Tinkerer |q 9999/3 |goto 24.50,37.92
step
talk Altruis the Sufferer##18417
turnin Buying Time##9999 |goto 27.34,43.09
accept The Master Planner##10001 |goto 27.34,43.09
step
kill Mo'arg Master Planner##18567
collect The Master Planner's Blueprints##25751 |q 10001/1 |goto 17.54,50.32
step
talk Altruis the Sufferer##18417
turnin The Master Planner##10001 |goto 27.34,43.09
accept Patience and Understanding##10004 |goto 27.34,43.09
step
talk Elder Yorley##18414
accept Cho'war the Pillager##9946 |goto 32.31,36.15
step
Follow the path |goto 29.26,31.82 < 10 |only if walking
Follow the path up |goto 25.98,29.03 < 10 |only if walking
Continue following the path |goto 24.89,23.82 < 10 |only if walking
Enter the cave |goto 27.14,18.37 < 10 |only if walking
Continue following the path |goto 25.80,15.61 < 15 |c |only if walking |q 9946
step
Continue following the path |goto 26.85,13.61 < 10 |only if walking
Leave the cave |goto 28.16,13.44 < 10 |only if walking
Follow the path up |goto 28.29,11.81 < 10 |c |only if walking |q 9946
step
Enter the cave |goto 27.41,11.46 < 10 |walk
Follow the path |goto 26.32,13.09 < 5 |walk
Continue following the path |goto 25.53,15.78 < 5 |walk
Follow the path up |goto 26.25,14.64 < 5 |walk
kill Cho'war the Pillager##18423
|tip Inside the cave.
collect Head of Cho'war##25590 |q 9946/1 |goto 25.90,13.70
step
talk Elder Yorley##18414
turnin Cho'war the Pillager##9946 |goto 32.31,36.15
step
talk Warden Bullrok##18407
turnin Wanted: Durn the Hungerer##9937 |goto 55.79,37.94
step
Enter the building |goto Shattrath City/0 74.06,32.83 < 10 |walk
talk Sal'salabim##18584
|tip Inside the building.
Tell him _"Altruis sent me. He said that you could help me."_
kill Sal'salabim##18584
Persuad Sal'salabim |q 10004/1 |goto 77.29,34.86
step
talk Sal'salabim##18584
|tip Inside the building.
turnin Patience and Understanding##10004 |goto 77.29,34.86
accept Crackin' Some Skulls##10009 |goto 77.29,34.86
step
talk Raliq the Drunk##18585
|tip Inside the building.
Tell him _"I have been sent by Sal'salabim to collect a debt that you owe. Pay up or I'm going to have to hurt you."_
kill Raliq the Drunk##18585
Collect Raliq's Debt |q 10009/1 |goto 75.00,31.41
step
talk Coosh'coosh##18586
|tip He walks around this area.
Tell him _"I have been sent by Sal'salabim to collect a debt that you owe. Pay up or I'm going to have to hurt you."_
kill Coosh'coosh##18586
Collect Coosh'coosh's Debt |q 10009/2 |goto Zangarmarsh/0 80.82,91.12
step
talk Floon##18588
|tip He walks around this area.
Tell him _"I have been sent by Sal'salabim to collect a debt that you owe. Pay up or I'm going to have to hurt you."_
kill Floon##18588
Collect Floon's Debt |q 10009/3 |goto Terokkar Forest/0 27.14,58.19
step
Enter the building |goto Shattrath City/0 74.06,32.83 < 10 |walk
talk Sal'salabim##18584
|tip Inside the building.
turnin Crackin' Some Skulls##10009 |goto 77.29,34.86
accept It's Just That Easy?##10010 |goto 77.29,34.86
step
talk Altruis the Sufferer##18417
turnin It's Just That Easy?##10010 |goto Nagrand/0 27.34,43.09
accept Forge Camp: Annihilated##10011 |goto Nagrand/0 27.34,43.09
step
kill Demos,Overseer of Hate##18535
collect 1 Fel Cannon Activator##25770 |goto 24.98,36.09 |q 10011
step
use the Fel Cannon Activator##25770
Destroy Forge Camp: Hate |q 10011/1 |goto 24.98,36.09
step
kill Xirkos,Overseer of Fear##18536
collect 1 Fel Cannon Activator##25771 |goto 19.59,51.15 |q 10011
step
use the Fel Cannon Activator##25771
Destoy Forge Camp: Fear |q 10011/2 |goto 19.38,50.87
step
talk Altruis the Sufferer##18417
turnin Forge Camp: Annihilated##10011 |goto 27.34,43.09
step
After doing those quests the best way to gain reputation is to farm and turn in Obsidian Warbeads
confirm |only if rep("The Mag'har")<Exalted
step
label "Collect_Beads_For_Rep"
Kill Warmaul enemies around this area
collect Obsidian Warbeads##25433 |n |goto 45.56,22.00
|tip Collect beads in sets of 10.
Click here to turn them in |confirm |only if rep("The Mag'har")<Exalted
step
talk Warden Bullrok##18407
accept More Warbeads##10478 |goto 55.79,37.94
Click here to continue farming |next "Collect_Beads_For_Rep" |confirm |only if rep("The Mag'har")<=Revered
Earn Exalted status with The Mag'har |complete rep("The Mag'har")==Exalted |next "Reached_Exalted_Status"
step
label "Reached_Exalted_Status"
_Congratulations!_
You reached Exalted reputation with "The Mag'har" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Ogri'la",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Ogri'la faction.",
achieveid={896},
patch='30001',
},[[
step
label "route"
Routing to proper section |next "daily" |only if completedq(11091)
Routing to proper section |next |only if default
step
talk V'eru##22497
accept Speak with the Ogre##10984 |goto Shattrath City,56.5,49.1
step
talk Grok##22940
turnin Speak with the Ogre##10984 |goto 64.9,68.1
accept Mog'dorg the Wizened##10983 |goto 64.9,68.1
step
talk Mog'dorg the Wizened##22941
turnin Mog'dorg the Wizened##10983 |goto Blade's Edge Mountains,55.5,44.9
accept Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains,55.5,44.9
accept Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains,55.5,44.9
accept Even Gronn Have Standards##10997 |goto Blade's Edge Mountains,55.5,44.9
step
kill Grulloc##20216 |n
click Grulloc's Dragon Skull##185567
collect 1 Grulloc's Dragon Skull##32379 |q 10995/1 |goto Blade's Edge Mountains,60.9,47.6
step
kill Maggoc##20600 |n
click Maggoc's Treasure Chest##185569
collect 1 Maggoc's Treasure Chest##32380 |q 10996/1 |goto 58.5,62.2
step
kill Slaag##22199+
click Slaag's Standard##185574
collect 1 Slaag's Standard##32382 |q 10997/1 |goto Terokkar Forest,20.3,17.5
step
talk Mog'dorg the Wizened##22941
turnin Grulloc Has Two Skulls##10995 |goto Blade's Edge Mountains,55.5,44.9
turnin Maggoc's Treasure Chest##10996 |goto Blade's Edge Mountains,55.5,44.9
turnin Even Gronn Have Standards##10997 |goto Blade's Edge Mountains,55.5,44.9
accept Grim(oire) Business##10998 |goto Blade's Edge Mountains,55.5,44.9
step
Stand in the fire until Vim'gol the Vile spawns
kill Vim'gol the Vile##22911 |n
click Vim'gol's Vile Grimoire##185562
collect 1 Vim'gol's Vile Grimoire##32358 |q 10998/1 |goto 77.3,31.8
step
talk Mog'dorg the Wizened##22941
turnin Grim(oire) Business##10998 |goto Blade's Edge Mountains,55.5,44.9
accept Into the Soulgrinder##11000 |goto Blade's Edge Mountains,55.5,44.9
step
Use Vim'gol's Grimoire |use Vim'gol's Grimoire##32467
Kill all adds that spawn, defending the soul grinder.
Defeat Skulloc Soul Grinder
click Skulloc's Soul##185577
Capture Skulloc's Soul |q 11000/1 |goto 60.0,24.1
step
talk Mog'dorg the Wizened##22941
turnin Into the Soulgrinder##11000 |goto Blade's Edge Mountains,55.5,44.9
accept Ogre Heaven##11009 |goto Blade's Edge Mountains,55.5,44.9
step
talk Chu'a'lor##23233
turnin Ogre Heaven##11009 |goto Blade's Edge Mountains,28.8,57.3
accept The Crystals##11025 |goto Blade's Edge Mountains,28.8,57.3
step
click Apexis Shard Formation##185911
collect 5 Apexis Shard##32569 |q 11025/1 |goto Blade's Edge Mountains,28.8,62.4
step
talk Chu'a'lor##23233
turnin The Crystals##11025 |goto 28.8,57.4
accept An Apexis Relic##11058 |goto 28.8,57.4
step
talk Torkus##23316
accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto 28.4,57.6
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect Apexis Shard##32569 |q 11058 |goto 29.2,65.2
step
Click the Apexis Relic
|tip It looks like a smaller floating crystal hovering over a white orb on the ground.
Insert an Apexis Shard, and begin!
Repeat the color patterns that are shown
|tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 6 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
Attain the Apexis Vibrations |q 11058/1 |goto 27.7,68.1
If you fail, get another Apexis Shard around [29.2,65.2]
step
talk Chu'a'lor##23233
turnin An Apexis Relic##11058 |goto 28.8,57.4
accept The Relic's Emanation##11080 |goto 28.8,57.4
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect Apexis Shard##32569 |q 11080 |goto 29.2,65.2
step
Click the Apexis Relic
|tip It looks like a smaller floating crystal hovering over a white orb on the ground.
Insert an Apexis Shard, and begin!
Repeat the color patterns that are shown
|tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
Attain the Apexis Vibrations |q 11080/1 |goto 31.5,63.4
If you fail, get another Apexis Shard around [29.2,65.2]
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto 28.8,57.4
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect 10 Apexis Shard##32569 |q 11030 |goto 31.2,52.2
step
Click a Fel Crystalforge
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
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect 35 Apexis Shard##32569 |q 11059 |goto 31.2,52.2
step
Click the Apexis Monument
|tip It's a huge floating crystal that changes colors.
Insert 35 Apexis Shards, and begin!
Click any of the 4 big colored buttons on the ground
|tip You will get hit for 7,000 damage, but if you are high level, it shouldn't be a big deal.  This will make the quest mob spawn faster.
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
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect 35 Apexis Shard##32569 |q 11078 |goto 31.2,52.2
step
Click Rivendark's Egg
|tip It looks like a big brown spiked egg sitting in a nest on the ground.
Place 35 Apexis Shards near the dragon egg to crack it open
kill Rivendark##23061
collect Dragon Teeth##32732 |q 11078/1 |goto 27.2,64.8
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect 10 Apexis Shard##32569 |q 11061 |goto 31.2,52.2
step
talk Sky Commander Keller##23334
turnin To Rule The Skies##11078 |goto 27.4,52.7
step
Click the Bash'ir Crystalforge
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
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
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
label "daily"
talk Chu'a'lor##23233
accept The Relic's Emanation##11080 |goto Blade's Edge Mountains,28.8,57.4
step
talk Kronk##23253
accept Banish the Demons##11026 |goto Blade's Edge Mountains,28.9,57.9
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
talk Kronk##23253
accept Banish More Demons##11051 |goto Blade's Edge Mountains,28.9,57.9
|only if completedq(11026)
step
talk Skyguard Khatie##23335
accept Wrangle More Aether Rays!##11066 |goto 28.0,51.5
step
talk Sky Sergeant Vanderlip##23120
accept Bomb Them Again!##11023 |goto Blade's Edge Mountains,27.6,52.9
step
Click Apexis Shard Formations
|tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
You can also kill any type of mob around this whole area
collect Apexis Shard##32569 |q 11080 |goto 29.2,65.2
step
Click the Apexis Relic
|tip It looks like a smaller floating crystal hovering over a white orb on the ground.
Insert an Apexis Shard, and begin!
Repeat the color patterns that are shown
|tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
Attain the Apexis Vibrations |q 11080/1 |goto 31.5,63.4
If you fail, get another Apexis Shard around [29.2,65.2]
step
Use your Banishing Crystal |use Banishing Crystal##32696
Kill Fear Fiends and Abyssal Flamebringers near the portal that opens.
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
|tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
Wrangle 5 Aether Rays |q 11066/1 |goto 31.6,56.4
step
Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the gorund around this area.
Destroy 15 Fel Cannonball Stacks |q 11023/1 |goto 33.3,44.0
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto Blade's Edge Mountains,28.8,57.4
step
talk Kronk##23253
turnin Banish the Demons##11026 |goto Blade's Edge Mountains,28.9,57.9
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
talk Kronk##23253
turnin Banish More Demons##11051 |goto Blade's Edge Mountains,28.9,57.9
|only if completedq(11026)
step
talk Skyguard Khatie##23335
turnin Wrangle More Aether Rays!##11066 |goto 28.0,51.5
step
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains,27.6,52.9
step
You have completed the dailies for today.
Click here to be taken to the beginning of the guide. |confirm
|next "daily" |only if rep("Ogri'la")<=Exalted
|next "exalted" |only if rep("Ogri'la")==Exalted
step
label "exalted"
Congratulation, you are now Exalted with Ogri'la.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\The Scale of the Sands",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Scale of the Sands faction.",
achieveid={959},
patch='30001',
},[[
step
This reputation can be earned by running the Caverns of Time: Hyjal Summit raid.
A full clear will grant roughly 7800 reputation.
|confirm
step
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label "start"
Kill every creature that is hostile in this instance in order to gain reputation. |goto Hyjal Summit 10.5,65.1
|tip You will have to clear this place a few times to reach Exalted.
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
Ride the elevator up to the Scryer Rise |goto Shattrath City,50.0,62.9 < 5 |q 10553 |only if walking
talk Magistrix Fyalenn##18531
accept Firewing Signets##10412 |goto 45.2,81.5
accept Sunfury Signets##10656 |goto 45.2,81.5
step
talk Voren'thal the Seer##18530
turnin Voren'thal the Seer##10553 |goto 42.8,91.7
accept Synthesis of Power##10416 |goto 42.8,91.7
step
talk Arcanist Savan##23272
accept Report to Spymaster Thalodien##11039 |goto Shattrath City,44.6,76.4
step
talk Spymaster Thalodien##19468
turnin Report to Spymaster Thalodien##11039 |goto Netherstorm,32,64
accept Manaforge B'naar##10189 |goto Netherstorm,32,64
step
kill Captain Arathyn##19635
|tip He walks around this area on a big purple bird.
collect B'naar Personnel Roster##28376 |q 10189/1 |goto 27.8,65
step
talk Spymaster Thalodien##19468
turnin Manaforge B'naar##10189 |goto 32,64
accept High Value Targets##10193 |goto 32,64
talk Magistrix Larynna##19469
accept Bloodgem Crystals##10204 |goto 32,64
only if rep ('The Scryers') >= Friendly
stickystart "sunfurysig"
step
kill Sunfury Magister##18855+
collect Bloodgem Shard##28452 |n
Use the Bloodgem Shard next to a floating crystal |use Bloodgem Shard##28452
Siphon the Bloodgem Crystal |q 10204/1 |goto 26.3,66.7
kill 8 Sunfury Geologist##19779+ |q 10193/3 |goto 26.3,66.7
step
label "sunfurysig"
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
Tell her you're as ready as you'll ever be.
You will fly to Manaforge Coruu |goto 48.0,86.0 < 5 |noway |c |q 10652
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
Go outside |goto 50.8,83.2 |walk
kill Sunfury Guardsmen##18850
collect Sunfury Guardsman Medallion##28637 |q 10197/2
step
talk Caledis Brightdawn##19840
turnin A Convincing Disguise##10197 |goto 48.2,86.6
accept Information Gathering##10198 |goto 48.2,86.6
step
Use the Sunfury Disguise in your bags |havebuff 133564 |use Sunfury Disguise##28607 |q 10198
step
Go inside Manaforge Coruu
Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you
Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
Listen to them talk
Gather the Information |q 10198/1 |goto 48.2,84.1
step
Go outside |goto 48.2,86.6 |walk
talk Caledis Brightdawn##19840
turnin Information Gathering##10198 |goto 48.2,86.6
accept Shutting Down Manaforge Coruu##10330 |goto 48.2,86.6
step
_Enter_ Manaforge Coruu
Kill Overseer Seylanna
collect Coruu Access Crystal##29396 |q 10330/2 |goto 49,81.5
click the Coruu Control Console##183956
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Coruu |q 10330/1 |goto 49,81.5
step
Go outside
talk Caledis Brightdawn##19840
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
only if rep ('The Scryers') >= Neutral
stickystart "sunbowcent"
step
_Enter_ Manaforge Duro
kill Overseer Athanel##20435
collect 1 Duro Access Crystal##29397|q 10338/2 |goto 60.0,68.5
only if rep ('The Scryers') >= Friendly
step
click the Duro Control Console##184311
click "<Begin emergency shutdown>"
Kill the technicians as they come to try to save the Manaforge
Only takes 2 minutes
Shut Down Manaforge Duro |q 10338/1 |goto 59.1,66.8
only if rep ('The Scryers') >= Friendly
step
label "sunbowcent"
kill 8 Sunfury Conjurer##20139+ |q 10341/1 |goto 57.9,63.4
kill 6 Sunfury Bowman##20207+ |q 10341/2 |goto 57.9,63.4
kill 4 Sunfury Centurion##20140+ |q 10341/3 |goto 57.9,63.4
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
_Enter_ Manaforge Ara
kill Gan'arg Warp-Tinker##20285+, Mo'arg Warp-Master##20326+, Daughter of Destiny##18860+
|tip You can also find more outside of Manaforge Ara.
collect 8 Orders From Kael'thas##29797 |q 10432/1 |goto 27.1,39.2
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
Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
collect 1 Socrethar's Teleportation Stone##29796 |q 10507 |goto Netherstorm,36.4,18.4 |n
collect 1 Voren'thal's Presence##30259 |q 10507 |goto Netherstorm,36.4,18.4 |n
Step into the teleporter
Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6,1 |noway|c
step
Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
Socrethar slain |q 10507/1 |goto 29.6,14.2
step
talk Voren'thal the Seer##18530
turnin Turnin Point##10507 |goto Shattrath City,42.8,91.7
step
talk Larissa Sunstrike##21954
accept Karabor Training Grounds##10687 |goto Shadowmoon Valley,55.7,58.2
step
talk Battlemage Vyara##22211
accept Sunfury Signets##10824 |goto 56.3,58.8
step
talk Arcanist Thelis##21955
accept Tablets of Baa'ri##10683 |goto 56.3,59.6
step
talk Varen the Reclaimer##21953
accept The Ashtongue Broken##10807 |goto Shadowmoon Valley,54.7,58.2
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
Follow the path down |goto 57.4,49.7 < 5 |q 10686 |walk
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
collect Freshly Drawn Blood##30850 |n |goto Netherstorm,39.6,20.5
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
kill Blackheart the Inciter##18667
collect 1 Book of Fel Names##30808|q 10649/1 |goto Shadow Labyrinth 26.6,68.6
step
talk Altruis the Sufferer##18417
turnin The Book of Fel Names##10649 |goto Nagrand,27.3,43.1
accept Return to the Scryers##10691 |goto Nagrand,27.3,43.1
step
talk Larissa Sunstrike##21954
turnin Return to the Scryers##10691 |goto Shadowmoon Valley,55.8,58.2
accept Varedis Must Be Stopped##10692 |goto Shadowmoon Valley,55.8,58.2
step
kill Netharel##21164 |q 10692/2 |goto Shadowmoon Valley,68.6,52.7
|tip He is walking amongst the Demon Hunter Supplicants.
step
kill Alandien##21171 |q 10692/4 |goto 69.6,54.1
step
When Varedis gets low on health, use the _Book of Fel Names_ to defeat him.
|tip He will become immune to normal attacks.
Use Book of Fel Names |use Book of Fel Names##30854
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
After turning these quests in, you will unlock the daily versions of these quests, which you will have to farm.
step
talk Voren'thal the Seer##18530
turnin Synthesis of Power##10416 |goto Shattrath City,42.8,91.7
When you're done turning items in, click here to farm. |next "farming" |only if rep('The Scryers')<=Revered |confirm
|next "exalted" |only if rep('The Scryers')==Exalted
step
label "farming"
kill Sunfury Bloodwarder##18853+, Sunfury Magister##18855+, Sunfury Geologist##19779+, Sunfury Astromancer##19643+, Sunfury Captain##19453+
collect 1 Arcane Tome##29739 |n |goto Netherstorm,27.8,72.6
|tip You can turn in one of these at a time.
collect 10 Sunfury Signet##30810 |n |goto Netherstorm,27.8,72.6
|tip You will need to collect multiples of 10.
You can find more around [25.7,67.2]
Click here when you're ready to turn in. |confirm
step
label "signets"
talk Magistrix Fyalenn##18531
accept More Sunfury Signets##10658 |n |goto Shattrath City,45.2,81.5
Click here to turn in Arcane Tomes |next "tomes" |confirm
Click here to continue farming. |next "farming" |confirm
Earn Exalted reputation with The Scryers. |next "exalted" |complete rep('The Scryers')==Exalted
step
label "tomes"
talk Voren'thal the Seer##18530
accept Arcane Tomes##10419 |n |goto Shattrath City,42.8,91.7
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
accept A'dal##10210 |goto Shattrath City,61.2,12.6
step
talk A'dal##18481
turnin A'dal##10210 |goto 54,44.8
step
talk Matron Celestine##18301
accept He Called Himself Altruis...##9983 |goto Nagrand,55.2,36.1
step
talk Mag'har Captive##18210
|tip You will have to kill the two npc's guarding him.
accept The Totem of Kar'dash##9868 |goto Nagrand,31.3,44.1
step
Escort the Mag'har Captive |q 9868/1
step
talk Altruis the Sufferer##18417
turnin He Called Himself Altruis...##9983 |goto 27.3,43.1
accept Survey the Land##9991 |goto 27.3,43.1
|tip Makes sure you're not mounted, or you will have to abandon and re-accept the quest.
step
Forge Camps Surveyed. |q 9991/1
step
talk Altruis the Sufferer##18417
turnin Survey the Land##9991|goto 27.3,43.1
accept Buying Time##9999 |goto 27.3,43.1
step
kill 2 Felguard Legionnaire##17152+ |q 9999/1 |goto 25.2,38.3
kill 3 Mo'arg Engineer##16945+ |q 9999/2 |goto 25.2,38.3
kill 8 Gan'arg Tinkerer##17151+ |q 9999/3 |goto 25.2,38.3
step
talk Altruis the Sufferer##18417
turnin Buying Time##9999 |goto 27.3,43.1
accept The Master Planner##10001 |goto 27.3,43.1
step
kill Mo'arg Master Planner##18567
collect The Master Planner's Blueprints##25751 |q 10001/1 |goto 23.6,34.6
step
talk Altruis the Sufferer##18417
turnin The Master Planner##10001 |goto 27.3,43.1
accept Patience and Understanding##10004 |goto 27.3,43.1
step
talk Garrosh##18063
turnin The Totem of Kar'dash##9868 |goto Nagrand,55.5,37.6
step
talk Jorin Deadeye##18106
accept The Impotent Leader##9888 |goto 55.5,37.6
step
talk Kilrath##18273
turnin The Impotent Leader##9888 |goto Terokkar Forest,19.8,60.9
accept Don't Kill the Fat One##9889 |goto Terokkar Forest,19.8,60.9
step
kill 10 Boulderfist Invader##18260+ |q 9889/1 |goto 20,63.1
step
Fight Unkor the Ruthless until he submits |q 9889/2 |goto 20,63.1
talk Unkor the Ruthless##18262
turnin Don't Kill the Fat One##9889 |goto 20,63.1
accept Success!##9890 |goto 20,63.1
step
talk Kilrath##18273
turnin Success!##9890 |goto 19.8,60.9
accept Because Kilrath is a Coward##9891 |goto 19.8,60.9
step
talk Jorin Deadeye##18106
turnin Because Kilrath is a Coward##9891 |goto Nagrand,55.5,37.6
accept Message in a Battle##9906 |goto Nagrand,55.5,37.6
step
kill 8 Boulderfist Mystic##17135+ |q 9906/1 |goto 72.9,69.8
kill 8 Boulderfist Crusher##17134+ |q 9906/2 |goto 72.9,69.8
step
talk Jorin Deadeye##18106
turnin Message in a Battle##9906 |goto 55.5,37.6
accept An Audacious Advance##9907 |goto 55.5,37.6
step
kill 10 Boulderfist Warrior##17136+ |q 9907/1 |goto 40.8,31.5
kill 10 Boulderfist Mage##17137+ |q 9907/2 |goto 40.8,31.5
step
talk Jorin Deadeye##18106
turnin An Audacious Advance##9907 |goto 55.5,37.6
accept Diplomatic Measures##10107 |goto 55.5,37.6
step
talk Lantresor of the Blade##18261
Listen to his story
Hear the story of the Blademaster |q 10107/1 |goto 73.8,62.6
turnin Diplomatic Measures##10107 |goto 73.8,62.6
accept Armaments for Deception##9928 |goto 73.8,62.6
accept Ruthless Cunning##9927 |goto 73.8,62.6
step
click the Kil'sorrow Armaments##182355
|tip They look like skinny, square, tan boxes on the ground with a red axe logo on them.
collect 10 Kil'sorrow Armaments##25554 |q 9928/1 |goto 71.4,79.4
kill Kil'sorrow Deathsworn##17148, Kil'sorrow Cultist##17147, Kil'sorrow Spellbinder##17146
Kill 10 Kil'sorrow Agents |q 9935/2 |goto 71.4,79.4
Use your Warmaul Ogre Banner on their corpses |use Warmaul Ogre Banner##25552
Plant 10 Warmaul Ogre Banners |q 9927/1 |goto 71.4,79.4
step
talk Lantresor of the Blade##18261
turnin Armaments for Deception##9928 |goto 73.8,62.6
turnin Ruthless Cunning##9927 |goto 73.8,62.6
accept Returning the Favor##9931 |goto 73.8,62.6
accept Body of Evidence##9932 |goto 73.8,62.6
step
kill Warmaul Shaman##18064+, Warmaul Reaver##17138+
Use your Kil'sorrow Banner on their copses |use Kil'sorrow Banner##25555
Plant 10 Kil'sorrow Banners |q 9931/1 |goto 46.5,24.3
Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658
|tip It looks like a big burning bonfire.
Defend the 2 ogres that spawn until they finish placing corpses around
Plant the Kil'sorrow Bodies |q 9932/1 |goto 46.5,24.3
step
talk Lantresor of the Blade##18261
turnin Returning the Favor##9931 |goto 73.8,62.6
turnin Body of Evidence##9932 |goto 73.8,62.6
accept Message to Garadar##9934 |goto 73.8,62.6
step
talk Garrosh##18063
turnin Message to Garadar##9934 |goto 55.5,37.6
step
Talk to Sal'salabim
Tell him Altruis sent you
kill Sal'salabim##18584
Persuade Sal'salabim |q 10004/1 |goto Shattrath City,77.3,34.9
step
talk Sal'salabim##18584
turnin Patience and Understanding##10004 |goto 77.3,34.9
accept Crackin' Some Skulls##10009 |goto 77.3,34.9
step
Talk to Raliq the Drunk
Tell him you've been sent by Sal'salabim to collect a debt that you owe
kill Raliq the Drunk##18585
collect Raliq's Debt##25767 |q 10009/1 |goto 75.0,31.4
step
Talk to Coosh'coosh
Tell him you've been sent by Sal'salabim to collect a debt that you owe
kill Coosh'coosh##18586
collect Coosh'coosh's Debt##25768 |q 10009/2 |goto Zangarmarsh,80.8,91.2
step
Talk to Floon
Tell him you've been sent by Sal'salabim to collect a debt that you owe
kill Floon##18588
collect Floon's Debt##25769 |q 10009/3 |goto Terokkar Forest,27.6,58.1
step
talk Sal'salabim##18584
turnin Crackin' Some Skulls##10009 |goto Shattrath City,77.3,34.9
accept It's Just That Easy?##10010 |goto Shattrath City,77.3,34.9
step
talk Altruis the Sufferer##18417
turnin It's Just That Easy?##10010 |goto Nagrand,27.3,43.1
accept Forge Camp: Annihilated##10011 |goto Nagrand,27.3,43.1
step
kill Demos\,\ Overseer of Hate##18535
collect Fel Cannon Activator##25770 |q 10011 |goto 25.0,36.1
step
Use your Fel Cannon Activator on the Fel Cannon: Hate |use Fel Cannon Activator##25770
Destroy Forge Camp: Hate |q 10011/1 |goto 25.1,36.0
step
kill Xirkos\,\ Overseer of Fear##18536
collect Fel Cannon Activator##25771 |q 10011 |goto 19.6,51.1
step
Use your Fel Cannon Activator on the Fel Cannon: Fear |use Fel Cannon Activator##25771
Destroy Forge Camp: Fear |q 10011/2 |goto 19.4,50.8
step
talk Altruis the Sufferer##18417
turnin Forge Camp: Annihilated##10011 |goto 27.3,43.1
step
talk Garrosh##18063
accept A Visit With the Greatmother##10044 |goto 55.4,37.6
step
talk Greatmother Geyah##18141
Tell her Garrosh told you she wanted to speak to you
Listen to Greatmother Geyah |q 10044/1 |goto 56.7,34.3
step
talk Greatmother Geyah##18141
turnin A Visit With the Greatmother##10044 |goto 56.7,34.3
accept Material Components##10045 |goto 56.7,34.3
step
click a Telaari Frond
|tip They look like bushy grass plasnts on the ground in this canyon.
collect Telaari Frond##25864 |q 10045/3 |goto 58.7,53.8
step
click Olemba Roots##182601
|tip They look like tangled thick tree roots on the ground at the base of trees around this area.
collect Olemba Root##25863 |q 10045/1 |goto Terokkar Forest,32.7,38.5
step
click a Dragonspine
|tip They look like red leafy plansts on the ground around this area.  They are usually next to the big spike rock formations.
collect Dragonspine##25865 |q 10045/4 |goto Blade's Edge Mountains,39.6,72.4
step
click a Marshberry
|tip They look like big red balls on the ground around this area.
collect Marshberry##25862 |q 10045/2 |goto Zangarmarsh,20.0,8.6
step
talk Greatmother Geyah##18141
turnin Material Components##10045 |goto Nagrand,56.7,34.3
accept To Meet Mother Kashur##10081 |goto Nagrand,56.7,34.3
step
talk Mother Kashur##18687
turnin To Meet Mother Kashur##10081 |goto 26.1,60.6
accept The Agitated Ancestors##10082 |goto 26.1,60.6
step
kill 8 Agitated Orc Spirit##18043+ |q 10082/1 |goto 26.4,60.3
step
talk Mother Kashur##18687
turnin The Agitated Ancestors##10082 |goto 26.1,60.6
accept A Visit With The Ancestors##10085 |goto 26.1,60.6
step
Go to this spot
Visit Sunspring Post |q 10085/1 |goto 31.6,43.7
step
Go to this spot
Visit the Laughing Skull Clan Ruins |q 10085/2 |goto 46.7,23.6
step
Go to this spot
Visit Garadar |q 10085/3 |goto 54.6,36.1
step
Go to this spot
Visit the Bleeding Hollow Clan Ruins |q 10085/4 |goto Terokkar Forest,20.0,63.0
step
talk Mother Kashur##18687
turnin A Visit With The Ancestors##10085 |goto Nagrand,26.1,60.6
accept When Spirits Speak##10101 |goto Nagrand,26.1,60.6
step
Enter Oshu'gun |goto 35.8,67.6 < 5 |q 10102 |walk
Follow the path inside Oshu'gun
talk K'ure##17545
turnin When Spirits Speak##10101 |goto 35.5,77.8
accept A Secret Revealed##10102 |goto 35.5,77.8
step
Leave Oshu'gun |goto 35.8,67.6 < 5 |q 10102 |walk
talk A'dal##18481
turnin A Secret Revealed##10102 |goto Shattrath City,54.1,44.7
accept Auchindoun...##10167 |goto Shattrath City,54.1,44.7
step
Follow the path in the Auchenai Crypts dungeon to the very end
kill Exarch Maladaar##18373 |q 10167/1 |goto Auchenai Crypts 73.8,48.9
talk D'ore##19412
|tip It's a big white floating alien being that appears after you kill Exarch Maladaar.
turnin Auchindoun...##10167 |goto Auchenai Crypts 73.8,48.9
accept What the Soul Sees##10168 |goto Auchenai Crypts 73.8,48.9
click a Soul Mirror
|tip They look like big pink floating crystals near the walls inside the Auchenai Crypts dungeon.
collect Soul Mirror##28283 |q 10168/2 |goto Auchenai Crypts 73.8,48.9
step
Use your Soul Mirror on Ancient Orc Ancestors |use Soul Mirror##28283
|tip They are ghosts that walk from all around this area to the entrance of this cave.  You can find them quickly by searching all around this area.
kill 15 Darkened Spirit##19480+ |q 10168/1 |goto Nagrand,35.9,66.3
step
talk Mother Kashur##18687
turnin What the Soul Sees##10168 |goto 26.1,60.6
step
talk Ha'lei##19697
accept I See Dead Draenei##10227 |goto Terokkar Forest 35.1,65.1
step
talk Ramdor the Mad##19417
turnin I See Dead Draenei##10227 |goto 35.1,66.3
accept Ezekiel##10228 |goto 35.1,66.3
step
talk Ezekiel##19715
|tip He walks around Shattrath in a big circle.
turnin Ezekiel##10228 |goto Shattrath City,53.7,32.6
accept What Book? I Don't See Any Book.##10231 |goto Shattrath City,53.7,32.6
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
They are hard to find, searching will most likely be required.  They are all around Oshu'gun
step
kill Mountain Gronn##19201+
collect Mountain Gronn Eyeball##28665 |q 10252/1 |goto 25.2,49.1
More can be found around [26.9,30.2], up and down the ramp
step
kill Greater Windroc##17129+
collect Flawless Greater Windroc Beak##28667 |q 10252/2 |goto 30.9,32.9
step
talk Nitrin the Learned##19844
turnin Vision of the Dead##10252 |goto 51.8,56.9
accept Levixus the Soul Caller##10253 |goto 51.8,56.9
step
kill Levixus##19847
collect 1 The Book of the Dead##28677 |q 10253/1 |goto Terokkar Forest,39.6,71.3
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
talk Earthmender Splinthoof##21938
accept The Hand of Gul'dan##10680 |goto Shadowmoon Valley/0 28.49,26.58
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
Capture 10 Air Souls |q 10481/1 |goto 59.9,69.1
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
A boar will run over and eat the tuber
Click the Shadowmoon Tuber's that spawn
collect 10 Shadowmoon Tuber##30356 |q 10514/1 |goto 53.5,17.3
step
talk Oronok Torn-heart##21183
turnin I Was A Lot Of Things...##10514 |goto 53.9,23.5
accept A Lesson Learned##10515 |goto 53.9,23.5
step
click Ravenous Flayer Egg##184684
|tip They look like brown spiked eggs on the ground around this area.
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
collect Coilskar Chest Key##30426 |n |goto 52.6,27.4
Click Coilskar Chests
|tip They look like big gray stone containers around this area.
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
|tip They look like small pink-ish eggs with green steam rising off of them on the ground around this area.
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
Talk to Grand Commander Ruusk |goto 46.5,71.9
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
talk Oronok Torn-heart##21183 |goto 42.8,44.7
|tip It may take a minute or so for him to show up.
Tell him you are ready.
Follow Oronok Torn-heart
kill Cyrukh the Firelord##21181 |q 10588/1|goto 43.1,44.9
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
These quests will require that you do Heroic Shattered Halls, Shadow Labyrinth, The Steamvault and The Arcatraz.
step
Before you enter The Shattered Halls, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
kill Grand Warlock Nethekurse##16807 |goto The Shattered Halls 34.2,55.3
After you Kill Grand Warlock Nethekurse run through this doorway to gain _Korgath's Executioner Buff_ |havebuff 132338
|only if not completedq(10884)
step
Kill your way to the end of the instance.
After the first boss you will have 55 minutes to clear your way to the last boss.
kill Shattered Hand Executioner##17301
collect Unused Axe of the Executioner##31716 |q 10884/1 |goto The Shattered Halls 67.2,65.8
step
Before you enter The Steavmvault, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
In order to reach the final boss you will need to kill the other bosses.
kill Warlord Kalithresh##17798
collect Kalithresh's Trident##31721 |q 10885/1 |goto The Steamvault 80.6,43.6
step
Before you enter Shadow Labyrinth, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
Kill your way to Murmur at the end of the instance.
kill Murmur##18708
collect Murmur's Essence##31722 |q 10885/2 |goto Shadow Labyrinth 81.2,39.2
step
Before you enter The Arcatraz, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
Fight your way to the end of the instance.
kill Harbinger Skyriss##20912
Defeat Harbinger Skyriss and make sure Millhouse lives.
Rescue Millhouse Manastorm. |q 10886/1 |goto The Arcatraz/3 62.8,30.6
talk Millhouse Manastorm##20977
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
step
click Box Surveying Equipment##6881
collect 10 Box of Surveying Equipment##28913 |q 10267/1 |goto 57.6,63.9
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
Before you enter The Mechanar, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
Kill your way through the instance
kill Pathaleon the Calculator##19220
collect Bottom Shard of the Arcatraz Key##31086 |q 10704/2 |goto The Mechanar 28.52,60.6
step
Before you enter The Botanica, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
Kill your way through the instance
kill Warpsplinter##17977
collect Top Shard of the Arcatraz Key##31085 |q 10704/1 |goto The Botanica 34.0,37.8
step
talk A'dal##18481
turnin How to Break Into the Arcatraz##10704 |goto Shattrath City,54.0,44.6
step
talk Arcanist Thelis##21955
accept Tablets of Baa'ri##10683 |goto Shadowmoon Valley 56.3,59.6
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
accept Tablets of Baa'ri##10568 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
click Baar'ri Tablet Fragment##6420
kill Ashtongue Worker##21455
collect 12 Baa'ri Tablet Fragment##30596 |q 10683/1 |goto 56.3,59.6
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
accept Tablets of Baa'ri##10568 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
talk Arcanist Thelis##21955
turnin Tablets of Baa'ri##10683 |goto 56.3,59.6
accept Oronu the Elder##10684 |goto 56.3,59.6
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
turnin Tablets of Baa'ri##10568 |goto 62.6,28.4
accept Oronu the Elder##10571 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10684/1 |goto 57.2,32.9
only if rep ('The Scryers') >= Neutral
step
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10571/1 |goto 57.2,32.9
only if rep ('The Aldor') >= Friendly
step
talk Arcanist Thelis##21955
turnin Oronu the Elder##10684 |goto 56.3,59.6
accept The Ashtongue Corruptors##10685 |goto 56.3,59.6
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
turnin Oronu the Elder##10571 |goto 62.6,28.4
accept The Ashtongue Corruptors##10574 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10685/2 |goto 57.1,73.3
only if rep ('The Scryers') >= Neutral
step
kill Haalum##21711
|tip You must destroy the totems first before you can attack him.
collect Haalum's Medallion Fragment##30691 |q 10574/2 |goto 57.1,73.3
only if rep ('The Aldor') >= Friendly
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10685/1 |goto 51.3,52.9
only if rep ('The Scryers') >= Neutral
step
kill Eykenen##21709
|tip You must destroy the totems first before you can attack him.
collect Eykenen's Medallion Fragment##30692 |q 10574/1 |goto 51.3,52.9
only if rep ('The Aldor') >= Friendly
step
kill Uylaru##21710
|tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10685/4 |goto 48.2,39.8
only if rep ('The Scryers') >= Neutral
step
kill Uylaru##21710
|tip You must destroy the totems first before you can attack him.
collect Uylaru's Medallion Fragment##30694 |q 10574/4 |goto 48.2,39.8
only if rep ('The Aldor') >= Friendly
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10685/3 |goto 49.8,23.1
only if rep ('The Scryers') >= Neutral
step
kill Lakaan##21416
|tip You must destroy the totems first before you can attack him.
collect Lakaan's Medallion Fragment##30693 |q 10574/3 |goto 49.8,23.1
only if rep ('The Aldor') >= Friendly
step
talk Arcanist Thelis##21955
turnin The Ashtongue Corruptors##10685 |goto 56.3,59.6
accept The Warden's Cage##10686 |goto 56.3,59.6
only if rep ('The Scryers') >= Neutral
step
talk Anchorite Ceyla##21402
turnin The Ashtongue Corruptors##10574 |goto 62.6,28.4
accept The Warden's Cage##10575 |goto 62.6,28.4
only if rep ('The Aldor') >= Friendly
step
talk Sanoru##21826
turnin The Warden's Cage##10686 |goto 57.3,49.6
accept Proof of Allegiance##10622 |goto 57.3,49.6
only if rep ('The Scryers') >= Neutral
step
talk Sanoru##21826
turnin The Warden's Cage##10575 |goto 57.3,49.6
accept Proof of Allegiance##10622 |goto 57.3,49.6
only if rep ('The Aldor') >= Friendly
step
Go back to the top of "Warden's Cage" |goto 57.5,49.8 < 5 |q 10622 |only if walking
kill Zandras##21827 |q 10622/1 |goto 57.1,48.6
|tip He patrols the top of the prison wall, so you may need to search for him.
step
Follow the path down |goto 57.4,49.7 < 5 |q 10622 |walk
talk Sanoru##21826
turnin Proof of Allegiance##10622 |goto 57.3,49.6
accept Akama##10628 |goto 57.3,49.6
step
Go to this spot and swim down to the other side |goto 57.5,47.8 < 5 |q 10628
talk Akama##21700
turnin Akama##10628 |goto 58.1,48.2
accept Seer Udalo##10705 |goto 58.1,48.2
step
clicknpc Udalo##21962
|tip It is in the room before Harbinger Skyriss, the final boss of the instance.
turnin Seer Udalo##10705 |goto The Arcatraz/3 31.7,24.9
accept A Mysterious Portent##10706 |goto The Arcatraz/3 31.7,24.9
step
talk Akama##21700
turnin A Mysterious Portent##10706 |goto Shadowmoon Valley,58.1,48.2
accept The Ata'mal Terrace##10707 |goto Shadowmoon Valley,58.1,48.2
step
kill Shadowmoon Soulstealer##22061+
|tip There will be 3 of them.
Once you kill him, it will trigger an event. Kill ther Shadowmoon Retainers that spawn.
|tip You can also attack Deathwail flying above you.
kill Shadowlord Deathwail##22006+
collect Heart of Fury##31307 |q 10707/1 |goto Shadowmoon Valley,71.3,35.6
step
talk Akama##21700
turnin The Ata'mal Terrace##10707 |goto Shadowmoon Valley,58.1,48.2
accept Akama's Promise##11052 |goto Shadowmoon Valley,58.1,48.2
step
kill Val'zareq the Conqueror##21979
|tip He is an elite Blood Elf on a Hawkstrider patrolling this area with Eclipsion mobs protecting him.
collect The Journal of Val'zareq##31345 |n |goto 53.3,59.0
Click The Journal of Val'zareq in your bags |use The Journal of Val'zareq##31345
accept The Journal of Val'zareq: Portends of War##10793
step
click Crystal Prison##185126
turnin The Journal of Val'zareq: Portends of War##10793 |goto 51.4,72.8
accept Battle of the Crimson Watch##10781 |goto 51.4,72.8
step
Fight off the waves of enemies that come.
Crimson Sigil Forces Annihilated. |q 11052/1
step
talk A'dal##18481
turnin Battle of the Crimson Watch##10781 |goto Shattrath City,54,44.8
turnin Akama's Promise##11052 |goto Shattrath City,54,44.8
step
At this point, you will need to grind for reputation. You can farm reputation in the instances below:
The Mechanar
The Botanica
and The Arcatraz
Doing these on Heroic will yield more reputation gains - However you can only do it on Heroic once per day
Reach Exalted with The Sha'tar |complete rep("The Sha'tar")==Exalted
step
label "exalted"
Congratulations, you're now exalted with The Sha'tar!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Sha'tari Skyguard",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Sha'tari Skyguard faction.",
achieveid={894},
patch='30202',
},[[
step
label "route"
Routing to Skyguard Pre-Quests |next "pre" |only if completedq(11073)
Routing to Skyguard Dailies |next "menu" |only if not completedq(11073)
step
label "pre"
talk Yuula##23449
accept Threat from Above##11096 |goto Shattrath City,64.3,42.3
step
kill 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1 |goto Terokkar Forest,21.8,16.1
You can find more around here [24.4,8.9]
step
talk Yuula##23449
turnin Threat from Above##11096 |goto Shattrath City,64.3,42.3
accept To Skettis!##11098 |goto Shattrath City,64.3,42.3
step
talk Sky Sergeant Doryn##23048
turnin To Skettis!##11098 |goto Terokkar Forest,64.5,66.7
step
talk Skyguard Handler Deesak##23415
accept Hungry Nether Rays##11093 |goto 63.5,65.8
step
talk Severin##23042
accept World of Shadows##11004 |goto 64.0,66.9
step
Use your Nether Ray Cage |use Nether Ray Cage##32834
|tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
kill Blackwind Warp Chaser##23219+
You can find more Warp Chasers here [64.5,84.4]
Provide Nether Ray Meals |q 11093/1 |goto 61.4,81.8
step
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 6 Shadow Dust##32388 |q 11004/1 |goto Terokkar Forest,61.6,75.3
You can find more here [69.5,85.5]
Here [73.2,87.9]
Here [75.2,81.3]
And here [69.2,74.1]
step
talk Severin##23042
turnin World of Shadows##11004 |goto Terokkar Forest,64.0,66.9
step
talk Skyguard Handler Deesak##23415
turnin Hungry Nether Rays##11093 |goto 63.5,65.8
step
talk Sky Commander Adaris##23038
accept Secrets of the Talonpriests##11005 |goto 64.1,66.9
step
Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446 |goto 69.7,74.7
You will get a buff Elixir of Shadows |havebuff 136152
step
kill Talonpriest Zellek##23068 |q 11005/3 |goto 70.1,74.5
step
kill Talonpriest Ishaal##23066+ |q 11005/1 |goto 69.3,78.1
collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
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
accept Countdown to Doom##11028 |goto Shattrath City 52.5,21.0
step
talk Nutral##18940
turnin Countdown to Doom##11028 |goto Terokkar Forest,64.1,66.9
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
collect 12 Shadow Dust##32388 |q 11885 |future |goto Terokkar Forest,61.6,75.3
You can find more here [69.5,85.5]
Here [73.2,87.9]
Here [75.2,81.3]
And here [69.2,74.1]
step
talk Severin##23042
accept More Shadow Dust##11006 |goto 64.0,66.9
collect 2 Elixir of Shadows##32446+ |q 11885 |future |goto 64.0,66.9
step
This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
|confirm always
step
Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
You will get a buff Elixir of Shadows |havebuff 136152
step
kill Time-Lost Skettis High Priest##21787+
kill Time-Lost Skettis Reaver##21651+
kill Time-Lost Skettis Worshipper##21763+
collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.6,75.3
You can find more here [69.5,85.5]
Here [73.2,87.9]
Here [75.2,81.3]
And here [69.2,74.1]
step
click Skull Pile##185913
|tip This will use 10 Time-Lost Scrolls
<Call forth Darkscreecher Akkarai.>
<Call forth Karrog.>
<Call forth Gezzarak the Huntress.>
<Call forth Vakkiz the Windrager.>
kill Darkscreecher Akkarai##23161 |q 11885/1
collect Akkarai's Talons##32715
kill Karrog##23165 |q 11885/2
collect Karrog's Spine##32717
kill Gezzarak the Huntress##23163 |q 11885/3
collect Gezzarak's Claws##32716
kill Vakkiz the Windrager##23204 |q 11885/4
collect Vakkiz's Scale##32718
You can find more skull piles here: [70.1,79.5]
Here [73.5,80.7]
Here [70.2,83.3]
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
Click here to do the Dailys and then grind |confirm always |next "dailies" |or
or
Click here to grind for reputation |confirm always |next "grind" |or
step
label "dailies"
talk Sky Sergeant Doryn##23048
accept Fires Over Skettis##11008 |goto Terokkar Forest,64.5,66.7
step
Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
Destroy 20 Monstrous Kaliri Eggs |q 11008/1 |goto 63.1,80.0
You can find more eggs here:  goto [61.3,79.9]
Here [67.5,79.3]
Here [68.0,85.6]
and here [70.3,84.5]
step
talk Sky Sergeant Doryn##23048
turnin Fires Over Skettis##11008 |goto 64.5,66.7
step
talk Skyguard Prisoner##23383
accept Escape from Skettis##11085 |goto 61.0,75.6
He can also be found here: [68.4,74.0]
and here: [75.0,86.5]
step
Escort the Skyguard Prisoner to the bottom of the bridge
|tip Help him kill any mobs on the way down.
Rescue the Skyguard Prisoner. |q 11085/1
step
talk Sky Sergeant Doryn##23048
turnin Escape from Skettis##11085 |goto 64.5,66.7
step
label "grind"
kill Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
collect 12 Shadow Dust##32388  |goto Terokkar Forest,61.6,75.3
You can find more here [69.5,85.5]
Here [73.2,87.9]
Here [75.2,81.3]
And here [69.2,74.1]
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
collect 40 Time-Lost Scroll##32620+ |goto Terokkar Forest,61.6,75.3
You can find more here [69.5,85.5]
Here [73.2,87.9]
Here [75.2,81.3]
And here [69.2,74.1]
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
collect Karrog's Spine##32717
kill Gezzarak the Huntress##23163
collect Gezzarak's Claws##32716
kill Vakkiz the Windrager##23204
collect Vakkiz's Scale##32718 |goto 69.7,74.7
You can find more skull piles here: [70.1,79.5]
Here [73.5,80.7]
Here [70.2,83.3]
step
talk Hazzik##23306
accept Tokens of the Descendants##11074 |n
collect Time-Lost Offering##32720 |goto Terokkar Forest,64.3,66.9
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Silvermoon City",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Silvermoon City faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Silvermoon City') < Exalted end,
},[[
step
talk Magistrix Nizara##50484
buy Silvermoon City Tabard##45585 |n |goto Eversong Woods,54.3,50.8
Equip your Silvermoon City Tabard |equipped Silvermoon City Tabard##45585 |use Silvermoon City Tabard##45585 |future
You can run any dungeon that grants experience to gain reputation for Silvermoon City
Become Exalted with Silvermoon City |complete rep('Silvermoon City')==Exalted
step
Congratulations, you have reached exalted with Silvermoon City!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Sporeggar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Sporeggar faction.",
achieveid={900},
patch='30002',
},[[
step
talk Fahssn##17923
|tip He walks around this area.
accept The Sporelings' Plight##9739 |goto Zangarmarsh/0 18.96,63.45
accept Natural Enemies##9743 |goto Zangarmarsh/0 18.96,63.45
stickystart "Collect_Mature_Spore_Sacs"
step
Kill Starving enemies around this area
collect 6 Bog Lord Tendril##24291 |q 9743/1 |goto 15.90,60.51
step
label "Collect_Mature_Spore_Sacs"
click Mature Spore Sac##182069+
|tip They look like small puffy, balloon-shaped sacs on on the ground around this area.
collect 10 Mature Spore Sac##24290 |q 9739/1 |goto 15.90,60.51
step
talk Fahssn##17923
|tip He walks around this area.
turnin The Sporelings' Plight##9739 |goto 18.96,63.45
turnin Natural Enemies##9743 |goto 18.96,63.45
step
label "Collect_Spore_Sacs_Reach_Friendly"
click Mature Spore Sac##182069+
|tip They look like small puffy, balloon-shaped sacs on on the ground around this area.
collect Mature Spore Sac##24290 |n |goto 15.90,60.51
|tip Collect them in in stacks of 10.
Click here to turn them in |confirm |only if rep('Sporeggar')<Friendly
step
talk Fahssn##17923
|tip He walks around this area.
accept More Spore Sacs##9742 |goto 18.96,63.45 |only if rep('Sporeggar')<Friendly
Click here to continue farming |next "Collect_Spore_Sacs_Reach_Friendly" |confirm |only if rep('Sporeggar')<Friendly
Reach Friendly with Sporeggar |complete rep('Sporeggar')>=Friendly |next "Reached_Friendly_Reputation"
step
label "Reached_Friendly_Reputation"
talk Fahssn##17923
|tip He walks around this area.
accept Sporeggar##9919 |goto 18.96,63.45
step
Enter the building |goto 19.54,51.82 < 5 |walk
talk Msshi'fn##17924
|tip Inside the building.
turnin Sporeggar##9919 |goto 19.68,52.07
step
The fastest way to go reach Exalted is to farm The Underbog dungeon
|tip You can complete the dungeon once pery day on Heroic and as many times as you want on Normal.
Enter The Underbog |goto The Underbog/1 30.02,67.39 < 1000 |c
only if rep('Sporeggar')<Exalted
step
label "Farm_Dungeon_Collect_Sanguine_Hibiscus"
Kill everything in the dungeon
click Sanguine Hibiscus##183385+
|tip They look like small red flowery plants on the ground throughout the dungeon.
|tip They can also drop from creatures in the dungeon.
collect Sanguine Hibiscus##24246 |n
|tip Collect these and turn them in for more reputation after each run.
Click here to turn them in |confirm |only if rep('Sporeggar')<Exalted
step
talk T'shu##54674
accept Bring Me Another Shrubbery!##29692 |goto 31.48,65.21 |only if rep('Sporeggar')<Exalted
Click here to continue farming |next "Farm_Dungeon_Collect_Sanguine_Hibiscus" |confirm |only if rep('Sporeggar')<Exalted
|tip You can complete the dungeon once pery day on Heroic and as many times as you want on Normal.
Earn Exalted status with the Sporeggar |complete rep('Sporeggar')==Exalted |next "Reached_Exalted_Status"
step
label "Reached_Exalted_Status"
_Congratulations!_
You reached Exalted reputation with the "Sporeggar" faction.
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Thrallmar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Thrallmar faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Thrallmar') < Exalted end,
},[[
step
Grinding mobs in Hellfire Ramparts and Blood Furnace until 5,999 / 6,000 Honored would be best.  You won't be able to grind these two instance once you've passed the Honored threshold unless you do heroic, which you will only be able to do once per day.
Once you've reached Honored, you will be able to grind Shattered Halls for reputation
You can also grind Heroic mode Hellfire Ramparts, Blood Furnace and Shattered Halls until exalted
Reputation gained from doing Hellfire Peninsula quests well net you around 10,000 Reputation
Click here to continue to the quest portion of the guide. |confirm
step
click Warchief's Command Board##206109
accept Warchief's Command: Outland!##28705 |goto Orgrimmar/1 49.70,76.60
step
talk Lieutenant General Orion##19253
turnin Warchief's Command: Outland!##28705 |goto Hellfire Peninsula/0 87.40,49.80
accept Arrival in Outland##10120 |goto Hellfire Peninsula/0 87.40,49.80
step
talk Vlagga Freyfeather##18930
turnin Arrival in Outland##10120 |goto 87.3,48.1
accept Journey to Thrallmar##10289 |goto 87.3,48.1
step
talk General Krakork##19255
turnin Journey to Thrallmar##10289 |goto 55.9,36.8
accept Report to Nazgrel##10291 |goto 55.9,36.8
step
talk Nazgrel##3230
turnin Report to Nazgrel##10291 |goto 55,36
accept Eradicate the Burning Legion##10121 |goto 55,36
step
talk Vurtok Axebreaker##21256
accept Bonechewer Blood##10450 |goto 55.1,36.4
step
talk Megzeg Nukklebust##21283
accept I Work... For the Horde!##10086 |goto 55.2,38.8
step
talk Floyd Pinkus##16602
home Thrallmar |goto 56.6,37.6
step
talk Sergeant Shatterskull##19256
turnin Eradicate the Burning Legion##10121 |goto 58,41.3
accept Felspark Ravine##10123 |goto 58,41.3
step
kill 1 Dreadcaller##19434 |q 10123/1 |goto 60.8,35.9
kill 4 Flamewaker Imp##19136+ |q 10123/2 |goto 60.8,35.9
kill 6 Infernal Warbringer##19261+ |q 10123/3 |goto 60.8,35.9
step
talk Sergeant Shatterskull##19256
turnin Felspark Ravine##10123 |goto 58,41.3
accept Forward Base: Reaver's Fall##10124 |goto 58,41.3
step
talk Forward Commander To'arch##19273
turnin Forward Base: Reaver's Fall##10124 |goto 65.9,43.6
accept Disrupt Their Reinforcements##10208 |goto 65.9,43.6
step
kill Doomwhisperer##18981+, Wrathguard##18975+, Fel Handler##19190+, Netherhound##16950+
collect 4 Demonic Rune Stone##28513 |q 10208 |n |goto 70.8,45.4
Stand inside the portal
click the portal
Disrupt Port Xilus |q 10208/1 |goto 70.8,45.4
step
kill Doomwhisperer##18981+, Wrathguard##18975+, Fel Handler##19190+, Netherhound##16950+
collect 4 Demonic Rune Stone##28513 |q 10208 |n |goto 74,38.7
Stand inside the portal
click the portal
Disrupt Port Kruul |q 10208/2 |goto 74,38.7
step
talk Forward Commander To'arch##19273
turnin Disrupt Their Reinforcements##10208 |goto 65.9,43.6
accept Mission: Gateways Murketh and Shaadraz##10129 |goto 65.9,43.6
step
talk Wing Commander Brack##19401
Take the flight
Use the bomb in your bags, bomb Gateway Shaadraz |use Seaforium PU-36 Explosive Nether Modulator##28038 |q 10129/2 |goto 66.1,43.7
Use the bomb in your bags, bomb Gateway Murketh |use Seaforium PU-36 Explosive Nether Modulator##28038 |q 10129/1 |goto 66.1,43.7
|tip They look like big machines with giant green crystals floating above them.
step
talk Forward Commander To'arch##19273
turnin Mission: Gateways Murketh and Shaadraz##10129 |goto 65.9,43.6
accept Mission: The Abyssal Shelf##10162 |goto 65.9,43.6
accept Return to Thrallmar##10388 |goto 65.9,43.6
step
talk Wing Commander Brack##19401
Fly to the Abyssal Shelf
Use the bomb in your bags to bomb the mobs |use Area 52 Special##28132
Destroy 5 Fel Cannons |q 10162/3 |goto 66.1,43.7
kill 5 Mo'arg Overseer##19397+ |q 10162/2 |goto 66.1,43.7
kill 20 Gan'arg Peon##19398+ |q 10162/1 |goto 66.1,43.7
|tip If you don't complete this in the first run, you can fly again until it is done.
step
talk Forward Commander To'arch##19273
turnin Mission: The Abyssal Shelf##10162 |goto 65.9,43.6
step
talk Martik Tor'seldori##16577
accept Falcon Watch##9498 |only if not BloodElf |goto 55.2,39.1
accept Falcon Watch##9499 |only BloodElf |goto 55.2,39.1
step
talk Nazgrel##3230
turnin Return to Thrallmar##10388 |goto 55,36
accept Forge Camp: Mageddon##10390 |goto 55,36
accept The Assassin##9400 |goto 55,36
step
kill 10 Gan'arg Servant##16947+ |q 10390/1
kill Razorsaw##20798
collect Head of Forgefiend Razorsaw##29586 |q 10390/2 |goto 64.4,31.9
collect the Burning Legion Missive##29590 |n |goto 64.4,31.9
Use the Burning Legion Missive |use Burning Legion Missive##29590
accept Vile Plans##10393 |goto 64.4,31.9
step
talk Nazgrel##3230
turnin Forge Camp: Mageddon##10390 |goto 55,36
accept Cannons of Rage##10391 |goto 55,36
step
talk Magister Bloodhawk##21175
turnin Vile Plans##10393 |goto 55.1,36
step
kill 3 Fel Cannon MKI##22461+ |q 10391/1 |goto 57.5,31.2
step
talk Nazgrel##3230
turnin Cannons of Rage##10391 |goto 55,36
accept Doorway to the Abyss##10392 |goto 55,36
step
kill Warbringer Arix'Amal##19298 |q 10392/1 |goto 52.8,26.4
collect Burning Legion Gate Key##29795 |q 10392/3 |goto 52.8,26.4
step
Go inside the portal
click the floating thing inside the portal
Close the Burning Legion Gate |q 10392/2 |goto 53.1,27.6
|tip You might have to stand right underneath it and zoom in your view to be able to click the floating glyph inside the portal.
step
talk Nazgrel##3230
turnin Doorway to the Abyss##10392 |goto 55,36
step
talk Magister Bloodhawk##21175
accept The Agony and the Darkness##10389 |goto 55.1,36
step
click Salvageable Metal##182938
collect 8 Salvaged Metal##25912 |q 10086/1 |goto 56.6,47.1
click Salvageable Wood##182936
collect 8 Salvaged Wood##25911 |q 10086/2 |goto 56.6,47.1
kill Bonechewer Evoker##19701+, Bonechewer Mutant##16876+, Bonechewer Scavenger##18952+, Bonechewer Raider##16925+
collect 12 Bonechewer Blood##30327 |q 10450/1 |goto 56.6,47.1
step
talk Megzeg Nukklebust##21283
turnin I Work... For the Horde!##10086 |goto 55.2,38.8
accept Burn It Up... For the Horde!##10087 |goto 55.2,38.8
step
talk Vurtok Axebreaker##21256
turnin Bonechewer Blood##10450 |goto 55.1,36.4
accept Apothecary Zelana##10449 |goto 55.1,36.4
step
talk Apothecary Zelana##21257
turnin Apothecary Zelana##10449 |goto 66.2,42
accept Spinebreaker Post##10242 |goto 66.2,42
step
talk Amilya Airheart##19558
fpath Spinebreaker Post |goto 61.7,81.2
step
talk Ogath the Mad##19683
accept The Warp Rifts##10278 |goto 61.9,81.5
step
talk Emissary Mordiba##19682
accept Make Them Listen##10220 |goto 61.8,81.7
step
talk Apothecary Albreck##21279
turnin Spinebreaker Post##10242 |goto 61.1,81.8
accept Boiling Blood##10538 |goto 61.1,81.8
step
talk Grelag##16858
accept Preparing the Salve##9345 |goto 60.9,81.7
step
click Wanted Poster##184945
accept Wanted: Worg Master Kruush##10809 |goto 61.2,80.6
step
click the Hellfire Spineleaves##6807
collect 12 Hellfire Spineleaf##24338 |q 9345/1 |goto 59.5,66.3
step
kill 12 Unyielding Footman##16904+ |q 10220/1 |goto 58,79
kill 8 Unyielding Knight##16906+ |q 10220/2 |goto 58,79
kill 6 Unyielding Sorcerer##16905+ |q 10220/3 |goto 58,79
collect A Mysterious Tome##28552 |n
Use the Mysterious Tome |use A Mysterious Tome##28552
accept Decipher the Tome##10229
step
talk Grelag##16858
turnin Preparing the Salve##9345 |goto 60.9,81.7
accept Investigate the Crash##10213 |goto 60.9,81.7
step
talk Althen the Historian##19736
turnin Decipher the Tome##10229 |goto 61.8,81.7
accept The Battle Horn##10230 |goto 61.8,81.7
talk Emissary Mordiba##19682
turnin Make Them Listen##10220 |goto 61.8,81.7
step
kill Lieutenant Commander Thalvos##16978
|tip Walking around on a black platform thing. He's a blue ghost dwarf.
collect Unyielding Battle Horn##28562 |q 10230/1 |goto 54.7,83.7
step
talk Althen the Historian##19736
turnin The Battle Horn##10230 |goto 61.8,81.7
accept Bloody Vengeance##10250 |goto 61.8,81.7
step
Use the Unyielding Battle Horn in your bags next to the white flag |use Unyielding Battle Horn##28651
kill Urtrak##19862 |q 10250/1 |goto 63.5,77.6
step
talk Althen the Historian##19736
turnin Bloody Vengeance##10250 |goto 61.8,81.7
accept Honor the Fallen##10258 |goto 61.8,81.7
step
talk Commander Hogarth##19937
turnin Honor the Fallen##10258 |goto 56.9,77.4
stickystart "bleedblood"
step
kill Worg Master Kruush##19442
|tip He's standing in the stables.
collect Worg Master's Head##31374 |q 10809/1 |goto 68.4,73.6
step
label "bleedblood"
kill Bleeding Hollow Tormentor##19424+, Bleeding Hollow Necrolyte##19422+, Bleeding Hollow Grunt##16871+, Bleeding Hollow Peon##16907+, Bleeding Hollow Dark Shaman##16873+
collect 12 Bleeding Hollow Blood##30425 |q 10538 |goto 64.6,72.7
step
click the big red glowing cauldron to get Boiled Blood
|tip It's a big red glowing cauldron.
Each time you click the cauldron, scarabs will run out
Run away and stand away from the cauldron until the scarabs disappear
collect 12 Boiled Blood##30430 |q 10538/1 |goto 65.2,71.2
step
talk Captain Darkhowl##22107
turnin Wanted: Worg Master Kruush##10809 |goto 61.2,81.3
accept Zeth'Gor Must Burn!##10792 |goto 61.2,81.3
step
talk Apothecary Albreck##21279
turnin Boiling Blood##10538 |goto 61.1,81.8
accept Apothecary Antonivich##10835 |goto 61.1,81.8
step
talk Zezzak##22231
accept The Eyes of Grillok##10813 |goto 61.7,81.9
step
Use Zezzak's Shard on an Eye of Grillok |use Zezzak's Shard##31463
|tip They look like floating green eyes around this area. It has to channel for 3 seconds and turn your character green.
Absorb an Eye of Grillok |havebuff 136030 |q 10813 |goto 66.4,74
step
Stand next to the cauldron
Return the Eye of Grillok |q 10813/1 |goto 61.7,81.9
step
talk Zezzak##22231
turnin The Eyes of Grillok##10813 |goto 61.7,81.9
accept Grillok "Darkeye"##10834 |goto 61.7,81.9
step
ding 61
stickystart "bleedtorch"
step
Go inside the cave
kill Grillok "Darkeye"##19457
collect Grillok's Eyepatch##31529 |q 10834/1 |goto 66.6,71.4
step
label "bleedtorch"
kill Bleeding Hollow Peon##16907+
collect 4 Bleeding Hollow Torch##31347 |q 10792 |n |goto 68.7,69.8
Use the torches in your bags next to the forge |use Bleeding Hollow Torch##31347
collect 4 Burning Bleeding Hollow Torch##31346 |q 10792 |goto 68.7,69.8
step
Stand near the Eastern Hovel
Use a Burning Bleeding Hollow Torch |use Burning Bleeding Hollow Torch##31346 |n
Burn the Eastern Hovel |q 10792/2 |goto 69.5,70.2
step
Stand near the Stable
Use a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346 |n
Burn the Stable |q 10792/4 |goto 68.6,72.9
step
Stand near the Western Hovel
Use a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346 |n
Burn the Western Hovel |q 10792/3 |goto 67.6,75.5
step
Stand near the Barracks
Use a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346
Burn the Barracks |q 10792/1 |goto 68.8,76.4
step
talk Captain Darkhowl##22107
turnin Zeth'Gor Must Burn!##10792 |goto 61.2,81.3
step
talk Zezzak##22231
turnin Grillok "Darkeye"##10834 |goto 61.7,81.9
step
talk "Screaming" Screed Luckheed##19367
turnin Investigate the Crash##10213 |goto 49.2,74.8
accept In Case of Emergency...##10161 |goto 49.2,74.8
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto 49.2,74.8
step
click Zeppelin Debris on the ground around this area
|tip They look like pieces of metal and wood around this whole area.
collect 30 Zeppelin Debris##28116 |q 10161/1 |goto 58.1,71.3
step
talk "Screaming" Screed Luckheed##19367
turnin In Case of Emergency...##10161 |goto 49.2,74.8
accept Voidwalkers Gone Wild##9351 |goto 49.2,74.8
stickystart "condense"
step
Use your Unstable Warp Rift Generator under the big black ball of lightning |use Unstable Warp Rift Generator##29027
click the Unstable Warp Rift Generator and place the green circle under the big black ball of lightning.
kill Unstable Voidwalker##20145+
collect 3 Warp Nether##29051 |q 10278/1 |goto 46.8,83.1
step
label "condense"
kill Uncontrolled Voidwalker##16975+, Rogue Voidwalker##16974+
collect 10 Condensed Voidwalker Essence##23218 |q 9351/1 |goto 49.5,81.8
step
click Ravager Egg##181385
kill Razorfang Ravagers##16933+
collect 12 Ravager Egg##23217 |q 9349/1 |goto 41.2,84.4
step
talk "Screaming" Screed Luckheed##19367
turnin Voidwalkers Gone Wild##9351 |goto 49.2,74.8
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto 49.2,74.8
accept Helboar, the Other White Meat##9361 |goto 49.2,74.8
step
kill Hulking Helboar##16880+, Starving Helboar##16879+, Deranged Helboar##16863+
collect Tainted Helboar Meat##23270 |q 9361 |n |goto 50.2,74.8
Use your Purification Mixture on the Tainted Helboar Meat |use Purification Mixture##23268
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto 50.2,74.8
|tip The meat won't become purified every time, it can become toxic as well.
step
kill Crust Burster##16844+
|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
collect Eroded Leather Case##23338 |n |goto 47.8,65.8
Use the Eroded Leather Case |use Eroded Leather Case##23338
accept Missing Missive##9373 |goto 47.8,65.8
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto 49.2,74.8
accept Smooth as Butter##9356 |goto 49.2,74.8
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 62.6,67.3
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto 49.2,74.8
step
talk Ogath the Mad##19683
turnin The Warp Rifts##10278 |goto 61.9,81.5
accept Void Ridge##10294 |goto 61.9,81.5
step
The path over to 'Void Ridge' starts here |goto Hellfire Peninsula,71.3,67.4 < 5 |q 10294
kill Collapsing Voidwalker##17014+, Vacillating Voidcaller##19527+
collect 40 Void Ridge Soul Shard##29161 |q 10294/1 |goto 75.4,66.3
step
talk Ogath the Mad##19683
turnin Void Ridge##10294 |goto 61.9,81.5
accept From the Abyss##10295 |goto 61.9,81.5
step
Stand next to the 2 big pink crystals
Use the Warp Rift Generator in  your bags |use Warp Rift Generator##29226
kill Void Baron Galaxis##16939
collect Galaxis Soul Shard##29162 |q 10295/1 |goto 81.1,78.9
step
talk Apothecary Antonivich##16588
turnin Apothecary Antonivich##10835 |goto 52.3,36.5
accept A Burden of Souls##10864 |goto 52.3,36.5
step
talk Foreman Razelcraz##16915
accept Outland Sucks!##10236 |goto 51.4,30.6
stickystart "shatteredber"
step
click the Shredder Parts boxes
|tip They look like wooden crates around this area.
collect 6 Shredder Spare Parts##28554 |q 10236/1 |goto 48.9,35.4
step
label "shatteredber"
kill Shattered Hand Berserker##16878+, Shattered Hand Guard##19414+
Reap 20 Shattered Hand Souls |q 10864/1 |goto 45.9,39.8
step
talk Foreman Razelcraz##16915
turnin Outland Sucks!##10236 |goto 51.4,30.6
accept How to Serve Goblins##10238 |goto 51.4,30.6
step
talk Apothecary Antonivich##16588
turnin A Burden of Souls##10864 |goto 52.3,36.5
accept The Demoniac Scryer##10838 |goto 52.3,36.5
step
click Manni's Cage##183936
|tip It looks like a wooden cage with a goblin inside.
Save Manni |q 10238/1 |goto 45.1,41.0
step
click Moh's Cage##183940
|tip It looks like a wooden cage with a goblin inside.
Save Moh |q 10238/2 |goto 46.5,45.2
step
click Jakk's Cage##183941
|tip It looks like a wooden cage with a goblin inside.
Save Jakk |q 10238/3 |goto 47.5,46.6
step
Use your Demoniac Scryer in your bags at this spot |use Demoniac Scryer##31606
Defend the Demoniac Scryer until a bunch of purple things start swirling around it.
talk Demoniac Scryer##22258
collect Demoniac Scryer Reading##31607 |q 10838/1 |goto 45.5,47.2
step
talk Apothecary Antonivich##16588
turnin The Demoniac Scryer##10838 |goto 52.3,36.5
accept Report to Nazgrel##10875 |goto 52.3,36.5
step
talk Nazgrel##3230
turnin Report to Nazgrel##10875 |goto 55,36
step
talk Foreman Razelcraz##16915
turnin How to Serve Goblins##10238 |goto 51.4,30.6
accept Shizz Work##10629 |goto 51.4,30.6
step
Use the Felhound Whistle while standing next to Forman Razelcraz |use Felhound Whistle##30803 |goto 51.4,30.6
|tip Standing near the entrance to the mine, next to a bunch of fel guard hounds.
|confirm |q 10629
step
kill Deranged Helboar##16863+
The Fel Guard Hound will eat the corpses and poop
click the Felhound Poo##184980
collect Shredder Keys##30794 |q 10629/1 |goto 49.9,29.3
step
talk Foreman Razelcraz##16915
turnin Shizz Work##10629 |goto 51.4,30.6
accept Beneath Thrallmar##10630 |goto 51.4,30.6
step
Enter the mine |goto Hellfire Peninsula,51.6,31.7 < 5 |q 10630 |walk
Follow this mine shaft |goto 54.4,31.4 |walk
kill Urga'zz##18976 |q 10630/1
|tip All the way in the back of the mine.
step
Leave the mine |goto Hellfire Peninsula,51.6,31.7 < 5 |q 10630 |walk
talk Foreman Razelcraz##16915
turnin Beneath Thrallmar##10630 |goto 51.4,30.6
step
Use the Flaming Torch in your bags near the huge tank |use Flaming Torch##27479
Burn the Eastern Cannon |q 10087/1 |goto 61.1,52.3
step
Use the Flaming Torch in your bags near the huge tank |use Flaming Torch##27479
Burn the Western Cannon |q 10087/2 |goto 55,54
step
talk Ogath the Mad##19683
turnin From the Abyss##10295 |goto 61.9,81.5
step
talk Megzeg Nukklebust##21283
turnin Burn It Up... For the Horde!##10087 |goto 55.2,38.8
step
kill 10 Terrorfiend##16951+ |q 10389/1 |goto 39.4,36.1
step
Go to this spot
Find Krun Spinebreaker |q 9400/1 |goto 33.6,43.5
step
clicknpc the Fel Orc Corpse##17062
|tip It's a corpse laying halfway up the hill.
turnin The Assassin##9400 |goto 33.6,43.5
accept A Strange Weapon##9401 |goto 33.6,43.5
step
talk Magister Bloodhawk##21175
turnin The Agony and the Darkness##10389 |goto 55.1,36
step
talk Nazgrel##3230
turnin A Strange Weapon##9401 |goto 55,36
accept The Warchief's Mandate##9405 |goto 55,36
step
talk Far Seer Regulkut##16574
turnin The Warchief's Mandate##9405 |goto 54.2,37.9
accept A Spirit Guide##9410 |goto 54.2,37.9
step
Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669
|tip It's a corpse laying halfway up the hill.
Follow the spirit wolf
|tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
Follow the wolf to this spot|goto 32,27.8 < 5 |q 9410 |goto 33.6,43.5
step
talk Gorkan Bloodfist##16845
turnin A Spirit Guide##9410 |goto 32,27.8
accept The Mag'har##9406 |goto 32,27.8
step
talk Nazgrel##3230
turnin The Mag'har##9406 |goto 55,36
step
talk Nazgrel##3230
accept Cruel's Intentions##10136 |goto Hellfire Peninsula,55.0,36.0
accept The Foot of the Citadel##10876 |goto Hellfire Peninsula,55.0,36.0
step
kill Arazzius the Cruel##19191 |q 10136/1 |goto 43.9,31.6
step
kill Force-Commander Gorax##19264
|tip He walks back and forth in this small area.
Use your Challenge from the Horde on Force-Commander Gorax's corpse |use Challenge from the Horde##31702
kill Hand of Kargath##22374
collect The Head of the Hand of Kargath##31706 |q 10876/1 |goto 47.3,49.6
step
talk Nazgrel##3230
turnin Cruel's Intentions##10136 |goto 55.0,36.0
turnin The Foot of the Citadel##10876 |goto 55.0,36.0
step
talk Stone Guard Stok'ton##54606
accept War on the Ramparts##29527 |goto Hellfire Ramparts 48.4,68.1
accept Demons in the Citadel##29530 |goto Hellfire Ramparts 48.4,68.1
accept Hitting Them Where It Hurts##29593 |goto Hellfire Ramparts 48.4,68.1
stickystart "hellfiresup"
step
kill Watchkeeper Gargolmar##17306+
collect Gargolmar's Hand##23881 |q 29527/1 |goto Hellfire Ramparts 74.8,33.2
step
kill Omor the Unscarred##17308+
collect Omor's Hoof##23886 |q 29530/1 |goto Hellfire Ramparts 38.8,19.3
step
kill Nazan##17307+
collect Nazan's Head##23901 |q 29527/2 |goto Hellfire Ramparts 38.8,82.0
step
label "hellfiresup"
As you go through the instance do the following:
click Hellfire Supplies##209348
|tip They are all over this instance.
collect 3 Hellfire Supplies##72160 |q 29593/1
step
talk Stone Guard Stok'ton##54606
turnin War on the Ramparts##29527 |goto Hellfire Ramparts 48.4,68.1
accept Demons in the Citadel##29530 |goto Hellfire Ramparts 48.4,68.1
turnin Hitting Them Where It Hurts##29593 |goto Hellfire Ramparts 48.4,68.1
step
talk Caza'rez##54636
accept Make Them Bleed##29535 |goto The Blood Furnace 51.5,90.1
accept Heart of Rage##29536 |goto The Blood Furnace 51.5,90.1
accept Mind the Gap##29537 |goto The Blood Furnace 51.5,90.1
stickystart "felbloodvial"
step
kill The Maker##17381+
collect Fel Infusion Rod##73200 |q 29535/2 |goto The Blood Furnace 37.1,40.8
step
Fully Investigate the Blood Furnace |q 29536/1 |goto The Blood Furnace 65.2,41.1
step
kill Keli'dan the Breaker##17377 |q 29537/1 |goto The Blood Furnace 58.3,41.2
step
label "felbloodvial"
As you go through this instance,
kill Laughing Skull Enforcer##17370+, Laughing Skull Rogue##17491+, Shadowmoon Summoner##17395+, Laughing Skull Legionnaire##17626+
collect 10 Fel Orc Blood Vial##23894 |q 29535
step
Run through this tunnel to turn in your quests |goto The Blood Furnace 62.3,51.4 < 5 |q 29537 |walk
talk Caza'rez##54636
turnin Make Them Bleed##29535 |goto The Blood Furnace 51.5,90.0
turnin Mind the Gap##29537 |goto The Blood Furnace 51.5,90.0
turnin Heart of Rage##29536 |goto The Blood Furnace 51.5,90.0
step
kill Overseer Ripsaw##21499|n
collect Illidari-Bane Shard##30579|n |goto Shadowmoon Valley,23.5,34.9
accept Illidari-Bane Shard##10623 |goto Shadowmoon Valley,23.5,34.9
step
talk Grokom Deatheye##19333
turnin Illidari-Bane Shard##10623 |goto Shadowmoon Valley,29.8,31.3
accept Capture the Weapons##10627 |goto Shadowmoon Valley,29.8,31.3
step
kill Makazradon##21501
collect Makazradon's Glaive##30786 |q 10627/1 |goto 22.7,35.3
step
kill Morgroron##21500
collect Morgroron's Glaive##30785 |q 10627/2 |goto 23.2,38.4
step
talk Grokom Deatheye##19333
turnin Capture the Weapons##10627 |goto Shadowmoon Valley,29.8,31.3
accept The Hermit Smith##10663 |goto Shadowmoon Valley,29.8,31.3
step
talk David Wayne##21465
turnin The Hermit Smith##10663 |goto Terokkar Forest,77.6,38.7
accept Additional Materials##10664 |goto Terokkar Forest,77.6,38.7
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
Make sure you have everything on this list.
collect 1 Adamantite Frame##23784 |q 10664/1
collect 4 Heavy Knothide Leather##23793 |q 10664/2
collect 1 Demon Warding Totem##30823 |q 10664/3
step
talk David Wayne##21465
turnin Additional Materials##10664 |goto Terokkar Forest,77.6,38.7
step
talk David Wayne##21465
accept Fresh from the Mechanar##10665 |goto Terokkar Forest,77.6,38.7
accept The Lexicon Demonica##10666 |goto Terokkar Forest,77.6,38.7
step
kill Grandmaster Vorpil##18732+
collect Lexicon Demonica##30827 |q 10666/1 |goto Shadow Labyrinth 53.4,56.0
step
click Overcharged Manacell##185015
collect Overcharged Manacell##30824 |q 10665/1 |goto The Mechanar 53.7,43.2
step
talk David Wayne##21465
turnin Fresh from the Mechanar##10665 |goto Terokkar Forest,77.6,38.7
turnin The Lexicon Demonica##10666 |goto Terokkar Forest,77.6,38.7
step
talk David Wayne##21465
accept Tear of the Earthmother##10670 |goto Terokkar Forest,77.6,38.7
|tip you'll have to complete the Mechanar (Fresh From the Mechanar) And Shadow Labyrinth (The Lexicon Demonica) portions of the dungeon guide in order to recive this quest
step
talk Caza'rez##54932
accept Honor the Dying##29651 |goto The Shattered Halls 58.6,88.5
step
talk Stone Guard Stok'ton##54931
accept Fel Ember##29650 |goto The Shattered Halls 58.6,88.5
accept A Very Special Cloth##29655 |goto The Shattered Halls 58.6,88.5
accept The Will of the Warchief##29653 |goto The Shattered Halls 58.6,88.5
step
kill 4 Shattered Hand Legionnaire##16700+ |q 29651/1 |goto The Shattered Halls 34.8,77.1
step
kill Grand Warlock Nethekurse##16807+
collect Grand Warlock's Amulet##23735 |q 29650 |goto The Shattered Halls 34.6,61.8
step
Use the Grand Warlock's Amulet next to this brazier |use Grand Warlock's Amulet##23735
collect Fel Ember##23726 |q 29650/1
step
kill 2 Shattered Hand Centurion##17465+ |q 29651/2 |goto The Shattered Halls 36.8,14.2
step
kill 2 Shattered Hand Champion##17671+ |q 29651/3 |goto The Shattered Halls 51.1,13.9
step
kill Warbringer O'mrogg##16809+
collect Tear of the Earthmother##30829 |q 10670/1 |goto The Shattered Halls 53.9,33.8
collect O'mrogg's Warcloth##72597 |q 29655/1 |goto The Shattered Halls 53.9,33.8
step
kill Warchief Kargath Bladefist##16808+
collect Warchief Kargath's Fist##23723 |q 29653/1 |goto The Shattered Halls 67.2,54.1
step
talk Stone Guard Stok'ton##55136
turnin Honor the Dying##29651 |goto The Shattered Halls 67.2,51.8
turnin Fel Ember##29650 |goto The Shattered Halls 67.2,51.8
turnin A Very Special Cloth##29655 |goto The Shattered Halls 67.2,51.8
turnin The Will of the Warchief##29653 |goto The Shattered Halls 67.2,51.8
step
talk David Wayne##21465
turnin Tear of the Earthmother##10670 |goto Terokkar Forest,77.6,38.7
step
At this point you will need to grind in order to reach exalted.
If you are below Honored (5,999) you can grind Normal Hellfire Ramparts, Blood Furnace and Shattered Halls.
After Honored, Normal Ramparts and Blood Furnace no long give reputation.  You will have to do Shattered Halls, or heroic Ramparts, Blood Furnace and Shattered Halls.
|confirm
step
talk Battlecryer Blackeye##18267
accept Hellfire Fortifications##13409 |only if not DeathKnight |goto Hellfire Peninsula,56.0,39.2
accept Hellfire Fortifications##13411 |only DeathKnight |goto Hellfire Peninsula,56.0,39.2
step
Capture The Overlook. |q 13409/1 |goto 40.1,48.5
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only if not DeathKnight
step
Capture The Stadium. |q 13409/1 |goto 35.7,51.5
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only if not DeathKnight
step
Capture Broken Hill. |q 13409/3 |goto 40.2,56.7
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only if not DeathKnight
step
Capture The Overlook. |q 13411/1 |goto 40.1,48.5
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
Capture The Stadium. |q 13411/1 |goto 35.7,51.5
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
Capture Broken Hill. |q 13411/3 |goto 40.2,56.7
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
talk Battlecryer Blackeye##18267
turnin Hellfire Fortifications##13411 |only DeathKnight |goto Hellfire Peninsula,56.0,39.2
turnin Hellfire Fortifications##13409 |only if not DeathKnight |goto Hellfire Peninsula,56.0,39.2
step
After the quest is completed you will unlock a daily version of the quest.
Click here to move onto it. |confirm
step
label "fort"
talk Battlecryer Blackeye##18267
accept Hellfire Fortifications##10110 |goto Hellfire Peninsula,56.0,39.2
step
Capture The Overlook. |q 10110/1 |goto 40.1,48.5
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
Capture The Stadium. |q 10110/1 |goto 35.7,51.5
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
Capture Broken Hill. |q 10110/3 |goto 40.2,56.7
You will need to enable PVP in order to capture the objective.
Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
talk Battlecryer Blackeye##18267
turnin Hellfire Fortifications##10110 |goto Hellfire Peninsula,56.0,39.2
|next "fort" |only if rep('Thrallmar')<=Revered
|next "grats" |only if rep('Thrallmar')==Exalted
step
label "grats"
Congratulations, you are now exalted with Thrallmar!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\Tranquillien",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Tranquillien faction.",
condition_end=function() return completedq(9811) end,
},[[
step
talk Courier Dawnstrider##16183
turnin Missing in the Ghostlands##9144 |goto Eversong Woods/0 48.98,88.99
|only if haveq(16183)
step
talk Apothecary Thedra##16196
accept The Fallen Courier##9147 |goto 49.01,89.04
step
Kill enemies around this area
collect 4 Plagued Blood Sample##22570 |q 9147/1 |goto Ghostlands/0 48.75,14.62
step
talk Apothecary Thedra##16196
turnin The Fallen Courier##9147 |goto Eversong Woods/0 49.01,89.04
step
talk Courier Dawnstrider##16183
accept Delivery to Tranquillien##9148 |goto 48.98,88.99
step
Follow the road |goto Ghostlands/0 46.53,18.49 < 30 |only if walking
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Delivery to Tranquillien##9148 |goto 46.34,28.36
accept The Forsaken##9327 |or |goto 46.34,28.36
'|accept the Forsaken##9329 |or |goto 46.34,28.36
step
talk Skymaster Sunwing##16189
fpath Tranquillien |goto 45.42,30.52
step
Enter the building |goto 45.17,32.36 < 10 |walk
talk High Executor Mavren##16252
|tip Inside the building.
turnin The Forsaken##9329 |goto 44.77,32.45 |or |only if haveq(9329)
turnin The Forsaken##9327 |goto 44.77,32.45|or |only if haveq(9327)
accept Return to Arcanist Vandril##9758 |goto 44.77,32.45
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Return to Arcanist Vandril##9758 |goto 46.34,28.36
accept Suncrown Village##9138 |goto 46.34,28.36
step
Enter the building |goto 48.34,31.98 < 10 |walk
talk Innkeeper Kalarin##16542
|tip Inside the building.
home Tranquillien |goto 48.91,32.42 |q 9138
step
Follow the road up |goto 46.55,24.22 < 30 |only if walking
kill 10 Nerubis Guard##16313 |q 9138/1 |goto 60.61,14.03
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Suncrown Village##9138 |goto 46.34,28.36
accept Goldenmist Village##9139 |goto 46.34,28.36
step
talk Rathis Tomber##16224
|tip He walks around the area.
accept Tomber's Supplies##9152 |goto 47.15,28.59
step
talk Apothecary Renzithen##16198
accept The Plagued Coast##9149 |goto 47.74,34.91
step
Follow the road down |goto 45.89,29.34 < 20 |only if walking
click Rathis Tomber's Supplies##181133
|tip It's in a wagon with a purple canopy over it.
collect Rathis Tomber's Supplies##22583 |q 9152/1 |goto 33.61,26.53
stickystart "Kill_Quel'dorei_Wraiths"
step
kill 6 Quel'dorei Ghost##16325 |q 9139/1 |goto 27.3,16.2
step
label "Kill_Quel'dorei_Wraiths"
kill 4 Quel'dorei Wraith##16326 |q 9139/2 |goto 27.3,16.2
step
Kill Grimscale enemies around this area
collect 6 Plagued Murloc Spine##22579 |q 9149/1 |goto 20.11,22.04
step
talk Rathis Tomber##16224
|tip He walks around this area.
turnin Tomber's Supplies##9152 |goto 47.15,28.59
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Goldenmist Village##9139 |goto 46.34,28.36
accept Windrunner Village##9140 |goto 46.34,28.36
step
talk Magister Darenis##16199
accept Salvaging the Past##9150 |goto 46.03,31.96
step
talk Ranger Lethvalin##16213
accept Help Ranger Valanna!##9145 |goto 45.48,32.44
step
talk Dame Auriferous##16231
|tip Inside the building.
accept Investigate An'daroth##9160 |goto 44.88,32.51
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
accept Trouble at the Underlight Mines##9192 |goto 44.75,32.28
step
talk Deathstalker Rathiel##16200
accept Down the Dead Scar##9155 |goto 46.02,33.57
step
talk Apothecary Renzithen##16198
turnin The Plagued Coast##9149 |goto 47.66,34.86
step
talk Master Chef Mouldier##16253
accept Culinary Crunch##9171 |goto 48.43,30.93
stickystart "Kill_Gangled_Cannibals"
step
Follow the path down |goto 43.34,32.56 < 20 |only if walking
kill 10 Risen Hungerer##16301 |q 9155/1 |goto 38.89,34.34
step
label "Kill_Gangled_Cannibals"
kill 10 Gangled Cannibal##16309 |q 9155/2 |goto 38.89,34.34
step
Kill enemies around this area
collect 8 Crystallized Mana Essence##22580 |q 9150/1 |goto 35.91,32.92
step
kill Spindleweb Spider##16350+
collect 5 Crunchy Spider Leg##22644 |q 9171/1 |goto 27.36,29.43
You can find more around [33.63,20.31]
stickystart "Kill_Sentinel_Spies"
step
Follow the path up |goto 37.73,22.73 < 20
Investigate An'daroth |q 9160/2 |goto 37.10,15.98
|tip Get near the intertwined tree lamp in the middle of the camp.
step
label "Kill_Sentinel_Spies"
kill 12 Sentinel Spy##16330 |q 9160/1 |goto 37.24,16.46
step
talk Master Chef Mouldier##16253
turnin Culinary Crunch##9171 |goto 48.43,30.93
step
talk Magister Darenis##16199
turnin Salvaging the Past##9150 |goto 46.03,31.96
step
talk Dame Auriferous##16231
|tip Inside the building.
turnin Investigate An'daroth##9160 |goto 44.89,32.50
accept Into Occupied Territory##9163 |goto 44.89,32.50
step
talk Deathstalker Rathiel##16200
turnin Down the Dead Scar##9155 |goto 46.02,33.57
step
click Wanted Poster
accept WANTED: Knucklerot and Luzran##9156 |goto 48.33,31.66
step
Follow the road down |goto 46.58,36.31 < 30 |only if walking
kill Knucklerot##16246
|tip He walks around the road in this area.
|tip You may need help to kill him.
collect Knucklerot's Head##22894 |q 9156/1 |goto 41.26,45.55
step
Follow the road down |goto 46.58,36.31 < 30 |only if walking
kill Luzran##16245
|tip He walks around the road in this area.
|tip You may need help to kill him.
collect Luzran's Head##22893 |q 9156/2 |goto 34.91,52.15
step
talk Apprentice Shatharia##16293
accept Underlight Ore Samples##9207 |goto 31.43,48.33
stickystart "Kill_Blackpaw_Scavengers"
stickystart "Kill_Blackpaw_Shaman"
stickystart "Collect_Underlight_Ore"
step
kill 8 Blackpaw Gnoll##16334 |q 9192/1 |goto 28.55,48.01
step
label "Kill_Blackpaw_Scavengers"
kill 6 Blackpaw Scavenger##16335 |q 9192/2 |goto 28.55,48.01
step
label "Kill_Blackpaw_Shaman"
kill 4 Blackpaw Shaman##16337 |q 9192/3 |goto 28.55,48.01
step
label "Collect_Underlight_Ore"
collect 6 Underlight Ore##22634 |q 9207/1 |goto 28.55,48.01
|tip They drop from Blackpaw Gnolls.
stickystart "Collect_Gargoyle_Fragments"
step
kill Phantasmal Seeker##16323+
collect 6 Phantasmal Substance##22566 |q 9140/1 |goto 18.67,46.01
step
label "Collect_Gargoyle_Fragments"
kill Stonewing Slayer##16324+
collect 4 Gargoyle Fragment##22567 |q 9140/2 |goto 18.67,46.01
step
Cross the water |goto 14.58,32.15 < 30 |only if walking
click Night Elf Plans: An'daroth##181138
collect Night Elf Plans: An'daroth##22590 |q 9163/1 |goto 12.52,26.51
It can also spawn at [13.71,26.82]
step
click Night Elf Plans: An'owyn##181139
collect Night Elf Plans: An'owyn##22591 |q 9163/2 |goto 12.86,23.94
It can also spawn at [12.78,25.14]
step
Cross the bridge |goto 10.48,24.38 < 10 |only if walking
click Night Elf Plans: Scrying on the Sin'dorei##181140
|tip On the deck of the ship.
collect Night Elf Plans: Scrying on the Sin'dorei##22592 |q 9163/3 |goto 10.45,22.58
step
Run up the ramp |goto 48.71,30.81 < 15 |only if walking
talk Magistrix Aminel##16205
|tip At the top of the platform.
accept Spinal Dust##9218 |goto 48.92,31.31
accept Rotting Hearts##9216 |goto 48.92,31.31
step
talk Deathstalker Rathiel##16200
turnin WANTED: Knucklerot and Luzran##9156 |goto 46.02,33.57
step
talk Dame Auriferous##16231
|tip Inside the building.
turnin Into Occupied Territory##9163 |goto 44.88,32.51
accept Deliver the Plans to An'telas##9166 |goto 44.88,32.51
step
talk High Executor Mavren##16252
|tip Inside the building.
accept Retaking Windrunner Spire##9173 |goto 44.77,32.45
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
turnin Trouble at the Underlight Mines##9192 |goto 44.74,32.28
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Windrunner Village##9140 |goto 46.34,28.36
step
Follow the road up |goto 47.67,22.62 < 30 |only if walking
talk Dying Blood Elf##16601
accept Anok'suten##9315 |goto 57.55,14.93
step
kill Anok'suten##16357 |q 9315/1 |goto 60.73,11.17
|tip He walks around this village, so you may need to search for him.
step
talk Ranger Valanna##16219
turnin Help Ranger Valanna!##9145 |goto 69.40,15.18
accept Dealing with Zeb'Sora##9143 |goto 69.40,15.18
step
Kill Shadowpine enemies around this area
collect 6 Zeb'Sora Troll Ear##22639 |q 9143/1 |goto 76.01,11.78
step
talk Ranger Valanna##16219
turnin Dealing with Zeb'Sora##9143 |goto 69.40,15.18
accept Report to Captain Helios##9146 |goto 69.40,15.18
step
talk Geranis Whitemorn##16201
accept Forgotten Rituals##9157 |goto 72.29,19.09
step
talk Farstrider Sedina##16202
|tip Inside the building on the bottom floor.
accept Bearers of the Plague##9158 |goto 72.49,32.13
step
talk Farstrider Solanna##16463
|tip Inside the building on the bottom floor.
accept Attack on Zeb'Tela##9276 |goto 72.32,31.25
step
talk Captain Helios##16220
turnin Report to Captain Helios##9146 |goto 72.37,29.64
accept Shadowpine Weaponry##9214 |goto 72.37,29.64
step
talk Ranger Krenn'an##16462
accept Spirits of the Drowned##9274 |goto 72.21,29.77
step
Run up the ramp |goto 71.71,30.18 < 10 |only if walking
talk Ranger Vynna##16203
|tip Inside the building on the top floor.
accept The Traitor's Shadow##9161 |goto 71.95,32.64
accept Investigate the Amani Catacombs##9193 |goto 71.95,32.64
accept Report to Magister Kaendris##9172 |goto 71.95,32.64
step
Run up the ramp |goto 72.96,30.20 < 10 |only if walking
talk Apothecary Venustus##16464
|tip Inside the building on the top floor.
accept Troll Juju##9199 |goto 72.62,31.57
accept A Little Dash of Seasoning##9275 |goto 72.62,31.57
stickystart "Kill_Vengeful_Apparitions"
stickystart "Collect_Wavefront_Medallion"
step
kill 8 Ravening Apparition##16327 |q 9274/1 |goto 73.36,22.28
|tip Underwater around this area.
step
label "Kill_Vengeful_Apparitions"
kill 8 Vengeful Apparition##16328 |q 9274/2 |goto 73.36,22.28
|tip Underwater around this area.
step
label "Collect_Wavefront_Medallion"
click Glistening Mud##181151+
|tip Underwater around this area.
collect 8 Wavefront Medallion##22674 |q 9157/1 |goto 73.36,22.28
step
talk Geranis Whitemorn##16201
turnin Forgotten Rituals##9157 |goto 72.29,19.09
accept Vanquishing Aquantion##9174 |goto 72.29,19.09
step
click Altar of Tidal Mastery##181157
|tip Underwater.
kill Aquantion##16292 |q 9174/1 |goto 71.34,15.04
step
talk Geranis Whitemorn##16201
turnin Vanquishing Aquantion##9174 |goto 72.29,19.09
step
Enter the building |goto 78.79,19.84 < 15 |only if walking
click Dusty Journal##194341
|tip On the balcony platform of this building.
turnin The Traitor's Shadow##9161 |goto 79.63,17.55
accept Hints of the Past##9162 |goto 79.63,17.55
step
kill 10 Ghostclaw Lynx##16348 |q 9158/1 |goto 75.87,28.39
|tip The Ghostclaw Lynx share spawns with the bats.
step
talk Farstrider Sedina##16202
|tip Inside the building on the bottom floor.
turnin Bearers of the Plague##9158 |goto 72.49,32.13
accept Curbing the Plague##9159 |goto 72.49,32.13
step
talk Ranger Krenn'an##16462
turnin Spirits of the Drowned##9274 |goto 72.21,29.77
step
Run up the ramp |goto 71.71,30.18 < 10 |only if walking
talk Ranger Vynna##16203
|tip Inside the building on the top floor.
turnin Hints of the Past##9162 |goto 71.95,32.64
step
kill 10 Vampiric Mistbat##16354 |q 9159/1 |goto 73.91,38.03
stickystart "Kill_Shadowpine_Headhunters"
stickystart "Collect_Headhunter_Axes"
stickystart "Collect_Shadowcaster_Maces"
step
kill 8 Shadowpine Shadowcaster##16469 |q 9276/1 |goto 78.82,36.69
step
label "Kill_Shadowpine_Headhunters"
kill 8 Shadowpine Headhunter##16344 |q 9276/2 |goto 78.82,36.69
step
label "Collect_Headhunter_Axes"
collect 3 Headhunter Axe##23165 |q 9214/1 |goto 78.82,36.69
|tip They drop from Shadowpine Headhunters.
step
label "Collect_Shadowcaster_Maces"
collect 3 Shadowcaster Mace##23167 |q 9214/2 |goto 78.82,36.69
|tip They drop from Shadowpine Shadowcasters.
step
talk Farstrider Solanna##16463
|tip Inside the building on the bottom floor.
turnin Attack on Zeb'Tela##9276 |goto 72.32,31.25
accept Assault on Zeb'Nowa##9277 |goto 72.32,31.25
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Anok'suten##9315 |goto 46.34,28.36
step
Follow the path down |goto 43.20,32.53 < 20 |only if walking
Kill Risen enemies around this area
collect 10 Rotting Heart##22641 |q 9216/1 |goto 39.16,36.32
step
kill 8 Spindleweb Lurker##16351 |q 9159/2 |goto 29.82,40.91
You can find more around [26.41,53.52]
stickystart "Kill_Fallen_Rangers"
stickystart "Collect_The_Lady's_Necklace"
step
Follow the road up |goto 18.41,58.40 < 20 |only if walking
kill 8 Deatholme Acolyte##16315 |q 9173/1 |goto 12.46,56.91
step
label "Kill_Fallen_Rangers"
kill 10 Fallen Ranger##16314 |q 9173/2 |goto 12.46,56.91
step
label "Collect_The_Lady's_Necklace"
collect The Lady's Necklace##22597 |goto 12.46,56.91 |q 9175 |future
|tip It drops from Rangers and Acolytes.
step
use The Lady's Necklace##22597
accept The Lady's Necklace##9175
step
Run up the ramp |goto 48.71,30.81 < 15 |only if walking
talk Magistrix Aminel##16205
|tip At the top of the platform.
turnin Rotting Hearts##9216 |goto 48.92,31.31
step
talk Magister Darenis##16199
accept The Sanctum of the Sun##9151 |goto 46.03,31.96
step
talk High Executor Mavren##16252
|tip Inside the building.
turnin Retaking Windrunner Spire##9173 |goto 44.77,32.45
turnin The Lady's Necklace##9175 |goto 44.77,32.45
step
Follow the path |goto 47.98,40.14 < 20 |only if walking
Continue following the path |goto 53.20,49.03 < 15 |only if walking
talk Magister Kaendris##16239
|tip Inside the building.
turnin Report to Magister Kaendris##9172 |goto 55.07,48.84
accept The Twin Ziggurats##9176 |goto 55.07,48.84
step
talk Magister Quallestis##16291
|tip Inside the building.
turnin Underlight Ore Samples##9207 |goto 54.95,48.49
step
Follow the path |goto 56.80,45.20 < 15 |only if walking
Follow the path up |goto 60.52,42.57 < 20 |only if walking
talk Magister Sylastor##16237
turnin Deliver the Plans to An'telas##9166 |goto 60.29,35.63
accept Deactivate An'owyn##9169 |goto 60.29,35.63
step
Follow the road |goto 61.07,50.79 < 30 |only if walking
kill Sentinel Infiltrator##16333+
collect Crystal Controlling Orb##23191 |goto 57.69,64.87 |q 9169
step
click Night Elf Moon Crystal##181359
Deactivate the Night Elf Moon Crystal |q 9169/1 |goto 58.22,64.93
stickystart "Kill_Shadowpine_Catlords"
stickystart "Kill_Shadowpine_Hexxers"
stickystart "Collect_Catlord_Claws"
stickystart "Collect_Hexxer_Staves"
step
Follow the path up |goto 60.47,64.06 < 15 |only if walking
click Raw Meat Rack##181250
Poison the Raw Meat Rack |q 9275/1 |goto 65.06,66.71
step
click Smoked Meat Rack##181251
Poison the Smoked Meat Rack |q 9275/2 |goto 62.99,75.02
step
Follow the path |goto 63.89,61.72 < 15 |only if walking
click Fresh Fish Rack##181252
|tip Inside the building.
Poison the Fresh Fish Rack |q 9275/3 |goto 68.23,57.79
step
label "Kill_Shadowpine_Catlords"
kill 10 Shadowpine Catlord##16345 |q 9277/1 |goto 66.80,56.89
step
label "Kill_Shadowpine_Hexxers"
kill 10 Shadowpine Hexxer##16346 |q 9277/2 |goto 66.80,56.89
step
label "Collect_Catlord_Claws"
collect 3 Catlord Claws##22677 |q 9214/3 |goto 66.80,56.89
step
label "Collect_Hexxer_Staves"
collect 3 Hexxer Stave##23166 |q 9214/4 |goto 66.80,56.89
step
Follow the path up |goto 68.93,45.89 < 30 |only if walking
Continue following the path |goto 70.15,33.73 < 15 |only if walking
talk Farstrider Sedina##16202
|tip Inside the building on the bottom floor.
turnin Curbing the Plague##9159 |goto 72.49,32.13
step
talk Farstrider Solanna##16463
|tip Inside the building on the bottom floor.
turnin Assault on Zeb'Nowa##9277 |goto 72.32,31.25
step
talk Captain Helios##16220
turnin Shadowpine Weaponry##9214 |goto 72.37,29.64
stickystart "Burn_Mummified_Troll_Remains"
step
Follow the path |goto 67.87,28.87 < 15 |only if walking
Enter the tunnel |goto 66.26,28.56 < 10 |walk
Kill enemies around this area
collect 8 Troll Juju##22633 |q 9199/1 |goto Ghostlands/1 33.98,48.36
step
label "Burn_Mummified_Troll_Remains"
click Mummified Troll Remains##181148+
Burn #10# Mummified Troll Remains |q 9193/1 |goto 33.98,48.36
step
Investigate the Amani Catacombs |q 9193/2 |goto 59.84,63.83
step
talk Ranger Lilatha##16295
|tip If she is not in the cage, you will have to wait for someone to finish escorting her.
accept Escape from the Catacombs##9212 |goto 59.92,81.69
step
Follow the path |goto 65.62,52.09 < 8 |walk
Continue following the path |goto 73.78,37.67 < 8 |walk
Leave the tunnel |goto Ghostlands/0 66.24,28.56 < 8 |walk
Escort Ranger Lilatha back to Farstrider Enclave |q 9212/1 |goto 72.25,30.11
step
talk Captain Helios##16220
turnin Escape from the Catacombs##9212 |goto 72.37,29.64
step
Run up the ramp |goto 72.96,30.20 < 10 |only if walking
talk Apothecary Venustus##16464
|tip Inside the building on the top floor.
turnin Troll Juju##9199 |goto 72.62,31.57
turnin A Little Dash of Seasoning##9275 |goto 72.62,31.57
step
Run up the ramp |goto 71.71,30.18 < 10 |only if walking
talk Ranger Vynna##16203
|tip Inside the building on the top floor.
turnin Investigate the Amani Catacombs##9193 |goto 71.95,32.64
step
Follow the path |goto 64.90,42.13 < 20 |only if walking
Continue following the path |goto 61.41,41.41 < 15 |only if walking
talk Magister Sylastor##16237
turnin Deactivate An'owyn##9169 |goto 60.29,35.63
stickystart "Collect_Spinal_Dust"
step
Follow the road |goto 46.22,39.47 < 20 |only if walking
Enter the building |goto 40.56,48.61 < 10 |walk
click Worn Chest##181239
|tip Inside the building.
collect Stone of Flame##22599 |q 9176/1 |goto 40.37,49.76
step
Jump down here |goto 40.26,47.77 < 10 |only if walking
Enter the building |goto 34.34,48.74 < 10 |walk
click Dented Chest##181238
collect Stone of Light##22598 |q 9176/2 |goto 34.30,47.66
step
label "Collect_Spinal_Dust"
Kill enemies around this area
|tip Dreadbone and Deathcage enemies can drop Spinal Dust.
collect 10 Spinal Dust##22642 |q 9218/1 |goto 38.10,58.53
You can find more around [36.74,68.37]
step
talk Apprentice Vor'el##16480
accept Clearing the Way##9281 |goto 46.40,56.42
step
Follow the road |goto 51.51,56.01 < 20 |only if walking
Enter the building |goto 54.75,49.47 < 10 |walk
talk Magister Kaendris##16239
|tip Inside the building.
turnin The Twin Ziggurats##9176 |goto 55.07,48.84
accept The Traitor's Destruction##9167 |goto 55.07,48.84
step
talk Arcanist Janeda##16240
|tip Upstairs inside the building.
accept Captives at Deatholme##9164 |goto 54.84,48.35
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
accept War on Deatholme##9220 |goto 54.87,48.55
accept Dar'Khan's Lieutenants##9170 |goto 54.87,48.55
stickystart "Kill_Ghostclaw_Ravagers"
step
kill 10 Greater Spindleweb##16352 |q 9281/1 |goto 50.90,60.79
You can find more around [42.58,58.20]
step
label "Kill_Ghostclaw_Ravagers"
kill 10 Ghostclaw Ravager##16349 |q 9281/2 |goto 50.90,60.79
You can find more around [42.58,58.20]
stickystart "Kill_Nerubis_Centurions"
stickystart "Kill_Eyes_of_Dar'Khan"
stickystart "Kill_Wailers"
step
Follow the path |goto 37.5,84.7 < 10
Enter the crypt |goto 31.70,73.58 < 5 |walk
kill Jurion the Deceiver##16248 |q 9170/3 |goto 32.09,74.45
|tip Inside the crypt.
step
talk Apothecary Enith##16208
Choose _<Administer the restorative draught.>_
Rescue Apothecary Enith |q 9164/1 |goto 32.14,73.95
step
kill Mirdoran the Fallen##16250 |q 9170/1 |goto 37.35,79.33
|tip Inside the building.
step
Enter the building |goto 35.20,88.23 < 10 |walk
kill Masophet the Black##16249 |q 9170/4 |goto 35.78,89.12
|tip Inside the building.
He can also be found at [29.28,88.89]
step
talk Ranger Vedoran##16209
Choose <Administer the restorative draught.>
Rescue Ranger Vedoran |q 9164/3 |goto 32.79,89.92
step
kill Borgoth the Bloodletter##16247 |q 9170/2 |goto 32.66,90.48
He can also be found at [41.26,83.04]
step
talk Apprentice Varnis##16206
Choose <Administer the restorative draught.>
Rescue Apprentice Varnis |q 9164/2 |goto 40.97,83.21
step
kill Dar'Khan Drathir##16329
|tip Downstairs inside the building.
|tip You might need help with this.
collect Dar'Khan's Head##22653 |q 9167/1 |goto 33.04,81.24
step
label "Kill_Nerubis_Centurions"
Follow the path |goto 36.05,71.38 < 30 |only if walking
kill 6 Nerubis Centurion##16319 |q 9220/2 |goto 37.78,76.97
He can also be found at [36.62,85.32]
step
label "Kill_Eyes_of_Dar'Khan"
kill 5 Eye of Dar'Khan##16320 |q 9220/1 |goto 34.02,78.84
step
label "Kill_Wailers"
kill 6 Wailer##16321 |q 9220/3 |goto 34.02,78.84
step
Follow the path |goto 36.19,71.00 < 20 |only if walking
Continue following the path |goto 43.63,57.53 < 20 |only if walking
talk Apprentice Vor'el##16480
turnin Clearing the Way##9281 |goto 46.40,56.42
step
Follow the road |goto 51.51,56.01 < 20 |only if walking
Enter the building |goto 54.75,49.47 < 10 |walk
talk Magister Kaendris##16239
|tip Inside the building.
turnin The Traitor's Destruction##9167 |goto 55.07,48.84
accept Friend of the Sin'dorei##9811 |goto 55.07,48.84
step
talk Arcanist Janeda##16240
turnin Captives at Deatholme##9164 |goto 54.84,48.35
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
turnin War on Deatholme##9220 |goto 54.87,48.55
turnin Dar'Khan's Lieutenants##9170 |goto 54.87,48.55
step
Run up the ramp |goto 48.71,30.81 < 15 |only if walking
talk Magistrix Aminel##16205
|tip At the top of the platform.
turnin Spinal Dust##9218 |goto 48.92,31.31
step
talk Lor'themar Theron##16802
turnin Friend of the Sin'dorei##9811 |goto Silvermoon City/0 53.80,20.24
step
label "Reached_Exalted"
Congratulations!
You are Exalted with Tranquillien!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Burning Crusade Reputations\\The Violet Eye",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Violet Eye faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('The Violet Eye') < Exalted end,
achieveid={960},
patch='30001',
},[[
step
This reputation can be earned by running the Karazhan raid.
|confirm
step
This will _require_ you to be in a _raid group_.
To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label "start"
|goto Deadwind Pass,47.0,74.8 |n
Enter _Karazhan_ here |goto Karazhan |noway |c
step
Kill every creature that is hostile in this instance in order to gain reputation.
|tip You will have to clear this place a few times to reach Exalted.
Click here to go back to the beginning of the guide |next "start" |confirm
Earn Exalted status with The Violet Eye |complete rep('The Violet Eye')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with The Violet Eye!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Argent Tournament\\Aspirant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing your race's Aspirant Rank dailies in order to achieve Argent Tournament Grounds Valiant Rank with your own race and eventually the Crusader title.",
},[[
step
#include "Argent Tourney_Aspirant"
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Argent Tournament\\Valiant Rank Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing your race's Valiant Rank dailies in order to achieve Argent Tournament Grounds Champion Rank with your own race. You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section in order to have access to the quests in this guide section and gain the Crusader title.",
},[[
step
#include "Argent Tourney_Valiant"
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
This reputation can be earned by running the Icecrown Citadel raid
|confirm
step
This will _require_ you to be in a _raid group_
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
Proceeding to Prequests |next |complete rep('Frenzyheart Tribe')<=Friendly |only if rep('Frenzyheart Tribe')<=Friendly
Proceeding to Dailies |next "daily" |complete rep('Frenzyheart Tribe')>=Friendly |only if rep('Frenzyheart Tribe')>=Friendly
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
stickystart "softpokemat"
step
kill 8 Hardknuckle Forager |q 12529/1 |goto 57.5,73.3
step
kill 6 Hardknuckle Charger |q 12529/2 |goto 61.1,71.7
step
label "softpokemat"
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
The path down to The Sapphire Queen starts here |goto 59.4,79.1 < 5 |q 12534 |only if walkng
Follow the path down |goto 57.1,79.3 |only if walking
kill Sapphire Hive Queen##28087
collect Stinger of the Sapphire Queen##38477 |q 12534/1
step
Go outside
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
step
Click the Skyreach Crystal Formations
|tip They look like white crystal cluster on the ground along the river bank.
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 56.6,84.6
step
kill Serfex the Reaver##28083
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
stickystart "shinytreas"
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
stickystart "frenzyscav"
step
kill 1 Warlord Tartek |q 12575/1 |goto 41.3,19.8
|tip He comes walking up on a red dragon.
step
Click the Mistwhisper Treasure
|tip It's a yellow glowing floating orb, hovering over a tree stump altar.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.6,19.5
step
label "frenzyscav"
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
During this next part you will fight a boss.
If you kill Jaloot during the fight, you will be able to pick up the Frenzyheart Tribe quest, and vice versa.
NOTE** This will decrease your Reputation with _The Oracles_ to _Hated_
kill Jaloot##28667
|confirm always
step
Enter the cave here
Follow the path inside the cave up |goto 72.2,57.3 |walk
kill Artruis the Heartless##28659 |q 12581/1 |goto 70.8,58.7
click Artruis' Phylactery##190777
|tip This will spawn after the fight
turnin A Hero's Burden##12581 |goto 70.8,58.7
talk Zepik the Gorloc Hunter##28668
accept Frenzyheart Champion##12582 |goto 70.8,58.7
accept Return of the Lich Hunter##12692 |goto 70.8,58.7
If you this quest is not available, clicke here to continue |confirm
step
talk Elder Harkek##28138
turnin Return of the Lich Hunter##12692 |goto 55.4,69.6
step
talk Elder Harkek##28138
accept Chicken Party!##12702 |goto 55.5,69.7
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
step
They are all around the village
Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
Click the Chicken Escapees
collect 12 Captured Chicken##38483 |q 12702/1
step
kill Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
collect Venture Co. Explosives##39651 |q 12758 |goto 33.1,47.3
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
|tip The Altar of Kartak has a big skull on top of it, with long curved horns.  There are 3 small fires at the base of the altar, also.
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
You will now have to run daily quests in order to gain reputation.
Click here to go back to the start of the dailies. Note that this will not actually reset the daily quests. |confirm |next "daily"
|next "exalted" |only if rep('Frenzyheart Tribe')==Exalted
step
label "exalted"
Congratulations, you are now Exalted with the Frenzyheart Tribe!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\The Horde Expedition",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with The Horde Expedition faction.",
condition_suggested=function() return level >= 10 and level <= 50 end,
achieveid={1011},
patch='unknown',
},[[
step
The best way to earn reputation with the Horde Expedition will be to run The Oculus, Halls of LIghtning, Utgarde Pinnacle or Heroic Wrath of the Lich King instances
Make sure that you _DO NOT_ have a tabard equipped, or you will not get reputation with the factions you need
Keep in mind, if you're already Exalted with the Horde Expedition, you will gain reputation with one of the factions underneath it (if you aren't exalted already)
|confirm
step
Earning reputation with _The Hand of Vengeance_, _The Sunreavers_, _The Taunka_ or _Warsong Offensive_, a percent will go towards the Horde Expedition
|tip You can also run Heroic dungeons to gain reputation.
|confirm
step
Exalted with The Hand of Vengeance |complete rep("The Hand of Vengeance")==Exalted
Exalted with The Sunreavers |complete rep('The Sunreavers')==Exalted
Exalted with The Taunka |complete rep('The Taunka')==Exalted
Exalted with Warsong Offensive |complete rep('Warsong Offensive')==Exalted
step
Congratulation, You are now Exalted with the Horde Expedition!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Wrath of the Lich King Reputations\\Kalu'ak",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Kalu'ak faction.",
achieveid={949},
patch='30001',
},[[
#include "Kaluak_Rep"
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
kill Beryl Mage Hunter##25585+ |n
collect Beryl Prison Key##34688 |n |goto 40.5,39.2
click Arcane Prison##187561
Free an Arcane Prisoner |q 11587/1 |goto 40.5,39.2
step
The path down to Monitoring the Rift: Cleftcliff Anomaly starts here |goto 41.2,41.8 < 5 |q 11576 |only if walking
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
The path down to Monitoring the Rift: Sundered Chasm starts here |goto 46.8,29.3 < 5 |q 11582 |only if walking
Go down the path and underwater
Use your Arcanometer next to the huge purple glowing crack underwater |use Arcanometer##34669
Take the Sundered Chasm Reading |q 11582/1 |goto 44,28.6
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Sundered Chasm##11582 |goto 45,33.4
accept Monitoring the Rift: Winterfin Cavern##12728 |goto 45,33.4
step
The path down to Monitoring the Rift: Winterfin Cavern starts here |goto 46.8,29.3 < 5 |q 12728 |only if walking
Stand in the mouth of the cave, past the torches
Use your Arcanometer |use Arcanometer##34669
Take the Winterfin Cavern Reading |q 12728/1 |goto 40.1,19.7
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Winterfin Cavern##12728 |goto 45,33.4
step
Fight a Beryl Sorcerer
Use your Arcane Binder on him when you see the 'Beryl Sorcerer can now be captured' message in your chat |use Arcane Binder##34691
Capture a Beryl Sorcerer |q 11590/1 |goto 43.5,37.4
step
talk Librarian Donathan##25262
turnin Abduction##11590 |goto 45.3,33.3
accept The Borean Inquisition##11646 |goto 45.3,33.3
step
Go inside the tall tower |goto 46.3,32.8
talk Librarian Normantis##25480
turnin The Borean Inquisition##11646 |goto 46.3,32.8
accept The Art of Persuasion##11648 |goto 46.3,32.8
step
Use your Neural Needler on the Imprisoned Beryl Sorcerer repeatedly to Interrogate the Prisoner |use Neural Needler##34811
Interrogate the Prisoner |q 11648/1
step
talk Librarian Normantis##25480
turnin The Art of Persuasion##11648 |goto 46.3,32.8
accept Sharing Intelligence##11663 |goto 46.3,32.8
step
Go outside the tower |goto 45.3,33.3
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
Watch the cutscene, then you'll get teleported back to Amber Ledge |goto 46.4,32.6 < 5 |noway
step
talk Archmage Evanor##25785
turnin Rescuing Evanor##11681 |goto 46.4,32.4
accept Dragonspeak##11682 |goto 46.4,32.4
step
Go outside the tower |goto 45.3,34.5
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
Equip Tabard of the Kirin Tor |equipped Tabard of the Kirin Tor##43157 |use Tabard of the Kirin Tor##43157
Once you've bought the Tabard, you will have to run instances from _Wrath of the Lich King_ in order to gain rep
Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
|tip You can also run Heroic Dungeons to qualify
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
On the Orgrim's Hammer airship:
talk Koltira Deathweaver##29795
accept It's All Fun and Games##12892
step
Use your Eyesore Blaster on The Ocular |use Eyesore Blaster##41265
|tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
Destroy The Ocular |q 12892/1 |goto Icecrown 44.3,21.5
step
talk Baron Sliver##29804
turnin It's All Fun and Games##12892 |goto 44.1,24.7
accept I Have an Idea, But First...##12891 |goto 44.1,24.7
step
kill Shadow Cultist##29717+
collect 1 Cultist Rod##41359|q 12891/1 |goto 43.7,24.8
kill Morbid Carcass##29719+
collect 1 Abomination Hook##41361|q 12891/2 |goto 43.7,24.8
kill Vault Geist##29720+
collect 1 Geist Rope##41362|q 12891/3 |goto 43.7,24.8
kill Rabid Cannibal##29722+, Death Knight Master##29738+
collect 5 Scourge Essence##41363|q 12891/4 |goto 43.7,24.8
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
accept If He Cannot Be Turned##12897 |goto 44.1,24.7
step
The entrance to the Shadow Vault starts here |goto 43.7,23.6 < 5 |c |q 12897
click General's Weapon Rack##191779
|tip It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
General Lightsbane spawns
kill General Lightsbane##29851 |q 12897/1 |goto 44.9,19.9
step
On the Orgrim's Hammer airship:
talk Koltira Deathweaver##29795
talk Thassarian##29799
turnin If He Cannot Be Turned##12897
accept The Shadow Vault##12899
step
talk Baron Sliver##29343
turnin The Shadow Vault##12899 |goto 42.8,24.9
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
stickystart "mjordin"
step
Watch out for the Mjordin Combatants. They will attack you!
talk Efrem the Faithful##30081
Challenge him to a duel
Defeat Efrem the Faithful |q 12955/2 |goto 37.9,25.1
step
talk Tinky Wickwhistle##30162
Tell her you can't afford her as a distraction
Defeat Tinky Wickwhistle |q 12955/4 |goto 36.1,23.6
step
label "mjordin"
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
The entrance to the Ufrang's Hall starts here |goto 38.8,24.0 < 5 |q 12943 |walk
talk Vaelen the Flayed##30056
accept Get the Key##12949 |goto 41.0,23.9
step
Use your Shadow Vault Decree on Thane Ulfrang the Mighty |use Shadow Vault Decree##41776
kill Thane Ulfrang the Mighty##29919 |q 12943/1 |goto 40.3,23.9
step
Leave Ufrang's Hall |goto 38.8,24.0 < 5 |q 12949 |walk
kill Instructor Hroegar##29915
collect Key to Vaelan's Chains##41843 |q 12949/1 |goto 36.5,23.6
step
The entrance to the Ufrang's Hall starts here |goto 38.8,24.0 < 5 |future |q 12951 |walk
talk Vaelen the Flayed##30056
turnin Get the Key##12949 |goto 41.0,23.9
accept Let the Baron Know##12951 |goto 41.0,23.9
step
Leave Ufrang's Hall |goto 38.8,24.0 < 5 |q 12951 |walk
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
Equip your Tabard of the Ebon Blade |equipped Tabard of the Ebon Blade##43155 |use Tabard of the Ebon Blade##43155
Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep
Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
|tip You can also run Heroic dungeons to gain repuation.
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
#include "Oracles_Dailies"
step
label "daily"
During this next part you will fight a boss.
If you kill Zepik the Gorloc Hunter during the fight, you will be able to pick up the Oracle quest, and vice versa.
NOTE** This will decrease your Reputation with the _Frenzyheart Tribe_ to _Hated_
kill Zepik the Gorloc Hunter##28668
|confirm always
step
Enter the cave here
Follow the path inside the cave up |goto 72.2,57.3 |walk
kill Artruis the Heartless##28659 |q 12581/1 |goto 70.8,58.7
click Artruis' Phylactery##190777
|tip This will spawn after the fight
turnin A Hero's Burden##12581
talk Jaloot##28667
accept Hand of the Oracles##12689 |goto 70.8,58.7
accept Return of the Friendly Dryskin##12695 |goto 70.8,58.7
If you cannot accept this last quest click here to continue |confirm
step
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.6,56.4
step
talk High-Oracle Soo-say##28027
accept Appeasing the Great Rain Stone##12704 |goto 54.6,56.4
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
|tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
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
step
Use your Energized Polished Crystal |use Energized Polished Crystal##39748
|tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
Kill 30 Frenzyheart Attackers |q 12762/1 |goto 22.2,78.0
step
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
|next "exalted" |only if rep('The Oracles')==Exalted
step
label "exalted"
Congratulations, you are now Exalted with The Oracles!
]])
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
stickystart "coldspell"
step
kill Coldarra Spellbinder##25719+
collect 1 Scintillating Fragment##35648|n |goto 32.7,29
Click the Scintillating Fragment in your bags|use Scintillating Fragment##35648
accept Puzzling...##11941 |goto 32.7,29
step
label "coldspell"
kill 10 Coldarra Spellweaver##25722+ |q 11918/1 |goto Borean Tundra,24.3,34.1
|tip You can find them all around Coldarra.
step
talk Raelorasz##26117
turnin Basic Training##11918 |goto 33.3,34.5
accept Hatching a Plan##11936 |goto 33.3,34.5
turnin Puzzling...##11941 |goto 33.3,34.5
accept The Cell##11943 |goto 33.3,34.5
step
kill Coldarra Wyrmkin##25728+
collect 5 Frozen Axe##35586 |goto 24.1,29.6
step
kill Warbringer Goredrak##25712
collect Energy Core##35669|q 11943/1 |goto 24.1,29.6
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
Do not kill it, let it hit you until it becomes friendly |havebuff 134155 |c |q 11919 |goto 24.6,27.1 |n
step
Capture the Nexus Drake |q 11919/1 |goto 33.3,34.5
talk Raelorasz##26117
turnin Drake Hunt##11919 |goto 33.3,34.5
accept Cracking the Code##11931 |goto 33.3,34.5
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26237
accept Keristrasza##11946
turnin Keristrasza##11946
accept Bait and Switch##11951
stickystart "crystalmana"
step
kill Coldarra Spellbinder##25719+
collect 3 Shimmering Rune##35629|q 11931/1 |goto 32.7,29
step
kill Inquisitor Caleras##25720
collect Azure Codex##35628|q 11931/2 |goto 32.7,27.8
step
label "crystalmana"
click Crystallized Mana##188140
collect 10 Crystallized Mana Shard##35685|q 11951/1 |goto 28.8,30.0
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26237
turnin Bait and Switch##11951
accept Saragosa's End##11957
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26206
Tell her you are ready to face Saragosa|goto 21.2,22.5 < 5 |noway |c |q 11957
step
She teleports you to a platform
Use the Arcane Power Focus in your bags|use Arcane Power Focus##35690
kill Saragosa##26231
collect Saragosa's Corpse##35709|q 11957/1
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26206
turnin Saragosa's End##11957
accept Mustering the Reds##11967
step
Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
talk Keristrasza##26206
Tell her to return you to Transitus Shield|goto 33.3,34.4 < 5 |noway |c |q 11967
step
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
accept Prisoner of War##11973 |goto The Nexus,36.2,81.4
step
kill Keristrasza##26206 |q 11973/1
|tip She's at the center of the Nexus.  You won't be able to activated her until you kill the other bosses of The Nexus.
step
talk Warmage Kaitlyn##55531
turnin Prisoner of War##11973 |goto 36.2,81.4
step
accept The Struggle Persists##13124 |goto The Oculus/1 64.0,39.2
|tip This quest should automatically appear and be accepted after entering The Oculus.
step
Fight the mobs up until this point, and click the Nexus Portal. |goto The Oculus/1 38.6,51.3
Click here to continue. |confirm
step
kill Drakos the Interrogator##27654 |n
talk Belgaristrasz##27658
|tip You will only be able to talk to him after Drakos is dead.
turnin The Struggle Persists##13124
accept A Unified Front##13126
step
Take to either Eternos, Belgaristrasz or Verdisa and get a Dragon Essence.
|tip You will only be able to get one type of Dragon Essence.
Click the Ruby Essence in your bags. |use Ruby Essence##37860
Click the Emerald Essence in your bags. |use Emerald Essence##37815
Click the Amber Essence in your bags. |use Amber Essence##37859
Click here to proceed. |confirm |q 13126
step
You will need to kill 10 Constructs to proceed.
You can find them on the platforms above you.
You also need to kill constructs at the center ring.
Once you've killed all constructs, click here to continue. |confirm |q 13127
step
kill Varos Cloudstrider##27447 |q 13126/2
Once you kill him Belgaristrasz appears.
talk Image of Belgaristrasz##28012
turnin A Unified Front##13126
accept Mage-Lord Urom##13127
step
Click the Ruby Essence in your bags. |use Ruby Essence##37860
Click the Emerald Essence in your bags. |use Emerald Essence##37815
Click the Amber Essence in your bags. |use Amber Essence##37859
Fly up another level to the ring above. Click here to proceed. |confirm |q 13127
step
Kill Mage-Lord Urom on all 3 platforms.
Once you kill the Fake Mage-Lord Urom, fly to the center.
kill Mage-Lord Urom##27655 |q 13127/1
step
talk Image of Belgaristrasz##28012
turnin Mage-Lord Urom##13127
accept A Wing and a Prayer##13128
step
Click the Ruby Essence in your bags. |use Ruby Essence##37860
Click the Emerald Essence in your bags. |use Emerald Essence##37815
Click the Amber Essence in your bags. |use Amber Essence##37859
Fly up to the top of the construct. Once there, click here to continue. |confirm |q 13128
step
Once at the top, use your dragons abilities to kill Ley-Guardian Eregos.
kill Ley-Guardian Eregos##27656 |q 13128/1
step
talk Raelorasz##26117
turnin A Wing and a Prayer##13128 |goto Borean Tundra,33.3,34.5
step
talk Librarian Serrah##26110
accept Corastrasza##13412 |goto Borean Tundra,33.5,34.4
step
|tip You will have to fly up pretty high to the floating platforms.
talk Corastrasza##32548
turnin Corastrasza##13412 |goto 29.5,24.8
accept Aces High!##13413 |goto 29.5,24.8
step
Tell Corastrasza you have the courage to face Malygos drakes
She will give you a Wyrmrest Skytalon to ride
Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
Target a Scalesworn Elite flying above Corastrasza.
To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
kill 5 Scalesworn Elite##32534 |q 13413/1
step
Click the red arrow on your action bar to get off the Wyrmrest Skytalon|script VehicleExit()|outvehicle|c |q 13413 |goto 29.5,24.8|n
step
talk Corastrasza##32548
turnin Aces High!##13413 |goto 29.5,24.8
step
Once you do this, you will be able to do the Daily version of Aces High.
|confirm |q 11999
step
talk Image of Archmage Aethas Sunreaver##26471
accept Rifle the Bodies##11999 |goto Dragonblight,38.1,46.2
step
Go outside the cave and southwest |goto 22.3,54.1 < 5 |walk
Loot the Dead Mage Hunters around the area.
collect Mage Hunter Personal Effects##35792 |q 11999
Open the Mage Hunter Personal Effects bags |use Mage Hunter Personal Effects##35792
collect Moonrest Gardens Plans##35783|q 11999/1
step
talk Image of Archmage Aethas Sunreaver##26471
turnin Rifle the Bodies##11999 |goto 38.1,46.2
step
Go inside the building |goto 19.4,58.1 < 5 |walk
kill Goramosh##26349
collect Goramosh's Strange Device##36746 |q 12059
Use Goramosh's Strange Device|use Goramosh's Strange Device##36746
accept A Strange Device##12059
step
talk Image of Archmage Aethas Sunreaver##26471
turnin A Strange Device##12059 |goto 38.1,46.2
accept Projections and Plans##12061 |goto 38.1,46.2
step
Use your Surge Needle Teleporter anywhere inside Moonrest Gardens|use Surge Needle Teleporter##36747
Move toward the center of the platform you get teleported onto
Observe the Object on the Surge Needle |q 12061/1 |goto 22.2,54.8
step
Use your Surge Needle Teleporter to go back down to the ground |goto 22.6,57.0 < 5 |use Surge Needle Teleporter##36747|noway|c |q 12061
talk Image of Archmage Aethas Sunreaver##26471
turnin Projections and Plans##12061 |goto 38.1,46.2
accept The Focus on the Beach##12066 |goto 38.1,46.2
step
kill Captain Emmy Malin##26762
collect Ley Line Focus Control Ring##36751 |q 12066 |goto 26.4,65
Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751
|tip It's a big half-circle purple glowing thing.
Retrieve ley line focus information |q 12066/1 |goto 26.4,65
step
talk Image of Archmage Aethas Sunreaver##26471
turnin The Focus on the Beach##12066 |goto 38.1,46.2
accept Atop the Woodlands##12084 |goto 38.1,46.2
step
Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779
|tip It's a big half-circle purple glowing thing.
Retrieve Ley Line Focus information |q 12084/1 |goto 32.2,71.2
step
talk Image of Archmage Aethas Sunreaver##26471
turnin Atop the Woodlands##12084 |goto 38.1,46.2
accept Search Indu'le Village##12106 |goto 38.1,46.2
step
clicknpc Mage-Commander Evenstar##26873
|tip It's a body floating underwater.
turnin Search Indu'le Village##12106 |goto 40.3,66.9
accept The End of the Line##12110 |goto 40.3,66.9
step
Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815
|tip It's a big half-circle purple glowing thing underwater.
Retrieve Ley Line Focus information |q 12110/1 |goto 39.8,66.9
step
Go to this spot on the cliff to Observe Azure Dragonshrine |q 12110/2 |goto 53,66.4
talk Image of Archmage Aethas Sunreaver##26471
turnin The End of the Line##12110 |goto 38.1,46.2
accept Gaining an Audience##12122 |goto 38.1,46.2
step
talk Tariolstrasz##26443
turnin Gaining an Audience##12122 |goto 57.9,54.2
accept Speak with your Ambassador##12767 |goto 57.9,54.2
step
talk Golluck Rockfist##27804
turnin Speak with your Ambassador##12767 |goto 58,55.4
accept Report to the Ruby Dragonshrine##12461 |goto 58,55.4
step
talk Vargastrasz##27763
turnin Report to the Ruby Dragonshrine##12461 |goto 43,50.9
accept Heated Battle##12448 |goto 43,50.9
step
Help kill the following:
kill Frigid Ghoul Attacker##27685 |q 12416/1 |goto 52.7,46.2
kill 8 Frigid Geist Attacker##27686 |q 12416/2 |goto 52.7,46.2
kill 1 Frigid Abomination Attacker##27531 |q 12416/3 |goto 52.7,46.2
You can find more of these at [50.9,52.4]
step
Go up the hill
talk Vargastrasz##27763
turnin Heated Battle##12448 |goto 43,50.9
accept Return to the Earth##12449 |goto 43,50.9
step
click Ruby Acorn##189992
collect Ruby Acorns##37727 |q 12449 |goto 46.7,52.8
Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727
|tip The Ruby Keepers look like huge red dragons on fire.
Return 6 Ruby Keepers to the Earth |q 12449/1 |goto 46.7,52.8
step
talk Vargastrasz##27763
turnin Return to the Earth##12449 |goto 43,50.9
accept Through Fields of Flame##12450 |goto 43,50.9
stickystart "frigidnecro"
step
Go inside the tree trunk
kill Dahlia Suntouch##27680
Cleanse the Ruby Corruption |q 12450/2 |goto 47.7,49.1
step
label "frigidnecro"
kill 6 Frigid Necromancer##27539+ |q 12450/1 |goto 48.2,47.8
step
Go out of the valley
talk Vargastrasz##27763
turnin Through Fields of Flame##12450 |goto 43.0,50.9
accept The Steward of Wyrmrest Temple##12769 |goto 43.0,50.9
step
talk Tariolstrasz##26443
turnin The Steward of Wyrmrest Temple##12769 |goto 57.9,54.2
accept Informing the Queen##12124 |goto 57.9,54.2
step
talk Tariolstrasz##26443
Tell him you want to go to the top of the temple |goto 59.7,53.1 < 5 |noway |c |q 12124 |goto 57.9,54.2
step
talk Alexstrasza the Life-Binder##26917
turnin Informing the Queen##12124 |goto 59.8,54.7
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
Fly southwest |goto 55.1,66.4
Fly into the huge purple swirling column
Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
Destabilize the Azure Dragonshrine |q 12372/3
step
talk Lord Devrestrasz##27575
turnin Defending Wyrmrest Temple##12372 |goto 59.2,54.3
step
kill Icefist##27004
collect Emblazoned Battle Horn##36856 |q 12147 |goto 42.6,40.8
Click the Emblazoned Battle Horn in your bags |use Emblazoned Battle Horn##36856
accept Disturbing Implications##12147 |goto 42.6,40.8
step
talk Aurastrasza##26983
turnin Disturbing Implications##12147 |goto 60,55.2
accept One of a Kind##12148 |goto 60,55.2
step
kill Bonesunder##27006
collect Emblazoned Battle Horn##26854 |q 12147/1 |goto 50.0,60.0
step
talk Aurastrasza##26983
turnin One of a Kind##12148 |goto 60,55.2
accept Mighty Magnataur##12149 |goto 60,55.2
step
He patrols around this area. Search along the canyon until you find him.
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
Fight with Dregmar Runebrand until he reveals the name of the Magnataur Warlord.
Name of the Magnataur Warlord revealed. |q 12150/1 |goto 72.8,49.9
step
talk Aurastrasza##26983
turnin Reclusive Runemaster##12150 |goto 60,55.2
accept Wanton Warlord##12151 |goto 60,55.2
step
Use the Emblazoned Battle Horn at this location. |use Emblazoned Battle Horn##36864
kill Grom'thar the Thunderbringer##27002
collect Grom'thar's Head##36853 |q 12151/1 |goto Dragonblight,57.1,76.2
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
Use your Hourglass of Eternity anywhere around this area|use Hourglass of Eternity##37923
Fight the mobs that spawn
Protect the Hourglass of Eternity |q 12470/1 |goto 71.7,38.9
step
Go inside the cave
talk Serinar##26593
turnin The Obsidian Dragonshrine##12447 |goto 35.2,30.0
accept No One to Save You##12262 |goto 35.2,30.0
accept No Place to Run##12261 |goto 35.2,30.0
step
Go outside the cave
kill 6 Burning Depths Necrolyte##27356+ |q 12262/1 |goto 37.9,32.0 < 5
kill 10 Smoldering Skeleton##27360+ |q 12262/2 |goto 37.9,32.0 < 5
step
Use your Destructive Wards in this spot|use Destructive Wards##37445
Defend the Destructive Ward from the mobs that spawn
Fully Charge the Destructive Ward |q 12261/1 |goto 42.1,32
step
Go west into the cave |goto 35.2,30.0 < 5 |walk
talk Serinar##26593
turnin No One to Save You##12262 |goto 35.2,30.0 < 5
turnin No Place to Run##12261 |goto 35.2,30.0 < 5
accept The Best of Intentions##12263 |goto 35.2,30.0 < 5
step
Follow the path in the cave while disguised as a cultist |goto 31.8,30.5
Uncover the Magmawyrm Resurrection Chamber |q 12263/1
step
Follow the path back down
talk Serinar##26593
turnin The Best of Intentions##12263 |goto 35.2,30.0
accept Culling the Damned##12264 |goto 35.2,30.0
accept Defiling the Defilers##12265 |goto 35.2,30.0
step
Follow the path in the cave |goto 34.2,26.8 < 5 |walk
kill 3 Burning Depths Necromancer##27358+ |q 12264/1 |goto 34.2,26.8 < 5
kill 6 Smoldering Construct##27362+ |q 12264/2 |goto 34.2,26.8 < 5
kill 6 Smoldering Geist##27363+ |q 12264/3 |goto 34.2,26.8 < 5
click Necromantic Runes on the ground
|tip The Necromantic Runes look like round purple symbols on the ground around this area in the cave.
Destroy 8 Necromantic Runes |q 12265/1 |goto 34.2,26.8 < 5
step
Go back down in the cave
talk Serinar##26593
turnin Culling the Damned##12264 |goto 35.2,30.0 < 5
turnin Defiling the Defilers##12265 |goto 35.2,30.0 < 5
accept Neltharion's Flame##12267 |goto 35.2,30.0 < 5
step
Follow the path in the cave
Use Neltharion's Flame to Cleanse the Summoning Area|use Neltharion's Flame##37539
|tip Stand on the edge of the rock, next to the lava.
kill Rothin the Decaying##27355 |q 12267/2 |goto 31.6,31.2 < 5
step
Go back down in the cave
talk Serinar##26593
turnin Neltharion's Flame##12267 |goto 35.2,30.0
accept Tales of Destruction##12266 |goto 35.2,30.0
step
talk Tariolstrasz##26443
Tell him you want to go to the top of the temple |goto 59.7,53.1 < 5 |noway |c |q 12266 |goto 57.9,54.2
step
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
collect 3 Lasher Seed##140458|q 12458/1 |goto 63.3,71
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
Use Skytalon Molts at this spot. |use Skytalon Molts##37881
kill Alystros the Verdant Keeper##27249
collect The Plume of Alystros##37880 |q 12456/1 |goto Dragonblight,64.6,77.2
step
talk Nishera the Garden Keeper##27255
turnin The Plume of Alystros##12456 |goto 63.7,71.9
step
talk Lord Itharius##27785
turnin Seeds of the Lashers##12458 |goto 59.6,54.4
accept That Which Creates Can Also Destroy##12459 |goto 59.6,54.4
step
talk Torastrasza##26949
Tell him you want to go to the ground level of the temple |goto 58.0,55.2 < 5 |q 12459 |goto 59.5,53.3
confirm
step
Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it|use Seeds of Nature's Wrath##37887
|tip They fly around in the sky.
kill Weakened Reanimated Frost Wyrm##27821 |q 12459/1 |goto 55.2,45.7
step
Use your Seeds of Nature's Wrath on a Turgid the Vile to weaken him|use Seeds of Nature's Wrath##37887
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
kill Dahlia Suntouch##27680
collect Ruby Brooch##37833|n
Use the Ruby Brooch in your bags|use Ruby Brooch##37833
accept The Fate of the Ruby Dragonshrine##12419 |goto 47.7,49.1
click Ruby Lilac##188489
collect Ruby Lilac##36803 |q 12102/1 |goto 47.7,49.1
step
talk Krasus##27990
turnin The Fate of the Ruby Dragonshrine##12419 |goto 59.8,54.7
step
At this point, you will need to buy the tabard from the vendor in Dragonblight.
Click here to proceed. |confirm
step
talk Cielstrasza##32533
|tip She is at the top of the Temple.
buy Tabard of the Wyrmrest Accord##43156 |goto Dragonblight,59.9,53.0
step
Once you've bought the Tabard, you will have to run instances from Wrath of the Lich King in order to gain rep.
Wear the Tabard of the Wyrmrest Accord in order to earn reputation while you clear the instance
Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
Become Exalted with The Wyrmrest Accord |complete rep('The Wyrmrest Accord')==Exalted |next "exalted"
step
label "exalted"
Congratulation, you are now exalted with The Wyrmrest Accord!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Avengers of Hyjal",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Avengers of Hyjal faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Avengers of Hyjal') < Exalted end,
achieveid={5827},
patch='40200',
},[[
step
label "start"
This reputation can be gained by running the Firelands raid.
A full run will grant roughly 2400 reputation.
|confirm
step
Enter the Firelands here |goto Mount Hyjal 47.2,78.1 < 5 |walk
Kill every creature that is hostile in this instance in order to gain reputation.
|tip This will only work until you reach Honored, after that only bosses and larger mobs will grant reputation.
Click here to go back to the beginning of the guide |next "start" |confirm
Earn Exalted status with the Avengers of Hyjal |complete rep('Avengers of Hyjal')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Avengers of Hyjal!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Bilgewater Cartel",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Bilgewater Cartel faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Bilgewater Cartel') < Exalted end,
},[[
step
talk Frizzo Villamar##50323
buy Bilgewater Cartel Tabard##64884 |goto Orgrimmar,50.1,58.6
Equip your Bilgewater Cartel Tabard |equipped Bilgewater Cartel Tabard##64884 |use Bilgewater Cartel Tabard##64884 |future
You can run any dungeon that grants experience to gain reputation for the Bilgewater Cartel
Become Exalted with Bilgewater Cartel |complete rep('Bilgewater Cartel')==Exalted
step
Congratulations, you have reached exalted with the Bilgewater Cartel!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Dragonmaw Clan",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Dragonmaw Clan faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Dragonmaw Clan') < Exalted end,
achieveid={4886},
patch='40003',
},[[
step
click Warchief's Command Board##207325
accept Warchief's Command: Twilight Highlands!##28717 |goto Orgrimmar,49.6,76.5
step
talk Vol'jin##86832
turnin Warchief's Command: Twilight Highlands!##28717 |goto 48.1,70.5
accept Machines of War##26293 |goto 48.1,70.5
step
talk Sauranok the Mystic##42637
accept Unfamiliar Waters##26311 |goto 47.9,71.0
step
talk Herezegor Flametusk##42638
Ask him to give you a map
kill Twilight Nightblade##42707+
talk Herezegor Flametusk##42638
Tell him yes, a map of the coastal approaches
collect Twilight Highlands Coastal Chart##58141 |q 26311/1 |goto 71.0,50.8
step
talk Sauranok the Mystic##42637
turnin Unfamiliar Waters##26311 |goto 48.0,71.0
step
talk Foreman Glibbs##42672
turnin Machines of War##26293 |goto 75.2,0.4
accept Weapons of Mass Dysfunction##26294 |goto 75.2,0.4
step
Click the Hellscream Demolisher
|tip It looks like a big wooden catapult vehicle on the side of the road.
Discover a Faulty Demolisher |q 26294/1 |goto 73.9,8.1
Click the Chief Engineer
|tip He's goblin that talks to you and is standing next to the Hellscream Demolisher.
Discipline the Chief Engineer |q 26294/2 |goto 73.9,8.1
step
talk Garrosh Hellscream##39605
turnin Weapons of Mass Dysfunction##26294 |goto 48.1,70.5
accept Where Is My Warfleet?##26324 |goto 48.1,70.5
step
talk Warlord Krogg##42641
turnin Where Is My Warfleet?##26324 |goto Azshara,59.9,50.4
accept Ready the Ground Troops##26374 |goto Azshara,59.9,50.4
accept Ready the Navy##26335 |goto Azshara,59.9,50.4
step
talk Captain Krazz##42640
accept Ready the Air Force##26358 |goto 60.2,50.4
step
clicknpc AWOL Grunt##42646+
Discipline 12 AWOL Grunts |q 26374/1 |goto 57.4,50.6
step
talk Fleep##42643
turnin Ready the Air Force##26358 |goto 54.5,51.2
accept Smoot's Samophlange##26361 |goto 54.5,51.2
step
click Foebreaker Blueprints##204050
turnin Ready the Navy##26335 |goto 53.5,47.4
accept Beating the Market##26337 |goto 53.5,47.4
step
clicknpc Smoot##42644
|tip You may need to search a little for him, or just stand in this spot and wait for him to run by.
click Induction Samophlange##207259
|tip It's a metal spinning object that spawns on the ground when you click Smoot.
collect Induction Samophlange##58224 |q 26361/1 |goto 55.5,50.3
step
talk Bilgewater Foreman##42777
Tell him nobody shorts Garrosh Hellscream
Fight the Bilgewater Foreman
Intimidate a Bilgewater Foreman |q 26337/1 |goto 56.5,52.5
step
talk Fleep##42643
turnin Smoot's Samophlange##26361 |goto 54.5,51.2
accept Pre-Flight Checklist##26372 |goto 54.5,51.2
step
talk Warlord Krogg##42641
turnin Ready the Ground Troops##26374 |goto 60.2,50.4
turnin Beating the Market##26337 |goto 60.2,50.4
step
talk Captain Krazz##42640
turnin Pre-Flight Checklist##26372 |goto 60.2,50.4
accept Twilight Skies##28849 |goto 60.2,50.4
step
talk Friz Groundspin##50367
turnin Twilight Skies##28849 |goto 50.7,73.9
accept Twilight Skies##26388 |goto 50.7,73.9
step
Ride the zeppelin to Twilight Highlands
Accompany the Air Fleet |q 26388/1 |goto 50.8,73.8
step
clicknpc Emergency Rampless Debarkation Device##47217 |goto Twilight Highlands,82.4,50.3
Parachute down to a ship below |goto 82.5,50.1 < 5 |q 26388
step
talk Admiral Stonefist##42978
turnin Twilight Skies##26388 |goto 82.5,49.8
accept Stalled Negotiations##26539 |goto 82.5,49.8
step
talk Warlord Krogg##43193
accept Emergency Aid##26538 |goto 82.6,49.9
step
talk Ornak##43187
turnin Stalled Negotiations##26539 |goto 78.8,51.7
accept Madness##26549 |goto 78.8,51.7
step
talk Gregor##43191
Ask him if he has medical supplies you can take back with you
Persuade the Medicine Man |q 26538/1 |goto 76.5,49.5
step
talk Gregor##43191
turnin Emergency Aid##26538 |goto 76.5,49.5
accept Dangerous Compassion##26540 |goto 76.5,49.5
step
Watch the dialogue
Conclude the Negotiations |q 26549/1 |goto 75.4,55.5
step
talk Zaela##43190
turnin Madness##26549 |goto 73.8,53.9
accept Negotiations Terminated##26608 |goto 73.8,53.9
step
talk Admiral Stonefist##42978
turnin Negotiations Terminated##26608 |goto 82.5,49.8
step
talk Warlord Krogg##43193
turnin Dangerous Compassion##26540 |goto 82.6,49.9
accept You Say You Want a Revolution##26619 |goto 82.6,49.9
step
talk Zaela##43581
turnin You Say You Want a Revolution##26619 |goto 76.6,49.5
accept Insurrection##26621 |goto 76.6,49.5
step
kill 10 Dragonmaw Enforcer##43390 |q 26621/2 |goto 76.7,51.5
kill 4 Dragonmaw Warlock##43394 |q 26621/3 |goto 76.7,51.5
talk Dragonmaw Worker##43577
talk Dragonmaw Merchant##43578
Tell them to either be a warrior or a shaman
|tip Choose the type of helper you think you'll need.  If you want extra dps, tell them to be warriors.  If you want healing, tell them to be shamans.  You have to do this with 3 of them, so you can mix it up, depending on what you need.
Arm 3 Dragonmaw Civilians |q 26621/1 |goto 76.7,51.5
step
talk Zaela##43581
turnin Insurrection##26621 |goto 76.6,49.5
accept Death to Mor'ghor##26622 |goto 76.6,49.5
step
kill Warchief Mor'ghor##43189 |q 26622/1 |goto 75.5,55.6
|tip You can still talk to Dragonmaw Workers and Merchants and ask them to fight with you as either warriors or shamans.
step
talk Garrosh Hellscream##43943
turnin Death to Mor'ghor##26622 |goto 74.8,53.1
accept Securing the Beach Head##26786 |goto 74.8,53.1
step
talk Ornak##44042
accept Cementing Our Victory##26788 |goto 74.3,53.3
step
talk Artesh##44024
turnin Securing the Beach Head##26786 |goto 73.8,53.9
accept Muddied Waters##26784 |goto 73.8,53.9
step
kill Muddied Water Elemental##44011+
collect 5 Whirlpool Core##60333 |q 26784/1 |goto 68.4,48.9
click Verrall River Muck##204880
collect 10 Verrall River Muck##60337 |q 26788/1 |goto 68.4,48.9
step
talk Ornak##44042
turnin Cementing Our Victory##26788 |goto 74.3,53.3
step
talk Artesh##44024
turnin Muddied Waters##26784 |goto 73.8,53.9
accept The Warchief Will be Pleased##26798 |goto 73.8,53.9
step
talk Garrosh Hellscream##39605
turnin The Warchief Will be Pleased##26798 |goto Orgrimmar,48.1,70.5
accept Traitor's Bait##26830 |goto Orgrimmar,48.1,70.5
step
talk Suspicious Peon##44160
Ask him if a secret cult has infiltrated the Orgrimmar skyway
Reveal Sauranok's Guilt |q 26830/1 |goto 43.6,63.6
kill Sauranok the Mystic##44120 |q 26830/2 |goto 43.6,63.6
step
talk Garrosh Hellscream##39605
turnin Traitor's Bait##26830 |goto 48.1,70.5
accept Return to the Highlands##26840 |goto 48.1,70.5
step
talk Gorthul##47174
fpath Dragonmaw Port |goto Twilight Highlands,73.8,52.8
step
talk Zaela##44169
turnin Return to the Highlands##26840 |goto Twilight Highlands 75.3,54.9
accept The Northern Flank##27583 |goto Twilight Highlands 75.3,54.9
accept The Southern Flank##27607 |goto Twilight Highlands 75.3,54.9
step
talk Innkeeper Lutz##49498
home Dragonmaw Post |goto 75.9,52.7
step
talk Rok'tar##46089
turnin The Southern Flank##27607 |goto 78.2,62.5
accept Scouting the Shore##27610 |goto 78.2,62.5
accept Blood on the Sand##27611 |goto 78.2,62.5
stickystart "highmarine"
step
Go to this spot
Scout the Beach Head Control Point |q 27610/1 |goto 77.5,65.2
step
label "highmarine"
kill 12 Highbank Marine##45174 |q 27611/1 |goto 77.0,63.4
step
talk Rok'tar##46089
turnin Scouting the Shore##27610 |goto 78.2,62.5
turnin Blood on the Sand##27611 |goto 78.2,62.5
step
talk Juice Gnugat##46090
accept Mo' Better Shredder##27622 |goto 78.5,62.6
step
clicknpc Salvageable Shredder##46100
Locate the Salvageable Shredder |q 27622/1 |goto 68.3,61.7
Kill the enemies that attack the Salvageable Shredder
Defend the Salvageable Shredder |q 27622/2 |goto 68.3,61.7
step
talk Juice Gnugat##46090
turnin Mo' Better Shredder##27622 |goto 78.5,62.6
accept Krazzworks##28583 |goto 78.5,62.6
step
talk Gralok##45982
turnin The Northern Flank##27583 |goto 70.2,43.3
accept Blood in the Surf##27584 |goto 70.2,43.3
step
talk Fergus Gearchum##45983
accept Shells on the Sea Shore##27586 |goto 70.3,43.4
step
kill Blackscale Mistress##45985+, Blackscale Raider##45984+
Slay 15 Blackscale Naga |q 27584/1 |goto 71.1,42.4
click Unexploded Mortar Shell##205823
collect 8 Unexploded Mortar Shell##61634 |q 27586/1 |goto 71.1,42.4
step
talk Gralok##45982
turnin Blood in the Surf##27584 |goto 70.2,43.3
step
talk Fergus Gearchum##45983
turnin Shells on the Sea Shore##27586 |goto 70.3,43.4
accept Blast Him!##27606 |goto 70.3,43.4
step
Use your Heth'Jatari Conch in the middle of the Heth'Jatari Banners |use Heth'Jatari Conch##61928
|tip They look like purple flags on golden rods on the beach.
kill Fathom-Lord Heth'Jatar##46009 |q 27606/1 |goto 71.4,41.7
|tip Red arrows will appear on the ground near you while you fight him. Lure Fathom-Lord Heth'Jatar next to those arrows.  He will get bombarded with mortars and it will be much easier to kil him.
step
talk Fergus Gearchum##45983
turnin Blast Him!##27606 |goto 70.3,43.4
step
talk Gralok##45982
accept Narkrall, the Drake-Tamer##27690 |goto 70.2,43.3
step
talk Narkrall Rakeclaw##46313
turnin Narkrall, the Drake-Tamer##27690 |goto 54.8,44.2
accept Crushing the Wildhammer##27751 |goto 54.8,44.2
accept Drag 'em Down##27929 |goto 54.8,44.2
step
talk Harkkan##46318
accept Total War##27747 |goto 55.1,43.6
step
talk Griff##46319
accept War Forage##27750 |goto 53.8,43.3
step
talk Innkeeper Turk##49762
home Bloodgulch |goto 53.3,42.9
step
talk Bramok Gorewing##47156
fpath Bloodgulch |goto 54.1,42.2
stickystart "wildthunder"
stickystart "wildwar"
step
Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775
|tip They are big white birds that fly in the air around this area.
kill 4 Thundermar Gryphon Rider##47186 |q 27929/1 |goto 52.3,40.6
step
label "wildthunder"
click Thundermar Ale Keg##4631+
Smash 10 Wildhammer Kegs |q 27747/1 |goto 49.1,37.3
click Wildhammer Food Stores##206291
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 15 Wildhammer Food Stores##62324 |q 27750/1 |goto 49.1,37.3
You can find more around [46.2,37.4]
step
label "wildwar"
kill Wildhammer Warbrand##46320+
collect 8 Wildhammer Insignia##62325 |q 27751/1 |goto 51.1,38.8
step
talk Griff##46319
turnin War Forage##27750 |goto 53.8,43.3
step
talk Harkkan##46318
turnin Total War##27747 |goto 55.1,43.6
step
talk Narkrall Rakeclaw##46313
turnin Crushing the Wildhammer##27751 |goto 54.8,44.2
turnin Drag 'em Down##27929 |goto 54.8,44.2
accept Bait and Throttle##28041 |goto 54.8,44.2
step
talk Harkkan##46318
accept Blood in the Highlands##28038 |goto 55.1,43.6
step
kill Untamed Gryphon##46158
collect Fresh Gryphon Carcass##62915 |q 28041/1 |goto 58.0,44.2
Click the Quest Complete box that pops up
turnin Bait and Throttle##28041
accept How to Maim Your Dragon##28043
step
talk Wodin the Troll-Servant##46936
turnin Blood in the Highlands##28038 |goto 50.7,58.4
step
Use your Gryphon Carcass Bait on a Highland Black Drake |use Gryphon Carcass Bait##62917
|tip They are orange dragons around this area.
kill Baited Black Drake##47422
Click the Baited Black Drake to ride it
|tip Eventually, the Baited Black Drake will surrender once you've weakened it enough.
Ride the Baited Black Drake back to Bloodgulch
Capture the Baited Black Drake |q 28043/1 |goto 47.1,63.8
step
talk Zaela##47417
turnin How to Maim Your Dragon##28043 |goto 54.4,43.9
accept The Demon Chain##28123 |goto 54.4,43.9
step
talk Garona Halforcen##46323
accept A Vision of Twilight##27947 |goto 53.3,42.7
step
talk Mallia##46324
accept Paint it Black##27945 |goto 53.2,42.7
step
click The Demon Chain##206724
collect The Demon Chain##63036 |q 28123/1 |goto 49.1,28.2
step
click Eye of Twilight##206569
turnin A Vision of Twilight##27947 |goto 57.9,33.5
accept We All Must Sacrifice##27951 |goto 57.9,33.5
step
kill 10 Shaman of the Black##46322 |q 27951/1 |goto 58.0,32.6
kill Obsidian Stoneslave##47226+
collect Black Diamond Heart##62796 |q 27945/1 |goto 58.0,32.6
step
click Eye of Twilight##206569
turnin We All Must Sacrifice##27951 |goto 57.9,33.5
accept The Eyes Have It##27954 |goto 57.9,33.5
step
talk Captain Krazz##48993
turnin Krazzworks##28583 |goto 77.6,16.6
accept Wildhammer Infestation##28588 |goto 77.6,16.6
step
talk Brett the Bomber##49439
accept Quality Construction##28584 |goto 77.7,16.6
step
talk Flashbang Rothman##49441
accept Pool Pony Rescue##28586 |goto 77.7,16.7
stickystart "krazzpony"
step
Follow the path up the ramps
Use your Blast Tape next to Faulty Valves |use Blast Tape##65146
|tip They look like red wheel handles spraying out black liquid on the metal platforms.
Seal 10 Faulty Valves |q 28584/1 |goto 77.5,16.3
kill 10 Wildhammer Raider##49632 |q 28588/1 |goto 77.5,16.3
step
label "krazzpony"
Use your Emergency Pool Pony on Krazzworks Laborers |use Emergency Pool Pony##65162
|tip They are goblins in the water all around the area surrounding thie big island.
Rescue 10 Krazzworks Laborers |q 28586/1 |goto 81.1,15.5
step
talk Brett the Bomber##49439
turnin Quality Construction##28584 |goto 77.7,16.7
step
talk Flashbang Rothman##49441
turnin Pool Pony Rescue##28586 |goto 77.7,16.7
step
talk Captain Krazz##48993
turnin Wildhammer Infestation##28588 |goto 77.6,16.6
accept Everything But the Kitchen Sink##28589 |goto 77.6,16.6
step
clicknpc Krazz Cannon##49680
Use your Fire Stuff ability to shoot at Wildhammer Stormtalon flying in the sky around this area
kill 15 Wildhammer Stormtalon##49683 |q 28589/2 |goto 75.5,17.9
step
Click the red arrow on your hotbar |outvehicle |noway |c |q 28589
step
talk Harpo Boltknuckle##47061
fpath The Krazzworks |goto 75.3,17.8
step
talk Captain Krazz##48993
turnin Everything But the Kitchen Sink##28589 |goto 77.6,16.6
accept Reprisal##28590 |goto 77.6,16.6
step
On the ship you are standing on:
talk Patch##49378
turnin Reprisal##28590
accept Off The Wall##28591
step
Click a Skyshredder Turret
|tip They look like bouncing metal cannons with seats on the right side of the airship.
Use the abilities on your hotbar to shoot at the Alliance enemies and cannons
kill 80 Highbank Marksman##49366+ |q 28591/1
kill 12 Highbank Cannoneer##49344+ |q 28591/2
kill 4 Highbank Cannon##49060+ |q 28591/3
step
Click the red arrow on your hotbar |outvehicle |noway |c |q 28591
step
On the ship you are standing on:
talk Patch##49378
turnin Off The Wall##28591
accept Of Utmost Importance##28593
accept Highbank, Crybank##28594
step
On the ship you are standing on:
talk Ticker##49379
accept Parting Packages##28592
step
Go to this spot
Use Ticker's Explosives on the boat |use Ticker's Explosives##64669
Place the Highbank Boat Bomb |q 28592/1 |goto 81.5,78.8
step
Go to this spot
Use Ticker's Explosives in the doorway |use Ticker's Explosives##64669
Place the Highbank Keep Bomb |q 28592/2 |goto 79.8,77.4
step
Go to this spot
Use Ticker's Explosives inside at the bottom of the tower |use Ticker's Explosives##64669
Place the Highbank Tower Bomb |q 28592/3 |goto 80.0,72.5
stickystart "highdefend"
step
Go down the stairs |goto 79.5,78.2 < 5 |q 28592 |walk
click Induction Samophlange##207259
collect Induction Samophlange##58224 |q 28593/1 |goto 79.5,77.6
step
label "highdefend"
kill Highbank Marksman##49024+, Highbank Guardsman##49023+, Highbank Prison Guard##49029+
kill 10 Highbank Defenders |q 28594/1 |goto 80.8,75.6
step
talk Patch##49000
turnin Of Utmost Importance##28593 |goto 82.1,80.0
turnin Highbank, Crybank##28594 |goto 82.1,80.0
step
talk Ticker##49002
turnin Parting Packages##28592 |goto 81.8,80.4
step
talk Patch##49000
accept Krazz Works!##28595 |goto 82.1,80.0
step
clicknpc Krazzworks Gyrocopter##50267 |goto 82.1,81.3
Ride back to The Krazzworks |goto 75.5,17.8 < 5 |q 28595
step
talk Captain Krazz##48993
turnin Krazz Works!##28595 |goto 77.6,16.6
step
talk Garona Halforcen##46323
turnin The Eyes Have It##27954 |goto 53.3,42.7
accept Eye Spy##27955 |goto 53.3,42.7
step
click Eye of Twilight##206569
Watch the cut scene
Peer into the Eye |q 27955/1 |goto 53.3,42.8
step
talk Garona Halforcen##46323
turnin Eye Spy##27955 |goto 53.3,42.7
step
talk Mallia##46324
turnin Paint it Black##27945 |goto 53.2,42.7
accept The Weeping Wound##27375 |goto 53.2,42.7
step
talk Zaela##47417
turnin The Demon Chain##28123 |goto 54.4,43.9
accept Fury Unbound##28133 |goto 54.4,43.9
step
talk Zaela##47671
Tell her you are ready to fight Torth!
kill Torth##48256 |q 28133/1 |goto 36.4,38.1
step
talk Zaela##47671
turnin Fury Unbound##28133 |goto 36.4,38.1
step
talk Buunu##47751
accept Whispers in the Wind##28149 |goto 36.4,38.0
step
talk Rotgrum##47723
accept Purple is Your Color##28147 |goto 36.7,38.0
step
talk San'shigo##47133
fpath The Gullet |goto 36.9,38.0
stickystart "twiwind"
step
click Windspeaker Pylon##206786
collect Windspeaker Charm##63085 |q 28149/1 |goto 39.4,47.3
step
label "twiwind"
kill Twilight Windwarper##47724+
collect 8 Twilight Garment Scrap##63087 |q 28147/1 |goto 40.2,45.1
kill Storm Vortex##47728+
collect 5 Breath of the Vortex##63089 |q 28149/2 |goto 40.2,45.1
step
talk Rotgrum##47723
turnin Purple is Your Color##28147 |goto 36.7,37.9
accept Dressed to Kill##28151 |goto 36.7,37.9
step
talk Buunu##47751
turnin Whispers in the Wind##28149 |goto 36.4,38.0
accept Thog's Nightlight##28166 |goto 36.4,38.0
step
click The Light of Souls##206839
collect The Light of Souls##63107 |q 28166/1 |goto 40.6,32.9
step
kill Glopgut Hurler##47768+, Glopgut Pounder##47765+
Slay 10 Glopgut Ogres |q 28151/1 |goto 39.0,32.3
step
talk Rotgrum##47723
turnin Dressed to Kill##28151 |goto 36.7,38.0
step
talk Buunu##47751
turnin Thog's Nightlight##28166 |goto 36.4,38.0
accept Night Terrors##28170 |goto 36.4,38.0
step
Enter the cave |goto 36.0,37.9 < 5 |q 28170 |walk
talk Uchek##47826
Tell him you are ready
Enter the Spirit Realm |havebuff 236548 |q 28170 |goto 35.0,36.6
step
Follow this path |goto 35.1,35.9 < 5 |q 28170 |walk
Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
Go to this spot
Cleanse the First Shrine |q 28170/1 |goto 34.3,35.6
step
Follow this path up |goto 34.8,36.2 < 5 |q 28170 |walk
Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
Go to this spot
Cleanse the Second Shrine |q 28170/2 |goto 33.4,37.2
step
Follow this path |goto 34.8,37.4 < 5 |q 28170 |walk
Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
Go to this spot
Cleanse the Third Shrine |q 28170/3 |goto 34.2,37.8
step
Leave the cave |goto 36.0,37.9,0.5 |noway |c |q 28170
talk Buunu##47751
turnin Night Terrors##28170 |goto 36.4,38.0
step
talk Earthcaller Torunscar##45332
turnin The Weeping Wound##27375 |goto 44.0,10.6
accept Torn Ground##27299 |goto 44.0,10.6
step
kill 3 Tentacle of Iso'rath##45394 |q 27299/1 |goto 41.8,11.4
step
talk Earthcaller Torunscar##45332
turnin Torn Ground##27299 |goto 44.0,10.6
accept Pushing Back##27300 |goto 44.0,10.6
step
talk Earthmender Duarn##45391
accept Unbroken##27301 |goto 44.0,11.3
step
talk Initiate Goldmine##45432
accept Simple Solutions##27302 |goto 44.4,11.6
step
talk Earthcaller Yevaa##45362
turnin Unbroken##27301 |goto 44.2,18.1
accept Mercy for the Bound##27303 |goto 44.2,18.1
step
kill Twilight Captivator##45359+, Twilight Bonebreaker##45334+
kill 12 Drakgor cultists |q 27300/1 |goto 42.3,17.2
kill Bound Fleshburner##45358+
collect 5 Fleshburner Heart##60981 |q 27303/1 |goto 42.3,17.2
click Barrel of Pyreburn Oil##205422
collect 10 Pyreburn Oil##60982 |q 27302/1 |goto 42.3,17.2
step
talk Initiate Goldmine##45432
turnin Simple Solutions##27302 |goto 44.4,11.6
step
talk Earthcaller Yevaa##45386
turnin Mercy for the Bound##27303 |goto 43.8,11.3
step
talk Earthcaller Torunscar##45332
turnin Pushing Back##27300 |goto 44.0,10.6
accept The Maw of Iso'rath##27376 |goto 44.0,10.6
step
clicknpc Earthen Ring Gryphon##47973
Join the assault on Iso'rath |q 27376/1 |goto 44.5,10.6
step
talk Earthcaller Yevaa##47991
turnin The Maw of Iso'rath##27376 |goto 48.4,14.6
accept Devoured##27377 |goto 48.4,14.6
step
Fight the oozes that attack
Try to fight as long as you can
Survive Iso'rath's defenses |q 27377/1
Click the Quest Complete box that pops up
turnin Devoured##27377
accept The Worldbreaker##27378
step
Deathwing will attack you and Thrall
Aid Thrall in battling Deathwing |q 27378/1
Click the Quest Complete box that pops up
turnin The Worldbreaker##27378
accept The Terrors of Iso'rath##27379
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Jalara |q 27379/2 |goto 49.6,15.8
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Earthmender Duarn |q 27379/3 |goto 49.1,13.1
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Hargoth Dimblaze |q 27379/1 |goto 47.0,13.1
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
kill Tentacle of Iso'rath##48790
Save Stormcaller Mylra |q 27379/4 |goto 47.5,15.6
step
talk Earthcaller Yevaa##48059
turnin The Terrors of Iso'rath##27379 |goto 48.7,16.6
accept Nightmare##27380 |goto 48.7,16.6
step
Stand in the yellow bubbles on the ground around this area to heal
|tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
kill Brain of Iso'rath##47960
Kill Iso'rath |q 27380/1 |goto 48.8,14.9
step
talk Earthcaller Torunscar##45332
turnin Nightmare##27380 |goto 44.0,10.6
step
talk Golluck Rockfist##48264
accept Warm Welcome##27486 |goto 44.1,10.5
step
You will get captured by a red dragon
Meet with Lirastrasza |q 27486/1 |goto 27.6,21.4
step
talk Calen##45528
turnin Warm Welcome##27486 |goto 29.3,25.9
accept Even Dragons Bleed##27504 |goto 29.3,25.9
step
talk Velastrasza##45522
turnin Even Dragons Bleed##27504 |goto 29.9,31.3
accept Draconic Mending##27505 |goto 29.9,31.3
step
talk Baleflame##45562
accept Life from Death##27506 |goto 29.8,31.4
step
Protect the Vermillion Menders while they heal Celastrasza to hull health
Defend 5 Vermillion Menders |q 27505/1 |goto 29.7,33.1
kill Twilight Wyrmkiller##45748+
Use your Ruby Seeds on Twilight Wyrmkiller and Vermillion Mender corpses |use Ruby Seeds##61323
Reclaim 6 Dragonkin corpses |q 27506/1 |goto 29.7,33.1
step
talk Velastrasza##45522
turnin Draconic Mending##27505 |goto 29.9,31.3
step
talk Baleflame##45562
turnin Life from Death##27506 |goto 29.8,31.4
step
talk Velastrasza##45522
accept In Defense of the Redoubt##27564 |goto 29.9,31.3
step
talk Calen##45528
turnin In Defense of the Redoubt##27564 |goto 29.3,25.9
accept Encroaching Twilight##27507 |goto 29.3,25.9
accept Breach in the Defenses##27509 |goto 29.3,25.9
step
talk Lirastrasza##45518
accept Far from the Nest##27508 |goto 29.3,26.0
step
talk Aquinastrasz##47121
fpath Vermillion Redoubt |goto 28.6,24.9
stickystart "twiabduct"
step
Enter the cave |goto 18.4,16.7 < 5 |q 27508 |walk
Use your Flashgrowth Mote next to the Twilight Portal |use Flashgrowth Mote##61385
|tip It looks like a blue and pink swirled portal in a metal case.
Destroy the Twilight Portal |q 27509/1 |goto 18.0,16.9
step
label "twiabduct"
kill Twilight Abductor##45642+, Twilight Flamequencher##45618+
kill 12 Twilight invaders |q 27507/1 |goto 20.9,15.7
clicknpc Vermillion Egg##45682
collect 6 Vermillion Egg##61317 |q 27508/1 |goto 20.9,15.7
step
talk Calen##45528
turnin Encroaching Twilight##27507 |goto 29.3,26.0
turnin Breach in the Defenses##27509 |goto 29.3,26.0
step
talk Lirastrasza##45518
turnin Far from the Nest##27508 |goto 29.3,26.0
step
talk Calen##45528
accept Patchwork Command##27576 |goto 29.3,26.0
step
talk Patch##47492
turnin Patchwork Command##27576 |goto 27.3,36.8
accept Easy Pickings##28091 |goto 27.3,36.8
accept Precious Goods##28090 |goto 27.3,36.8
step
kill Twilight Spearwarder##47490+
collect Twilight Caravan Cargo Key##62926 |q 28090/1 |goto 25.6,37.9
click Twilight Caravan Chest##206675
collect Twilight's Hammer Gatestone##62927 |q 28090/2 |goto 25.6,37.9
kill 8 Twilight Spearwarder |q 28091/1 |goto 25.6,37.9
step
talk Patch##47492
turnin Easy Pickings##28091 |goto 27.3,36.8
turnin Precious Goods##28090 |goto 27.3,36.8
accept The Gates of Grim Batol##28097 |goto 27.3,36.8
step
talk Warlord Krogg##47493
turnin The Gates of Grim Batol##28097 |goto 29.6,41.0
accept If The Key Fits##28092 |goto 29.6,41.0
step
Next to you:
talk Patch##47374
accept Paving the Way##28094
step
Go to this spot
Open the Dragonmaw Gate |q 28092/1 |goto 29.5,51.7
step
Next to you:
talk Patch##47374
turnin If The Key Fits##28092
accept Pressing Forward##28093
step
kill Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
Kill 30 Wyrm's Bend Cultists |q 28094/1 |goto 27.5,54.6
step
Next to you:
talk Patch##47374
turnin Paving the Way##28094
step
Go to this spot
Secure the Entrance to Grim Batol |q 28093/1 |goto 22.8,56.1
step
talk Calen##47605
turnin Pressing Forward##28093 |goto 22.1,56.6
step
talk Alexstrasza the Life-Binder##47603
accept Enter the Dragon Queen##28712 |goto 21.8,57.0
step
talk Lirastrasza##49417
turnin Enter the Dragon Queen##28712 |goto 14.9,16.3
step
talk Calen##49810
accept Battle of Life and Death##28758 |goto 14.1,15.4
step
clicknpc Vermillion Vanguard##49910
Use the abilities on your hotbar on Twilight Shadowdrakes
kill 8 Twilight Shadowdrake##49873 |q 28758/1 |goto 14.1,15.1
step
talk Calen##47605
turnin Battle of Life and Death##28758 |goto 22.1,56.6
accept And the Sky Streaked Red##28171 |goto 22.1,56.6
step
talk Lirastrasza##47902
turnin And the Sky Streaked Red##28171 |goto 59.1,69.8
accept A Fitting End##28191 |goto 59.1,69.8
accept Blackout##28173 |goto 59.1,69.8
step
talk Velastrasza##47904
accept Shining Through the Dark##28175 |goto 59.0,69.8
stickystart "obsiddragon"
step
Use Alexstrasza's Tear in the small cave beneath this huge tree |use Alexstrasza's Tear##63139
Plant Alexstrasza's Tear |q 28175/1 |goto 63.9,78.0
step
label "obsiddragon"
kill Obsidian Viletongue##47796+, Obsidian Charscale##47797+
kill 10 Obsidian Dragonkin |q 28191/1 |goto 62.7,76.2
Use your Wyrmhunter Hooks on Obsidian Pyrewings |use Wyrmhunter Hooks##63092
|tip You will get a message on your screen when the Obsidian Pyrewing is almost dead.  When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it.  If you fall, it can hurt you a lot.
kill 8 Obsidian Pyrewing##46141 |q 28173/1 |goto 62.7,76.2
step
talk Lirastrasza##47902
turnin A Fitting End##28191 |goto 59.1,69.8
turnin Blackout##28173 |goto 59.1,69.8
step
talk Velastrasza##47904
turnin Shining Through the Dark##28175 |goto 59.0,69.8
step
talk Lirastrasza##47902
accept Following the Young Home##28176 |goto 59.1,69.8
step
Use your Mother's Flame next to the big blue spikes eggs |use Mother's Flame##63126
Hatch the Obsidian Whelps |q 28176/1 |goto 59.3,82.5
step
Enter the cave |goto 55.4,83.5 < 5 |q 28176 |walk
Go to this spot
Infiltrate the Obsidian Lair |q 28176/2 |goto 49.8,85.8
step
talk Baleflame##47905
turnin Following the Young Home##28176 |goto 44.9,91.0
accept Last of Her Kind##28247 |goto 44.9,91.0
kill Obsidia##47929
Defeat Obsidia |q 28247/1 |goto 44.9,91.0
step
Leave the cave |goto 55.4,83.5 < 5 |noway |c |q 28247
talk Lirastrasza##47902
turnin Last of Her Kind##28247 |goto 59.1,69.8
accept Crushblow##28249 |goto 59.1,69.8
step
talk Warlord Zaela##45658
turnin Crushblow##28249 |goto 45.3,75.4
accept Ogres & Ettins##27493 |goto 45.3,75.4
step
talk Lady Cozwynn##45665
accept Call in the Artillery##27497 |goto 45.3,75.3
accept Kor'kron Drop##27491 |goto 45.3,75.3
step
talk Tokrog##47116
fpath Crushblow |goto 45.8,76.2
step
talk Innkeeper Krum##49747
home Crushblow |goto 45.1,76.7
step
talk Jon-Jon Jellyneck##45947
Tell him you're here to lead your wind rider squad and drop off the Kor'kron Assassins
Get your Wind Rider Squad |q 27491/1 |goto 45.8,76.0
stickystart "bloodclan"
step
Go to this spot and land on the flashing red X on the ground
Drop off the Kor'kron |q 27491/2 |goto 39.2,64.5
step
Use your Artillery Flare |use Artillery Flare##61367
Target the Northern Building |q 27497/1 |goto 38.8,64.3
step
Use your Artillery Flare |use Artillery Flare##61367
Target the Northeastern Building |q 27497/2 |goto 40.0,64.4
step
Use your Artillery Flare |use Artillery Flare##61367
Target the Southwestern Building |q 27497/3 |goto 40.4,69.2
step
Use your Artillery Flare |use Artillery Flare##61367
Target the Southern Building |q 27497/4 |goto 41.4,71.2
step
label "bloodclan"
kill Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
kill 10 Bloodeye Clan ogres & ettins |q 27493/1 |goto 41.1,69.8
step
talk Lady Cozwynn##45665
turnin Call in the Artillery##27497 |goto 45.3,75.3
turnin Kor'kron Drop##27491 |goto 45.3,75.3
step
talk Warlord Zaela##45658
turnin Ogres & Ettins##27493 |goto 45.3,75.4
accept Move the Mountain##27495 |goto 45.3,75.4
step
click Hidden Explosives##205590
Detonate the Hidden Explosives |q 27495/1 |goto 38.1,66.2
Click the Quest Complete box that pops up
turnin Move the Mountain##27495
accept Signal the Attack##27499
step
Use your Attack Signal at the top of this tower |use Attack Signal##61511
Signal the Attack |q 27499/1 |goto 40.5,62.3
Click the Quest Complete box that pops up
turnin Signal the Attack##27499
accept Four Heads are Better than None##27501
step
Enter the cave |goto 39.8,71.3 < 5 |q 27501 |walk
kill Za'brox##46017
collect Za's Head##61924 |q 27501/1 |goto 37.6,71.3
collect Brox's Head##61925 |q 27501/4 |goto 37.6,71.3
step
kill Beeble'phod##46018
collect Phod's Head##61927 |q 27501/2 |goto 38.7,70.2
collect Beeble's Head##61926 |q 27501/3 |goto 38.7,70.2
step
talk Lady Cozwynn##45665
turnin Four Heads are Better than None##27501 |goto 45.3,75.3
accept Up to the Citadel##27503 |goto 45.3,75.3
step
talk Kor'kron Squad Commander##46117
Tell him you're ready
Speak to the Squad commander |q 27503/1 |goto 38.9,64.0
step
Follow the Kor'kron Squad Commander and the Kor'kron Assassins up the path
Escort the Kor'kron |q 27503/2
Click the Quest Complete box that pops up
turnin Up to the Citadel##27503
accept Just You and Garona##27638
step
talk Garona Halforcen##45675
turnin Just You and Garona##27638 |goto 36.4,65.9
accept Dark Assassins##27653 |goto 36.4,65.9
accept Bring the Hammer Down##27655 |goto 36.4,65.9
accept Help from the Earthcaller##27658 |goto 36.4,65.9
step
talk Earthcaller Yevaa##46242
turnin Help from the Earthcaller##27658 |goto 37.5,88.7
accept Portal Overload##27659 |goto 37.5,88.7
accept Spirit of the Loch##27660 |goto 37.5,88.7
step
talk Initiate Goldmine##46243
accept Unbinding##27662 |goto 37.6,88.7
step
click the Air Portal Controller##206019
|tip It is high in the sky.
kill Debilitated Aetharon##46270 |q 27659/2 |goto 44.1,81.4
step
click Earth Portal Controller##206018
kill Debilitated Apexar##46273 |q 27659/1 |goto 38.0,80.2
step
click Water Portal Controller##206017
kill Debilitated Edemantus##46272 |q 27659/3 |goto 33.2,62.4
step
talk Countess Verrall##46413
turnin Spirit of the Loch##27660 |goto 27.6,63.9
accept Fire the Cannon##27661 |goto 27.6,63.9
step
kill Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
kill 10 Twilight Citadel cultists |q 27654/1 |goto 35.2,67.4
kill Dark Assassin##46202+
collect 5 Dark Assassin's Pendant##62033 |q 27652/1 |goto 35.2,67.4
kill Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
Free 10 Enslaved Elementals |q 27662/1 |goto 35.2,67.4
step
kill Lord Cannon##46785 |q 27661/1 |goto 40.8,79.0
step
talk Initiate Goldmine##46243
turnin Unbinding##27662 |goto 37.6,88.7
step
talk Earthcaller Yevaa##46242
turnin Portal Overload##27659 |goto 37.5,88.7
step
talk Garona Halforcen##45675
turnin Dark Assassins##27653 |goto 36.4,65.9
turnin Bring the Hammer Down##27655 |goto 36.4,65.9
accept Distract Them for Me##27689 |goto 36.4,65.9
accept The Elementium Axe##27696 |goto 36.4,65.9
step
talk Countess Verrall##46413
turnin Fire the Cannon##27661 |goto 27.6,63.9
accept Water of Life##27798 |goto 27.6,63.9
step
Use your Water of Life next to the Corpse of Forgemaster Finlay |use Water of Life##62503
|tip He's chained to an anchor, drowned underwater.
Extract Artifact Information |q 27798/1 |goto 35.1,61.1
step
talk Garona Halforcen##45675
turnin Water of Life##27798 |goto 36.4,65.9
step
kill Master Klem##46342 |q 27689/2 |goto 36.1,70.7
|tip Garona Halforcen will come and kill him for you after you've fought him for a little bit.
step
kill Blindeye the Guardian##46399
collect The Elementium Axe##62230 |q 27696/1 |goto 40.2,84.0
step
kill Mia the Rose##46343 |q 27689/3 |goto 42.3,83.5
|tip She's in a small room at the top of this big building.  Garona Halforcen will come and kill her for you after you've fought her for a little bit.
step
kill Dame Alys Finnsson##46341 |q 27689/1 |goto 43.4,88.5
|tip Garona Halforcen will come and kill her for you after you've fought her for a little bit.
step
talk Garona Halforcen##45675
turnin Distract Them for Me##27689 |goto 36.4,65.9
turnin The Elementium Axe##27696 |goto 36.4,65.9
accept Dragon, Unchained##27701 |goto 36.4,65.9
step
Use The Elementium Axe |use The Elementium Axe##62248
Free Lirastrasza |q 27701/1 |goto 32.4,68.7
step
talk Garona Halforcen##45675
turnin Dragon, Unchained##27701 |goto 36.4,65.9
accept Coup de Grace##27703 |goto 36.4,65.9
step
kill Twilight Skyterror##46416+
|tip They are all over this area so you may need to search.
Deliver 5 Coup de Graces |q 27703/1 |goto 37.5,75.4
step
talk Garona Halforcen##45675
turnin Coup de Grace##27703 |goto 36.4,65.9
accept Back to the Elementium Depths##27712 |goto 36.4,65.9
step
talk Initiate Goldmine##46243
turnin Back to the Elementium Depths##27712 |goto 37.5,88.7
accept Mr. Goldmine's Wild Ride##28885 |goto 37.5,88.7
step
talk Initiate Goldmine##46243
Tell him you're ready for that wild ride
Ride the Mine Cart to the End of the Line |q 28885/2 |goto 37.5,88.7
step
Next to you:
talk Initiate Goldmine##46513
turnin Mr. Goldmine's Wild Ride##28885
accept A Little on the Side##27742
accept While We're Here##27743
stickystart "twielement"
step
clicknpc Twilight Rune of Earth##46671
accept Rune Ruination##27744 |goto 37.4,93.2
step
click Twilight Rune of Water##206314
Destroy the Rune of Water |q 27744/2 |goto 35.2,90.4
step
click Twilight Rune of Air##206312
Destroy the Rune of Air |q 27744/3 |goto 33.5,88.4
step
click Twilight Rune of Fire##206313
Destroy the Rune of Fire |q 27744/4 |goto 34.3,86.6
step
label "twielement"
kill Twilight Miner##46610+, Depths Overseer##46579+
kill 12 Elementium Depths cultists |q 27743/1 |goto 34.5,86.3
click Elementium Shard##206299
collect 6 Elementium Shard##62331 |q 27742/1 |goto 34.5,86.3
step
Next to you:
talk Initiate Goldmine##46513
turnin A Little on the Side##27742
turnin While We're Here##27743
turnin Rune Ruination##27744
accept A Fiery Reunion##27745
step
kill Magmatooth##46611
collect Fire Portal Controller##62394 |q 27745/2 |goto 36.4,83.8
step
Use your Fire Portal Controller |use Fire Portal Controller##62394
Use the Fire Portal Controller at the Fire Portal |q 27745/1 |goto 36.4,83.8
step
talk Initiate Goldmine##46243
turnin A Fiery Reunion##27745 |goto 37.5,88.7
accept Garona Needs You##27783 |goto 37.5,88.7
step
talk Garona Halforcen##45675
turnin Garona Needs You##27783 |goto 36.4,65.9
accept The Hammer of Twilight##27786 |goto 36.4,65.9
step
clicknpc The Hammer of Twilight##46717
turnin The Hammer of Twilight##27786 |goto 45.4,88.0
accept Skullcrusher the Mountain##27788 |goto 45.4,88.0
Watch the cut scene
Survive Skullcrusher's Backhand |q 27788/1
step
kill Skullcrusher the Mountain##46732 |q 27788/2 |goto 45.4,87.9
|tip Follow the instructions that pop up on your screen.
step
talk Warlord Zaela##45658
turnin Skullcrusher the Mountain##27788 |goto 45.3,75.4
step
From this point on you will need to complete dailies and dungeons to gain reputation.
Click here to start running dungeons. |next "dungeon" |confirm
Click here to start doing dailies. |next "dailies" |confirm
step
label "dailies"
talk Harkkan##46318
accept Total War##28872 |goto Twilight Highlands,55.1,43.6
accept Hook 'em High##28874 |goto Twilight Highlands,55.1,43.6
step
talk Griff##46319
accept Another Maw to Feed##28873 |goto 53.8,43.3
step
talk Grot Deathblow##49387
accept Bring Down the High Shaman##28875 |goto 53.9,42.1
step
talk Malkar##50622
accept Crushing the Wildhammer##28871 |goto 54.0,41.9
stickystart "thunderfood"
stickystart "thundergryph"
step
kill High Shaman MacKilligan##46885 |q 28875/1 |goto 46.0,33.0
|tip He runs into town to this spot.  He is elite and the quest is a group quest, so you may need help killing him.
step
label "thunderfood"
click Thundermar Ale Keg##4631+
Smash 10 Wildhammer Kegs |q 28872/1 |goto 49.1,37.3
click Wildhammer Food Stores##206291
|tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
collect 10 Wildhammer Food Stores##62324 |q 28873/1 |goto 49.1,37.3
You can find more around [46.2,37.4]
step
label "thundergryph"
Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775
|tip They are big white birds that fly in the air around this area.
kill 4 Thundermar Gryphon Rider##47186 |q 28874/1 |goto 51.2,40.4
kill Wildhammer Warbrand##46320+
collect 8 Wildhammer Insignia##62325 |q 28871/1 |goto 51.2,40.4
step
talk Harkkan##46318
turnin Total War##28872 |goto 55.1,43.6
turnin Hook 'em High##28874 |goto 55.1,43.6
step
talk Griff##46319
turnin Another Maw to Feed##28873 |goto 53.8,43.3
step
talk Grot Deathblow##49387
turnin Bring Down the High Shaman##28875 |goto 53.9,42.1
step
talk Malkar##50622
turnin Crushing the Wildhammer##28871 |goto 54.0,41.9
step
Click here to return to the start of the dailies. |next "dailies" |confirm
Click here to start running dungeons |next "dungeon" |confirm
step
label "dungeon"
talk Grot Deathblow##49387
buy 1 Tabard of the Dragonmaw Clan##65909 |goto Twilight Highlands 53.9,42.1
step
Equip your Dragonmaw Clan tabard and run Cataclysm dungeons with it. |equipped Tabard of the Dragonmaw Clan##65909 |use Tabard of the Dragonmaw Clan##65909
Earn Exalted reputation with the Dragonmaw Clan|complete rep('Dragonmaw Clan')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with the Dragonmaw Clan!
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
Click here to start questing. |confirm
Click here to run dungeons. |next "dungeon" |confirm
step
click Warchief's Command Board##207325
accept Warchief's Command: Vashj'ir!##27718 |goto Orgrimmar,49.6,76.5
step
talk Commander Thorak##41621
turnin Warchief's Command: Vashj'ir!##27718 |goto Durotar,55.9,12.3
accept Call of Duty##25924 |goto Durotar,55.9,12.3
step
Ride the mercenary ship to Vashj'ir |q 25924/1 |goto 57.8,10.4 |n
|tip Wait on the docks, it could take a little while for the boat to finally show up.
step
talk Erunak Stonespeaker##41618
turnin Call of Duty##25924 |goto Kelp'thar Forest,38.7,31.7
accept Sea Legs##25929 |goto Kelp'thar Forest,38.7,31.7
step
click Saltwater Star##205989
collect 3 Saltwater Starfish##54828 |q 25929/1 |goto 42.1,31.3
click Conch Shell##202560
collect Conch Shell##52504 |q 25929/2 |goto 42.1,31.3
step
talk Erunak Stonespeaker##41618
turnin Sea Legs##25929 |goto 38.7,31.7
accept Pay It Forward##25936 |goto 38.7,31.7
step
Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##56227
|tip They are swimming above the ground, holding their throats.
Rescue 6 Drowning Warriors |q 25936/1 |goto 42.4,31.4
step
talk Erunak Stonespeaker##41618
turnin Pay It Forward##25936 |goto 38.7,31.7
accept Rest For the Weary##25941 |goto 38.7,31.7
step
talk Legionnaire Nazgrim##41711
turnin Rest For the Weary##25941 |goto 39.0,32.1
accept Buy Us Some Time##25942 |goto 39.0,32.1
accept Traveling on Our Stomachs##25943 |goto 39.0,32.1
step
talk Erunak Stonespeaker##41618
home The Immortal Coil |goto 38.7,31.7
step
kill Zin'jatar Raider##41781+
Slay 8 Zin'jatar Raiders |q 25942/1 |goto 40.9,30.7
kill Splitclaw Skitterer##40685+
collect 10 Succulent Crab Meat##54845 |q 25943/1 |goto 40.9,30.7
step
talk Legionnaire Nazgrim##41711
turnin Buy Us Some Time##25942 |goto 39.0,32.1
turnin Traveling on Our Stomachs##25943 |goto 39.0,32.1
accept Girding Our Loins##25944 |goto 39.0,32.1
step
click Alliance S.E.A.L. Equipment##203395
accept Helm's Deep##25946 |goto 38.9,26.9
step
kill Gilblin Plunderer##41746+
click Orgrimmar Axe##203394
|tip They can be a little hard to see from far away, so keep an eye out for them.
collect 5 Orgrimmar Axe##118400 |q 25944/1 |goto 36.7,28.9
click Orgrimmar Helm##203393
collect 5 Orgrimmar Helm##56244 |q 25944/2 |goto 36.7,28.9
click Orgrimmar Breastplate##203392
collect 5 Orgrimmar Breastplate##56245 |q 25944/3 |goto 36.7,28.9
You can find more Axes, Helms and Breastplates around [36.2,21.0]
step
talk Legionnaire Nazgrim##41711
turnin Girding Our Loins##25944 |goto 39.0,32.1
turnin Helm's Deep##25946 |goto 39.0,32.1
accept Finders, Keepers##25947 |goto 39.0,32.1
step
click Stormwind Locker##203061
|tip Swim inside the sunken ship, there are a lot of Stormwind Lockers in there.
collect 5 Stormwind SEAL Equipment##54957 |q 25947/1 |goto 49.6,22.3
step
talk Legionnaire Nazgrim##41711
turnin Finders, Keepers##25947 |goto 39.0,32.1
accept Bring It On!##25948 |goto 39.0,32.1
step
talk Legionnaire Nazgrim##41750
turnin Bring It On!##25948 |goto 38.9,31.6
accept Blood and Thunder!##25949 |goto 38.9,31.6
step
Fight the naga until you get kidnapped
Follow Erunak Stonespeaker after he saves you
Complete the Defense of The Immortal Coil |q 25949/1 |goto 39.9,30.8
step
talk Erunak Stonespeaker##40105
turnin Blood and Thunder!##25949 |goto 46.3,46.9
step
talk Moanah Stormhoof##41248
accept Better Late Than Dead##25477 |goto 46.0,46.9
step
Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462
Start swimming on the turtle and a shark will come and eat the turtle
Mount the Sea Turtle |q 25477/1 |goto 52.8,48.8
step
talk Moanah Stormhoof##41248
turnin Better Late Than Dead##25477 |goto 46.0,46.9
accept The Abyssal Ride##25371 |goto 46.0,46.9
step
click Braided Rope##202766
Tie off the Seahorse Lure |q 25371/1 |goto 45.4,46.6
step
clicknpc Abyssal Seahorse##39996
Use the abilities on your hotbar when you are told to
|tip You will have to use the corresponding arrow abilities to the arrows that display in the middle of your screen.
Subdue an Abyssal Seahorse |q 25371/2 |goto 45.0,46.9 |n
step
talk Moanah Stormhoof##41248
turnin The Abyssal Ride##25371 |goto 46.0,46.9
step
talk Rendel Firetongue##41847
accept Good Deed Left Undone##27685 |goto 46.6,46.7
step
talk Adarrah##39667
turnin Good Deed Left Undone##27685 |goto 53.4,43.0
accept Gimme Shelter!##25587 |goto 53.4,43.0
step
Enter the cave |goto 54.4,33.7 < 5 |q 25587 |walk
Go to this spot
Scout Smuggler's Hole |q 25587/1 |goto 56.8,29.8
step
Leave the cave |goto 54.4,33.7 < 5 |q 25587 |walk
Go to this spot
Signal Adarrah |q 25587/2 |goto 54.0,34.6
step
Enter the cave |goto 54.4,33.7 < 5 |q 25587 |walk
talk Swift Seahorse##40852
fpath Smuggler's Scar |goto 56.1,31.1
step
talk Adarrah##39883
turnin Gimme Shelter!##25587 |goto 57.1,28.8
accept Ain't Too Proud to Beg##25598 |goto 57.1,28.8
step
Leave the cave |goto 54.4,33.7 < 5 |q 25598 |walk
talk Captain Samir##39669
Tell him to make for that cave to the west
Rescue Mack and Samir |q 25598/1 |goto 48.3,39.6
step
click Sunken Crate##202871
accept Crate of Crab Meat##25388 |goto 49.7,40.9
step
Enter the cave |goto 54.4,33.7 < 5 |q 25388 |walk
talk Adarrah##39883
turnin Ain't Too Proud to Beg##25598 |goto 57.1,28.8
turnin Crate of Crab Meat##25388 |goto 57.1,28.8
accept A Girl's Best Friend##25390 |goto 57.1,28.8
accept A Taste For Tail##25389 |goto 57.1,28.8
step
talk Captain Samir##39884
accept Can't Start a Fire Without a Spark##25602 |goto 57.3,28.9
step
Leave the cave |goto 54.4,33.7 < 5 |q 25602 |walk
kill Clacksnap Pincer##39918+
collect 4 Clacksnap Tail##53073 |q 25389/1 |goto 51.7,42.3
collect Tattered Treasure Map##53053 |n
Use your Tattered Treasure Map in your bags |use Tattered Treasure Map##53053
accept The Horde's Hoard##25377
click Adarrah's Jewelry Box##202775
collect 6 Adarrah's Keepsake##53074 |q 25390/1 |goto 51.7,42.3
step
click Keg of Gunpowder##203113
collect Keg of Gunpowder##55143 |q 25602/1 |goto 55.5,38.8
step
kill Akasha##39964
collect Horde Chest Key##53054 |q 25377/1 |goto 57.2,37.8
step
Enter the cave |goto 54.4,33.7 < 5 |q 25377 |walk
talk Adarrah##39883
turnin A Girl's Best Friend##25390 |goto 57.1,28.8
turnin A Taste For Tail##25389 |goto 57.1,28.8
step
talk Captain Samir##39884
turnin Can't Start a Fire Without a Spark##25602 |goto 57.3,28.9
step
talk Adarrah##39883
accept Ophidophobia##25459 |goto 57.1,28.8
step
talk Mack Fearsen##40983
accept Nerve Tonic##25358 |goto 57.3,29.3
step
Leave the cave |goto 54.4,33.7 < 5 |q 25358 |walk
talk Budd##46338
accept Oh, the Insanity!##25651 |goto 55.3,38.9
step
click Sunken Horde Chest##202759
turnin The Horde's Hoard##25377 |goto 57.8,35.2
step
kill Brinescale Serpent##39948+
Slay 4 Brinescale Serpent |q 25459/1 |goto 56.8,36.3
click Sunken Cargo##202745
collect 5 Sunken Cargo##52973 |q 25358/1 |goto 56.8,36.3
step
kill Gilblin Hoarder##41016+
click Pilfered Cannonballs##203139
collect 50 Pilfered Cannonball##55185 |n
Use your Pilfered Cannonballs |use Pilfered Cannonball##55185
collect Barrel of Gunpowder##62228 |q 25651/1 |goto 52.1,51.5
step
talk Budd##46338
turnin Oh, the Insanity!##25651 |goto 55.3,38.9
accept Dah, Nunt... Dah, Nunt...##25657 |goto 55.3,38.9
step
Enter the cave |goto 54.4,33.7 < 5 |q 25657 |walk
talk Mack Fearsen##40983
turnin Nerve Tonic##25358 |goto 57.3,29.3
step
talk Adarrah##39883
turnin Ophidophobia##25459 |goto 57.1,28.8
step
click Broken Bottle##203128
accept A Desperate Plea##25638 |goto 56.4,30.1
step
Leave the cave |goto 54.4,33.7 < 5 |q 25638 |walk
talk Erunak Stonespeaker##40105
turnin A Desperate Plea##25638 |goto 46.3,46.9
accept Undersea Sanctuary##25794 |goto 46.3,46.9
step
Use Erunak's Scrying Orb |use Erunak's Scrying Orb##56020 |q 25794/1
step
talk Erunak Stonespeaker##40105
turnin Undersea Sanctuary##25794 |goto 46.3,46.9
accept Spelunking##26000 |goto 46.3,46.9
step
Use your Booby-Trapped Bait next to the Rusty Harpoon Gun |use Booby-Trapped Bait##55190
|tip It looks like a round-ish metal gun on the deck of the ship.
Feed the Explosive Grub to Gnaws |q 25657/1 |goto 58.3,48.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Dah, Nunt... Dah, Nunt...##25657
accept Shark Weak##27699
step
click Gnaws' Tooth##203170
collect 5 Gnaws' Tooth##55212 |q 27699/1 |goto 58.4,50.1
step
talk Budd##46338
turnin Shark Weak##27699 |goto 55.3,38.9
accept DUN-dun-DUN-dun-DUN-dun##25670 |goto 55.3,38.9
step
Use your Budd's Chain next to the Rusty Harpoon Gun |use Budd's Chain##55220
|tip It looks like a round-ish metal gun on the deck of the ship.
While in Gnaws' mouth, spam the ability on your hotbar
|tip A huge harpoon will eventually shoot into Gnaws.  Once that happens, you can stop spamming the ability.
Slay Gnaws |q 25670/1 |goto 58.3,48.8
step
Enter the cave |goto 61.5,63.4 < 5 |q 25670 |walk
talk Gurrok##41863
turnin Spelunking##26000 |goto 64.0,59.8
step
talk Erunak Stonespeaker##41341
accept Debriefing##26007 |goto 63.9,59.9
step
talk Gurrok##41885
Ask him to tell you his name
Debrief Gurrok |q 26007/1 |goto 64.0,59.8
step
talk Erunak Stonespeaker##41341
turnin Debriefing##26007 |goto 63.9,59.9
accept Wake of Destruction##25887 |goto 63.9,59.9
step
talk Budd##46458
turnin DUN-dun-DUN-dun-DUN-dun##25670 |goto 58.4,48.7
accept A Bone to Pick##25732 |goto 58.4,48.7
step
kill King Gurboggle##41018
collect The Pewter Pounder##55805 |q 25732/1 |goto 53.6,58.0
step
talk Budd##46458
turnin A Bone to Pick##25732 |goto 58.4,48.7
accept Decisions, Decisions##25743 |goto 58.4,48.7
step
Use The Pewter Pounder |use The Pewter Pounder##55806
Destroy The Pewter Prophet |q 25743/1
step
talk Budd##46463
turnin Decisions, Decisions##25743 |goto 58.4,48.6
step
Use your Orb of Suggestion on a Famished Great Shark |use Orb of Suggestion##56576
Take control of a Famished Great Shark |invehicle |q 25887 |goto 58.7,72.4
step
Use the Eat Naga ability on your hotbar repeatedly near Zin'jatar Guardians
|tip They are nagas all around this area.
Eat 10 Zin'jatar Guardians Alive |q 25887/1 |goto 57.5,72.4
Use the Return to Safety ability on your hotbar
Go back to the Deepmist Grotto |outvehicle |q 25887 |goto 57.5,72.4
step
Enter the cave |goto 61.1,63.9 < 5 |q 25887 |walk
talk Erunak Stonespeaker##41341
turnin Wake of Destruction##25887 |goto 63.9,59.9
step
talk Erunak Stonespeaker##41341
home Deepmist Grotto |goto 63.9,59.9
step
talk Gurrok##41885
accept What? What? In My Gut...?##26040 |goto 64.0,59.8
step
talk Moanah Stormhoof##41347
accept Decompression##26008 |goto 63.9,59.4
step
talk Rendel Firetongue##41344
accept Come Hell or High Water##25884 |goto 64.2,59.9
step
Leave the cave |goto 61.1,63.9 < 5 |q 25884 |walk
click Naga Tridents##203301
accept How Disarming##25883 |goto 60.3,69.9
step
Swim around on all 3 layers of the naga Holding Pens
kill Zin'jatar Guardian##41996+, Zin'jatar Pearlbinder##41477+, Zin'jatar Overseer##41549+, Zin'jatar Warden##41530
Slay 12 Zin'jatar Naga |q 25884/1 |goto 57.7,75.4
collect 7 Wiggleweed Sprout##56167 |q 26040/1 |goto 57.7,75.4
Use your Breathstone on Imprisoned Warriors |use Breathstone##56169
|tip They looks like dead orcs in big balls of light all around on the naga Holding Pens.
Free 10 Imprisoned Warriors |q 26008/1 |goto 57.7,75.4
click Naga Tridents##203301
Destroy 6 Naga Weapons |q 25883/1 |goto 57.7,75.4
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Come Hell or High Water##25884
accept The Warden's Time##27708
step
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin How Disarming##25883
step
kill Warden Azjakir##41530
Slay the Zin'jatar Warden |q 27708/1 |goto 60.1,81.2
step
talk Erunak Stonespeaker##41341
turnin The Warden's Time##27708 |goto 63.9,59.9
accept Across the Great Divide##25471 |goto 63.9,59.9
step
talk Gurrok##41885
turnin What? What? In My Gut...?##26040 |goto 64.0,59.8
step
talk Moanah Stormhoof##41347
turnin Decompression##26008 |goto 63.9,59.4
step
Enter the cave |goto 48.3,72.5 < 5 |q 25471 |walk
talk Farseer Gadra##39226
turnin Across the Great Divide##25471 |goto Shimmering Expanse,56.0,13.7
accept The Looming Threat##25334 |goto Shimmering Expanse,56.0,13.7
step
talk Farseer Gadra##39226
Tell him you are ready to join him in the vision
Share in Farseer Gadra's Spirit Vision |q 25334/1 |goto 56.0,13.7
step
Next to you:
talk Spirit of Farseer Gadra##40398
turnin The Looming Threat##25334
step
talk Farseer Gadra##39226
accept Backed Into a Corner##25164 |goto 56.0,13.7
step
kill Zin'jatar Fathom-Stalker##40162+
Fend Off the Naga Attack |q 25164/1 |goto 55.9,13.4
|tip You have to kill 50 nagas.
kill Fathom-Lord Zin'jatar##40161
Defeat Fathom-Lord Zin'jatar |q 25164/2 |goto 55.9,13.4
step
talk Farseer Gadra##39226
turnin Backed Into a Corner##25164 |goto 56.0,13.7
step
talk Toshe Chaosrender##39877
accept Rundown##25221 |goto 55.5,12.5
step
Follow the path outside the cave
Use Toshe's Hunting Spears near Fleeing Zin'jatar Fathom-Stalkers |use Toshe's Hunting Spears##54466
kill 20 Fleeing Zin'jatar Fathom-Stalker##40174+ |q 25221/1 |goto 52.0,18.0
step
talk Toshe Chaosrender##39877
turnin Rundown##25221 |goto 53.3,33.1
accept Silver Tide Hollow##25222 |goto 53.3,33.1
step
Enter the cave |goto 50.1,39.1 < 5 |q 25222 |walk
talk Swift Seahorse##40851
fpath Silver Tide Hollow |goto 49.5,41.2
step
talk Felora Firewreath##39876
turnin Silver Tide Hollow##25222 |goto 49.4,42.6
accept A Distracting Scent##25215 |goto 49.4,42.6
accept The Great Sambino##25216 |goto 49.4,42.6
step
talk Earthmender Duarn##39875
accept Don't be Shellfish##25219 |goto 49.2,42.6
step
talk Caretaker Movra##39878
accept Slippery Threat##25220 |goto 49.1,42.0
step
talk Caretaker Movra##39878
home Silver Tide Hollow |goto 49.1,42.0
step
clicknpc Dead Zin'jatar Raider##39911+
Bring them to [50.8,45.9]
|tip You have to drag them one at a time.
Dispose of 3 Dead Zin'jatar Raiders |q 25215/1 |goto 50.3,41.1
step
kill 12 Spiketooth Eel##40200+ |q 25220/1 |goto 59.6,40.1
clicknpc Coilshell Sifter##39422+
collect 10 Coilshell Sifter##52975 |q 25219/1 |goto 59.6,40.1
step
Enter the cave |goto 50.1,39.1 < 5 |q 25219 |walk
talk Felora Firewreath##39876
turnin A Distracting Scent##25215 |goto 49.5,42.4
step
talk Earthmender Duarn##39875
turnin Don't be Shellfish##25219 |goto 49.2,42.6
step
talk Caretaker Movra##39878
turnin Slippery Threat##25220 |goto 49.1,42.0
step
talk The Great Sambino##39882
turnin The Great Sambino##25216 |goto 41.3,34.2
accept Undersea Inflation##25218 |goto 41.3,34.2
step
talk Felice##40227
accept Crabby Patrons##25360 |goto 41.3,34.1
step
Use Sambino's Air Balloon next to the bubbling objects |use Sambino's Air Balloon##54608
|tip They look like green bubbling watermelon looking plants with a holes in the tops of them, and big blue bubbling snail shells.  You'll have to do this 10 times.
Fill Sambino's Air Balloon |q 25218/1 |goto 40.5,35.5
kill 10 Green Sand Crab##39418+ |q 25360/1 |goto 40.5,35.5
collect Sambino's Air Valve##54611 |q 25218/2 |goto 40.5,35.5
step
talk The Great Sambino##39882
turnin Undersea Inflation##25218 |goto 41.3,34.2
accept Totem Modification##25217 |goto 41.3,34.2
step
talk Felice##40227
turnin Crabby Patrons##25360 |goto 41.2,34.2
step
Use one of Sambino's Modified Totems while standing on an orange spot on the ground:
|tip You will only get one of the four totems to use, it's random.
Use Sambino's Modified Stoneclaw Totem |use Sambino's Modified Stoneclaw Totem##54214
Use Sambino's Modified Earthbind Totem |use Sambino's Modified Earthbind Totem##53052
Use Sambino's Modified Stoneskin Totem |use Sambino's Modified Stoneskin Totem##54217
Use Sambino's Modified Strength of Earth Totem |use Sambino's Modified Strength of Earth Totem##54216
Defend Sambino's Modified Totem
Take a Drill Sample |q 25217/1 |goto 42.7,34.0
step
talk The Great Sambino##39882
turnin Totem Modification##25217 |goto 41.3,34.2
accept Back in One Piece##25456 |goto 41.3,34.2
step
Enter Silver Tide Hollow |goto 50.1,39.0 < 5 |q 25456
talk Felora Firewreath##39876
turnin Back in One Piece##25456 |goto 49.6,42.1
accept Toshe's Vengeance##25359 |goto 49.6,42.1
step
talk Toshe Chaosrender##40221
turnin Toshe's Vengeance##25359 |goto 64.1,42.3
accept Vengeful Heart##25439 |goto 64.1,42.3
accept Vortex##25441 |goto 64.1,42.3
step
Use your Globes of Tumultuous Water near Swarming Serpents |use Globes of Tumultuous Water##54785
Trap 30 Swarming Serpents |q 25441/1 |goto 65.8,43.1
kill 10 Zin'jatar Ravager##40275+ |q 25439/1 |goto 65.8,43.1
step
talk Toshe Chaosrender##40221
turnin Vengeful Heart##25439 |goto 64.1,42.3
accept Fathom-Lord Zin'jatar##25440 |goto 64.1,42.3
turnin Vortex##25441 |goto 64.1,42.3
step
kill Fathom-Lord Zin'jatar##40510 |q 25440/1 |goto 67.3,49.7
collect Luminescent Pearl##54614 |n
Click the Luminescent Pearl in your bags |use Luminescent Pearl##54614
accept A Pearl of Wisdom##25442 |goto 67.3,49.7
step
talk Toshe Chaosrender##40221
turnin Fathom-Lord Zin'jatar##25440 |goto 64.1,42.3
step
talk Earthmender Duarn##39875
turnin A Pearl of Wisdom##25442 |goto 49.2,42.6
accept Nespirah##25890 |goto 49.2,42.6
step
Leave the cave |goto 50.4,41.1 < 5 |q 25890 |walk
Enter Nespirah |goto 51.8,48.6 < 5 |q 25890 |walk
Run up the spiral ramp and follow Earthmender Duarn around after he spawns:
Find a way to communicate with Nespirah |q 25890/1
step
talk Earthmender Duarn##41531
turnin Nespirah##25890 |goto 51.6,52.2
accept Making Contact##25900 |goto 51.6,52.2
step
talk Earthmender Duarn##41531
Tell him whenever he's ready
Speak with Earthmender Duarn |q 25900/1|goto 51.6,52.2
step
talk Earthmender Duarn##41531
turnin Making Contact##25900 |goto 51.6,52.2
accept Slave Labor##25907 |goto 51.6,52.2
accept Stick it to Them##25908 |goto 51.6,52.2
step
kill 7 Idra'kess Sentinel##41466+ |q 25908/1 |goto 55.0,53.3
kill 7 Idra'kess Enchantress##41467+ |q 25908/2 |goto 55.0,53.3
Use Duarn's Rope near Enslaved Alliance and Horde Pearl Miners |use Duarn's Rope##56178
|tip They are in the trenches with the huge pearls.
Rescue 7 Pearl Miners |q 25907/1 |goto 55.0,53.3
step
talk Earthmender Duarn##41531
turnin Slave Labor##25907 |goto 51.6,52.2
turnin Stick it to Them##25908 |goto 51.6,52.2
accept Capture the Crab##25989 |goto 51.6,52.2
step
Use Duarn's Net on the Deepseeker Crab |use Duarn's Net##56184
|tip The Deepseeker Crab is the pet of the Idra'kess Harpooner.
clicknpc Deepseeker Crab##41520
collect Deepseeker Crab##56182 |q 25989/1 |goto 53.6,59.9
step
talk Earthmender Duarn##41531
turnin Capture the Crab##25989 |goto 51.6,52.2
accept Breaking Through##25990 |goto 51.6,52.2
step
talk Earthmender Duarn##41531
Tell him let's speak with Nespirah
Speak with Earthmender Duarn |q 25990/1 |goto 51.6,52.2
step
talk Earthmender Duarn##41531
turnin Breaking Through##25990 |goto 51.6,52.2
accept We Are Not Alone##25991 |goto 51.6,52.2
step
talk Legionnaire Nazgrim##41810
turnin We Are Not Alone##25991 |goto 60.2,63.7
accept Body Blows##25993 |goto 60.2,63.7
step
talk Captain Vilethorn##41811
accept Hopelessly Gearless##25992 |goto 60.2,63.7
step
talk Wavespeaker Tulra##41813
accept Still Valuable##25994 |goto 60.1,63.4
step
kill Idra'kess Warlord##41607+, Idra'kess Prophet##41608+
collect 5 Mysterious Pearl##56194 |q 25994/1 |goto 61.3,60.7
click Idra'kess Weapon Rack##203373
collect 4 Purloined Polearm##56185 |q 25992/1 |goto 61.3,60.7
Attack Nespirah Abscesses
|tip They look like red lumps sitting on the ground around this area.
Attack 7 Nespirah Abscesses |q 25993/1 |goto 61.3,60.7
step
talk Wavespeaker Tulra##41813
turnin Still Valuable##25994 |goto 60.1,63.4
step
talk Legionnaire Nazgrim##41810
turnin Body Blows##25993 |goto 60.2,63.7
step
talk Captain Vilethorn##41811
turnin Hopelessly Gearless##25992 |goto 60.2,63.7
step
talk Legionnaire Nazgrim##41810
accept Overseer Idra'kess##25995 |goto 60.2,63.7
step
Follow the path up |goto 62.9,57.2 < 5 |q 25995 |walk
kill Overseer Idra'kess##41731 |q 25995/1 |goto 57.4,56.4
|tip Kill the Idra'kess Mistresses when instructed to.
step
Follow the path down |goto 60.3,52.8 < 5 |q 25995 |walk
talk Earthmender Duarn##41531
turnin Overseer Idra'kess##25995 |goto 51.6,52.2
accept Waking the Beast##25996 |goto 51.6,52.2
Listen as Duarn speaks to Nespirah |q 25996/1 |goto 51.6,52.2
step
Follow Erunak Stonespeaker when he runs away
clicknpc Swiftfin Seahorse##41776
Escape on Erunak's Seahorse |q 25996/2 |goto 50.3,55.4
step
talk Swift Seahorse##40871
fpath Legion's Rest |goto 50.8,63.4
step
talk Legionnaire Nazgrim##40917
turnin Waking the Beast##25996 |goto 51.2,63.0
accept Deep Attraction##25592 |goto 51.2,63.0
step
talk Captain Vilethorn##40916
accept Shelled Salvation##25593 |goto 51.2,63.0
step
talk Wavespeaker Tulra##40919
accept Something Edible##25595 |goto 51.6,62.8
step
talk Fiasco Sizzlegrin##40918
accept Crafty Crabs##25594 |goto 51.7,62.5
step
talk Zun'ja##42908
home Legion's Rest |goto 51.6,62.6
step
Leave the cave |goto 49.5,64.8 < 5 |q 25594 |walk
kill Snapjaw Grouper##40912+
collect 8 Snapjaw Grouper Meat##55140 |q 25595/1 |goto 49.4,62.2
clicknpc Spiralung##39745+
collect Spiralung##55141 |q 25593 |n
Use your Spiralungs on Nespirah Survivors |use Spiralung##55141
|tip They look like Horde mobs swimming in place around the rock air bubble cracks around this area.
Rescue 8 Shell Survivors |q 25593/1 |goto 49.4,62.2
click Fiasco's Stray Part##203103
collect 12 Fiasco's Stray Parts##55139 |q 25594/1 |goto 49.4,62.2
step
kill 10 Redgill Scavenger##40911+ |q 25592/1 |goto 59.6,69.0
|tip They swim above the plants pretty high from the ground.
step
Enter the cave |goto 49.5,64.8 < 5 |q 25592 |walk
|tip Swim down under the big stone slab
talk Fiasco Sizzlegrin##40918
turnin Crafty Crabs##25594 |goto 51.7,62.5
step
talk Captain Vilethorn##40916
turnin Shelled Salvation##25593 |goto 51.2,63.0
step
talk Legionnaire Nazgrim##40917
turnin Deep Attraction##25592 |goto 51.2,63.0
step
talk Wavespeaker Tulra##40919
turnin Something Edible##25595 |goto 51.6,62.8
step
talk Elendri Goldenbrow##40920
accept An Occupation of Time##25954 |goto 51.3,62.4
step
talk Captain Vilethorn##40916
accept A Better Vantage##25955 |goto 51.2,63.0
accept Caught Off-Guard##25952 |goto 51.2,63.0
step
talk Legionnaire Nazgrim##40917
accept Swift Approach##25953 |goto 51.2,63.0
step
Go to this spot in the ruins
Scout the Structures South of Quel'Dormir Gardens |q 25955/3 |goto 40.5,74.8
step
click Broken Prong##203140
accept Upon the Scene of Battle##25956 |goto 40.5,75.5
stickystart "azshmon"
step
click Ranger Valarian##203390
Read the Ranger Valarian Statue |q 25954/3 |goto 39.7,67.7
step
click High Priestess Siralen##203391
Read the High Priestess Siralen Statue |q 25954/4 |goto 38.5,66.0
step
Go to this spot in the ruins
Scout the Tunnel West of Quel'Dormir Gardens |q 25955/2 |goto 35.8,63.0
step
click Queen Azshara##203388
Read the Queen Azshara Statue |q 25954/2 |goto 38.6,59.0
step
click Lestharia Vashj##203386
Read the Lestharia Vashj Statue |q 25954/1 |goto 39.7,59.0
step
Go to this spot in the ruins
Scout the Northern Quel'Dormir Gardens |q 25955/1 |goto 39.2,57.7
step
label "azshmon"
kill Azsh'ir Monitor##40877+
|tip They look like small green eyeballs floating above small stands on the ground around this area.
Destroy 8 Azsh'ir Monitor |q 25953/1 |goto 40.7,62.0
kill 10 Azsh'ir Patroller##39638+ |q 25952/1 |goto 40.7,62.0
collect Ancient Elven Etching##62282 |n
Click the Ancient Elven Etching in your bags |use Ancient Elven Etching##62282
accept Piece of the Past##27717
step
talk Elendri Goldenbrow##40920
turnin An Occupation of Time##25954 |goto 51.3,62.4
turnin Piece of the Past##27717 |goto 51.3,62.4
step
talk Captain Vilethorn##40916
turnin A Better Vantage##25955 |goto 51.2,63.0
turnin Caught Off-Guard##25952 |goto 51.2,63.0
turnin Upon the Scene of Battle##25956 |goto 51.2,63.0
step
talk Legionnaire Nazgrim##40917
turnin Swift Approach##25953 |goto 51.2,63.0
step
talk Wavespeaker Tulra##40919
accept Visions of the Past: The Invasion of Vashj'ir##25957 |goto 51.6,62.8
step
Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171
|tip It's a bright flashing light on the ground in the ruins.
Become the Naz'jar Battlemaiden |havebuff 236422 |q 25957 |goto 40.5,75.6
step
talk Fathom-Stalker Azjentus##40978
accept Reoccupation##25619 |goto 40.6,75.3
step
Use the abilities on your hotbar
kill Kvaldir Deepwalker##41107+, Kvaldir Marauder##39602+
Slay 10 Kvaldir defenders |q 25619/1 |goto 39.7,69.5
step
talk Fathom-Stalker Azjentus##40978
turnin Reoccupation##25619 |goto 40.6,75.3
accept The Revered Lady##25620 |goto 40.6,75.3
step
talk Lady Naz'jar##40640
turnin The Revered Lady##25620 |goto 39.4,59.0
accept To the Fathom-Lord's Call##25637 |goto 39.4,59.0
step
talk Sira'kess Tide Priestess##41050
accept Built to Last##25658 |goto 39.0,58.6
step
Go to the top level of the ruins
Use the abilities on your hotbar
kill Kvaldir Pillager##41102+, Kvladir Plunderer##41108+, Kvaldir Wasteroamer##41106+
Kill 16 Kvaldir invaders on the terrace |q 25637/1 |goto 35.6,60.4
click Nar'shola Ward##203185
Activate 6 Nar'shola Wards |q 25658/1 |goto 35.6,60.4
step
talk Sira'kess Tide Priestess##41050
turnin Built to Last##25658 |goto 37.2,77.5
step
talk Fathom-Lord Zin'jatar##41049
turnin To the Fathom-Lord's Call##25637 |goto 36.4,78.7
accept Not Soon Forgotten##25659 |goto 36.4,78.7
step
Use the abilities on your hotbar
kill Varkul the Unrelenting##41115 |q 25659/1 |goto 28.6,78.6
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Not Soon Forgotten##25659 |goto 28.6,78.6
step
talk Wavespeaker Tulra##40919
turnin Visions of the Past: The Invasion of Vashj'ir##25957 |goto 40.6,75.1
accept Looking Forward##25958 |goto 40.6,75.1
step
clicknpc Tamed Seahorse##50592 |goto 40.6,75.0
You will ride to the Ruins of Vashj'ir |goto 39.6,54.7 < 5 |q 25958
step
talk Captain Vilethorn##40916
turnin Looking Forward##25958 |goto 39.8,54.0
accept Clear Goals##25959 |goto 39.8,54.0
step
talk Legionnaire Nazgrim##40917
accept Not Entirely Unprepared##25960 |goto 39.5,54.0
step
talk Fiasco Sizzlegrin##40918
accept Properly Inspired##25962 |goto 39.5,54.7
step
Use your Box of Crossbow Bolts on Horde Lookouts |use Box of Crossbow Bolts##56247
|tip They look like Horde mobs either standing or on sea horses around this area with crossbows.
Restock 8 Horde Lookouts |q 25960/1 |goto 40.4,55.8
step
kill Azsh'ir Abyss Priestess##42453+, Azsh'ir Infantry##41227+, Naz'jar Serpent Guard##41228+
Slay 10 Southern Naga Forces |q 25959/1 |goto 37.5,78.4
click Bloated Kelp Bulb##203209
collect 8 Bloated Kelp Bulb##55965 |q 25962/1 |goto 37.5,78.4
step
talk Fiasco Sizzlegrin##40918
turnin Properly Inspired##25962 |goto 39.5,54.7
step
talk Legionnaire Nazgrim##40917
turnin Not Entirely Unprepared##25960 |goto 39.5,54.0
step
talk Captain Vilethorn##40916
turnin Clear Goals##25959 |goto 39.8,54.0
accept Swift Action##25963 |goto 39.8,54.0
step
talk Fiasco Sizzlegrin##40918
Tell him you're ready to begin the assault on the terrace
Use the Improvised Explosives ability on your hotbar on the nagas on the ground as you ride the seahorse
kill 100 Azsh'ir Soldier##41249+ |q 25963/2 |goto 39.5,54.7
kill 20 Azsh'ir Wave Screamer##41250+ |q 25963/3 |goto 39.5,54.7
kill 12 Azsh'ir Archaean##42549+ |q 25963/4 |goto 39.5,54.7
step
talk Captain Vilethorn##40916
turnin Swift Action##25963 |goto 39.1,78.7
accept Gauging Success##25965 |goto 39.1,78.7
step
talk Legionnaire Nazgrim##40917
accept Fallen But Not Forgotten##25964 |goto 39.1,78.5
step
Go to this spot at the entrance of the tunnel
Scout the Tunnel to the North |q 25965/1 |goto 34.0,67.8
step
Go to this spot at the entrance of the tunnel
Scout the Northwestern Terrace |q 25965/2 |goto 31.0,72.2
step
talk Injured Assault Volunteer##41784
|tip They look like Horde mobs spread out on the ground around this whole area.
Tell them they should get moving.
Rescue 6 Injured Assault Volunteers |q 25964/1 |goto 36.0,75.0
step
talk Captain Vilethorn##40916
turnin Gauging Success##25965 |goto 39.1,78.7
step
talk Legionnaire Nazgrim##40917
turnin Fallen But Not Forgotten##25964 |goto 39.1,78.5
step
talk Wavespeaker Tulra##40919
accept Visions of the Past: The Slaughter of Biel'aran Ridge##25966 |goto 39.1,78.6
step
Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171
|tip It's a bright flashing light on the ground on the stone terrace.
Become the Naz'jar Battlemaiden |havebuff 236422 |q 25966 |goto 28.9,78.6
step
talk Lady Naz'jar##42076
accept By Her Lady's Word##25858 |goto 29.0,78.5
step
talk Fathom-Lord Zin'jatar##42072
Tell you are to hunt the Crucible of Nazsharin
Speak to Fathom-Lord Zin'jatar |q 25858/1 |goto 34.4,78.7
step
talk Overseer Idra'kess##41455
Tell you are to hunt the Crucible of Nazsharin
Speak to Overseer Idra'kess |q 25858/3 |goto 36.8,79.8
step
talk Lady Sira'kess##42071
Tell you are to hunt the Crucible of Nazsharin
Speak to Lady Sira'kess |q 25858/2 |goto 39.2,78.0
step
talk Fathom-Stalker Azjentus##42074
turnin By Her Lady's Word##25858 |goto 46.2,79.6
accept No Trespass Forgiven##25859 |goto 46.2,79.6
step
talk Naz'jar Honor Guard##41476
accept Stolen Property##25862 |goto 46.3,78.6
step
click Crucible of Nazsharin##203305
turnin Stolen Property##25862 |goto 57.2,89.9
accept Chosen Burden##25863 |goto 57.2,89.9
step
talk Executioner Verathress##41457
accept Setting An Example##25861 |goto 57.2,85.2
step
Aggro a Kvaldir High-Shaman, but don't kill him
|tip They stand inside the buildings around this area.
Lure the Kvaldir High-Shaman back to Executioner Verathress |goto 57.2,85.2
Bring Kvaldir High-Shaman to the executioner |q 25861/1 |goto 58.7,86.4
step
talk Executioner Verathress##41457
turnin Setting An Example##25861 |goto 57.2,85.2
step
Use the abilities on your hotbar
kill 20 Vrykul Ledge Kvaldir |q 25859/1 |goto 57.2,87.5
step
talk Lady Naz'jar##42076
turnin Chosen Burden##25863 |goto 46.4,79.0
step
talk Fathom-Stalker Azjentus##42074
turnin No Trespass Forgiven##25859 |goto 46.4,79.3
step
talk Lady Naz'jar##42076
accept The Culmination of Our Efforts##26191 |goto 46.4,79.0
Witness the Continuing Story of the Battlemaiden |q 25966/1 |goto 46.4,79.0
step
talk Wavespeaker Tulra##40919
turnin Visions of the Past: The Slaughter of Biel'aran Ridge##25966 |goto 29.6,78.9
accept Losing Ground##25967 |goto 29.6,78.9
step
clicknpc Tamed Seahorse##48866 |goto 29.5,79.0
You will ride to Legion's Rest |goto 50.6,63.4 < 5 |q 25967
talk Legionnaire Nazgrim##40917
turnin Losing Ground##25967 |goto 51.2,63.0
accept Desperate Plan##25968 |goto 51.2,63.0
step
talk Fiasco Sizzlegrin##41770
turnin Desperate Plan##25968 |goto 50.4,79.0
accept Come Prepared##25970 |goto 50.4,79.0
accept Unfurling Plan##25971 |goto 50.4,79.0
step
talk Bloodguard Toldrek##40921
accept Hostile Waters##25969 |goto 50.4,79.0
stickystart "muckscrounger"
stickystart "coilrope"
step
click Horde Survival Kit##203409
collect Horde Survival Kit##56251 |q 25970/1 |goto 48.4,84.0
step
label "muckscrounger"
kill 10 Muckskin Scrounger##41566+ |q 25969/1 |goto 48.4,83.8
step
label "coilrope"
kill Kvaldir Fleshcarver##41569+, Kvaldir Seahorror##41606+
click Coil of Kvaldir Rope##203312
collect 8 Coil of Kvaldir Rope##56183 |q 25971/1 |goto 51.3,84.3
step
talk Fiasco Sizzlegrin##41770
turnin Come Prepared##25970 |goto 50.4,79.0
turnin Unfurling Plan##25971 |goto 50.4,79.0
turnin Hostile Waters##25969 |goto 50.4,79.0
accept Honor and Privilege##25972 |goto 50.4,79.0
step
Swim up to the rescue balloon on the surface
click Survival Kit Remnants##203410
collect Rescue Flare##56188 |n
Use your Rescue Flare in your bags |use Rescue Flare##56188
Fire a rescue flare towards the Horde ships |q 25972/2 |goto 50.4,79.1
step
talk Bloodguard Toldrek##40921
turnin Honor and Privilege##25972 |goto 50.4,79.1
accept Welcome News##25973 |goto 50.4,79.1
step
talk Legionnaire Nazgrim##40917
turnin Welcome News##25973 |goto 51.2,63.0
step
talk Wavespeaker Tulra##40919
accept Visions of the Past: Rise from the Deep##26135 |goto 51.6,62.8
step
Go to the very top of the naga terrace and into the dome temple
Infiltrate the Quel'Dormir Temple |q 26135/1 |goto 33.2,77.8
step
Swim up a bit inside the temple
Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171
|tip It looks like a bright flashing light inside the temple.
Become the Naz'jar Battlemaiden |havebuff 236422 |q 26135 |goto 33.1,77.8
step
talk Lady Sira'kess##41456
accept Devout Assembly##25896 |goto 33.1,77.9
step
talk Lady Naz'jar##42077
accept Her Lady's Hand##25629 |goto 33.1,75.9
step
talk Fathom-Caller Azrajar##41980
Tell him the mistress awaits
Gather Fathom-Caller Azrajar |q 25896/2 |goto 33.1,61.0
step
talk Sira'kess Tide Priestess##41985
|tip They look like pink and yellow nagas with pink shields around them all around this area.
Tell them they are needed for the ritual
Gather 6 Sira'kess Tide Priestesses |q 25896/1 |goto 33.1,73.0
Kill all the Kvaldir mobs attacking Naz'jar Honor Guards around this area
Relieve 8 Naz'jar Honor Guards |q 25629/1 |goto 33.1,73.0
step
talk Lady Naz'jar##42077
turnin Her Lady's Hand##25629 |goto 33.1,75.9
step
talk Lady Sira'kess##41456
turnin Devout Assembly##25896 |goto 33.1,77.9
accept At All Costs##25860 |goto 33.1,77.9
step
Use the abilities on your hotbar
kill Kvladir Sandreaper##42058+, Kvaldir Bonesnapper##42057+ |q 25860/1 |goto 33.1,76.9
step
talk Lady Sira'kess##41456
turnin At All Costs##25860 |goto 33.1,77.9
accept Final Judgement##25951 |goto 33.1,77.9
step
Use the abilities on your hotbar
kill Kvaldir Skinflayer##42060+, Kvaldir Fearweaver##42062+
Hold the eastern end of Quel'Dormir Terrace |q 25951/1 |goto 37.9,78.5
step
Use the abilities on your hotbar
kill Hagrim Hopebreaker##42063
|tip He spawns when the naga allies arrive
Push the Kvaldir back across the bridge |q 25951/2 |goto 41.9,78.6
step
talk Lady Naz'jar##42077
turnin Final Judgement##25951 |goto 42.5,78.6
Witness the Concluding Story of the Battlemaiden |q 26135/2 |goto 42.5,78.6
step
talk Wavespeaker Tulra##40919
turnin Visions of the Past: Rise from the Deep##26135 |goto 51.6,62.8
accept A Breath of Fresh Air##26006 |goto 51.6,62.8
step
Use your Boom Boots to get to the water surface quickly |use Boom Boots##57412
clicknpc Rope Ladder##41020 |goto 49.6,65.1
Jump up onto the boat |goto 64.7,68.7 < 5 |q 26006
step
talk Brogdul##43225
fpath Stygian Bounty |goto 49.5,65.6
step
talk Legionnaire Nazgrim##42410
turnin A Breath of Fresh Air##26006 |goto Vashj'ir,64.5,68.8
accept Full Circle##26221 |goto Vashj'ir,64.5,68.8
step
talk Earthmender Duarn##45460
accept The War Has Many Fronts##27442 |goto 64.4,68.7
step
Board the Verne once it arrives |q 26221/1 |goto 64.6,68.7
|tip It's a boat, so you may have a to wait a few minutes for it.
step
Ride the boat
Secure Tenebrous Cavern |q 26221/2
step
talk Swift Seahorse##40873
fpath Tenebrous Cavern |goto Abyssal Depths,53.9,59.6
step
talk Captain "Jewels" Verne##41663
turnin Full Circle##26221 |goto Abyssal Depths 51.4,61.5
step
talk Fiasco Sizzlegrin##41669
accept Environmental Awareness##26122 |goto 51.5,60.8
step
talk Innkeeper Nerius##43141
home Tenebrous Cavern |goto 51.2,60.5
step
Leave the Tenebrous Cavern |goto 56.7,58.1 < 5 |q 26122 |goto 55.8,46.6 |walk
kill Seabrush Terrapin##42108+, Scourgut Remora##42112+, Spinescale Hammerhead##42113+
|tip They Scourgut Remoras swim in place beneath the big purple ledge plants that grow out of the sides of the tall rock formations around this area.
Use your Oil Extrusion Pump on their corpses |use Oil Extrusion Pump##56821
collect 4 Terrapin Oil##56818 |q 26122/1 |goto 55.8,46.6
collect 4 Remora Oil##56819 |q 26122/2 |goto 55.8,46.6
collect 4 Hammerhead Oil##56820 |q 26122/3 |goto 55.8,46.6
step
Enter the Tenebrous Cavern |goto 56.7,58.1 < 5 |q 26122 |walk
talk Fiasco Sizzlegrin##41669
turnin Environmental Awareness##26122 |goto 51.5,60.8
accept The Perfect Fuel##26126 |goto 51.5,60.8
step
click Fuel Sampling Station##203461
Click "Let's get started!"
Choose the Hammerhead Oil Sample 3 Times
Choose the Remora Oil Sample 2 Times
Mix the samples together!
collect Promising Fuel Sample##56833 |q 26126 |goto 51.5,60.5
step
talk Fiasco Sizzlegrin##41669
Tell him you made a Promising Fuel Sample
Create the perfect bio-fuel |q 26126/1 |goto 51.5,60.8
step
talk Fiasco Sizzlegrin##41669
turnin The Perfect Fuel##26126 |goto 51.5,60.8
step
talk Captain "Jewels" Verne##41663
accept Orako##26086 |goto 51.4,61.5
step
Leave the Tenebrous Cavern |goto 56.7,58.1 < 5 |q 26086 |walk
talk Orako##41908
turnin Orako##26086 |goto 42.9,51.0
accept "Glow-Juice"##26087 |goto 42.9,51.0
step
kill Luxscale Grouper##41923+, Pyreshell Scuttler##41922+
collect 6 Glow-Juice##56573 |q 26087/1 |goto 45.1,56.1
step
talk Orako##41908
turnin "Glow-Juice"##26087 |goto 42.9,51.0
accept Here Fishie Fishie##26088 |goto 42.9,51.0
accept Die Fishman Die##26089 |goto 42.9,51.0
step
Use your Fish Hat |use Fish Hat##56813
Get the Lure buff |havebuff 252174 |q 26088
step
kill 4 Coldlight Hunter##41925+ |q 26089/1 |goto 46.4,54.9
kill 4 Coldlight Oracle##41926+ |q 26089/2 |goto 46.4,54.9
collect Enormous Eel Egg##56812 |n
Click your Enormous Eel Egg in your bags |use Enormous Eel Egg##56812
accept I Brought You This Egg##26090
Get near Coldlight Nibblers
|tip They look like small fish that hang out in the tips of the huge tube plants around this area.
collect 30 Underlight Nibbler##56569 |q 26088/1 |goto 46.4,54.9
step
talk Orako##41908
turnin Here Fishie Fishie##26088 |goto 42.9,51.0
turnin Die Fishman Die##26089 |goto 42.9,51.0
turnin I Brought You This Egg##26090 |goto 42.9,51.0
accept Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo##26091 |goto 42.9,51.0
accept Orako's Report##26092 |goto 42.9,51.0
step
Use your Eel-Splosive Device in the path of a Devious Great-Eel |use Eel-Splosive Device##56815
|tip They look like big blue eels that swim around this area.  Place the device in their path, so they swim into it.
kill Weakened Great-Eel##41927
Avenge Orako's Wolf |q 26091/2 |goto 44.4,53.7
step
talk Orako##41908
turnin Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo##26091 |goto 42.9,51.0
step
talk Captain "Jewels" Verne##41663
turnin Orako's Report##26092 |goto 51.4,61.5
step
talk Sergeant Gertrude##41670
accept Sira'kess Slaying##25974 |goto 51.5,60.9
accept A Standard Day for Azrajar##25980 |goto 51.5,60.9
step
talk Fiasco Sizzlegrin##41669
accept Those Aren't Masks##25982 |goto 51.5,60.8
step
talk Bloodguard Toldrek##41668
accept Treasure Reclamation##25976 |goto 51.5,60.7
step
Leave the Tenebrous Cavern |goto 56.7,58.1 < 5 |q 25976 |walk
kill Fathom-Caller Azrajar##41590
Use your Horde Standard on Fathom-Caller Azrajar's corpse |use Horde Standard##56255
Plant a banner in Fathom-Caller Azrajar's corpse |q 25980/1 |goto 52.5,21.3
step
click Deepfin Plunder##203387
collect 6 Deepfin Plunder##56235 |q 25976/1 |goto 43.7,16.7
step
kill Sira'kess Guardian##41586+, Sira'kess Tide Priestess##41589+, Sira'kess Sea Witch##41588+ |q 25974/1 |goto 50.2,18.2
kill Merciless One##41601+
collect 6 Merciless Head##56254 |q 25982/1 |goto 50.2,18.2
You can find more Merciless Heads around [43.4,19.0]
step
Enter the Tenebrous Cavern |goto 56.7,58.1 < 5 |q 25982 |walk
talk Swift Seahorse##43216
fpath Sandy Beach |goto Kelp'thar Forest,49.3,87.9
step
talk Briglar##43220
fpath Sandy Beach |goto Shimmering Expanse,61.0,28.4
step
talk Bloodguard Toldrek##41668
turnin Treasure Reclamation##25976 |goto 51.5,60.8
step
talk Fiasco Sizzlegrin##41669
turnin Those Aren't Masks##25982 |goto 51.5,60.8
accept Put It On##25988 |goto 51.5,60.8
Watch the cutscene
Wear the Mindless One |q 25988/1 |goto 51.5,60.8
step
talk Fiasco Sizzlegrin##41669
turnin Put It On##25988 |goto 51.5,60.8
accept Promontory Point##25984 |goto 51.5,60.8
step
talk Sergeant Gertrude##41670
turnin Sira'kess Slaying##25974 |goto 51.5,60.9
turnin A Standard Day for Azrajar##25980 |goto 51.5,60.9
step
Leave the Tenebrous Cavern |goto 56.7,58.1 < 5 |q 25984 |walk
talk Legionnaire Nazgrim##41636
turnin Promontory Point##25984 |goto 42.6,37.8
accept Clearing the Defiled##26071 |goto 42.6,37.8
accept The Wavespeaker##26057 |goto 42.6,37.8
step
talk Erunak Stonespeaker##41600
accept Into the Totem##26072 |goto 42.7,37.9
step
talk Wavespeaker Tulra##41639
accept Scalding Shrooms##26096 |goto 42.7,37.9
step
Use Erunak's Confinement Totem |use Erunak's Confinement Totem##56801
kill Faceless Defiler##41644+
|tip Kill them next to Erunak's Confinement Totem you put down.
Confine 5 Faceless Defiler Energies |q 26072/1 |goto 46.4,35.0
kill Crushing Eel##41646+, Trench Stalker##41645+, Deep Remora##41647+ |q 26071/1 |goto 46.4,35.0
click Scalding Shroom##203453
collect 5 Scalding Shroom##56810 |q 26096/1 |goto 46.4,35.0
step
talk Legionnaire Nazgrim##41636
turnin Clearing the Defiled##26071 |goto 42.7,37.8
step
talk Erunak Stonespeaker##41600
turnin Into the Totem##26072 |goto 42.7,37.9
step
talk Wavespeaker Tulra##41639
turnin Scalding Shrooms##26096 |goto 42.7,37.9
step
talk Erunak Stonespeaker##41600
accept ... It Will Come##26111 |goto 42.7,37.9
step
click Stonespeaker's Luring Totem##203456
kill Ick'thys the Unfathomable##41648
collect The Brain of the Unfathomable##56822 |q 26111/1 |goto 47.0,28.0
step
talk Wavespeaker Valoren##41640
turnin The Wavespeaker##26057 |goto 52.6,27.8
accept Free Wil'hai##26065 |goto 52.6,27.8
step
Use Valoren's Shrinkage Totem next to Tentacle Horrors |use Valoren's Shrinkage Totem##57409
kill Shrunken Tentacle Horror##41641+
Kill all the Tentacle Horrors attacking Wil'hai
Free Wil'hai |q 26065/1 |goto 54.8,28.2
step
talk Wavespeaker Valoren##41640
turnin Free Wil'hai##26065 |goto 52.6,27.8
step
talk Erunak Stonespeaker##41600
turnin ... It Will Come##26111 |goto 42.7,37.9
accept Unplug L'ghorek##26130 |goto 42.7,37.9
step
talk Legionnaire Nazgrim##41636
accept Fiends from the Netherworld##26133 |goto 42.7,37.8
stickystart "netherfiend"
step
Swim down into the cave
kill Ur'Goz##41654 |q 26130/1 |goto 36.3,47.0
step
kill Sku'Bu##41655 |q 26130/2 |goto 34.6,54.6
step
kill Neph'Lahim##41656 |q 26130/3 |goto 29.6,53.0
step
label "netherfiend"
kill 8 Nether Fiend##41650+ |q 26133/1 |goto 31.9,51.3
step
talk Legionnaire Nazgrim##41636
turnin Fiends from the Netherworld##26133 |goto 42.7,37.8
step
talk Erunak Stonespeaker##41600
turnin Unplug L'ghorek##26130 |goto 42.7,37.9
accept Communing with the Ancient##26140 |goto 42.7,37.9
step
Enter L'ghorek |goto 36.6,42.1 < 5 |q 26140 |walk
talk L'ghorek##42197
turnin Communing with the Ancient##26140 |goto 38.5,45.3
accept Runestones of Binding##26141 |goto 38.5,45.3
accept Ascend No More!##26142 |goto 38.5,45.3
step
kill Twilight Champion##41652+, Twilight Candidate##41657+
collect Twilight Cage Key##57118 |n
Click the Twilight Cage Key in your bags |use Twilight Cage Key##57118
accept Prisoners##26149 |goto 27.0,54.0
step
click Ancient Conduit##203699
Destroy 5 Ancient Conduits |q 26142/1 |goto 27.5,55.7
kill Twilight Candidate##41657+
collect 7 Runestone of Binding##57096 |q 26141/1 |goto 27.5,55.7
click Cage##238791
Rescue 5 Horde Prisoners |q 26149/1 |goto 27.5,55.7
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Prisoners##26149
step
talk L'ghorek##42197
turnin Runestones of Binding##26141 |goto 38.5,45.3
turnin Ascend No More!##26142 |goto 38.5,45.3
accept Twilight Extermination##26154 |goto 38.5,45.3
step
Use your Attuned Runestone of Binding on a Bound Torrent |use Attuned Runestone of Binding##57172
|tip You can run through the groups of mobs, they won't attack you, even though they are red.
Possess a Bound Torrent |q 26154/1 |goto 34.9,54.0
step
Use the abilities on your hotbar on Twilight Devotees and Faceless Overseers
kill 50 Twilight Devotee##42281+ |q 26154/2 |goto 36.3,52.8
kill 10 Faceless Overseer##42285+ |q 26154/3 |goto 36.3,52.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Twilight Extermination##26154
accept All that Rises##26143
step
Use the abilities on your hotbar on Hallazeal the Ascended
kill Hallazeal the Ascended##41659 |q 26143/1 |goto 33.1,55.8
step
talk L'ghorek##42197
turnin All that Rises##26143 |goto 38.5,45.3
accept Back to the Tenebrous Cavern##26182 |goto 38.5,45.3
step
talk Erunak Stonespeaker##41600
turnin Back to the Tenebrous Cavern##26182 |goto 51.6,60.9
accept Defending the Rift##26194 |goto 51.6,60.9
step
talk Erunak Stonespeaker##41600
Tell him you are prepared
Ride the boat until it stops
Fight in the Battle for Abyssal Breach |q 26194/1 |goto 51.6,60.9
step
talk Legionnaire Nazgrim##44540
turnin Defending the Rift##26194 |goto 69.8,34.4
step
click Warchief's Command Board##207325
accept Warchief's Command: Deepholm!##27722 |goto Orgrimmar,49.7,76.5
step
talk Farseer Krogar##45244
turnin The War Has Many Fronts##27442 |goto 50.5,38.4
|tip You will only be able to turn in this quest if you completed the Vashj'ir guide section.  It will be marked completed if you have already completed the similar Mount Hyjal breadcrumb quest.
turnin Warchief's Command: Deepholm!##27722 |goto 50.5,38.4
accept The Maelstrom##27203 |goto 50.5,38.4
step
click Portal to the Maelstrom##5231
Teleport to The Maelstrom |goto The Maelstrom |noway |c |q 27203 |goto 50.1,37.8
step
talk Thrall##45042
turnin The Maelstrom##27203 |goto The Maelstrom,33.4,50.2
accept Deepholm, Realm of Earth##27123 |goto The Maelstrom,33.4,50.2
step
clicknpc Wyvern##45005 |goto 32.5,52.0
You will fly into Deepholm |goto Deepholm,49.9,54.7 < 5 |q 27123
step
talk Maruut Stonebinder##43065
turnin Deepholm, Realm of Earth##27123 |goto Deepholm,49.6,53.0
accept Gunship Down##26245 |goto Deepholm,49.6,53.0
step
talk Seer Kormo##43397
accept Elemental Energy##27136 |goto 49.7,52.9
accept The Earth Claims All##26244 |goto 49.7,52.9
step
talk Earthcaller Yevaa##42573
accept Where's Goldmine?##26409 |goto 49.5,53.3
step
talk Caretaker Nuunwa##45300
home Temple of Earth |goto 49.2,51.9
step
talk Initiate Goldmine##42574
turnin Where's Goldmine?##26409 |goto 46.5,57.3
accept Explosive Bonding Compound##26410 |goto 46.5,57.3
accept Something that Burns##27135 |goto 46.5,57.3
step
kill Rockslice Flayer##42606+
collect 5 Quartzite Resin##58501 |q 26410/1 |goto 45.5,57.9
step
talk Initiate Goldmine##42574
turnin Explosive Bonding Compound##26410 |goto 46.5,57.3
step
Use your Depleted Totem |use Depleted Totem##60835
kill Lodestone Elemental##43258+, Energized Geode##43254+
|tip Kill them next to your Depleted Totems.
Energize the Totem 8 Times |q 27136/1 |goto 51.1,61.6
step
Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
kill Magmatooth##45099
collect The Burning Heart##60837 |q 27135/1 |goto 52.0,58.9
step
talk Seer Kormo##43397
turnin Elemental Energy##27136 |goto 49.7,52.9
step
talk Initiate Goldmine##42574
turnin Something that Burns##27135 |goto 46.5,57.3
accept Apply and Flash Dry##26411 |goto 46.5,57.3
step
Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502
|tip He's laying on the ground next to Initiate Goldmine.
Apply the Explosive Bonding Compound |q 26411/1 |goto 46.6,57.2
step
talk Initiate Goldmine##42574
turnin Apply and Flash Dry##26411 |goto 46.5,57.3
accept Take Him to the Earthcaller##26413 |goto 46.5,57.3
step
Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto 49.5,53.3
step
talk Earthcaller Yevaa##42573
turnin Take Him to the Earthcaller##26413 |goto 49.5,53.3
accept To Stonehearth's Aid##26484 |goto 49.5,53.3
step
clicknpc Slain Cannoneer##43032
Receive the Second Clue |q 26245/2 |goto 56.1,74.2
step
clicknpc Captain Skullshatter##43048
Receive the First Clue |q 26245/1 |goto 53.5,73.8
step
click Captain's Log##211413
accept Captain's Log##26246 |goto 53.6,73.8
stickystart "deepelem"
step
clicknpc Unexploded Artillery Shell##43044
|tip You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
Receive the Third Clue |q 26245/3 |goto 56.7,76.4
step
label "deepelem"
kill 5 Deepstone Elemental##43026+ |q 26244/1 |goto 55.9,74.9
step
talk Maruut Stonebinder##43065
turnin Gunship Down##26245 |goto 49.6,52.9
turnin Captain's Log##26246 |goto 49.6,52.9
step
talk Seer Kormo##43397
turnin The Earth Claims All##26244 |goto 49.7,52.9
step
talk Maruut Stonebinder##43065
accept Diplomacy First##26247 |goto 49.6,53.0
step
talk Stormcaller Mylra##42684
turnin Diplomacy First##26247 |goto 62.4,52.6
accept All Our Friends Are Dead##26248 |goto 62.4,52.6
accept The Admiral's Cabin##26249 |goto 62.4,52.6
step
All around on this air ship:
Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
|tip They look like dead Alliance soldiers all over this airship.
Receive 6 Slain Crew Member Information |q 26248/1
step
Enter the doorway on the main deck of the air ship:
talk First Mate Moody##43082
turnin The Admiral's Cabin##26249
accept Without a Captain or Crew##26427
step
Leave through the doorway and immediately turn right:
click Bottle of Whiskey##204280
|tip Located on the life boat.
collect Bottle of Whiskey##58798 |q 26427/1
step
All around on the deck of the air ship:
click Spool of Rope##204279
collect Spool of Rope##58806 |q 26427/2
step
Enter the doorway on the main deck of the air ship:
talk First Mate Moody##43082
turnin Without a Captain or Crew##26427
step
Go to the very top of the air ship:
talk Stormcaller Mylra##42684
turnin All Our Friends Are Dead##26248
accept Take No Prisoners##26251
accept On Second Thought, Take One Prisoner##26250
step
Go onto the main deck of the ship and go down the stairs to the deck below:
Fight Mor'norokk the Hateful until he surrenders
|tip He's downstairs in the airship, in the very back of the first level you come to.
talk Mor'norokk the Hateful##42801
Subdue Mor'norokk the Hateful |q 26250/1
step
All around on this lower deck of the air ship:
kill 6 Twilight Saboteur##42885+ |q 26251/1
step
Go to the very top of the air ship:
talk Stormcaller Mylra##42684
turnin Take No Prisoners##26251
turnin On Second Thought, Take One Prisoner##26250
accept Some Spraining to Do##26254
step
Next to Stormcaller Mylra:
clicknpc Stormbeak##42716
Interrogate Mok'norrok |q 26254/1
step
When you land on the air ship again:
talk Stormcaller Mylra##42684
turnin Some Spraining to Do##26254
accept Return to the Temple of Earth##26255
step
talk Maruut Stonebinder##43065
turnin Return to the Temple of Earth##26255 |goto 49.6,53.0
accept Deathwing's Fall##26258 |goto 49.6,53.0
step
talk Seer Kormo##43397
accept Blood of the Earthwarder##26259 |goto 49.7,52.9
step
Go to this spot
Reach Deathwing's Fall |q 26258/1 |goto 59.4,58.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Deathwing's Fall##26258
accept Bleed the Bloodshaper##26256
step
kill Twilight Bloodshaper##43218+
collect Twilight Orders##60264 |q 26256/1 |goto 61.5,60.6
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Bleed the Bloodshaper##26256
accept Question the Slaves##26261
step
click Slavemaster's Coffer##205097
collect Twilight Slaver's Key##60739 |q 26261 |goto 62.8,59.5
step
kill Living Blood##43123+
collect 5 Blood of Neltharion##133127 |q 26259/1 |goto 61.2,60.1
step
click Ball and Chains##207079
|tip They are attached to the feet of the Enslaved Miners around this area.
Free 6 Enslaved Miners |q 26261/1 |goto 64.5,65.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Question the Slaves##26261
accept The Forgemaster's Log##26260
step
click Forgemaster's Log##205134
turnin The Forgemaster's Log##26260 |goto 63.7,55.4
accept Silvermarsh Rendezvous##27007 |goto 63.7,55.4
step
Go to this spot
Reach Upper Silvermarsh |q 27007/1 |goto 70.6,61.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Silvermarsh Rendezvous##27007
accept Quicksilver Submersion##27010
step
click Trogg Crate##205197
collect Trogg Crate##60809 |q 27010 |goto 71.8,64.3
kill Murkstone Trogg##44936
collect Maziel's Research##60816 |n
Click Maziel's Research in your bags |use Maziel's Research##60816
accept Twilight Research##27100
step
Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
Watch the dialogue
Uncover the World Pillar Fragment Clue |q 27010/1 |goto 74.9,64.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Quicksilver Submersion##27010
accept The Twilight Overlook##27061
step
kill Mercurial Ooze##43158+
collect 4 Twilight Research Notes##60814 |q 27100/1 |goto 72.5,65.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Twilight Research##27100
accept Maziel's Revelation##27101
step
click Maziel's Journal##205207
turnin Maziel's Revelation##27101 |goto 67.2,70.2
accept Maziel's Ascendancy##27102 |goto 67.2,70.2
step
Enter the cave |goto 69.5,68.0 < 5 |q 27061 |walk
kill Maziel##44967 |q 27102/1 |goto 72.8,62.0
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Maziel's Ascendancy##27102
step
Leave the cave |goto 69.5,68.0 < 5 |q 27061 |walk
talk Stormcaller Mylra##44010
turnin The Twilight Overlook##27061 |goto 64.5,82.1
accept Big Game, Big Bait##26766 |goto 64.5,82.1
accept To Catch a Dragon##26768 |goto 64.5,82.1
step
kill Scalesworn Cultist##44221+
collect Twilight Snare##60383 |q 26768/1 |goto 68.2,77.9
step
talk Stormcaller Mylra##44010
turnin To Catch a Dragon##26768 |goto 64.5,82.1
step
kill Jadecrest Basilisk##43981+
Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
collect 5 Side of Basilisk Meat##60297 |q 26766/1 |goto 59.9,83.6
step
talk Stormcaller Mylra##44010
turnin Big Game, Big Bait##26766 |goto 64.5,82.1
accept Testing the Trap##26771 |goto 64.5,82.1
step
Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
kill Stonescale Matriarch##44148 |q 26771/1 |goto 50.9,85.3
step
talk Stormcaller Mylra##44010
turnin Testing the Trap##26771 |goto 64.5,82.1
accept Abyssion's Minions##26857 |goto 64.5,82.1
step
talk Seer Galekk##44222
accept Block the Gates##26861 |goto 64.6,82.2
stickystart "abysunder"
step
Use your Stormstone next to the swirling blue portal |use Stormstone##60501
Disrupt the Twilight Gate |q 26861/1 |goto 68.7,75.0
step
Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
Disrupt the Elemental Gate |q 26861/2 |goto 71.2,75.1
step
label "abysunder"
kill Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
Defeat 8 Abyssion's Underlings |q 26857/1 |goto 69.9,76.7
step
talk Seer Galekk##44222
turnin Block the Gates##26861 |goto 64.6,82.2
step
talk Stormcaller Mylra##44010
turnin Abyssion's Minions##26857 |goto 64.5,82.2
accept The World Pillar Fragment##26876 |goto 64.5,82.2
step
Use your Earthen Ring Banner |use Earthen Ring Banner##60810
kill Abyssion##44289
click The First Fragment of the World Pillar##204967
collect The Upper World Pillar Fragment##60574 |q 26876/1 |goto 69.9,76.9
step
talk Maruut Stonebinder##43065
turnin The World Pillar Fragment##26876 |goto 49.6,53.0
step
talk Seer Kormo##43397
turnin Blood of the Earthwarder##26259 |goto 49.7,52.9
step
talk Crag Rockcrusher##43071
turnin To Stonehearth's Aid##26484 |goto 27.9,68.7
accept The Quaking Fields##27931 |goto 27.9,68.7
step
talk Slate Quicksand##47195
turnin The Quaking Fields##27931 |goto 30.6,77.7
accept The Axe of Earthly Sundering##27932 |goto 30.6,77.7
accept Elemental Ore##27933 |goto 30.6,77.7
step
Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
|tip They look like glowing giants that walk around this area.
kill 5 Sundered Emerald Colossus##44229+ |q 27932/1 |goto 32.2,79.1
kill Jade Rager##44220+
collect 6 Elemental Ore##60487 |q 27933/1 |goto 32.2,79.1
step
talk Slate Quicksand##47195
turnin The Axe of Earthly Sundering##27932
turnin Elemental Ore##27933
accept One With the Ground##27934
step
talk Slate Quicksand##47195
Tell him you are ready for the ritual
Complete the One With the Ground Ritual |q 27934/1 |goto 30.6,77.7
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin One With the Ground##27934
accept Bring Down the Avalanche##27935
step
kill Avalanchion##44372 |q 27935/1 |goto 46.9,89.1
step
Leave the cave |goto 43.4,82.0 < 5 |q 27935 |walk
talk Crag Rockcrusher##43071
turnin Bring Down the Avalanche##27935 |goto 27.9,68.7
accept Stonefather's Boon##26499 |goto 27.9,68.7
step
talk Earthbreaker Dolomite##43160
accept We're Surrounded##26500 |goto 28.2,69.6
step
kill 12 Stone Trogg Ambusher |q 26500/1 |goto 29.7,68.8
Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884
|tip They look like dwarves.  Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
Grant the Stonefather's Boon 12 times |q 26499/1 |goto 29.7,68.8
step
talk Earthbreaker Dolomite##43160
turnin We're Surrounded##26500 |goto 28.2,69.6
accept Thunder Stones##26502 |goto 28.2,69.6
step
talk Crag Rockcrusher##43071
turnin Stonefather's Boon##26499 |goto 27.9,68.7
accept Sealing the Way##26501 |goto 27.9,68.7
stickystart "thunderstone"
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
Seal the Shrine |q 26501/4 |goto 27.3,67.8
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
Seal the Barracks |q 26501/3 |goto 26.0,68.8
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
Seal the Inn |q 26501/2 |goto 26.2,69.8
step
label "thunderstone"
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
|tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
Seal the Armory |q 26501/1 |goto 27.3,70.1
click Thunder Stone##204348
collect 12 Thunder Stone##58886 |q 26502/1 |goto 27.3,70.1
step
talk Gravel Longslab##43168
turnin Sealing the Way##26501
accept Shatter Them!##26537
step
talk Clay Mudaxle##43169
turnin Thunder Stones##26502 |goto 24.8,62.2
accept Fixer Upper##26564 |goto 24.8,62.2
step
talk Earthmender Deepvein##43319
accept Battlefront Triage##26591 |goto 24.6,62.2
step
Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965
|tip They look like dwarves laying on the ground around this area.
Patch up 10 Injured Earthen |q 26591/1 |goto 23.9,60.3
click Catapult Part##204378
collect 6 Catapult Part##58944 |q 26564/1 |goto 23.9,60.3
kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+ |q 26537/1 |goto 23.9,60.3
step
talk Gravel Longslab##43168
turnin Shatter Them!##26537 |goto 24.5,62.4
step
talk Earthmender Deepvein##43319
turnin Battlefront Triage##26591 |goto 24.6,62.2
step
talk Clay Mudaxle##43169
turnin Fixer Upper##26564 |goto 24.8,62.2
step
talk Gravel Longslab##43168
accept Troggzor the Earthinator##26625 |goto 24.5,62.4
step
kill Troggzor the Earthinator##43456
collect The Earthinator's Cudgel##59144 |q 26625/1 |goto 22.6,56.9
step
talk Gravel Longslab##43168
turnin Troggzor the Earthinator##26625 |goto 24.5,62.4
step
talk Clay Mudaxle##43169
accept Rush Delivery##27126 |goto 24.8,62.2
step
talk Peak Grindstone##45043
turnin Rush Delivery##27126 |goto 20.7,61.6
accept Close Escort##26632 |goto 20.7,61.6
step
talk Peak Grindstone##45043
Tell him you're ready to escort the catapult
Safely Escort the Earthen Catapult |q 26632/1 |goto 20.7,61.6
step
talk Pyrium Lodestone##43897
turnin Close Escort##26632 |goto 22.7,52.0
accept Keep Them off the Front##26755 |goto 22.7,52.0
step
clicknpc Earthen Catapult##43952
Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
Bombard 30 Reinforcements |q 26755/1 |goto 22.4,52.0
step
talk Pyrium Lodestone##43897
turnin Keep Them off the Front##26755 |goto 22.7,52.0
accept Reactivate the Constructs##26762 |goto 22.7,52.0
step
talk Flint Oremantle##43898
accept Mystic Masters##26770 |goto 22.8,52.1
step
clicknpc Deactivated War Construct##43984
Reactivate 5 Deactivated War Constructs |q 26762/1 |goto 22.6,47.6
kill 5 Needlerock Mystic##43995+ |q 26770/1 |goto 22.6,47.6
step
talk Flint Oremantle##43898
turnin Mystic Masters##26770 |goto 22.8,52.1
step
talk Pyrium Lodestone##43897
turnin Reactivate the Constructs##26762 |goto 22.7,52.0
accept Down Into the Chasm##26834 |goto 22.7,52.0
step
talk Slate Quicksand##44143
turnin Down Into the Chasm##26834 |goto 27.6,44.8
accept Sprout No More##26791 |goto 27.6,44.8
accept Fungal Monstrosities##26792 |goto 27.6,44.8
step
clicknpc War Guardian##44126
Obtain a War Guardian for the Sprout No More quest |q 26791/1 |goto 27.6,44.7
Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1 |goto 27.6,44.7
step
kill 5 Fungal Monstrosity##44035+ |q 26792/2 |goto 26.8,41.8
clicknpc Giant Mushroom##44049+
Destroy 5 Giant Mushrooms |q 26791/2 |goto 26.8,41.8
step
talk Slate Quicksand##44143
turnin Sprout No More##26791 |goto 27.6,44.8
turnin Fungal Monstrosities##26792 |goto 27.6,44.8
accept A Slight Problem##26835 |goto 27.6,44.8
step
talk Pyrium Lodestone##43897
turnin A Slight Problem##26835 |goto 22.7,52.0
accept Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
step
kill Bouldergut##44151
Rescue Stonefather Oremantle |q 26836/1 |goto 24.5,31.1
step
talk Pyrium Lodestone##43897
turnin Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
accept The Hero Returns##27937 |goto 22.7,52.0
step
talk Stonefather Oremantle##44204
turnin The Hero Returns##27937 |goto 28.0,68.6
accept The Middle Fragment##27938 |goto 28.0,68.6
step
click The Stonefather's Safe##206562
collect The Middle Fragment of the World Pillar##60575 |q 27938/1 |goto 28.0,68.7
step
talk Earthcaller Yevaa##42573
turnin The Middle Fragment##27938 |goto 49.5,53.3
step
talk Maruut Stonebinder##43065
accept The Very Earth Beneath Our Feet##26326 |goto 49.6,53.0
step
talk Earthcaller Torunscar##42730
turnin The Very Earth Beneath Our Feet##26326 |goto 46.1,45.6
accept Crumbling Defenses##26312 |goto 46.1,45.6
accept On Even Ground##26314 |goto 46.1,45.6
step
talk Earthmender Norsala##42731
accept Core of Our Troubles##26313 |goto 46.2,45.7
stickystart "irecore"
step
kill Irestone Rumbler##42780+
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Stormcaller Mylra |q 26312/2 |goto 44.3,43.7
step
kill Irestone Rumbler##42780+
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Tawn Winterbluff |q 26312/1 |goto 44.5,41.3
step
kill Irestone Rumbler##42780+
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Hargoth Dimblaze |q 26312/3 |goto 47.6,42.8
step
label "irecore"
kill Irestone Rumbler##42780+
collect 6 Irestone Core##58168 |q 26313/1 |goto 46.2,42.2
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Bring down 3 Servants of Therazane |q 26314/1 |goto 46.2,42.2
step
talk Earthmender Norsala##42731
turnin Core of Our Troubles##26313 |goto 46.2,45.7
step
talk Earthcaller Torunscar##42730
turnin Crumbling Defenses##26312 |goto 46.1,45.6
turnin On Even Ground##26314 |goto 46.1,45.6
step
talk Earthmender Norsala##42731
accept Imposing Confrontation##26315 |goto 46.2,45.7
step
Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177
|tip He's a huge rock giant that walks around this area.
Seek Peace with Boden the Imposing |q 26315/1 |goto 49.2,40.1
step
talk Earthmender Norsala##42731
turnin Imposing Confrontation##26315 |goto 46.2,45.7
accept Rocky Relations##26328 |goto 46.2,45.7
step
talk Diamant the Patient##42467
turnin Rocky Relations##26328 |goto 56.5,42.7
accept Hatred Runs Deep##26376 |goto 56.5,42.7
accept Unsolid Ground##26377 |goto 56.5,42.7
step
talk Quartz Stonetender##42899
accept Loose Stones##26375 |goto 56.5,41.0
stickystart "quart"
stickystart "lorgate"
step
kill Dragul Giantbutcher##42921 |q 26376/1 |goto 60.2,39.4
step
label "quart"
click Jade Crystal Cluster##204253
collect 6 Jade Crystal Cluster##58500 |q 26377 |goto 59.5,41.5
Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254
|tip They look like small rock giants around this area.
Release 6 Quartz Rocklings |q 26375/1 |goto 59.5,41.5
step
Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
collect Jade Crystal Composite##58783 |q 26377
step
Use your Jade Crystal Composite |use Jade Crystal Composite##58783
Lure an Agitated Tunneler |q 26377/1 |goto 59.6,41.4
step
label "lorgate"
kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+ |q 26376/2 |goto 59.3,40.6
step
talk Quartz Stonetender##42899
turnin Loose Stones##26375 |goto 56.5,41.0
step
talk Diamant the Patient##42467
turnin Hatred Runs Deep##26376 |goto 56.5,42.7
turnin Unsolid Ground##26377 |goto 56.5,42.7
accept Violent Gale##26426 |goto 56.5,42.7
step
Get next to Felsen the Enduring
|tip He's a big white rock giant.
Find Felsen the Enduring |q 26426/1 |goto 51.7,31.6
step
Fly to the mouth of this cave
Find the entrance to the Crumbling Depths |q 26426/2 |goto 58.4,25.7
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Violent Gale##26426
accept Depth of the Depths##26869
step
Enter the cave |goto 58.7,25.9 < 5 |q 26869 |walk
Follow the path |goto 64.5,21.7 < 5 |q 26869 |walk
Follow the path |goto 65.3,18.4 < 5 |q 26869 |walk
click Gigantic Painite Cluster##204959
turnin Depth of the Depths##26869 |goto 66.4,20.6
accept A Rock Amongst Many##26871 |goto 66.4,20.6
step
Follow the path to this spot, then jump down |goto 64.3,23.5 < 5 |q 26871 |walk
Leave the cave |goto 58.3,25.5 < 5 |q 26871 |walk
talk Diamant the Patient##42467
turnin A Rock Amongst Many##26871 |goto 56.5,42.7
accept Entrenched##26436 |goto 56.5,42.7
step
talk Kor the Immovable##42469
turnin Entrenched##26436 |goto 34.3,34.3
accept Intervention##26438 |goto 34.3,34.3
accept Making Things Crystal Clear##26437 |goto 34.3,34.3
step
talk Berracite##43344
accept Putting the Pieces Together##26439 |goto 34.6,34.2
step
kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+, Jaspertip Crystal-gorger##43171+ |q 26438/1 |goto 30.5,46.8
click Chalky Crystal Formation##204297
collect 8 Chalky Crystal Formation##58845 |q 26437/1 |goto 30.5,46.8
clicknpc Dormant Stonebound Elemental##43115+
Reform 6 Stonebound Elementals |q 26439/1 |goto 30.5,46.8
step
talk Kor the Immovable##42469
turnin Intervention##26438 |goto 34.3,34.3
turnin Making Things Crystal Clear##26437 |goto 34.3,34.3
step
talk Berracite##43344
turnin Putting the Pieces Together##26439 |goto 34.5,34.4
step
talk Kor the Immovable##42469
accept Pebble##28869 |goto 34.3,34.3
step
Next to you:
talk Pebble##43116
turnin Pebble##28869
accept Clingy##26440
step
Get next to the huge green crystals
Bring Pebble to the crystal formation |q 26440/1 |goto 30.1,47.7
step
Next to you:
talk Pebble##43116
turnin Clingy##26440
accept So Big, So Round...##26441
step
talk Kor the Immovable##42469
turnin So Big, So Round...##26441 |goto 34.3,34.3
accept Petrified Delicacies##26507 |goto 34.3,34.3
accept Rock Bottom##26575 |goto 34.3,34.3
stickystart "petbat"
step
kill Gorgonite##43339 |q 26575/1 |goto 47.6,26.8
step
label "petbat"
clicknpc Petrified Stone Bat##43182+
collect 12 Petrified Stone Bat##58959 |q 26507/1 |goto 47.5,26.8
step
Next to you:
talk Pebble##43116
turnin Petrified Delicacies##26507
step
talk Kor the Immovable##42469
turnin Rock Bottom##26575 |goto 34.3,34.3
accept Steady Hand##26576 |goto 34.3,34.3
accept Rocky Upheaval##26577 |goto 34.3,34.3
step
talk Terrath the Steady##42466
turnin Steady Hand##26576 |goto 39.9,19.4
accept Don't. Stop. Moving.##26656 |goto 39.9,19.4
step
talk Terrath the Steady##42466
Tell him you are ready to escort a group of elementals across the open.
Speak to Terrath the Steady |q 26656/1 |goto 39.9,19.4
step
Go to this spot
Escort 5 Opalescent Guardians to safety |q 26656/2 |goto 51.1,14.7
|tip Be careful not to fly to quickly or you the rock elementals will disappear when you get too far away from them.
step
talk Terrath the Steady##42466
turnin Don't. Stop. Moving.##26656 |goto 39.9,19.4
accept Hard Falls##26657 |goto 39.9,19.4
accept Fragile Values##26658 |goto 39.9,19.4
step
kill Stone Trogg Beast Tamer##43598
|tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
collect Stonework Mallet##59323 |q 26658/1 |goto 35.4,22.5
step
talk Terrath the Steady##42466
turnin Fragile Values##26658 |goto 39.9,19.4
step
kill 6 Stone Drake##42522+ |q 26657/1 |goto 36.5,18.8
|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
talk Terrath the Steady##42466
turnin Hard Falls##26657 |goto 40.0,19.4
accept Resonating Blow##26659 |goto 40.0,19.4
step
Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
|tip It's a huge green crystal sitting on the ground.
Strike the Pale Resonating Crystal |q 26659/1 |goto 32.7,24.3
kill Aeosera##43641
|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
Defeat Aeosera |q 26659/2 |goto 32.7,24.3
step
talk Terrath the Steady##42466
turnin Resonating Blow##26659 |goto 33.1,24.1
step
talk Gorsik the Tumultuous##42472
turnin Rocky Upheaval##26577 |goto 72.2,54.0
accept Doomshrooms##26578 |goto 72.2,54.0
accept Gone Soft##26579 |goto 72.2,54.0
accept Familiar Intruders##26580 |goto 72.2,54.0
step
talk Windspeaker Lorvarius##43395
turnin Familiar Intruders##26580 |goto 71.8,47.6
accept A Head Full of Wind##26581 |goto 71.8,47.6
step
kill 8 Fungal Behemoth##42475+ |q 26579/1 |goto 73.6,40.8
kill Doomshroom##43388+
|tip They look like orange mushrooms around this area.
Destroy 10 Doomshrooms |q 26578/1 |goto 73.6,40.8
Gather a sample of the red mist |q 26581/1 |goto 73.6,40.8
|tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
step
talk Windspeaker Lorvarius##43395
turnin A Head Full of Wind##26581 |goto 71.8,47.6
accept Unnatural Causes##26582 |goto 71.8,47.6
step
talk Gorsik the Tumultuous##42472
turnin Doomshrooms##26578 |goto 72.2,54.0
turnin Gone Soft##26579 |goto 72.2,54.0
turnin Unnatural Causes##26582 |goto 72.2,54.0
accept Shaken and Stirred##26584 |goto 72.2,54.0
accept Corruption Destruction##26585 |goto 72.2,54.0
step
talk Ruberick##43442
accept Wrath of the Fungalmancer##26583 |goto 68.5,26.4
step
Enter the cave |goto 68.6,29.1 < 5 |q 26583 |walk
talk Earthmender Norsala##43503
Tell her you're ready when she is
kill Fungalmancer Glop##43372 |q 26583/2 |goto 69.8,31.9
|tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
step
Follow the path up |goto 70.2,33.8 < 5 |q 26583 |walk
Leave the cave |goto 68.6,29.1 < 5 |q 26583 |walk
talk Ruberick##43442
turnin Wrath of the Fungalmancer##26583 |goto 68.5,26.3
step
kill 8 Verlok Pillartumbler##43513+ |q 26584/1 |goto 69.4,24.8
click Verlok Miracle-Grow##204410
collect 8 Verlok Miracle-Grow##59123 |q 26585/1 |goto 69.4,24.8
step
talk Gorsik the Tumultuous##42472
turnin Shaken and Stirred##26584 |goto 72.2,54.0
turnin Corruption Destruction##26585 |goto 72.2,54.0
accept At the Stonemother's Call##26750 |goto 72.2,54.0
step
talk Therazane##42465
turnin At the Stonemother's Call##26750 |goto 56.3,12.2
accept Audience with the Stonemother##26752 |goto 56.3,12.2
step
Watch the dialogue
Attend the Stonemother's Audience |q 26752/1
step
talk Earthcaller Torunscar##43809
turnin Audience with the Stonemother##26752 |goto 56.1,13.5
accept Rallying the Earthen Ring##26827 |goto 56.1,13.5
stickystart "earthring"
step
talk Hargoth Dimblaze##44644 |goto 49.9,50.1
Tell him you are joining an assault on Lorthuna's Gate and he is needed.
|confirm |q 26827
step
talk Stormcaller Jalara##44633
Tell her you are joining an assault on Lorthuna's Gate and she is needed.
|confirm |q 26827 |goto 51.5,51.8
step
label "earthring"
talk Hargoth Dimblaze##44644
Tell him you are joining an assault on Lorthuna's Gate and he is needed.
|tip You will probably need to wait for him to respawn.
Rally 5 Earthen Ring |q 26827/1 |goto 49.9,50.1
step
talk Examiner Rowe##44823
accept The Twilight Plot##27005 |goto 51.3,50.1
step
talk Reliquary Jes'ca Darksun##44818
accept Fly Over##27008 |goto 51.3,50.0
step
talk Maruut Stonebinder##43065
turnin Rallying the Earthen Ring##26827 |goto 49.6,53.0
accept Our Part of the Bargain##26828 |goto 49.6,53.0
step
Go to this spot next to the big white portal
Investigate the Master's Gate |q 27008/1 |goto 39.0,74.2
step
kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
collect Masters' Gate Plans##60745 |q 27005/1 |goto 40.1,72.2
step
talk Examiner Rowe##44823
turnin The Twilight Plot##27005 |goto 51.3,50.1
step
talk Reliquary Jes'ca Darksun##44818
turnin Fly Over##27008 |goto 51.3,50.0
accept Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
step
talk Examiner Rowe##44823
accept Decryption Made Easy##27041 |goto 51.3,50.1
step
kill Bound Water Elemental##44886
Acquire the Water Ward |q 27043/2 |goto 40.8,66.3
step
kill Bound Fire Elemental##44887
Acquire the Fire Ward |q 27043/1 |goto 36.0,67.4
step
kill Bound Air Elemental##44885
Acquire the Air Ward |q 27043/3 |goto 40.5,72.4
step
click One-Time Decryption Engine##205145
Decrypt 6 Plans |q 27041/1 |goto 40.2,67.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Decryption Made Easy##27041
accept The Wrong Sequence##27059
step
click Waygate Controller##205161
Destroy the Waygate |q 27059/1 |goto 39.1,73.9
step
kill Haethen Kaul##44835 |q 27043/4 |goto 39.9,62.2
|tip He's up on a huge floating rock.
step
talk Examiner Rowe##44823
turnin The Wrong Sequence##27059 |goto 51.3,50.0
accept That's No Pyramid!##28293 |goto 51.3,50.0
step
talk Reliquary Jes'ca Darksun##44818
turnin Fight Fire and Water and Air with...##27043 |goto 51.3,50.0
step
talk Therazane##44025
turnin Our Part of the Bargain##26828 |goto 63.3,25.0
accept The Stone March##26829 |goto 63.3,25.0
accept Therazane's Mercy##26832 |goto 63.3,25.0
step
talk Boden the Imposing##44080
accept The Twilight Flight##26831 |goto 62.6,26.9
step
kill High Priestess Lorthuna##42914
|tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
Defeat High Priestess Lorthuna |q 26832/2 |goto 62.4,31.8
step
kill Boldrich Stonerender##42923
Defeat Boldrich Stonerender |q 26832/1 |goto 58.9,32.9
step
kill Zoltrik Drakebane##42918
|tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
Defeat Zoltrik Drakebane |q 26831/1
step
talk Terrath the Steady##42614
turnin The Twilight Flight##26831 |goto 64.1,36.9
step
kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+ |q 26829/1 |goto 60.3,33.2
step
talk Therazane##44025
turnin The Stone March##26829 |goto 63.3,25.0
turnin Therazane's Mercy##26832 |goto 63.3,25.0
accept Word In Stone##26833 |goto 63.3,25.0
step
talk Maruut Stonebinder##43818
turnin Word In Stone##26833 |goto 49.6,53.0
accept Undying Twilight##26875 |goto 49.6,53.0
step
kill Twilight Heretic##44681+ |q 26875/1 |goto 50.7,49.6
kill Desecrated Earthrager##44683+ |q 26875/2 |goto 50.7,49.6
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Undying Twilight##26875
accept The Binding##26971
step
kill High Priestess Lorthuna##43837 |q 26971/1 |goto 49.6,52.9
step
talk Earthcaller Torunscar##43835
turnin The Binding##26971 |goto 49.6,52.9
step
label "dungeon"
talk Provisioner Arok##50324
buy Tabard of the Earthen Ring##65905 |complete itemcount(65905) >= 1 |goto Shimmering Expanse 49.1,42.2
step
Equip The Earthen Ring tabard and run Cataclysm dungeons with it. |equipped Tabard of the Earthen Ring##65905 |use Tabard of the Earthen Ring##65905
Earn Exalted reputation with The Earthen Ring|complete rep('The Earthen Ring')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with The Earthen Ring!
]])
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
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Hellscream's Reach",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Hellscream's Reach faction.",
achieveid={5376},
patch='40003',
},[[
step
label "daily_reset"
You will have to do these dailies in order to gain reputation with Hellscream's Reach
You can also do the World PVP Event in Tol Barad to gain reputation
When you're ready, click here. |confirm
step
You will only be able to accept a total of 6 quests in the following guide steps
|confirm
step
talk 3rd Officer Kronkar##48360
accept A Sticky Task##28684 |goto Tol Barad Peninsula,55.2,81.3
accept Boosting Morale##28680 |goto Tol Barad Peninsula,55.2,81.3
accept Captain P. Harris##28678 |goto Tol Barad Peninsula,55.2,81.3
accept Rattling Their Cages##28679 |goto Tol Barad Peninsula,55.2,81.3
accept Shark Tank##28681 |goto Tol Barad Peninsula,55.2,81.3
accept Thinning the Brood##28683 |goto Tol Barad Peninsula,55.2,81.3
step
talk Commander Larmash##48358
accept Claiming The Keep##28682 |goto 53.5,80.6
accept Leave No Weapon Behind##28685 |goto 53.5,80.6
accept Not The Friendliest Town##28686 |goto 53.5,80.6
accept Teach A Man To Fish.... Or Steal##28687 |goto 53.5,80.6
accept Walk A Mile In Their Shoes##28721 |goto 53.5,80.6
step
talk Captain Prug##48363
accept Finish The Job##28693 |goto 54.9,79.3
accept First Lieutenant Connor##28691 |goto 54.9,79.3
accept Magnets, How Do They Work?##28692 |goto 54.9,79.3
accept Salvaging the Remains##28690 |goto 54.9,79.3
accept The Forgotten##28689 |goto 54.9,79.3
step
talk Private Sarlosk##48361
accept Bomb's Away!##28696 |goto 55.8,78.5
accept Cannonball!##28698 |goto 55.8,78.5
accept Ghostbuster##28697 |goto 55.8,78.5
accept Taking the Overlook Back##28700 |goto 55.8,78.5
accept WANTED: Foreman Wellson##28695 |goto 55.8,78.5
accept Watch Out For Splinters!##28694 |goto 55.8,78.5
stickystart "cannonstack"
step
Follow the path up |goto 74.3,42.8 < 5 |only if walking
kill Commander Largo##47304 |q 28700/1 |goto 78.6,42.0
|tip He's at the top of the tower.
step
label "cannonstack"
kill Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
Slay 14 Largo's Overlook Ghosts |q 28697/1 |goto 78.2,49.0
click Cannonball Stack##176215
collect 4 Stack of Cannonballs##62818 |q 28698/1 |goto 78.2,49.0
step
click String of Fish##206754
collect 22 Rustberg Seabass##63047 |q 28687/1 |goto 69.3,23.1
step
kill Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
kill 14 Rustberg Village Residents |q 28686/1 |goto 67.6,37.1
step
kill 12 Darkwood Lurker##46508+  |q 28683/1 |goto 54.2,47.0
kill Darkwood Broodmother##46507+
collect 4 Sticky Silk Gland##62803 |q 28684/1 |goto 54.2,47.0
step
kill Captain P. Harris##47287 |q 28678/1 |goto 47.9,8.1
|tip He's walking around on this broken boat.
step
kill Tank##46608 |q 28681/1 |goto 49.4,19.8
|tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
click Barrel of Southsea Rum##206580
collect 6 Barrel of Southsea Rum##62810 |q 28680/1 |goto 49.4,19.8
step
kill 8 Shipwrecked Sailor##46605+  |q 28679/1 |goto 49.0,29.4
step
kill Keep Lord Farson##47447 |q 28682/1 |goto 36.1,27.3
|tip He's upstairs in the fort.
step
talk Farson Hold Prisoner##48308
Tell him you're here to help him escape
Escort the Farson Prisoner |q 28721/1 |goto 37.8,29.1
|tip Follow the Farson Hold Prisoner and protect him.
step
click Rack of Rifles##206664
collect 12 Rusty Rifle##62921 |q 28685/1 |goto 41.2,35.8
step
kill Foreman Wellson##46648 |q 28695/1 |goto 27.2,47.7
step
clicknpc Wellson Cannon##48283
Shoot the boats
Destroy 10 Wellson Supply Boats |q 28696/1 |goto 22.2,36.3
step
kill Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
collect 15 Shipyard Lumber##62811 |q 28694/1 |goto 30.1,43.9
step
kill 5 Restless Soldier##46825 |q 28693/1 |goto 40.2,57.9
Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
click Siege Scrap##206652
collect 7 Siege Engine Scrap##52285 |q 28692/1 |goto 40.2,57.9
stickystart "wanderingsoul"
step
kill First Lieutenant Connor##46571 |q 28691/1 |goto 38.4,77.6
|tip He's a big skeleton that walks around this area, so you may need to search for him.
step
label "wanderingsoul"
kill Wandering Soul##46586+, Forgotten Ghoul##46569+
collect 9 Cursed Femur##62808 |q 28690/1 |goto 38.1,71.5
click Forgotten Soldier's Tombstone##206570
Release 6 Tortured Souls |q 28689/1 |goto 38.1,71.5
step
talk 3rd Officer Kronkar##48360
turnin A Sticky Task##28684 |goto 55.2,81.3
turnin Boosting Morale##28680 |goto 55.2,81.3
turnin Captain P. Harris##28678 |goto 55.2,81.3
turnin Rattling Their Cages##28679 |goto 55.2,81.3
turnin Shark Tank##28681 |goto 55.2,81.3
turnin Thinning the Brood##28683 |goto 55.2,81.3
step
talk Commander Larmash##48358
turnin Claiming The Keep##28682 |goto 53.5,80.6
turnin Leave No Weapon Behind##28685 |goto 53.5,80.6
turnin Not The Friendliest Town##28686 |goto 53.5,80.6
turnin Teach A Man To Fish.... Or Steal##28687 |goto 53.5,80.6
turnin Walk A Mile In Their Shoes##28721 |goto 53.5,80.6
step
talk Captain Prug##48363
turnin Finish The Job##28693 |goto 54.9,79.3
turnin First Lieutenant Connor##28691 |goto 54.9,79.3
turnin Magnets, How Do They Work?##28692 |goto 54.9,79.3
turnin Salvaging the Remains##28690 |goto 54.9,79.3
turnin The Forgotten##28689 |goto 54.9,79.3
step
talk Private Sarlosk##48361
turnin Bomb's Away!##28696 |goto 55.8,78.5
turnin Cannonball!##28698 |goto 55.8,78.5
turnin Ghostbuster##28697 |goto 55.8,78.5
turnin Taking the Overlook Back##28700 |goto 55.8,78.5
turnin WANTED: Foreman Wellson##28695 |goto 55.8,78.5
turnin Watch Out For Splinters!##28694 |goto 55.8,78.5
step
goto Tol Barad Peninsula,66.9,79.8 |n
Cross the bridge to Tol Barad. |goto Tol Barad |noway|c
step
These daily quests will only be available if the Horde faction currently controls Tol Barad
You will only be able to accept a total of 6 quests in the following guide steps
|confirm
step
talk Commander Zanoth##48069
accept A Huge Problem##28657 |goto Tol Barad,50.9,49.7
accept Swamp Bait##28658 |goto Tol Barad,50.9,49.7
accept The Leftovers##28659 |goto Tol Barad,50.9,49.7
step
Click here if Drillmaster Razgoth is present. |confirm |next razgoth_is_here |goto 51.4,49.6
Click here if Private Garnoth is present. |confirm |next garnoth_is_here |goto 51.4,49.6
Click here if Staff Sergeant Lazgar is present. |confirm |next lazgar_is_here |goto 51.4,49.6
Only one of these NPCs will be available.
step
label "razgoth_is_here"
talk Drillmaster Razgoth##48070
accept D-Block##28663 |goto 51.5,49.7
accept Svarnos##28664 |goto 51.5,49.7
accept Cursed Shackles##28665 |goto 51.5,49.7
|next exit
step
label "garnoth_is_here"
talk Private Garnoth##48071
accept Clearing the Depths##28660 |goto 51.5,49.7
accept Learning From The Past##28662 |goto 51.5,49.7
accept The Imprisoned Archmage##28661 |goto 51.5,49.7
|next exit
step
label "lazgar_is_here"
talk Staff Sergeant Lazgar##48062
accept Food From Below##28670 |goto 51.5,49.7
accept Prison Revolt##28668 |goto 51.5,49.7
accept The Warden##28669 |goto 51.5,49.7
|next exit
step
label "exit"
Enter the underground jail |goto 42.7,39.1 < 5 |noway |c
stickystart "cursedshack"
step
kill Svarnos##47544+
collect Svarnos' Cursed Collar##63143 |q 28664/1 |goto 48.3,30.7
step
label "cursedshack"
kill Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
Slay 10 Demons |q 28663/1 |goto 44.4,30.5
click Cursed Shackle##181
collect 8 Cursed Shackles##63149 |q 28665/1 |goto 44.4,30.5
step
kill Baradin Crocolisk##47591+
collect 8 Crocolisk Hide##63103 |q 28658/1 |goto 42.1,41.8
step
Enter the underground jail |goto 44.0,69.2 < 5 |walk
kill Warden Silva##48036
collect Warden's Keys##63309 |q 28669/1 |goto 37.5,71.7
step
kill Imprisoned Worker##47550+, Exiled Mage##47552+
Slay 10 Prisoners |q 28668/1 |goto 40.9,78.2
click Crate of Cellblock Rations##206996
collect 12 Cellblock Ration##63315 |q 28670/1 |goto 40.9,78.2
step
Enter the underground jail |goto 60.8,50.1 < 5 |noway |c
stickystart "dustyprison"
step
kill Archmage Galus##47537
collect Archmage Galus' Staff##63033 |q 28661/1 |goto 56.8,54.8
step
label "dustyprison"
kill Captive Spirit##47531+, Ghastly Convict##47590+
Slay 9 Ghosts |q 28660/1 |goto 51.4,49.5
click Dusty Prison Journal##206890
collect 4 Dusty Prison Journal##63034 |q 28662/1 |goto 51.4,49.5
step
Kill 12 Alliance Infantry |q 28659/1 |goto 35.8,67.8
step
kill Problim##47593 |q 28657/1 |goto 52.8,36.7
|tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
talk Commander Zanoth##48069
turnin A Huge Problem##28657 |goto 50.9,49.7
turnin Swamp Bait##28658 |goto 50.9,49.7
turnin The Leftovers##28659 |goto 50.9,49.7
step
talk Drillmaster Razgoth##48070
turnin D-Block##28663 |goto 51.5,49.7
turnin Svarnos##28664 |goto 51.5,49.7
turnin Cursed Shackles##28665 |goto 51.5,49.7
step
talk Private Garnoth##48071
turnin Clearing the Depths##28660 |goto 51.5,49.7
turnin Learning From The Past##28662 |goto 51.5,49.7
turnin The Imprisoned Archmage##28661 |goto 51.5,49.7
step
talk Staff Sergeant Lazgar##48062
turnin Food From Below##28670 |goto 51.5,49.7
turnin Prison Revolt##28668 |goto 51.5,49.7
turnin The Warden##28669 |goto 51.5,49.7
step
Click here to reset your dailies.  Keep in mind if you've done them and they haven't reset yet, you won't be able to do them a second time. |next "daily_reset" |confirm
Earn Exalted reputation with Hellscream's Reach. |next "exalted" |complete rep("Hellscream's Reach")==Exalted
step
label "exalted"
Congratulations, you are now Exalted with Hellscream's Reach!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Ramkahen",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Ramkahen faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Ramkahen') < Exalted end,
achieveid={4884},
patch='40003',
},[[
step
click Warchief's Command Board##207325
accept Warchief's Command: Uldum!##28557 |goto Orgrimmar,49.6,76.5
step
talk Belloc Brightblade##47571
turnin That's No Pyramid!##28293 |goto 49.1,70.5
|only if haveq(28293)
step
talk Adarrah##44833
turnin Warchief's Command: Uldum!##28557 |goto Tanaris,30.5,65.5
accept Easy Money##27003 |goto Tanaris,30.5,65.5
step
clicknpc Lady Humps##46517
Watch the cutscene
Escort the Caravan |q 27003/1 |goto 30.5,65.7
step
talk Adarrah##46873
turnin Easy Money##27003 |goto Uldum,59.7,71.8
step
talk Prince Nadun##46872
accept Traitors!##27922 |goto 59.6,72.0
step
click Neferset Frond##206579
Watch the cutscene
Uncover the Neferset Secret |q 27922/1 |goto 61.7,71.1
step
talk Prince Nadun##46872
turnin Traitors!##27922 |goto 59.6,72.0
accept Smoke in Their Eyes##27923 |goto 59.6,72.0
accept Kavem the Callous##28105 |goto 59.6,72.0
step
talk Budd##46875
accept Budd's Plan##27924 |goto 59.7,72.0
stickystart "neferden"
step
kill Kavem the Callous##47567
collect Neferset Key##62817 |q 28105/1 |goto 60.0,74.0
step
label "neferden"
kill Neferset Denizen##48267+, Neferset Sentinel##47306+
click Neferset Armor##206591
collect 6 Neferset Armor##62821 |q 27924/1 |goto 60.8,73.9
Use your Brazier Torch next to Bales of Hay |use Brazier Torch##63027
|tip They look like bundles of yellow straw sitting on the ground around this area.
Burn 5 Bales of Hay |q 27923/1 |goto 60.8,73.9
step
talk Budd##46875
turnin Budd's Plan##27924 |goto 59.7,72.0
step
talk Prince Nadun##46872
turnin Smoke in Their Eyes##27923 |goto 59.6,72.0
turnin Kavem the Callous##28105 |goto 59.6,72.0
accept Escape From the Lost City##28112 |goto 59.6,72.0
step
talk King Phaoris##47684
turnin Escape From the Lost City##28112 |goto 54.9,32.7
accept Impending Retribution##28134 |goto 54.9,32.7
step
talk Kazemde##48886
home Ramkahen |goto 54.7,32.9
step
talk Sun Priest Asaris##47715
Tell him you might be able to help
Speak with Sun Priest Asaris |q 28134/2 |goto 53.0,27.7
step
talk Sun Priest Asaris##47715
accept Relics of the Sun King##28141 |goto 53.0,27.7
accept Venomblood Antidote##28145 |goto 53.0,27.7
step
kill Wastewander Outrider##45905+
collect 4 Relic of the Sun King##63081 |q 28141/1 |goto 46.3,21.0
kill Venomblood Scorpid##45859+
Use your Antidote Vial on Venomblood Scorpid corpses |use Antidote Vial##63086
Drain 8 Venomblood Scorpids |q 28145/1 |goto 46.3,21.0
You can find more Venomblood Scorpid and Wastewander Outriders around [49.9,24.0]
step
talk Sun Priest Asaris##47715
turnin Relics of the Sun King##28141 |goto 53.0,27.7
turnin Venomblood Antidote##28145 |goto 53.0,27.7
accept The Bandit Warlord##28502 |goto 53.0,27.7
step
kill Warlord Ihsenn##47755 |q 28502/1 |goto 45.7,16.2
step
talk Sun Priest Asaris##47715
turnin The Bandit Warlord##28502 |goto 53.0,27.7
step
talk Asaq##47930
Tell him the king wishes to be informed about recent Neferset activity
Speak with Asaq |q 28134/3 |goto 49.7,39.2
step
talk Mack##47318
accept Take it to 'Em!##27993 |goto 49.7,39.1
step
talk Nomarch Teneth##46603
Tell him King Phaoris sent you to ask him about Neferset activity
Speak with Nomarch Teneth |q 28134/1 |goto 60.3,38.3
step
talk Nomarch Teneth##46603
accept Thieving Little Pluckers##28250 |goto 60.3,38.3
step
Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351
|tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
kill Pygmy Scout##48041+, Pygmy Oaf##48040+, Pygmy Thief##48043+
Smash 30 Thieving Pluckers |q 28250/1 |goto 59.1,38.4
step
talk Nomarch Teneth##46603
turnin Thieving Little Pluckers##28250 |goto 60.3,38.3
step
Go to this spot
Investigate Khartut's Tomb |q 27993/1 |goto 64.4,22.3
step
talk Harrison Jones##44860
turnin Take it to 'Em!##27993 |goto 64.4,22.3
accept Exploding Through##27141 |goto 64.4,22.3
step
click Powder Keg##245346
Watch the cutscene
Assist Harrison at Khartut's Tomb |q 27141/1 |goto 64.3,22.2
step
talk Harrison Jones##45180
turnin Exploding Through##27141 |goto 64.6,28.6
step
talk Sand Pygmy Corpse##45186
accept Field Work##27179 |goto 64.6,28.7
step
click the Elaborate Disc##205266
accept A Strange Disc##27176 |goto 64.8,29.6
step
kill Mangy Hyena##45202
You will accept a quest
accept Do the World a Favor##27187 |goto 66.1,29.0
step
kill Skarf##45204
kill Sultan Oogah##45205
collect Sultan's Staff##60865 |q 27176 |goto 68.2,31.5
step
Use your Elaborate Disc |use Elaborate Disc##60859
collect Shaft of the Stars##60868 |q 27176/1
step
kill Sand Pygmy##45190+
click Ornate Tablet Fragment##205251
collect 10 Ornate Tablet Fragment##60860 |q 27179/1 |goto 66.1,29.0
kill Mangy Hyena##45202+
Eradicate 12 Mangy Hyenas |q 27187/1 |goto 66.1,29.0
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Do the World a Favor##27187
step
talk Harrison Jones##45180
turnin Field Work##27179 |goto 64.6,28.6
turnin A Strange Disc##27176 |goto 64.6,28.6
accept On to Something##27196 |goto 64.6,28.6
step
talk Harrison Jones##45180
Tell him you're ready!
Follow Harrison Jones
|tip When he jumps down, use your flying mount to go down into the Chamber of Stars.
Accompany Harrison Jones to the Chamber of the Stars |q 27196/1 |goto 64.6,28.6
step
talk Harrison Jones##45296
turnin On to Something##27196 |goto 64.5,28.0
accept The Thrill of Discovery##27511 |goto 64.5,28.0
step
Go to this spot
Examine the Northern Hieroglyphs |q 27511/2 |goto 65.7,25.8
step
Go to this spot
Examine the Ancient Mechanism |q 27511/1 |goto 64.4,29.9
step
talk Schnottz Scout##45874
accept Lessons From the Past##27541 |goto 63.4,32.5
step
talk Schnottz Scout##45874
Take the scout's spectacles.
collect Broken Spectacles##61929 |q 27541/1 |goto 63.4,32.5
step
Go to this spot
Examine the Southern Hieroglyphs |q 27511/3 |goto 63.4,33.9
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin The Thrill of Discovery##27511
step
talk Harrison Jones##45296
turnin Lessons From the Past##27541 |goto 64.5,28.0
accept By the Light of the Stars##27549 |goto 64.5,28.0
accept Be Prepared##28602 |goto 64.5,28.0
step
click Suspended Starlight##205582
collect 7 Suspended Starlight##61376 |q 27549/1 |goto 63.3,28.0
Walk near the skeletons laying on the ground around this area
kill Tormented Tomb-Robber##45765+
collect 6 Piece of Rope##61322 |q 28602/1 |goto 63.3,28.0
step
talk Harrison Jones##45296
turnin By the Light of the Stars##27549 |goto 64.5,28.0
step
talk Harrison Jones##45296
turnin Be Prepared##28602 |goto 64.5,28.0
accept Tipping the Balance##27431 |goto 64.5,28.0
step
talk Harrison Jones##45296
Ask him what you can do to help
Watch the cutscene
Stay Out of Harrison's Way |q 27431/1 |goto 64.5,28.0
step
talk Harrison Jones##45296
turnin Tipping the Balance##27431 |goto 64.5,28.0
accept After the Fall##27624 |goto 64.5,28.0
step
click Watcher Head##205889
collect Orb of the Morning Star##61044 |q 27624/1 |goto 64.0,26.4
step
click Watcher Head##205889
collect Orb of the Evening Star##61975 |q 27624/2 |goto 66.8,28.1
step
click Watcher Head##205889
collect Orb of the Shooting Star##61977 |q 27624/4 |goto 65.3,32.6
step
click Watcher Head##205889
collect Orb of the North Star##61976 |q 27624/3 |goto 62.5,32.0
step
talk Harrison Jones##45296
turnin After the Fall##27624 |goto 64.5,28.0
accept Do the Honors##27669 |goto 64.5,28.0
step
Use your Orbs of the Stars |use Orbs of the Stars##62054
Watch the cutscene
Reactivate the Obelisk of the Stars |q 27669/1 |goto 64.5,28.7
step
talk Harrison Jones##48034
turnin Do the Honors##27669 |goto 63.9,33.9
step
talk King Phaoris##47684
turnin Impending Retribution##28134 |goto 54.9,32.7
accept Al'Akir's Vengeance##28135 |goto 54.9,32.7
step
talk Adarrah##47005
accept That Gleam in his Eye##27899 |goto 54.3,35.3
step
talk Prince Nadun##45799
turnin Al'Akir's Vengeance##28135 |goto 45.2,38.0
accept Minions of Al'Akir##27520 |goto 45.2,38.0
step
talk General Ammantep##45772
accept Under the Choking Sands##27519 |goto 45.3,37.8
accept The Prophet Hadassi##27595 |goto 45.3,37.8
step
talk Prophet Hadassi##46003
turnin The Prophet Hadassi##27595 |goto 40.0,40.5
accept The Prophet's Dying Words##27602 |goto 40.0,40.5
step
click Sand-Covered Hieroglyphs##205874
turnin The Prophet's Dying Words##27602 |goto 39.6,45.4
accept Colossal Guardians##27623 |goto 39.6,45.4
stickystart "orsissurvivor"
step
clicknpc Colossus of the Sun##46041
kill Colossus of the Sun
collect Stone of the Sun##61971 |q 27623/2 |goto 39.6,40.9
step
clicknpc Colossus of the Moon##46042
kill Colossus of the Moon
collect Stone of the Moon##61970 |q 27623/1 |goto 41.2,37.6
step
label "orsissurvivor"
kill 6 Scion of Al'Akir##45755+ |q 27520/1 |goto 40.7,40.2
clicknpc Orsis Survivor##45715+
Rescue 8 Orsis Survivors |q 27519/1 |goto 40.7,40.2
step
click Sand-Covered Hieroglyphs##205874
turnin Colossal Guardians##27623 |goto 39.6,45.4
accept The Scepter of Orsis##27706 |goto 39.6,45.4
step
click Sacred Receptacle##205824
collect The Scepter of Orsis##62267 |q 27706/1 |goto 39.6,45.4
step
talk Harrison Jones##46978
turnin That Gleam in his Eye##27899 |goto 44.0,57.1
accept I've Got This Guy##27900 |goto 44.0,57.1
accept They Don't Know What They've Got Here##27901 |goto 44.0,57.1
stickystart "titdev"
step
kill Schnottz Air Officer##46993
collect Efficient Excavations##62768 |n |goto 44.3,58.2
Click the Efficient Excavations in your bags |use Efficient Excavations##62768
accept Efficient Excavations##28132 |goto 44.3,58.2
step
label "titdev"
kill Schnottz Air Trooper##46979+
Slay 10 Schnottz Air Troopers |q 27900/1 |goto 46.7,58.4
kill Schnottz Air Officer##46993+
collect Uldum Chest Key Code##62608 |n
click Obelisk of the Sun Coffer##206531
collect 6 Titan Device Component##62610 |q 27901 |goto 46.7,58.4
step
Use your Titan Device Components |use Titan Device Component##62610
collect Titan Activation Device##62607 |q 27901/1
step
talk Harrison Jones##46978
turnin I've Got This Guy##27900 |goto 44.0,57.1
turnin They Don't Know What They've Got Here##27901 |goto 44.0,57.1
accept Ignition##27903 |goto 44.0,57.1
step
Follow the path down |goto 45.2,58.8 < 5 |q 27903 |walk
Use your Titan Activation Device next to the huge statue |use Titan Activation Device##62611
kill Titanic Guardian##47032
|tip While fighting the Titanic Guardian, click the big lava meteors that appear on the ground to do massive to the Titanic Guardian, making him much easier to kill.
collect Lens of the Sun##62705 |q 27903/1 |goto 47.1,58.8
step
Fly up onto the middle platform inside this cave
Click the Titan Mechanism
turnin Ignition##27903 |goto 45.6,57.8
step
talk Harrison Jones##46978
accept Tailgunner!##27905 |goto 44.0,57.1
Use the abilities on your hotbar to shoot down the airplanes that chase you
Escape the Obelisk of the Sun |q 27905/1 |goto 44.0,57.1
step
talk Harrison Jones##48082
turnin Tailgunner!##27905 |goto 54.6,41.8
step
talk Prince Nadun##45799
turnin Minions of Al'Akir##27520 |goto 45.2,38.0
step
talk General Ammantep##45772
turnin Under the Choking Sands##27519 |goto 45.3,37.8
turnin The Scepter of Orsis##27706 |goto 45.3,37.8
step
talk Prince Nadun##45799
accept Send Word to Phaoris##27628 |goto 45.2,38.0
step
talk King Phaoris##47684
turnin Send Word to Phaoris##27628 |goto 54.9,32.7
step
talk Prince Nadun##47959
accept The High Priest's Vote##27630 |goto 55.0,34.0
accept The Vizier's Vote##27629 |goto 55.0,34.0
accept The High Commander's Vote##27631 |goto 55.0,34.0
step
Enter the dam |goto 52.9,45.3 < 5 |q 27631 |walk
talk High Priest Amet##46135
turnin The High Priest's Vote##27630 |goto 54.2,41.9
accept Stopping the Spread##27836 |goto 54.2,41.9
accept Trespassers in the Water##27837 |goto 54.2,41.9
step
Leave the dam |goto 52.9,45.3 < 5 |q 27837 |walk
kill 8 Stillwater Slitherer##46868+ |q 27837/1 |goto 52.9,40.8
click Slitherer Egg##206390
Destroy 6 Slitherer Eggs |q 27836/1 |goto 52.9,40.8
step
Enter the dam |goto 52.9,45.3 < 5 |q 27837 |walk
talk High Priest Amet##46135
turnin Stopping the Spread##27836 |goto 54.2,41.9
turnin Trespassers in the Water##27837 |goto 54.2,41.9
accept The Defilers' Ritual##28611 |goto 54.2,41.9
step
Leave the dam |goto 52.9,45.3 < 5 |q 28611 |walk
Enter the underwater cave |goto 51.8,40.1 < 5 |q 28611 |walk
kill Dark Ritualist Zakahn##49148
Stop the Neferset Ritual |q 28611/1 |goto 49.9,40.1
step
Leave the underwater cave |goto 51.8,40.1 < 5 |q 28611 |walk
Enter the dam |goto 52.9,45.3 < 5 |q 28611 |walk
talk High Priest Amet##46135
turnin The Defilers' Ritual##28611 |goto 54.2,41.9
accept The Root of the Corruption##27838 |goto 54.2,41.9
step
Leave the dam |goto 52.9,45.3 < 5 |q 27838 |walk
talk High Commander Kamses##46134
turnin The High Commander's Vote##27631 |goto 58.9,46.1
accept The Weakest Link##28198 |goto 58.9,46.1
accept Ploughshares to Swords##28201 |goto 58.9,46.1
step
talk Sergeant Mehat##48012
accept The Element of Supplies##28200 |goto 59.0,46.1
step
talk Salhet##46883
turnin The Weakest Link##28198 |goto 59.6,47.3
accept Shaping Up##28210 |goto 59.6,47.3
step
talk Vizier Tanotep##46136
turnin The Vizier's Vote##27629 |goto 56.3,53.5
accept Tanotep's Son##27632 |goto 56.3,53.5
step
talk Ramkahen Laborer##46333
Recruit 8 Ramkahen Laborers |q 28201/1 |goto 55.6,53.7
step
kill Riverbed Crocolisk##45321+
|tip They are all along and in this big river.
collect 20 Hardened Crocolisk Hide##63256 |q 28200/1 |goto 56.7,48.5
step
talk Sergeant Mehat##48012
turnin The Element of Supplies##28200 |goto 59.0,46.1
step
talk High Commander Kamses##46134
turnin Ploughshares to Swords##28201 |goto 58.9,46.1
accept Ancient Weapons##27839 |goto 58.9,46.1
stickystart "nefguard"
step
Use your Horn of Ramkahen |use Horn of Ramkahen##62534
When the cat men run in to attack the smugglers, go to [60.5,58.7]
click Ancient Tol'vir Weapon##10071+
collect Ancient Tol'vir Armaments##62533 |q 27839/1 |goto 60.4,57.5
step
label "nefguard"
kill Neferset Guard##46340+
collect Vir'Naal Delta Map##62280 |q 27632/1 |goto 58.1,60.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Tanotep's Son##27632
accept Neferset Prison##27707
step
kill Bloodsnarl Hyena##45353+
Help Salhet defeat 8 Bloodsnarl Hyenas |q 28210/1 |goto 55.5,59.5
You can find more Bloodsnarl Hyenas around [52.6,56.2]
step
Next to you:
talk Salhet##48022
turnin Shaping Up##28210
accept Salhet's Secret##28276
step
talk Salhet##48237
turnin Salhet's Secret##28276 |goto 56.9,62.4
accept Salhet the Tactician##28277 |goto 56.9,62.4
step
talk Salhet##48237
Tell him let's see what he and his lions can do
Use the abilities on your hotbar to use the lions to kill the hyenas
kill 30 Bloodsnarl Scavenger##48199+ |q 28277/1 |goto 56.9,62.4
step
talk Salhet##48237
turnin Salhet the Tactician##28277 |goto 56.9,62.4
accept Return to Camp##28291 |goto 56.9,62.4
step
talk Ramkahen Prisoner##46425
Tell him you're looking for Tahet
Fight the enemies that attack
Discover Tahet's Whereabouts |q 27707/1 |goto 71.3,73.7
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Neferset Prison##27707
accept The Pit of Scales##27738
step
talk Tahet##46496
kill Gorebite##46278
kill Caimas the Pit Master##46276
|tip Make him chase you.  Run in front of him so that he runs over the big pink Croc Eggs on the ground around this area.  Baby Crocs will damage him and slow his run speed down.  Eventually, he will die.
Free Tahet |q 27738/1 |goto 58.3,82.9
step
kill Scalemother Hevna##46871 |q 27838/1 |goto 58.9,14.2
step
Enter the dam |goto 52.9,45.3 < 5 |q 27838 |walk
talk High Priest Amet##46135
turnin The Root of the Corruption##27838 |goto 54.2,41.9
step
Leave the dam |goto 52.9,45.3 < 5 |q 27838 |walk
talk High Commander Kamses##46134
turnin Return to Camp##28291 |goto 58.9,46.1
turnin Ancient Weapons##27839 |goto 58.9,46.1
step
talk Vizier Tanotep##46136
turnin The Pit of Scales##27738 |goto 56.3,53.5
accept The High Council's Decision##28533 |goto 56.3,53.5
step
talk King Phaoris##47684
turnin The High Council's Decision##28533 |goto 54.9,32.7
Watch the cutscene
accept Nahom Must Hold##28561
step
talk Salhet##48761
turnin Nahom Must Hold##28561 |goto 67.2,42.9
accept The Secret of Nahom##28498 |goto 67.2,42.9
step
talk Sun Prophet Tumet##48501
accept Punish the Trespassers##28499 |goto 67.3,42.8
step
kill Neferset Raider##48626+, Neferset Scryer##48625+, Neferset Looter##48627+
kill 10 Neferset intruder |q 28499/1 |goto 71.7,46.1
click Atulhet's Record Fragment##207281
collect 8 Atulhet's Record Fragment##64642 |q 28498/1 |goto 71.7,46.1
You can find more Atulhet Fragments and Neferset mobs around [75.2,45.7]
step
talk Sun Prophet Tumet##48501
turnin Punish the Trespassers##28499 |goto 67.3,42.8
step
talk Salhet##48761
turnin The Secret of Nahom##28498 |goto 67.2,42.9
accept The Cypher of Keset##28500 |goto 67.2,42.9
step
kill Raider Lord Havat##49214
collect The Cypher of Keset##64649 |q 28500/1 |goto 78.2,45.7
step
talk Salhet##48761
turnin The Cypher of Keset##28500 |goto 67.2,42.9
accept The Defense of Nahom##28501 |goto 67.2,42.9
step
talk Ramkahen Sergeant##49228
Use the abilities on your hotbar to command the troops
Complete the Defense of Nahom |q 28501/1 |goto 66.7,41.8
step
Click the red arrow on your hotbar |outvehicle |noway |c |q 28501
step
talk Salhet##48761
turnin The Defense of Nahom##28501 |goto 67.2,42.9
accept The Push Westward##28623 |goto 67.2,42.9
step
talk Sun Prophet Tumet##48501
accept The Curse of the Tombs##27755 |goto 67.3,42.8
step
kill Mekgineer Mixeltweed##46592 |q 27755/2 |goto 69.8,58.9
kill 6 Crazed Digger##46590+ |q 27755/1 |goto 69.8,58.9
collect 1 A.I.D.A. Communicator##62483 |n
Use the A.I.D.A. Communicator |use A.I.D.A. Communicator##62483
accept Artificial Intelligence##27760
step
click A.I.D.A. Terminal##206293
turnin Artificial Intelligence##27760 |goto 74.1,64.4
accept A Disarming Distraction##27761 |goto 74.1,64.4
accept Core Access Codes##27777 |goto 74.1,64.4
step
Use your Mech Control Scrambler on Twizzleflux the Insane repeatedly |use Mech Control Scrambler##62542
kill Twizzleflux the Insane##46587
collect Core Access Codes##62399 |q 27777/1 |goto 73.3,72.8
step
Use your Holographic Projector next to the First Bomb Cluster to distract the enemies |use Holographic Projector##62398
click First Bomb Cluster##206395
Disarm the First Bomb Cluster |q 27761/1 |goto 78.8,62.1
step
Use your Holographic Projector next to the Second Bomb Cluster to distract the enemies |use Holographic Projector##62398
click Second Bomb Cluster##206396
Disarm the Second Bomb Cluster |q 27761/2 |goto 79.0,64.3
step
Use your Holographic Projector next to the Third Bomb Cluster to distract the enemies |use Holographic Projector##62398
click Third Bomb Cluster##206397
Disarm the Third Bomb Cluster |q 27761/3 |goto 79.0,64.9
step
Use your Holographic Projector next to Unstable Bomb Bots to distract the enemies |use Holographic Projector##62398
clicknpc Unstable Bomb Bot##46888+
Deactivate 4 Unstable Bomb Bots |q 27761/4 |goto 79.0,63.6
step
click A.I.D.A. Terminal##206293
turnin A Disarming Distraction##27761 |goto 74.1,64.4
turnin Core Access Codes##27777 |goto 74.1,64.4
accept Hacking the Wibson##27778 |goto 74.1,64.4
step
click Maintenance Tools##206532
collect Maintenance Axe##62621 |q 27778 |goto 77.0,62.9
step
clicknpc Wibson Mainframe##46715
Hack the Wibson Mainframe |q 27778/1 |goto 77.0,63.0
step
talk Fusion Core##46750
turnin Hacking the Wibson##27778 |goto 77.3,63.3
accept Gnomebliteration##27779 |goto 77.3,63.3
step
Roll down the hill as the Fusion Core
Run over gnomes all around this area
Obliterate 1000 Crazed Gnomes |q 27779/1 |goto 81.9,58.8
step
Roll back up the hill |goto 77.6,62.4
Click the red arrow on your hotbar |outvehicle |noway |c |q 27779
step
talk Fusion Core##46750
turnin Gnomebliteration##27779 |goto 77.3,63.3
step
talk King Phaoris##48564
turnin The Push Westward##28623 |goto 52.0,65.5
accept Lieutenants of Darkness##28480 |goto 52.0,65.5
accept Bleeding the Enemy##28483 |goto 52.0,65.5
step
talk Salhet##49345
accept Salhet's Gambit##28486 |goto 52.9,65.5
stickystart "nefinsig"
step
talk Ramkahen Ranger Captain##49244
Protect the rangers as they run up the path
Secure Higher Ground |q 28486/1 |goto 54.1,71.2
step
kill High Priest Sekhemet##47730 |q 28480/2 |goto 47.5,77.3
step
kill Scorpion-Lord Namkhare##47742 |q 28480/1 |goto 50.6,87.0
step
label "nefinsig"
kill Neferset Snake Charmer##47738+, Neferset Cursebringer##47760+, Neferset Ritualist##47762+
collect 10 Neferset Insignia##64352 |q 28483/1 |goto 48.7,84.9
step
talk Salhet##49345
turnin Salhet's Gambit##28486 |goto 52.9,65.5
step
talk King Phaoris##48564
turnin Lieutenants of Darkness##28480 |goto 52.0,65.5
turnin Bleeding the Enemy##28483 |goto 52.0,65.5
accept The Fall of Neferset City##28520 |goto 52.0,65.5
step
kill Dark Pharaoh Tekahn##47753 |q 28520/1 |goto 52.0,82.3
step
talk Belloc Brightblade##47670
turnin Efficient Excavations##28132 |goto 24.4,64.5
accept Eastern Hospitality##27926 |goto 24.4,64.5
step
talk Ambassador Laurent##47176
Ask him what he thinks of our host
Mingle with Ambassador Laurent |q 27926/1 |goto 22.5,63.2
step
talk Refined Gentleman##47185
Ask him what he knows of our generous host
Mingle with a Refined Gentleman |q 27926/2 |goto 22.5,63.2
step
talk Budding Artist##47187
Ask him how to find the Commander
Mingle with a Budding Artist |q 27926/3 |goto 22.3,63.2
step
talk Aspiring Starlet##47189
Ask her how she has been enjoying her time here
Mingle with an Aspiring Starlet |q 27926/4 |goto 22.2,63.2
step
talk Arcane Guest Registry##49528
home Schnottz's Landing |goto 22.0,64.5
step
talk Belloc Brightblade##47670
turnin Eastern Hospitality##27926 |goto 24.4,64.5
accept A Favor for the Furrier##27928 |goto 24.4,64.5
step
talk Commander Schnottz##47159
accept The Desert Fox##27939 |goto 24.4,64.1
step
kill Diseased Vulture##47202
You will accept a quest
accept Dirty Birds##27940 |goto 40.6,68.9
step
kill Diseased Vulture##47202+
Slay 8 Diseased Vultures |q 27940/1 |goto 40.6,68.9
kill Shaggy Desert Coyote##47190+
collect 5 Desert Coyote Pelt##62776 |q 27928/1 |goto 40.6,68.9
clicknpc Desert Fox##47201
|tip It runs around a lot, so you will probably have to search for it to find it.
collect The Desert Fox##62777 |q 27939/1 |goto 40.6,68.9
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Dirty Birds##27940
step
talk Belloc Brightblade##47670
turnin A Favor for the Furrier##27928 |goto 24.4,64.5
accept Fashionism##27941 |goto 24.4,64.5
step
talk Commander Schnottz##47159
turnin The Desert Fox##27939 |goto 24.4,64.2
accept Idolatry##27942 |goto 24.4,64.2
accept Angered Spirits##27943 |goto 24.4,64.2
step
kill Furious Specter##47220+
Use your Licensed Proton Accelerator Cannon on Furious Specters once they are at half health |use Licensed Proton Accelerator Cannon##62794
collect 5 Furious Spectral Essence##62793 |q 27943/1 |goto 31.2,63.6
clicknpc Dead Trooper##47219+
collect 10 Trooper Uniform##62789 |q 27941/1 |goto 31.2,63.6
click Well-preserved Idol##206563
collect 8 Well-preserved Idol##62792 |q 27942/1 |goto 31.2,63.6
step
talk Belloc Brightblade##47670
turnin Fashionism##27941 |goto 24.4,64.5
step
talk Commander Schnottz##47159
turnin Idolatry##27942 |goto 24.4,64.1
turnin Angered Spirits##27943 |goto 24.4,64.1
accept Gobbles!##27950 |goto 24.4,64.1
step
talk Commander Schnottz##47159
Tell him the perimeter is secure
Witness Gobbles' Transformation Ritual |q 27950/1 |goto 24.4,64.1
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Gobbles!##27950
step
talk Commander Schnottz##47159
accept Make Yourself Useful##27969 |goto 24.4,64.1
step
Use your Refurbished Trooper Uniform |use Refurbished Trooper Uniform##62813
Wear the Uniform |havebuff 132723 |q 27969
step
talk Slacking Laborer##47292
Tell them they're behind schedule
Motivate 6 Slacking Laborers |q 27969/1 |goto 23.2,60.1
|tip You won't motivate all of the Slacking Laborers you talk to.
You can find more Slacking Laborers around [20.5,60.5]
step
talk Commander Schnottz##47159
turnin Make Yourself Useful##27969 |goto 24.5,64.2
step
talk Belloc Brightblade##47670
accept Crisis Management##28002 |goto 24.4,64.5
step
talk Budding Artist##47707
Ask him if he saw anything
Counsel the Budding Artist |q 28002/4 |goto 22.5,64.0
step
talk Prolific Writer##47516
Ask him who could have done such a thing
Question the Prolific Writer |q 28002/1 |goto 22.4,63.8
step
talk Privileged Socialite##47519
Ask her if she is all right
Soothe the Privileged Socialite |q 28002/2 |goto 22.2,63.9
step
talk Pretentious Businessman##47520
Ask him if he wants to know what happened to the man
Chasten the Pretentious Businessman |q 28002/3 |goto 22.3,64.1
step
talk Belloc Brightblade##47670
turnin Crisis Management##28002 |goto 24.4,64.5
step
talk Commander Schnottz##47159
accept Battlezone##27990 |goto 24.4,64.1
step
clicknpc Schnottz's Siege Tank##47732
Ride in Schnottz's Siege Tank
Use the Fire Cannon ability on your hotbar on Decrepit Watchers
Obliterate 7 Decrepit Watchers |q 27990/1 |goto 21.3,64.6
step
Go to this spot
Return to Schnottz |q 27990/2 |goto 24.4,64.1
step
talk Commander Schnottz##47940
turnin Battlezone##27990 |goto 24.4,64.1
accept Missed Me By Zhat Much!##28187 |goto 24.4,64.1
step
talk Commander Schnottz##47940
Tell him let's move
Follow Commander Schnottz
Accompany Schnottz to Safety |q 28187/1 |goto 24.4,64.1
step
talk Commander Schnottz##47972
turnin Missed Me By Zhat Much!##28187 |goto 22.5,63.2
accept Lockdown!##28193 |goto 22.5,63.2
step
Go to this spot
Visit Schnottz's Guests |q 28193/1 |goto 21.9,64.1
step
talk Prolific Writer##47967
accept The Great Escape##28194 |goto 21.9,64.0
step
talk Commander Schnottz##47972
turnin Lockdown!##28193 |goto 22.5,63.2
accept Sending a Message##28195 |goto 22.5,63.2
stickystart "freshsail"
step
kill Captain Margun##47981 |q 28195/1 |goto 22.3,67.6
step
kill Captain Cork##47980 |q 28195/2 |goto 24.9,69.0
step
kill Captain Kronkh##47978 |q 28195/3 |goto 26.1,68.6
step
label "freshsail"
kill Schnottz Sea Trooper##47982+
|tip Kill them on all 3 of the pirate ships around this area.
collect 6 Fresh Sailor Uniform##63248 |q 28194/1 |goto 24.9,68.4
step
talk Prolific Writer##47967
turnin The Great Escape##28194 |goto 21.9,64.0
step
talk Commander Schnottz##47972
turnin Sending a Message##28195 |goto 22.5,63.2
accept Firing Squad##28267 |goto 22.5,63.2
step
talk Commander Schnottz##47972
Tell him you suppose you're ready...
Watch the cutscene
Go 'Out Back' With Schnottz |q 28267/1 |goto 22.5,63.2
step
talk Harrison Jones##48162
turnin Firing Squad##28267 |goto 23.6,60.3
accept Meet Me In Vir'sar##28269 |goto 23.6,60.3
step
talk King Phaoris##47684
turnin The Fall of Neferset City##28520 |goto Uldum 54.9,32.7
step
talk Kazemde##48886
home Ramkahen |goto 54.7,32.9
step
talk Sun Prophet Tumet##48501
turnin The Curse of the Tombs##27755 |goto 67.3,42.8
step
talk Harrison Jones##48186
turnin Meet Me In Vir'sar##28269 |goto Uldum 27.0,7.5
accept Friend of a Friend##28273 |goto Uldum 27.0,7.5
step
talk Yasmin##49406
home Oasis of Vir'sar |goto 26.6,7.2
step
talk Sullah##48203
turnin Friend of a Friend##28273 |goto 26.6,8.0
accept Two Tents##28274 |goto 26.6,8.0
step
Watch the cutscene
Accompany Sullah |q 28274/1
step
talk Sullah##48431
turnin Two Tents##28274 |goto 29.6,21.9
accept Master Trapper##28350 |goto 29.6,21.9
accept Camelraderie##28352 |goto 29.6,21.9
accept Unlimited Potential##28351 |goto 29.6,21.9
stickystart "sandpyg"
step
kill Wild Camel##51193+
Use Sullah's Camel Harness on Wild Camels when they are weakened |use Sullah's Camel Harness##67241
|tip You will see a message flash on your screen telling you to capture the camel.
Capture 3 Wild Camels |q 28352/1 |goto 29.9,38.2
step
label "sandpyg"
kill Wild Camel##51193+
collect 5 Meat Scrap##63541 |q 28350/1 |goto 29.9,38.2
kill Cavorting Pygmy##51217+
Use Sullah's Pygmy Pen on Cavorting Pygmies when they are weakened |use Sullah's Pygmy Pen##67232
|tip You will see a message flash on your screen telling you to cage the pygmy.
Capture 5 Sand Pygmies |q 28351/1 |goto 29.9,38.2
step
talk Sullah##48431
turnin Master Trapper##28350 |goto 29.6,21.8
turnin Camelraderie##28352 |goto 29.6,21.8
turnin Unlimited Potential##28351 |goto 29.6,21.8
accept Jonesy Sent For You##28353 |goto 29.6,21.8
step
talk Harrison Jones##48186
turnin Jonesy Sent For You##28353 |goto 27.0,7.5
accept Reduced Productivity##28271 |goto 27.0,7.5
accept Missing Pieces##28272 |goto 27.0,7.5
step
kill Schnottz Overseer##48205+, Schnottz Excavator##48204+
Kill 15 Schnottz Employees at the Obelisk of the Moon |q 28271/1 |goto 38.2,21.6
click Pillaged Loot Sack##207124
collect 7 Ancient Copper Scroll##63685 |q 28272/1 |goto 38.2,21.6
step
talk Harrison Jones##48186
turnin Reduced Productivity##28271 |goto 27.0,7.6
turnin Missing Pieces##28272 |goto 27.0,7.6
accept Stirred the Hornet's Nest##28363 |goto 27.0,7.6
step
talk Sullah##48431
turnin Stirred the Hornet's Nest##28363 |goto 29.6,21.8
accept Shroud of the Makers##28367 |goto 29.6,21.8
step
Use your Shroud of the Makers every 2 minutes to stay Cloaked |use Shroud of the Makers##63699
|tip If you have a pet with you dismiss it, it does not stealth with you and will attract mobs
click Schnottz Powder Keg##207127
Sabotage 7 Powder Kegs |q 28367/1 |goto 38.4,22.6
step
talk Harrison Jones##48186
turnin Shroud of the Makers##28367 |goto 27.0,7.5
accept Schnottz So Fast##28402 |goto 27.0,7.5
step
Enter the building |goto 36.7,20.8 < 5 |q 28402
Fly down this hole |goto 33.5,17.8 < 5 |q 28402
kill Schnottz Elite Trooper##48668+
Slay 10 Schnottz Elite Troopers |q 28402/1 |goto 35.0,19.2
step
talk Harrison Jones##48528
turnin Schnottz So Fast##28402 |goto 36.1,20.3
accept Bad Datas##28403 |goto 36.1,20.3
step
talk Harrison Jones##48528
Tell him you are ready when he is
Follow Harrison Jones
Upload the Titan Data |q 28403/1 |goto 36.1,20.3
step
talk Harrison Jones##48558
turnin Bad Datas##28403 |goto 39.0,23.2
accept I'll Do It By Hand##28404 |goto 39.0,23.2
step
kill Lunar Crystal##48529+
Defeat the Titanic Guardian |q 28404/1 |goto 39.6,23.6
step
talk Harrison Jones##48558
turnin I'll Do It By Hand##28404 |goto 39.0,23.2
step
talk Sullah##48621
accept Sullah's Gift##28482 |goto 42.2,25.9
step
talk Harrison Jones##48698
turnin Sullah's Gift##28482 |goto 41.4,5.6
accept Fire From the Sky##28497 |goto 41.4,5.6
step
clicknpc Confiscated Artillery##48699
Use the Designate Target ability on your hotbar on the Schnottz Infantrymen
Slay 100 Schnottz Infantrymen |q 28497/1 |goto 41.4,5.6
step
talk Harrison Jones##48698
turnin Fire From the Sky##28497 |goto 41.4,5.6
accept See You on the Other Side!##28613 |goto 41.4,5.6
step
talk Harrison Jones##47158
turnin See You on the Other Side!##28613 |goto 36.1,15.8
accept Fortune and Glory##27748
Follow Harrison Jones and fight the Obsidian Colossus
|tip Avoid the pink shadow runes on the ground when the Obsidian Colossus casts them.  You will see messages pop up on your screen letting you know what to do.
kill Obsidian Colossus##46646
Defeat the Obsidian Colossus |q 27748/1 |goto 36.1,15.8
step
talk Harrison Jones##49151
turnin Fortune and Glory##27748 |goto 33.4,19.7
accept Harrison Jones and the Temple of Uldum##28612
Watch the cutscene
Discover the Coffer of Promise |q 28612/1 |goto 33.4,19.7
step
talk Brann Bronzebeard##49204
turnin Harrison Jones and the Temple of Uldum##28612 |goto 32.6,30.9
accept Put That Baby in the Cradle!##28621 |goto 32.6,30.9
step
talk Harrison Jones##49203
turnin Put That Baby in the Cradle!##28621 |goto 32.6,30.7
accept Three if by Air##28622 |goto 32.6,30.7
step
clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
Place the North Signal Flare |q 28622/1 |goto 32.0,29.9
step
clicknpc Signal Flare Position##49216|use Harrison's Signal Flares##64668
Place the West Signal Flaare |q 28622/2 |goto 31.4,30.8
step
clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
Place the South Signal Flare |q 28622/3 |goto 32.0,31.6
step
talk Brann Bronzebeard##49248
turnin Three if by Air##28622 |goto 44.9,67.3
accept The Coffer of Promise##28633 |goto 44.9,67.3
step
click Coffer of Promise##207294
collect Titan Discs##64667 |q 28633/1 |goto 45.0,67.3
step
talk Brann Bronzebeard##49351
turnin The Coffer of Promise##28633 |goto 44.9,67.3
step
From this point you will need to run dailies and dungeons to build up reputation with Ramkahen.
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
step
label "exalted"
Congratulations, you are now Exalted with Ramkahen!
]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Cataclysm Reputations\\Therazane",{
author="support@zygorguides.com",
description="\nThis guide will walk you through becoming exalted with the Therazane faction.",
condition_suggested=function() return level >= 10 and level <= 50 and rep('Therazane') < Exalted end,
achieveid={4883},
patch='40003',
},[[
step
click Warchief's Command Board##207325
accept Warchief's Command: Deepholm!##27722 |goto Orgrimmar,49.7,76.5
step
talk Farseer Krogar##45244
turnin The War Has Many Fronts##27442  |goto 50.5,38.4
|tip You will only be able to turn in this quest if you completed the Vashj'ir guide section.  It will be marked completed if you have already completed the similar Mount Hyjal breadcrumb quest.
turnin Warchief's Command: Deepholm!##27722 |goto 50.5,38.4
accept The Maelstrom##27203 |goto 50.5,38.4
step
click Portal to the Maelstrom##5231 |goto 50.1,37.8
Teleport to The Maelstrom |goto The Maelstrom |noway |c |q 27203
step
talk Thrall##45042
turnin The Maelstrom##27203 |goto The Maelstrom,33.4,50.2
accept Deepholm, Realm of Earth##27123 |goto The Maelstrom,33.4,50.2
step
clicknpc Wyvern##45005 |goto 32.5,52.0
You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c |q 27123
step
talk Maruut Stonebinder##43065
turnin Deepholm, Realm of Earth##27123 |goto Deepholm,49.6,53.0
accept Gunship Down##26245 |goto Deepholm,49.6,53.0
step
talk Seer Kormo##43397
accept Elemental Energy##27136 |goto 49.7,52.9
accept The Earth Claims All##26244 |goto 49.7,52.9
step
talk Earthcaller Yevaa##42573
accept Where's Goldmine?##26409 |goto 49.5,53.3
step
talk Caretaker Nuunwa##45300
home Temple of Earth |goto 49.2,51.9
step
talk Initiate Goldmine##42574
turnin Where's Goldmine?##26409 |goto 46.5,57.3
accept Explosive Bonding Compound##26410 |goto 46.5,57.3
accept Something that Burns##27135 |goto 46.5,57.3
step
kill Rockslice Flayer##42606+, Rockslice Ripper##42607+
collect 5 Quartzite Resin##58501 |q 26410/1 |goto 45.5,57.9
You can find more Rockslice Flayers around [42.5,55.6]
step
Use your Depleted Totem |use Depleted Totem##60835
kill Lodestone Elemental##43258+, Energized Geode##43254+
|tip Kill them next to your Depleted Totems.
Energize the Totem 8 Times |q 27136/1 |goto 51.1,61.6
step
Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
kill Magmatooth##45099
collect The Burning Heart##60837 |q 27135/1 |goto 52.0,58.9
step
talk Initiate Goldmine##42574
turnin Explosive Bonding Compound##26410 |goto 46.5,57.3
turnin Something that Burns##27135 |goto 46.5,57.3
accept Apply and Flash Dry##26411 |goto 46.5,57.3
step
Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502
Apply the Explosive Bonding Compound |q 26411/1 |goto 46.6,57.2
step
talk Initiate Goldmine##42574
turnin Apply and Flash Dry##26411 |goto 46.5,57.3
accept Take Him to the Earthcaller##26413 |goto 46.5,57.3
step
Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1 |goto 49.5,53.3
step
talk Earthcaller Yevaa##42573
turnin Take Him to the Earthcaller##26413 |goto 49.5,53.3
accept To Stonehearth's Aid##26484 |goto 49.5,53.3
step
talk Seer Kormo##43397
turnin Elemental Energy##27136 |goto 49.7,52.9
stickystart "deepele"
step
clicknpc Slain Cannoneer##43032
Receive the Second Clue |q 26245/2 |goto 56.1,74.2
step
clicknpc Captain Skullshatter##43048
Receive the First Clue |q 26245/1 |goto 53.5,73.8
step
click Captain's Log##211413
accept Captain's Log##26246 |goto 53.6,73.8
step
clicknpc Unexploded Artillery Shell##43044
Receive the Third Clue |q 26245/3 |goto 56.7,76.4
step
label "deepele"
kill 5 Deepstone Elemental##43026+ |q 26244/1 |goto 55.9,74.9
step
talk Maruut Stonebinder##43065
turnin Gunship Down##26245 |goto 49.6,52.9
turnin Captain's Log##26246 |goto 49.6,52.9
step
talk Seer Kormo##43397
turnin The Earth Claims All##26244 |goto 49.7,52.9
step
talk Maruut Stonebinder##43065
accept Diplomacy First##26247 |goto 49.6,53.0
step
talk Stormcaller Mylra##42684
turnin Diplomacy First##26247 |goto 62.4,52.6
accept All Our Friends Are Dead##26248 |goto 62.4,52.6
accept The Admiral's Cabin##26249 |goto 62.4,52.6
step
All around on this air ship:
Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
Receive 6 Slain Crew Member Information |q 26248/1
step
Enter the doorway on the main deck of the air ship:
talk First Mate Moody##43082
turnin The Admiral's Cabin##26249
accept Without a Captain or Crew##26427
step
Leave through the doorway and immediately turn right:
click Bottle of Whiskey##204280
|tip Located on the life boat.
collect Bottle of Whiskey##58798 |q 26427/1
step
All around on the deck of the air ship:
click Spool of Rope##204279
collect Spool of Rope##58806 |q 26427/2
step
Enter the doorway on the main deck of the air ship:
talk First Mate Moody##43082
turnin Without a Captain or Crew##26427
step
Go to the very top of the air ship:
talk Stormcaller Mylra##42684
turnin All Our Friends Are Dead##26248
accept Take No Prisoners##26251
accept On Second Thought, Take One Prisoner##26250
step
Go onto the main deck of the ship and go down the stairs to the deck below:
Fight Mor'norokk the Hateful until he surrenders
|tip He's downstairs in the airship, in the very back of the first level you come to.
talk Mor'norokk the Hateful##42801
Subdue Mor'norokk the Hateful |q 26250/1
step
All around on this lower deck of the air ship:
kill 6 Twilight Saboteur##42885 |q 26251/1
step
Go to the very top of the air ship:
talk Stormcaller Mylra##42684
turnin Take No Prisoners##26251
turnin On Second Thought, Take One Prisoner##26250
accept Some Spraining to Do##26254
step
Next to Stormcaller Mylra:
clicknpc Stormbeak##42887
Interrogate Mok'norrok |q 26254/1
step
When you land on the air ship again:
talk Stormcaller Mylra##42684
turnin Some Spraining to Do##26254
accept Return to the Temple of Earth##26255
step
talk Maruut Stonebinder##43065
turnin Return to the Temple of Earth##26255 |goto 49.6,53.0
accept Deathwing's Fall##26258 |goto 49.6,53.0
step
talk Seer Kormo##43397
accept Blood of the Earthwarder##26259 |goto 49.7,52.9
step
Go to this spot
Reach Deathwing's Fall |q 26258/1 |goto 59.4,58.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Deathwing's Fall##26258
accept Bleed the Bloodshaper##26256
step
kill Twilight Bloodshaper##43218+
collect Twilight Orders##60264 |q 26256/1 |goto 61.5,60.6
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Bleed the Bloodshaper##26256
accept Question the Slaves##26261
stickystart "liveblood"
step
click Slavemaster's Coffer##205097
collect 1 Twilight Slaver's Key##60739 |q 26261 |goto 62.8,59.5
step
label "liveblood"
kill Living Blood##43123+
collect 5 Blood of Neltharion##133127 |q 26259/1 |goto 61.2,60.1
step
click Ball and Chain##207079
Free 6 Enslaved Miners |q 26261/1 |goto 64.5,65.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Question the Slaves##26261
accept The Forgemaster's Log##26260
step
click Forgemaster's Log##205134
turnin The Forgemaster's Log##26260 |goto 63.7,55.4
accept Silvermarsh Rendezvous##27007 |goto 63.7,55.4
step
Go to this spot
Reach Upper Silvermarsh |q 27007/1 |goto 70.6,61.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Silvermarsh Rendezvous##27007
accept Quicksilver Submersion##27010
step
click Trogg Crate##205197
collect Trogg Crate##60809 |q 27010 |goto 71.8,64.3
kill Murkstone Trogg##44936
collect 1 Maziel's Research##60816 |n
Click Maziel's Research in your bags |use Maziel's Research##60816
accept Twilight Research##27100
step
Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
Watch the dialogue
Uncover the World Pillar Fragment Clue |q 27010/1 |goto 74.9,64.8
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Quicksilver Submersion##27010
accept The Twilight Overlook##27061
step
kill Mercurial Ooze##43158+
collect 4 Twilight Research Notes##60814 |q 27100/1 |goto 72.5,65.2
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Twilight Research##27100
accept Maziel's Revelation##27101
step
click Maziel's Journal##205207
turnin Maziel's Revelation##27101 |goto 67.2,70.2
accept Maziel's Ascendancy##27102 |goto 67.2,70.2
step
Enter the cave |goto 69.5,68.0 < 5 |q 27102 |walk
kill Maziel##44967 |q 27102/1 |goto 72.8,62.0
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Maziel's Ascendancy##27102
step
Leave the cave |goto 69.5,68.0 < 5 |q 27061 |walk
talk Stormcaller Mylra##44010
turnin The Twilight Overlook##27061 |goto 64.5,82.1
accept Big Game, Big Bait##26766 |goto 64.5,82.1
accept To Catch a Dragon##26768 |goto 64.5,82.1
step
kill Jadecrest Basilisk##43981+
Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
collect 5 Side of Basilisk Meat##60297 |q 26766/1  |goto 58.0,84.8
kill Twilight Dragonstalker##43992+
collect Twilight Snare##60383 |q 26768/1 |goto 58.0,84.8
step
talk Stormcaller Mylra##44010
turnin Big Game, Big Bait##26766 |goto 64.5,82.1
turnin To Catch a Dragon##26768 |goto 64.5,82.1
accept Testing the Trap##26771 |goto 64.5,82.1
step
Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
kill Stonescale Matriarch##44148 |q 26771/1 |goto 50.9,85.3
step
talk Stormcaller Mylra##44010
turnin Testing the Trap##26771 |goto 64.5,82.1
accept Abyssion's Minions##26857 |goto 64.5,82.1
step
talk Seer Galekk##44222
accept Block the Gates##26861 |goto 64.6,82.2
stickystart "abyunderling"
step
Use your Stormstone next to the swirling blue portal |use Stormstone##60501
Disrupt the Twilight Gate |q 26861/1 |goto 68.7,75.0
step
Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
Disrupt the Elemental Gate |q 26861/2 |goto 71.2,75.1
step
label "abyunderling"
kill Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
Defeat 8 Abyssion's Underlings |q 26857/1 |goto 69.9,76.7
step
talk Seer Galekk##44222
turnin Block the Gates##26861 |goto 64.6,82.2
step
talk Stormcaller Mylra##44010
turnin Abyssion's Minions##26857 |goto 64.5,82.2
accept The World Pillar Fragment##26876 |goto 64.5,82.2
step
Use your Earthen Ring Banner |use Earthen Ring Banner##60810
kill Abyssion##44289
click The First Fragment of the World Pillar##204967
collect The Upper World Pillar Fragment##60574 |q 26876/1 |goto 69.9,76.9
step
talk Maruut Stonebinder##43065
turnin The World Pillar Fragment##26876 |goto 49.6,53.0
step
talk Seer Kormo##43397
turnin Blood of the Earthwarder##26259 |goto 49.7,52.9
step
talk Crag Rockcrusher##43071
turnin To Stonehearth's Aid##26484 |goto 27.9,68.7
accept The Quaking Fields##27931 |goto 27.9,68.7
step
talk Slate Quicksand##47195
turnin The Quaking Fields##27931 |goto 30.6,77.7
accept The Axe of Earthly Sundering##27932 |goto 30.6,77.7
accept Elemental Ore##27933 |goto 30.6,77.7
step
Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
kill 5 Sundered Emerald Colossus##44229 |q 27932/1 |goto 32.2,79.1
kill Jade Rager##44220+
collect 6 Elemental Ore##60487 |q 27933/1 |goto 32.2,79.1
step
talk Slate Quicksand##47195
turnin The Axe of Earthly Sundering##27932 |goto 30.6,77.7
turnin Elemental Ore##27933 |goto 30.6,77.7
accept One With the Ground##27934 |goto 30.6,77.7
step
talk Slate Quicksand##47195
Tell him you are ready for the ritual
Complete the One With the Ground Ritual |q 27934/1 |goto 30.6,77.7
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin One With the Ground##27934
accept Bring Down the Avalanche##27935
step
kill Avalanchion##44372 |q 27935/1 |goto 46.9,89.1
step
Leave the cave |goto 43.4,82.0 < 5 |q 27935 |walk
talk Crag Rockcrusher##43071
turnin Bring Down the Avalanche##27935 |goto 27.9,68.7
accept Stonefather's Boon##26499 |goto 27.9,68.7
step
talk Earthbreaker Dolomite##43160
accept We're Surrounded##26500 |goto 28.2,69.6
step
kill 12 Stone Trogg Ambusher##43134+ |q 26500/1 |goto 29.7,68.8
Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884
Grant the Stonefather's Boon 12 times |q 26499/1 |goto 29.7,68.8
step
talk Earthbreaker Dolomite##43160
turnin We're Surrounded##26500 |goto 28.2,69.6
accept Thunder Stones##26502 |goto 28.2,69.6
step
talk Crag Rockcrusher##43071
turnin Stonefather's Boon##26499 |goto 27.9,68.7
accept Sealing the Way##26501 |goto 27.9,68.7
stickystart "rockreag"
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Shrine |q 26501/4 |goto 27.3,67.8
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Barracks |q 26501/3 |goto 26.0,68.8
step
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Inn |q 26501/2 |goto 26.2,69.8
step
label "rockreag"
Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885
Seal the Armory |q 26501/1 |goto 27.3,70.1
click Thunder Stone##204348
collect 12 Thunder Stone##58886 |q 26502/1  |goto 27.3,70.1
step
talk Gravel Longslab##43168
turnin Sealing the Way##26501 |goto 24.5,62.4
accept Shatter Them!##26537 |goto 24.5,62.4
step
talk Clay Mudaxle##43169
turnin Thunder Stones##26502 |goto 24.8,62.2
accept Fixer Upper##26564 |goto 24.8,62.2
step
talk Earthmender Deepvein##43319
accept Battlefront Triage##26591 |goto 24.6,62.2
step
Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965
Patch up 10 Injured Earthen |q 26591/1 |goto 23.9,60.3
Click Catapult Parts
|tip They look kind of like big metal parts laying on the ground around this area.
collect 6 Catapult Part##58944 |q 26564/1 |goto 23.9,60.3
kill Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
kill 12 Fractured Battlefront stone troggs |q 26537/1 |goto 23.9,60.3
You can also look around 23.1,53.9 for more
step
talk Gravel Longslab##43168
turnin Shatter Them!##26537 |goto 24.5,62.4
step
talk Earthmender Deepvein##43319
turnin Battlefront Triage##26591 |goto 24.6,62.2
step
talk Clay Mudaxle##43169
turnin Fixer Upper##26564 |goto 24.8,62.2
step
talk Gravel Longslab##43168
accept Troggzor the Earthinator##26625 |goto 24.5,62.4
step
kill Troggzor the Earthinator##43456
collect The Earthinator's Cudgel##59144 |q 26625/1 |goto 22.6,56.9
step
talk Gravel Longslab##43168
turnin Troggzor the Earthinator##26625 |goto 24.5,62.4
step
talk Clay Mudaxle##43169
accept Rush Delivery##27126 |goto 24.8,62.2
step
talk Peak Grindstone##45043
turnin Rush Delivery##27126 |goto 20.7,61.6
accept Close Escort##26632 |goto 20.7,61.6
step
talk Peak Grindstone##45043
Tell him you're ready to escort the catapult
|tip You need to be near the catapult or it will stop
Safely Escort the Earthen Catapult |q 26632/1 |goto 20.7,61.6
step
talk Pyrium Lodestone##43897
turnin Close Escort##26632 |goto 22.7,52.0
accept Keep Them off the Front##26755 |goto 22.7,52.0
step
clicknpc Earthen Catapult##43509
Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
Bombard 30 Reinforcements |q 26755/1 |goto 22.4,52.0
step
talk Pyrium Lodestone##43897
turnin Keep Them off the Front##26755 |goto 22.7,52.0
accept Reactivate the Constructs##26762 |goto 22.7,52.0
step
talk Flint Oremantle##43898
accept Mystic Masters##26770 |goto 22.8,52.1
step
clicknpc Deactivated War Construct##43984
Reactivate 5 Deactivated War Constructs |q 26762/1 |goto 22.6,47.6
kill 5 Needlerock Mystic |q 26770/1 |goto 22.6,47.6
|tip Activate the golems before attacking mystics.
step
talk Flint Oremantle##43898
turnin Mystic Masters##26770 |goto 22.8,52.1
step
talk Pyrium Lodestone##43897
turnin Reactivate the Constructs##26762 |goto 22.7,52.0
accept Down Into the Chasm##26834 |goto 22.7,52.0
step
talk Slate Quicksand##44143
turnin Down Into the Chasm##26834 |goto 27.6,44.8
accept Sprout No More##26791 |goto 27.6,44.8
accept Fungal Monstrosities##26792 |goto 27.6,44.8
step
clicknpc War Guardian##44126
Obtain a War Guardian for the Sprout No More quest |q 26791/1 |goto 27.6,44.7
Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1 |goto 27.6,44.7
step
kill 5 Fungal Monstrosity##44035+ |q 26792/2 |goto 26.8,41.8
clicknpc Giant Mushroom##44049+
Destroy 5 Giant Mushrooms |q 26791/2 |goto 26.8,41.8
step
talk Slate Quicksand##44143
turnin Sprout No More##26791 |goto 27.6,44.8
turnin Fungal Monstrosities##26792 |goto 27.6,44.8
accept A Slight Problem##26835 |goto 27.6,44.8
step
talk Pyrium Lodestone##43897
turnin A Slight Problem##26835 |goto 22.7,52.0
accept Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
step
kill Bouldergut##44151
Rescue Stonefather Oremantle |q 26836/1 |goto 24.5,31.1
step
talk Pyrium Lodestone##43897
turnin Rescue the Stonefather... and Flint##26836 |goto 22.7,52.0
accept The Hero Returns##27937 |goto 22.7,52.0
step
talk Stonefather Oremantle##44204
turnin The Hero Returns##27937 |goto 28.0,68.6
accept The Middle Fragment##27938 |goto 28.0,68.6
step
click The Stonefather's Safe##206562
collect The Middle Fragment of the World Pillar##60575 |q 27938/1 |goto 28.0,68.7
step
talk Earthcaller Yevaa##42573
turnin The Middle Fragment##27938 |goto 49.5,53.3
step
talk Maruut Stonebinder##43065
accept The Very Earth Beneath Our Feet##26326 |goto 49.6,53.0
step
talk Earthcaller Torunscar##42730
turnin The Very Earth Beneath Our Feet##26326 |goto 46.1,45.6
accept Crumbling Defenses##26312 |goto 46.1,45.6
accept On Even Ground##26314 |goto 46.1,45.6
step
talk Earthmender Norsala##42731
accept Core of Our Troubles##26313 |goto 46.2,45.7
stickystart "irerumble"
step
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Stormcaller Mylra |q 26312/2 |goto 44.3,43.7
step
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Tawn Winterbluff |q 26312/1 |goto 44.5,41.3
step
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Relieve Hargoth Dimblaze |q 26312/3 |goto 47.6,42.8
step
label "irerumble"
kill Irestone Rumbler##42780+
collect 6 Irestone Core##58168 |q 26313/1 |goto 46.2,42.2
Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169
|tip Run away from the Servants of Therazane to bring them down.
Bring down 3 Servants of Therazane |q 26314/1 |goto 46.2,42.2
step
talk Earthmender Norsala##42731
turnin Core of Our Troubles##26313 |goto 46.2,45.7
step
talk Earthcaller Torunscar##42730
turnin Crumbling Defenses##26312 |goto 46.1,45.6
turnin On Even Ground##26314 |goto 46.1,45.6
step
talk Earthmender Norsala##42731
accept Imposing Confrontation##26315 |goto 46.2,45.7
step
Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177
|tip He's a huge rock giant that walks around this area.
Seek Peace with Boden the Imposing |q 26315/1 |goto 49.2,40.1
step
talk Earthmender Norsala##42731
turnin Imposing Confrontation##26315 |goto 46.2,45.7
accept Rocky Relations##26328 |goto 46.2,45.7
step
talk Diamant the Patient##42467
turnin Rocky Relations##26328 |goto 56.5,42.7
accept Hatred Runs Deep##26376 |goto 56.5,42.7
accept Unsolid Ground##26377 |goto 56.5,42.7
step
talk Quartz Stonetender##42899
accept Loose Stones##26375 |goto 56.5,41.0
stickystart "quartz"
stickystart "lorcultist"
step
kill Dragul Giantbutcher##42921 |q 26376/1 |goto 60.2,39.4
step
label "quartz"
click Jade Crystal Cluster##204253
collect 6 Jade Crystal Cluster##58500 |q 26377 |goto 59.5,41.5
Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254
|tip They look like small rock giants around this area.
Release 6 Quartz Rocklings |q 26375/1 |goto 59.5,41.5
step
Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
collect Jade Crystal Composite##58783 |q 26377
step
Use your Jade Crystal Composite |use Jade Crystal Composite##58783
Lure an Agitated Tunneler |q 26377/1 |goto 59.6,41.4
step
label "lorcultist"
kill Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
kill 12 Lorthuna's Gate Cultists |q 26376/2 |goto 59.3,40.6
step
talk Quartz Stonetender##42899
turnin Loose Stones##26375 |goto 56.5,41.0
step
talk Diamant the Patient##42467
turnin Hatred Runs Deep##26376 |goto 56.5,42.7
turnin Unsolid Ground##26377 |goto 56.5,42.7
accept Violent Gale##26426 |goto 56.5,42.7
step
Get next to Felsen the Enduring
Find Felsen the Enduring |q 26426/1 |goto 51.7,31.6
step
Fly to the mouth of this cave
Find the entrance to the Crumbling Depths |q 26426/2 |goto 58.4,25.7
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Violent Gale##26426
accept Depth of the Depths##26869
step
Follow the path |goto 64.5,21.7 < 5 |q 26869 |walk
Follow the path |goto 65.3,18.4 < 5 |q 26869 |walk
click Gigantic Painite Cluster##204959
turnin Depth of the Depths##26869 |goto 66.4,20.6
accept A Rock Amongst Many##26871 |goto 66.4,20.6
step
Follow the path to this spot, then jump down |goto 64.3,23.5 < 5 |q 26871 |walk
Leave the cave |goto 58.3,25.5 < 5 |q 26871 |walk
talk Diamant the Patient##42467
turnin A Rock Amongst Many##26871 |goto 56.5,42.7
accept Entrenched##26436 |goto 56.5,42.7
step
talk Kor the Immovable##42469
turnin Entrenched##26436 |goto 34.3,34.3
accept Intervention##26438 |goto 34.3,34.3
accept Making Things Crystal Clear##26437 |goto 34.3,34.3
step
talk Berracite##43344
accept Putting the Pieces Together##26439 |goto 34.1,35.2
step
kill Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+
kill 12 Jaspertip flayers |q 26438/1 |goto 30.5,46.8
click Chalky Crystal Formation##204297
collect 8 Chalky Crystal Formation##58845 |q 26437/1  |goto 30.5,46.8
clicknpc Dormant Stonebound Elemental##43115
Reform 6 Stonebound Elementals |q 26439/1 |goto 30.5,46.8
step
talk Kor the Immovable##42469
turnin Intervention##26438 |goto 34.3,34.3
turnin Making Things Crystal Clear##26437 |goto 34.3,34.3
step
talk Berracite##43344
turnin Putting the Pieces Together##26439 |goto 34.1,35.2
step
Next to you:
talk Pebble##43116
accept Clingy##26440
step
Get next to the huge green crystals
Bring Pebble to the crystal formation |q 26440/1 |goto 30.1,47.7
step
Next to you:
talk Pebble##43116
turnin Clingy##26440
accept So Big, So Round...##26441
step
talk Kor the Immovable##42469
turnin So Big, So Round...##26441 |goto 34.3,34.3
accept Petrified Delicacies##26507 |goto 34.3,34.3
accept Rock Bottom##26575 |goto 34.3,34.3
stickystart "petstonebat"
step
kill Gorgonite##43339 |q 26575/1 |goto 47.6,26.8
step
label "petstonebat"
clicknpc Petrified Stone Bat##43182+
collect 12 Petrified Stone Bat##58959 |q 26507/1 |goto 47.5,26.8
step
Next to you:
talk Pebble##43116
turnin Petrified Delicacies##26507
step
talk Kor the Immovable##42469
turnin Rock Bottom##26575 |goto 34.3,34.3
accept Steady Hand##26576 |goto 34.3,34.3
accept Rocky Upheaval##26577 |goto 34.3,34.3
step
talk Terrath the Steady##42466
turnin Steady Hand##26576 |goto 39.9,19.4
accept Don't. Stop. Moving.##26656 |goto 39.9,19.4
step
talk Terrath the Steady##42466
Tell him you are ready to escort a group of elementals across the open.
Speak to Terrath the Steady |q 26656/1 |goto 39.9,19.4
step
Go to this spot
Escort 5 Opalescent Guardians to safety |q 26656/2 |goto 51.1,14.7
|tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
step
talk Terrath the Steady##42466
turnin Don't. Stop. Moving.##26656 |goto 39.9,19.4
accept Hard Falls##26657 |goto 39.9,19.4
accept Fragile Values##26658 |goto 39.9,19.4
stickystart "stondrak"
step
kill Stone Trogg Beast Tamer##43598
|tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
collect Stonework Mallet##59323 |q 26658/1 |goto 35.4,22.5
step
label "stondrak"
kill 6 Stone Drake##42522 |q 26657/1 |goto 36.5,18.8
|tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
talk Terrath the Steady##42466
turnin Hard Falls##26657 |goto 40.0,19.4
turnin Fragile Values##26658 |goto 40.0,19.4
accept Resonating Blow##26659 |goto 40.0,19.4
step
Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
Strike the Pale Resonating Crystal |q 26659/1 |goto 32.7,24.3
kill Aeosera##43641
|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
Defeat Aeosera |q 26659/2 |goto 32.7,24.3
step
talk Terrath the Steady##42466
turnin Resonating Blow##26659 |goto 33.1,24.1
If Terrath the Steady doesn't spawn at the appropriate spot, go to [40.0,19.4]
step
talk Gorsik the Tumultuous##42472
turnin Rocky Upheaval##26577 |goto 72.2,54.0
accept Doomshrooms##26578 |goto 72.2,54.0
accept Gone Soft##26579 |goto 72.2,54.0
accept Familiar Intruders##26580 |goto 72.2,54.0
step
talk Windspeaker Lorvarius##43395
turnin Familiar Intruders##26580 |goto 71.8,47.6
accept A Head Full of Wind##26581 |goto 71.8,47.6
step
kill 8 Fungal Behemoth##42475+ |q 26579/1 |goto 73.6,40.8
kill Doomshroom##43388+
Destroy 10 Doomshrooms |q 26578/1 |goto 73.6,40.8
Gather a sample of the red mist |q 26581/1 |goto 73.6,40.8
|tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
You will be able to find more Fungal Behemoths and Doomshrooms around [76.6,44.4]
step
talk Windspeaker Lorvarius##43395
turnin A Head Full of Wind##26581 |goto 71.8,47.6
accept Unnatural Causes##26582 |goto 71.8,47.6
step
talk Gorsik the Tumultuous##42472
turnin Doomshrooms##26578 |goto 72.2,54.0
turnin Gone Soft##26579 |goto 72.2,54.0
turnin Unnatural Causes##26582 |goto 72.2,54.0
accept Shaken and Stirred##26584 |goto 72.2,54.0
accept Corruption Destruction##26585 |goto 72.2,54.0
step
talk Ruberick##43442
accept Wrath of the Fungalmancer##26583 |goto 68.5,26.4
step
Enter the cave |goto 68.6,29.1 < 5 |q 26583 |walk
talk Earthmender Norsala##43503
Tell her you're ready when she is |q 26583/1 |goto 69.8,31.9
kill Fungalmancer Glop##43372 |q 26583/2 |goto 69.8,31.9
|tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, avoid the Boomshrooms he creates.
step
Follow the path up |goto 70.2,33.8 < 5 |q 26583 |walk
Leave the cave |goto 68.6,29.1 < 5 |q 26583 |walk
talk Ruberick##43442
turnin Wrath of the Fungalmancer##26583 |goto 68.5,26.3
step
kill 8 Verlok Pillartumbler##43513+ |q 26584/1 |goto 69.4,24.8
click Verlok Miracle-Grow##204410
collect 8 Verlok Miracle-Grow##59123 |q 26585/1 |goto 69.4,24.8
step
talk Gorsik the Tumultuous##42472
turnin Shaken and Stirred##26584 |goto 72.2,54.0
turnin Corruption Destruction##26585 |goto 72.2,54.0
accept At the Stonemother's Call##26750 |goto 72.2,54.0
step
talk Therazane##42465
turnin At the Stonemother's Call##26750 |goto 56.3,12.2
accept Audience with the Stonemother##26752 |goto 56.3,12.2
step
Watch the dialogue
Attend the Stonemother's Audience |q 26752/1
step
talk Earthcaller Torunscar##43809
turnin Audience with the Stonemother##26752 |goto 56.1,13.5
accept Rallying the Earthen Ring##26827 |goto 56.1,13.5
step
talk Examiner Rowe##44823
accept The Twilight Plot##27005 |goto Deepholm 51.2,50.0
step
talk Reliquary Jes'ca Darksun##44818
accept Fly Over##27008 |goto 51.2,50.0
step
Go to this spot next to the big white portal
Investigate the Master's Gate |q 27008/1 |goto 39.0,74.2
step
kill Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
collect Masters' Gate Plans##60745 |q 27005/1 |goto 40.1,72.2
step
talk Examiner Rowe##44823
turnin The Twilight Plot##27005 |goto 51.2,50.0
step
talk Reliquary Jes'ca Darksun##44818
turnin Fly Over##27008 |goto 51.2,50.0
accept Fight Fire and Water and Air with...##27043 |goto 51.2,50.0
step
talk Examiner Rowe##44823
accept Decryption Made Easy##27041 |goto 51.2,50.0
stickystart "decryptengine"
step
kill Bound Water Elemental##44886
Acquire the Water Ward |q 27043/2 |goto 40.8,66.3
step
kill Bound Fire Elemental##44887
Acquire the Fire Ward |q 27043/1 |goto 36.0,67.4
step
kill Bound Air Elemental##44885
Acquire the Air Ward |q 27043/3 |goto 40.5,72.4
step
label "decryptengine"
click One-Time Decryption Engine##205145
Decrypt 6 Plans |q 27041/1 |goto 40.2,67.5
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Decryption Made Easy##27041
accept The Wrong Sequence##27059
step
click the Waygate Controller##205161
Destroy the Waygate |q 27059/1 |goto 39.1,73.9
step
kill Haethen Kaul##44835 |q 27042/4 |goto 39.9,62.2
|tip He's up on a huge floating rock.
step
talk Examiner Rowe##44823
turnin The Wrong Sequence##27059 |goto 51.2,50.0
accept That's No Pyramid!##28293 |goto 51.2,50.0
step
talk Reliquary Jes'ca Darksun##44818
turnin Fight Fire and Water and Air with...##27043 |goto 51.2,50.0
step
Talk with Windspeaker Lorvarius, Yuldris Smolderfury, Tawn Winterbluff, Earthcaller Yevaa and Tharm Wildfire at the below locations:
[48.5,50.1]
[47.4,50.9]
[48.1,49.9]
Tell them you are joining an assault on Lorthuna's Gate and they are needed.
Rally 5 Earthen Ring |q 26827/1 |goto 48.0,53.7
step
talk Maruut Stonebinder##43065
turnin Rallying the Earthen Ring##26827 |goto 49.6,53.0
accept Our Part of the Bargain##26828 |goto 49.6,53.0
step
talk Therazane##44025
turnin Our Part of the Bargain##26828 |goto 63.3,25.0
accept The Stone March##26829 |goto 63.3,25.0
accept Therazane's Mercy##26832 |goto 63.3,25.0
step
talk Boden the Imposing##44080
accept The Twilight Flight##26831 |goto 62.6,26.9
stickystart "twiprecult"
step
kill High Priestess Lorthuna##42914
|tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
Defeat High Priestess Lorthuna |q 26832/2 |goto 62.4,31.8
step
kill Boldrich Stonerender##42923
Defeat Boldrich Stonerender |q 26832/1 |goto 58.9,32.9
step
kill Zoltrik Drakebane##42918
|tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
Defeat Zoltrik Drakebane |q 26831/1 |goto 63.1,38.1
step
talk Terrath the Steady##42614
turnin The Twilight Flight##26831 |goto 64.1,36.9
step
label "twiprecult"
kill Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
kill 15 Twilight Precipice Cultists |q 26829/1 |goto 60.3,33.2
step
talk Therazane##44025
turnin The Stone March##26829 |goto 63.3,25.0
turnin Therazane's Mercy##26832 |goto 63.3,25.0
accept Word In Stone##26833 |goto 63.3,25.0
step
talk Maruut Stonebinder##43818
turnin Word In Stone##26833 |goto 49.6,53.0
accept Undying Twilight##26875 |goto 49.6,53.0
step
kill 12 Twilight Invaders |q 26875/1 |goto 50.7,49.6
kill Desecrated Earthrager##44683 |q 26875/2 |goto 50.7,49.6
Click the Quest Complete box that displays on the right side of the screen under your minimap
turnin Undying Twilight##26875
accept The Binding##26971
step
kill High Priestess Lorthuna##43837 |q 26971/1 |goto 49.6,52.9
step
talk Earthcaller Torunscar##43835
turnin The Binding##26971 |goto 49.6,52.9
step
talk Therazane##43792
accept The Stone Throne##26709 |goto 49.8,53.4
step
talk Therazane##42465
turnin The Stone Throne##26709 |goto 56.4,12.1
step
At this point you can do the daily quests at Therazane to gain reputation.
Click here to begin daily quests. |confirm
step
label "daily"
talk Felsen the Enduring##43805
accept Fear of Boring##27046 |goto Deepholm,56.1,14.4
accept Motes##27047 |goto Deepholm,56.1,14.4
accept Beneath the Surface##28488 |goto Deepholm,56.1,14.4
|tip This quest can be offered at random and may not be offered everyday.
step
talk Terrath the Steady##43806
accept The Restless Brood##28391 |goto 56.6,14.1
|tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
only if rep ('Therazane') >= Revered
step
talk Gorsik the Tumultuous##43804
accept Soft Rock##27049 |goto 57.3,12.5
accept Fungal Fury##27050 |goto 57.3,12.5
step
talk Pyrite Stonetender##44945
accept Lost In The Deeps##26710 |goto 55.4,14.2
|tip This quest can be offered at random and may not be offered everyday.
step
talk Ruberick##44973
accept Through Persistence##27051 |goto 59.6,14.0
accept Glop, Son of Glop##28390 |only if rep ('Therazane') >= Revered
|tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
step
Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
Strike the Pale Resonating Crystal |q 28391/1 |goto 32.7,24.3
kill Aeosera##43641
|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
Defeat Aeosera |q 28391/2 |goto 32.7,24.3
only if rep ('Therazane') >= Revered
step
talk Terrath the Steady##43806
turnin The Restless Brood##28391 |goto 56.6,14.1
only if rep ('Therazane') >= Revered
step
Enter the cave |goto 58.3,25.6 < 5 |future |q 27048 |walk
talk Ricket##44968
accept Underground Economy##27048 |goto 61.3,26.2
|tip This quest can be offered at random and may not be offered everyday.
step
Follow the path inside the cave
Click the Ruby Gemstone Cluster
|tip It looks like 3 dark colored spinning rings with a bunch of red crystals spinning above them.
kill Enormous Gyreworm##48533
collect Ruby Crystal Cluster##64404 |q 28488/1 |goto 66.1,28.1
stickystart "painite"
step
Use Ricket's Tickers next to Deep Alabaster Crystals |use Ricket's Tickers##65514
|tip They look like huge white rocks around this area.
collect 3 Deep Alabaster Crystal##65504 |q 27048/1 |goto 63.6,23.0
step
Follow this path |goto 62.6,23.9 < 5 |q 27048 |walk
Use Ricket's Tickers next to Deep Celestite Crystals |use Ricket's Tickers##65514
|tip They look like huge blue rocks around this area.
collect 3 Deep Celestite Crystal##65507 |q 27048/2 |goto 61.8,19.7
step
Follow this path |goto 62.0,18.0 < 5 |q 27048 |walk
Use Ricket's Tickers next to Deep Amethyst Crystals |use Ricket's Tickers##65514
|tip They look like huge purple rocks around this area.
collect 3 Deep Amethyst Crystal##65508 |q 27048/3 |goto 64.4,18.6
step
Follow this path |goto 65.3,18.4 < 5 |q 27048 |walk
Use Ricket's Tickers next to Deep Garnet Crystals |use Ricket's Tickers##65514
|tip They look like huge red rocks around this area.
collect 3 Deep Garnet Crystal##65510 |q 27048/4 |goto 66.4,20.2
step
label "painite"
All around inside this cave:
kill Gorged Gyreworm##42766+, Gyreworm##44257+
kill 10 Gyreworm |q 27046/1 |goto 63.6,23.9
Click Painite Shards
|tip They look like small green glowing crystals sitting on the ground all around inside this cave.
collect 10 Painite Mote##60791 |q 27047/1 |goto 63.6,23.9
step
talk Pebble##49956
Tell him to follow you
|confirm |q 26710 |goto 63.1,20.8
step
Follow this path |goto 64.2,17.6 < 5 |q 27048 |walk
talk Ricket##44968
turnin Underground Economy##27048 |goto 61.3,26.2
step
Leave the cave |goto 58.3,25.6 < 5 |q 26710 |walk
Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
Bring Pebble to safety |q 26710/1 |goto 58.3,25.6
step
kill 8 Fungal Behemoth |q 27049/1 |goto 74.0,41.2
kill Verlok Grubthumper##43367+, Verlok Shroomtender##43368+
collect Bag of Verlok Miracle-Grow##60767 |q 27051/1 |goto 74.0,41.2
Click Sprouting Crimson Mushrooms
|tip They look like tiny mushrooms on the ground around this area.  Try to only click the solid blue, solid red or white-brown ones.  The blue ones with red spots will explode and hurt you.
Destroy 10 Freshly Sprouted Mushrooms |q 27050/1 |goto 74.0,41.2
step
Enter the cave |goto 68.6,29.1 < 5 |q 28390 |walk
talk Earthmender Norsala##43503
Tell her you're ready when she is
kill Fungalmancer Glop |q 28390/1 |goto 69.8,31.9
|tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
step
Follow the path up |goto 70.2,33.8 < 5 |q 28390 |walk
Leave the cave |goto 68.6,29.1 < 5 |q 28390 |walk
talk Ruberick##44973
turnin Through Persistence##27051 |goto 59.6,14.0
turnin Glop, Son of Glop##28390 |only if rep ('Therazane') >= Revered |goto 59.6,14.0
step
talk Felsen the Enduring##43805
turnin Fear of Boring##27046 |goto Deepholm,56.1,14.4
turnin Motes##27047 |goto Deepholm,56.1,14.4
turnin Beneath the Surface##28488 |goto Deepholm,56.1,14.4
step
talk Pyrite Stonetender##44945
turnin Lost In The Deeps##26710 |goto 55.4,14.2
step
talk Gorsik the Tumultuous##43804
turnin Soft Rock##27049 |goto 57.3,12.5
turnin Fungal Fury##27050 |goto 57.3,12.5
step
Once you've completed the daily quests, you will have to wait a day in order to do them again.
To go to the first step of the dailies, click here. |confirm |next "daily" |only if rep('Therazane')<=Revered
Earn Exalted reputation with Therazane |complete rep('Therazane')==Exalted |next "exalted"
step
label "exalted"
Congratulations, you are now Exalted with Therazane!
]])
