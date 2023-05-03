local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("AchievementsCSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Nine Afterlives",{
author="support@zygorguides.com",
description="\nTo earn this achievement, find and pet all of the kittens in Maldraxxus.",
achieveid={14634},
patch='90001',
startlevel=50,
keywords={"Shadowlands", "Exploration"},
},[[
step
Follow the path |goto Maldraxxus/0 51.08,60.17
clicknpc Pus-In-Boots##174223
|tip Under the bridge next to the camp fire.
Pet Pus-In-Boots |achieve 14634/3 |goto 50.25,60.28
step
clicknpc Meowmalade##174237
|tip Inside the box.
Pet Meowmalade |achieve 14634/9 |goto 34.31,53.12
step
clicknpc Snots##174221
|tip On top of the box.
Pet Snots|achieve 14634/2 |goto 31.97,57.05
step
Jump up here |goto Maldraxxus/0 47.81,33.94 < 5 |only if walking
|tip Jump up the mushrooms to reach Moldstopheles.
clicknpc Moldstopheles##174236
|tip On top of the mushroom.
Pet Moldstopheles |achieve 14634/8 |goto 47.53,33.74
step
Follow the path up |goto 50.24,27.14
clicknpc Lime##174230
|tip On top of the giant bone.
Pet Lime |achieve 14634/6 |goto 51.09,27.58
step
Follow the path up |goto 50.19,16.91
clicknpc Mayhem##174234
|tip If you are part of the Necrolord Covenant and have completed the second part of the campaign, this pet may be phased out.
|tip A player from another covenant can invite you and initiate quest sync to make Mayhem visible.
Pet Mayhem |achieve 14634/7 |goto 49.46,17.62
step
Follow the path up |goto 64.15,31.30 < 10 |only if walking
clicknpc Mr. Jigglesworth##174226
|tip It walks around the podium in the air around this area.
Pet Mr. Jigglesworth |achieve 14634/5 |goto 64.87,22.31
step
clicknpc Envy##174224
|tip At the center of the alter.
Pet Envy |achieve 14634/4 |goto 65.23,50.65
step
Inside the Plaguefall Dungeon (Normal):
click Hairball
|tip Hairball is found inside the Festering Sanctum after the third boss.
Pet Hairball |achieve 14634/1 |goto Plaguefall/0 45.32,36.97
step
_Congratulations!_
You Earned the "Nine Afterlives" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Parasoling",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the \"Parasol Peril\" world quest ten times.",
achieveid={14766},
patch='90001',
startlevel=50,
keywords={"Shadowlands", "Exploration"},
},[[
step
Complete the World Quest "Parasol Peril" 10 times
|tip This will not be available every day.
|tip Refer to the World Quest Guides to accomplish this.
Earn the "Parasoling" Achievement |achieve 14766
|tip
Parasol Peril is Currently Active |only if questactive(61141) and not completedq(61141)
Parasol Peril is Not Currently Active |only if not questactive(61141) or completedq(61141)
step
_Congratulations!_
You Earned the "Parasoling" Achievement
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Adventurer of Maldraxxus",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievements contained within this guide.",
achieveid={14308},
patch='90001',
startlevel=60,
keywords={"Shadowlands","Exploration","Special","Encounter"},
},[[
step
kill Corpsecutter Moroc##157058
|tip You may need a group for this.
Slay Corpsecutter Moroc |achieve 14308/1 |goto Maldraxxus/0 26.39,26.33
step
talk Pandemis##161841
Ask him _"Wear a mask?"_
Borrow a Gas Mask |havebuff spell:338920 |achieve 14308/2  |goto Maldraxxus/0 59.71,71.18
step
kill Scunner##158406
|tip You may need a group for this.
Slay Scunner |achieve 14308/2 |goto 62.12,75.79
step
talk Synder Sixfold##157076
Ask him _"Can I borrow the orb again?"_
|tip If he has the "Ani-Matter Animator" quest instead of this dialogue option, accept the quest instead.
collect Ani-Matter Orb##175827 |achieve 14308/3 |goto Maldraxxus/0 26.30,42.66
step
use the Ani-Matter Orb##175827
|tip Use it on "Bone Remains" around this area until a "Bone Mass" appears.
|tip When the Bone Mass has spawned, use the Ani-Matter Orb while standing on top of it to spawn Zargox.
kill Zargox the Reborn##157125
Slay Zargox the Reborn |achieve 14308/3 |goto 28.94,51.32
step
kill Collector Kash##159105 |achieve 14308/4 |goto 48.78,23.78
|tip It walks around this area.
step
kill Boneweave Spiderling##159901
|tip They look like small, neutral spiders around this area.
|tip Simply walking over them will kill them.
|tip You must squish around 100 of them to spawn Ravenomous.
|tip When you see the "Who has left me so many juicy spiderling corpses!" dialogue, the rare has appeared.
kill Ravenomous##159753
Slay Ravenomous |achieve 14308/5 |goto 54.06,19.40
step
kill Sister Chelicerae##159886
|tip You may need a group for this.
|tip Destroy the webbing to draw her out of the cave.
Slay Sister Chelicerae |achieve 14308/6 |goto 55.51,23.62
step
kill Taskmaster Xox##160059
|tip Be on the look out for the "I'm gonna tell!" dialogue when they die, as it indicates that Xox is about to spawn.
|tip He shares a spawn with Taskmaster Mortis, Taskmaster Joyless and Taskmaster Bloata.
|tip If one of them are here instead, kill them to try and get Taskmaster Xox to spawn.
Slay Taskmaster Xox |achieve 14308/7 |goto 50.56,20.13
step
click Fuseless Special##339646
|tip They look like sparkling green fel bombs inside crates around this area.
Cast _"Fuseless Special"_ |cast 313451
|tip Throw the bomb at the Indomitable Schmitd to remove its shield.
kill Indomitable Schmitd##161105 |achieve 14308/8 |goto 38.79,43.33
step
kill Nirvaska the Summoner##161857
|tip He will only spawn when the "Deadly Reminder" world quest is active.
Slay Nirvaska the Summoner |achieve 14308/9 |goto 50.34,63.30
step
kill Razorthread Weaver##162220 |goto 24.0,42.8
|tip Killing these will eventually trigger the Thread Mistress to spawn.
|tip It may take up to 45 minutes.
kill Thread Mistress Leeda##162180 |achieve 14308/10 |goto 24.0,42.8
step
click Bloody Lump##341460
|tip Clicking has a chance to spawn the rare.
kill Ravenous Bloodlouse##162504+
kill Smorgas the Feaster##162528 |achieve 14308/11 |goto 42.27,53.90
step
kill Tahonta##162586 |achieve 14308/12 |goto Maldraxxus/0 44.21,51.32
step
kill Sabriel the Bonecleaver##168147
|tip This requires a player with the Necrolord Covenant to summon.
|tip They will need to pick up the daily quests for the arena, and she will spawn after the daily quest npc is defeated.
Slay Sabriel the Bonecleaver |achieve 14308/13 |goto 50.67,47.37
step
clicknpc Unusual Egg##162761+
|tip Destroy all of the Unusual Eggs to make Gristlebeak attackable.
kill Gristlebeak##162588 |achieve 14308/14 |goto 56.33, 50.56
step
kill Devour'us##162669
|tip It walks around this area.
Slay Devour'us |achieve 14308/15 |goto Maldraxxus/0 45.59,27.05
step
kill Nerissa Heartless##162690 |achieve 14308/16 |goto 66.03,35.32
|tip She walks around this area.
step
kill Deadly Dapperling##162711 |achieve 14308/17 |goto 76.85,57.06
step
kill Bubbleblood##162727
|tip Kill the Clotting Mass adds that spawn to prevent it from healing.
Slay Bubbleblood |achieve 14308/18 |goto Maldraxxus/0 52.26,35.09
step
kill Deepscar##162797 |achieve 14308/19 |goto 46.73,44.89
It can also spawn at: |notinsticky
[48.11,51.86]
[53.95,45.52]
step
kill Warbringer Mal'Korak##14308
|tip You may need a group for this.
Slay Warbringer Mal'Korak |achieve 14308/20 |goto Maldraxxus/0 33.53,80.86
step
kill Necromantic Anomaly##174108 |achieve 14308/21 |goto 72.88,28.92
step
_Congratulations!_
You Earned the "Adventurer of Maldraxxus " Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Adventurer of Ardenweald",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievements contained within this guide.",
achieveid={14309},
patch='90001',
startlevel=60,
keywords={"Shadowlands","Exploration","Special","Encounter"},
},[[
step
kill Deathbinder Hroth##164477 |achieve 14309/1 |goto Ardenweald/0 34.64,67.99
step
Search for the "Mysterious Mushroom Ring" star on your mini map
Check these locations for spawn points:
[59.95,29.40]
[36.50,47.90]
[32.70,44.77]
[57.93,29.36]
[47.91,40.20]
|tip To summon, you will need 3 players.
|tip Designate numbers to each.
|tip Player 1 /dance with Player 2.
|tip Player 2 /dance with Player 3.
|tip Player 3 /dance with Player 1.
kill Macabre##164093 |achieve 14309/3
step
Kill enemies anywhere in Ardenweald
|tip The drop is zone specific, so grinding skinning or questing normally is ideal.
collect Unusually Large Mushroom##175247 |achieve 14309/5 |goto Ardenweald/0 33.2,31.6
step
click Damp Loam##344732
|tip Humon'gozz will appear shortly after.
|tip You may need a group for this.
kill Humon'gozz |achieve 14309/5 |goto 32.42,30.26
step
clicknpc Deifir the Untamed##164238
|tip It runs around this area.
|tip Wait for it at this spot.
|tip Use the "Harry" ability on your action bar to do some damage as it continues to run.
|tip Use the "Stunning Strike" ability on your action bar to stun it and then do as much burst damage as you can.
kill Deifir the Untamed##164238 |achieve 14309/7 |goto 49.58,23.86
step
Cast _"Soulshape"_ |cast 310143
Enter Soulshape |havebuff spell:310143 |achieve 14309/9 |goto Ardenweald/0 39.48,61.36
step
Enter the cave |goto 36.91,60.17 < 7 |walk
Run through the barrier |goto 37.04,59.96 < 7 |walk
|tip You can only pass through the barrier while in Soulshape.
kill Skuld Vit##164415 |achieve 14309/9 |goto 37.67,59.17
|tip Inside the cave.
step
kill Rotbriar Scrapper##165050
|tip These have a chance to spawn Mymaen.
|tip There may be an internal cooldown spawn timer for this, but it's not confirmed.
kill Mymaen##165053 |acheive 14309/11 |goto 61.76,24.47
step
Enter the cave |goto Ardenweald/0 58.43,31.74 < 15 |walk
Enter the tunnel |goto 58.01,30.91 < 7 |walk
Destroy 5 to 10 eggs around this area
|tip This should spawn the rare.
|tip It's been reported that this rare is bugged.
kill Egg-Tender Leh'go##167851 |achieve 14309/13 |goto 57.80,29.60
step
kill The Slumbering Emperor##167721
|tip Entering the mist in this area will cause you to fall asleep after a few seconds.
|tip Quickly enter the mist with a movement ability and then AoE to find The Slumbering Emperor.
Slay The Slumbering Emperor |achieve 14309/15 |goto Ardenweald/0 59.30,46.60
step
kill Dustbrawl##163229 |achieve 14309/17 |goto Ardenweald/0 48.12,76.99
|tip It walks around this area.
step
click Sparkling Animaseed##356676
Gather the Sparkling Animaseed |havebuff spell:338045 |achieve 14309/19 |goto Ardenweald/0 30.44,55.54
step
Cast _"Animaseed Light"_ |cast Animaseed Light##338045
|tip It appears as a button on the screen.
|tip Use it on Valfir the Unrelenting to make him vulnerable to attack.
kill Valfir the Unrelenting##168647 |achieve 14309/19 |goto 30.11,55.36 |future
step
Enter the cave |goto Ardenweald/0 68.41,29.34 < 7 |walk
kill Faeflayer##171688 |achieve 14309/21 |goto 68.61,27.65
|tip Inside the cave behind a waterfall.
step
click Great Horn of the Runestag##345446 |goto Ardenweald/0 49.66,19.74 < 5 |walk
|tip This has about a two hour respawn timer.
|tip Clicking the horn will cause the Mystic Rainbowhorn to spawn.
|tip It spawns and runs around at the following location.
kill Mystic Rainbowhorn##164547 |achieve 14309/2 |goto 49.71,20.55
step
Kill enemies around this area
kill Chompy##164110
|tip Chompy has a low chance of spawning when you kill other enemies.
|tip Killing Chompy will spawn Gormtamer Tizo.
|tip A group is recommended to make this easier and faster.
kill Gormtamer Tizo##164107 |acheive 14309/4 |goto Ardenweald/0 27.88,52.48
step
clicknpc Wriggling Tendril##164179+
|tip Click it and walk away to pull it out of the ground.
kill Wrigglemortis##164147 |achieve 14309/6 |goto Ardenweald/0 58.34,61.79
step
click Basket of Enchanted Wings##349383
Gain the Faerie's Blessing Buff |havebuff spell:313053 |achieve 14309/8 |goto Ardenweald/0 51.07,57.39
step
Fly up to Old Ardeite
|tip The Faerie's Blessing buff allows you to fly when double jumping.
|tip Use it to fly up to Old Ardeite and pull it.
|tip In order for it to not bug once you reach the ground, you may have to remove the buff, pull Old Areite as you fall, and then use something that slows your fall (Heroic Leap, Goblin Glider Kit, etc) before you hit the ground.
kill Old Ardeite##164391 |achieve 14309/8 |goto 51.19,57.63
|tip It flies around this area while very high up in the air.
step
kill Hunter Vivanna##160448 |achieve 14309/10 |goto Ardenweald/0 67.46,51.47
step
talk Daffodil##171684
Ask him _"Can't say I have. What's his deal?"_
And then _"So what can you do about it?"_
Watch the dialogue
kill Rotbriar Boggart##167724 |achieve 14309/12 |goto Ardenweald/0 65.78,23.90
step
clicknpc Dormant Blossom##167928+
|tip You may need to click them multiple times.
kill Rootwrithe##167726 |achieve 14309/14 |goto Ardenweald/0 65.05,44.33
|tip It spawns after clicking the Dormant Blossoms.
step
kill Soultwister Cero##171451 |achieve 14309/20 |goto Ardenweald/0 72.42,51.75
step
kill Evolving Mite##165420+
|tip Kill them on the dust cloud that appears here.
kill Gormbore##163370 |achieve 14309/18 |goto Ardenweald/0 53.60,75.96
|tip It spawns after killing enough Evolving Mites.
step
Start here |goto Ardenweald/0 18.06,62.08 < 7 |only if walking
Jump to the vine |goto 17.71,62.14 < 7 |only if walking
Run up the vine |goto 17.75,62.88 < 7 |only if walking
Run up the second vine |goto 18.10,63.48 < 7 |only if walking
Carefully run along the wall |goto 19.41,63.08 < 5 |only if walking
click Cracked Soulweb##355800
|tip It looks like a small branch on the ground behind the broken cart.
collect 1 Broken Soulweb##181243 |goto 19.77,63.44 |q 60306 |future
step
collect 10 Lightless Silk##173204 |q 60306 |future
|tip Use the "Lightless Silk" farming guides to accomplish this.
|tip You can also purchase them from the Auction House.
step
Complete the "Trouble at the Gormling Corral" Questline in Ardenweald |achieve 14800/3 |q 60306 |future
|tip Use the "Ardenweald" leveling guide to accomplish this.
step
Complete the "Tricky Spriggans" Questline in Ardenweald |achieve 14800/4 |q 60306 |future
|tip Use the "Ardenweald" leveling guide to accomplish this.
step
talk Elder Gwenna##165704
Ask her _"Can you tell me anything about this broken soulweb?"_
Then _"I have the materials here."_
collect 1 Repaired Soulweb##181242 |goto 50.42,33.04 |q 60306 |future
step
talk Elite Queensguard##158555
Tell him _"I wish to speak with Ysera."_
Click Here After Requesting an Audience |confirm |goto 47.65,54.05 |q 60306 |future
|only if not NightFae
step
talk Ysera##160262
|tip She will walk out to you.
Ask her _"Ysera, this soulweb has the ability to capture dreams, but requires power to do so. Can you help?"_
collect 1 Dream Catcher##178675 |goto Heart of the Forest/0 69.34,45.71 |q 60306 |future
|only if not NightFae
step
talk Ysera##160262
Ask her _"Ysera, this soulweb has the ability to capture dreams, but requires power to do so. Can you help?"_
collect 1 Dream Catcher##178675 |goto Heart of the Forest/0 44.78,38.94 |q 60306 |future
|only if  NightFae
step
use the Dream Catcher##178675
Gain The Shadow's Dream Buff |havebuff spell:327083 |goto Ardenweald/0 60.21,49.51 |q 60306 |future
|tip This buff will only last for 5 minutes and is required to see Night Mare.
step
'|use the Dream Catcher##178675
kill Night Mare##168135 |achieve 14309/16 |goto Ardenweald/0 57.87,49.83
|tip It runs north and south along the east side of Hibernal Hollow.
|tip Wait here for it to run by.
|tip It will appear on your mini map as a gold star.
|tip You may need help with this.
|tip If The Shadow's Dream buff wears off you'll need to use the Dream Catcher again to reapply it.
step
_Congratulations!_
You Earned the "Adventurer of Ardenweald" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Adventurer of Bastion",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievements contained within this guide.",
achieveid={14307},
patch='90001',
startlevel=60,
keywords={"Shadowlands","Exploration","Special","Encounter"},
},[[
step
click Depleted Anima Canister##348830+
|tip They look like metal barrels on the ground around this area and inside the building.
collect 10 Weak Anima Mote##172451 |achieve 14307/1 |goto Bastion/0 42.88,80.51
step
Enter the building |goto 42.75,80.91 < 10 |walk
clicknpc Herculon##158659 |goto 42.90,82.65 < 5 |walk
|tip Inside the building.
Choose _<Supply [Weak Anima Motes]>_
kill Herculon##158659
|tip He will awaken and become attackable after giving him all ten Weak Anima Motes.
click Aspirant's Chest##336428 |achieve 14307/1 |goto 42.94,83.02
step
talk Orator Kloe##161441
|tip Inside the building.
|tip Talk to her again to spawn each enemy.
Tell her _"I am."_
kill Sigilback##161527 |achieve 14307/3 |goto Bastion/0 55.35,80.24
step
talk Orator Kloe##161441
|tip Inside the building.
|tip Talk to her again to spawn each enemy.
Tell her _"I am."_
kill Cloudtail##161530 |achieve 14307/4 |goto Bastion/0 55.35,80.24
step
talk Orator Kloe##161441
|tip Inside the building.
|tip Talk to her again to spawn each enemy.
Tell her _"I am."_
kill Nemaeus##161529 |achieve 14307/5 |goto Bastion/0 55.35,80.24
step
talk Orator Kloe##161441
|tip Inside the building.
|tip Talk to her again to spawn each enemy.
Tell her _"I am."_
kill Aethon##161528 |achieve 14307/26 |goto Bastion/0 55.35,80.24
step
click Horne of Courage |goto 41.64,54.53
|tip Requires "Kyrian Covenant" to use
kill Wingflayer the Cruel##167078 |achieve 14307/7|goto Bastion/0 40.63,53.06
step
Enter the building |goto Bastion/0 40.98,47.48 < 10 |walk
kill Dionae##163460 |achieve 14307/9 |goto 41.35,48.87
|tip Inside the building.
|tip When she flies into the air to attack, click the Anima Spears to remove her shield and bring her back down.
click Stewart's Stewpendous Stew##344588
step
Stand in the ring of Cloudracer corpses
|tip Basilofos is avilable if you get marked with purple eyes and a message appears in chat.
|tip Stay in the circle and wait, Basilofos will slowly fly down and become attackable.
kill Basilofos, King of the Hill##170659 |achieve 14307/11 |goto Bastion/0 48.53,50.70
step
kill Anima-Starved Cloudfeather##158110+
|tip Kill Anima-Starved Cloudfeathers around this area to summon the Cloudfeather Guardian.
kill Cloudfeather Guardian##170932 |achieve 14307/13 |goto Bastion/0 50.43,58.04
|tip It flies around this area.
step
kill Unstable Memory Fragment##171018+
|tip Hit it once to aggro and drag it to another one, they will combine and gain stacks of Instability.
|tip Only attack the original Unstable Memory Fragment then kite it around to the other yellow, neutral Unstable Memory Fragments.
|tip Keep doing this until it has ten stacks of Instability and it will transform into the Rare.
|tip If there are no Unstable Memory Fragments here then the required event is currently not active and the Rare cannot be summoned.
kill Unstable Memory##171008 |achieve 14307/15 |goto Bastion/0 43.48,25.24
step
clicknpc Swelling Tear##171012
|tip If the Rare isn't already there, clicking one of these nearby can cause it to spawn.
kill Xixin the Ravening##171040 |achieve 14307/17 |goto Bastion/0 56.11,14.47
|tip It shares a spawn with Worldfeaster Chronn and Embodied Hunger.
It may also be found at: |notinsticky
[52.21,32.82]
[63.45,35.90]
[59.65,51.43]
[47.99,42.96]
step
Enter the building |goto Bastion/0 66.41,43.68 < 7 |walk
Click the scrolls in the following order:
click Mercia's Legacy: Chapter One##354283 |goto 66.19,44.12 < 3 |walk
click Mercia's Legacy: Chapter Two##354284 |goto 65.90,44.12 < 3 |walk
click Mercia's Legacy: Chapter Three##354285 |goto 65.74,43.96 < 3 |walk
click Mercia's Legacy: Chapter Four##354286 |goto 65.73,43.46 < 3 |walk
click Mercia's Legacy: Chapter Five##354287 |goto 65.93,43.17 < 3 |walk
click Mercia's Legacy: Chapter Six##354288 |goto 66.20,43.27 < 3 |walk
|tip After clicking each Mercia's Legacy scroll, talk to the Echo of Mercia.
talk Echo of Mercia##157979
|tip Inside the building.
Tell her _"I will find the tome."_
Gain the Humble Gaze Buff |havebuff spell:333779 |goto 65.91,43.68 |q 61002 |future
step
Maintain the Humble Gaze Buff:
|tip This buff only lasts five minutes and is required to find the final Mercia's Legacy scroll.
|tip If it runs out talk to the Echo of Mercia to reapply it.
click Mercia's Legacy: Chapter Seven##354467
|tip It spawns outside around this area.
|tip Look for a purple glow on a table.
collect Mercia's Legacy: Chapter Seven##180569 |goto 65.27,44.48 |q 61002 |future
It can also be found around: |notinsticky
[65.07,41.38]
[65.38,42.91]
step
talk Echo of Mercia##157979
|tip Inside the building.
Choose _<Offer the tome.>_
kill Collector Astorestes##171014 |achieve 14307/19 |goto 65.91,43.68
step
Kill enemies around this area
kill Bookkeeper Mnemis##171189 |achieve 14307/21 |goto Bastion/0 55.82,62.49
|tip He walks around this area.
|tip He shares spawns with the Converted Praetor in the area.
|tip Kill Converted Praetors around this area to spawn him if he's not already up.
step
talk Echo of Aella##171255
|tip She walks around this area.
Tell her _"I accept your challenge."_
kill Echo of Aella##171255 |achieve 14307/23 |goto 47.02,64.30
step
click Anima Gateway## |goto Bastion/0 39.13,56.12 < 7 |only if walking
Kill enemies around this area
|tip After killing enough enemies Reekmonger will fly down and become attackable.
kill Reekmonger##171327 |achieve 14307/25 |goto 30.36,55.17
step
This Rare can only be spawned during the Vesper Repair event
|tip A minimum of three players are required to summon her.
|tip Each player needs to stand on a plate and click the Ancient Incense.
click Ancient Incense |goto Bastion/0 51.45,68.59 < 10 |walk
Watch the dialogue
Kill the enemies that attack in waves
kill Selena the Reborn##160985 |achieve 14307/27 |goto 51.73,68.83
step
kill Fallen Acolyte Erisne##160721 |achieve 14307/2 |goto Bastion/0 60.42,73.05
|tip She walks around this area.
step
click Cask of Fermenting Purian Fruit##340004+
|tip They look like small metal jars around this area.
|tip Bring them to the baskets in front of Baedos.
|tip If they aren't available then Baedos isn't hungry yet and you'll have to wait.
|tip After feeding him five items he will grow and become attackable.
kill Baedos##160629
click Baedos' Regurgitated Treasure##340058 |achieve 14307/6 |goto Bastion/0 51.34,40.80
step
This Rare can only be spawned during the Vesper Repair event
|tip A minimum of three players are required to summon her.
|tip Each player needs to stand on a plate and click the Ancient Incense.
click Ancient Incense |goto Bastion/0 51.45,68.59 < 10 |walk
Watch the dialogue
Kill the enemies that attack in waves
kill Nikara Blackheart##160882
click Sophia's Gift##339625 |achieve 14307/8 |goto 51.73,68.83
step
Let the Enemies Kill You |goto Bastion/0 27.40,27.38 |achieve 14307/12
|tip You must be dead to see the Dark Watcher.
step
talk Dark Watcher##170623
|tip You must be dead to see her.
Tell her _"I accept your challenge."_
kill Dark Watcher##170623 |achieve 14307/12 |goto 27.82,30.14 |zombiewalk
step
Kill enemies around this area
|tip Killing enough enemies will cause Enforcer Aegeon to spawn.
kill Enforcer Aegeon##171009 |achieve 14307/14 |goto Bastion/0 51.15,19.53
|tip It walks around this area.
step
clicknpc Swelling Tear##171012
|tip If the Rare isn't already there, clicking one of these nearby can cause it to spawn.
kill Embodied Hunger##171013 |achieve 14307/16 |goto Bastion/0 56.11,14.47
|tip It shares a spawn with Xixin the Ravening and Worldfeaster Chronn.
It may also be found at: |notinsticky
[52.21,32.82]
[63.45,35.90]
[59.65,51.43]
[47.99,42.96]
step
clicknpc Swelling Tear##171012
|tip If the Rare isn't already there, clicking one of these nearby can cause it to spawn.
kill Worldfeaster Chronn##171041 |achieve 14307/18 |goto Bastion/0 56.11,14.47
|tip It shares a spawn with Xixin the Ravening and Embodied Hunger.
It may also be found at: |notinsticky
[52.21,32.82]
[63.45,35.90]
[59.65,51.43]
[47.99,42.96]
step
kill Demi the Relic Hoarder##171011 |achieve 14307/20 |goto Bastion/0 37.00,41.80
|tip When attacked he gains a shield buff that absorbs 100 attacks and then he runs around the area.
|tip Clear the area of enemies before pulling him or pull him by stunning to prevent him from putting up the shield buff.
click Relic Hoard##354649
step
click Fragile Humility Scroll##354848
|tip Inside the building.
|tip It looks like an unrolled floating scroll next to tables around this area.
collect Fragile Humility Scroll##180613 |achieve 14307/22 |goto Bastion/0 32.77,20.34 |q 61083
step
clicknpc Aspirant Eolis##171211
use Fragile Humility Scroll##180613
|tip Use it on Aspirant Eolis.
click Aspirant's Belongings##354849 |achieve 14307/22 |goto 32.59,23.36
step
Enter the cave |goto Bastion/0 56.42,46.14 < 7 |walk
click Discarded Phalynx Core##354920
|tip Inside the cave.
collect Discarded Phalynx Core##180651 |achieve 14307/24 |goto 57.01,48.31
step
clicknpc Malfunctioning Clawguard##171300
|tip It walks around inside the cave.
kill Corrupted Clawguard##171010 |achieve 14307/24 |goto 56.90,47.78
step
click Anima Conductor |goto Elysian Hold/0 38.33,67.92
|tip Channel anima to the Citadel of Loyalty.
|tip To summon Orstus and Sotiros, you must be part of the Kyrian covenant.
Click Here to Continue |confirm |achieve 14307/28
step
Click Anima Gateway |goto Bastion/0 24.49,22.78 < 5
click Black Bell
kill Fallacious Aspirant##157054
kill Eliminator Sotiros##156339 |achieve 14307/28 |goto 22.67,22.84
step
collect Skystrider Glider##180445 |achieve 14307/10
|tip This item can be crafted with Ascended Crafting if you are from the Kyrian covenant.
|tip You must progress through the Kyrian covenant's Path of Ascension to unlock the crafting recipe.
|tip It can also be purchased from the Auction House.
|tip Note that the rare you need to fight is a 62 elite, so you will probably need a group.
step
click Ancient Memorial##353807
Gain the Sunrider's Blessing Buff |havebuff spell:332309 |achieve 14307/10 |goto Bastion/0 60.04,93.99
step
Follow the path up |goto 57.53,89.65 < 10 |only if walking
Wait for Sundancer to fly near the cliff |goto 61.17,81.80 < 10 |only if walking
use the Skystrider Glider##180445
|tip This will allow you to float lightly.
|tip You will need to immediately move to Sundancer and click it.
Gain the "Skystrider Glider" Buff |havebuff spell:332308 |achieve 14307/10 |goto 61.70,81.46
step
clicknpc Sundancer##170439
|tip Immediately start spamming the "Soothe" button on-screen until it disappears.
Ride Sundancer |invehicle |achieve 14307/10 |goto 61.70,81.46
step
Subdue Sundancer
|tip Spam the "Soothe" button on-screen until it disappears.
|tip You will take damage until you subdue Sundancer.
Watch the dialogue
Ride Sundancer Back to the Ground |outvehicle |achieve 14307/10 |goto 60.08,93.60
step
talk Sundancer##170548
Choose _<Accept the challenge.>_
kill Sundancer##170548 |achieve 14307/10 |goto 60.25,93.63
|tip You may need a group for this.
|tip You only need to bring it to around 15% health.
stickystart "Group_Information"
step
click Vesper of Loyalty##354036 |goto Bastion/0 32.19,17.84
confirm |achieve 14307/29
step
click Anima Gateway |goto 39.55,19.01 < 7 |only if walking
click Vesper of Wisdom##354095 |goto 39.16,20.36
confirm |achieve 14307/29
step
click Anima Gateway |goto 39.14,56.12 < 7 |only if walking
click Vesper of Courage##354097 |goto 33.38,59.74
confirm |achieve 14307/29
step
click Anima Gateway |goto 69.37,40.32 < 7 |only if walking
click Vesper of Humility##354096 |goto 71.91,38.92
confirm |achieve 14307/29
step
click Anima Gateway |goto 63.47,72.39 < 7 |only if walking
click Vesper of Purity##334847 |goto 64.34,69.84
confirm |achieve 14307/29 |next "Collect_Ascended_Skymane"
step
label "Group_Information"
A group is recommended to complete summon this rare
|tip A group of at least three players is required to ring the five Vesper bells within the five minute time limit.
|tip Place a player at each of the following locations and then ring the bells within five minutes of the first.
|tip If done successfully, you will see the message "The Ascended Council has been assemble! They will arrive in Aspirant's Awakening in 1 minute."
|tip If bells are not active, you will need to wait 1-2 hours for them to respawn to try again.
confirm |achieve 14307/29 |notinsticky
step
label "Collect_Ascended_Skymane"
Kill Champion enemies around this area
|tip This is a difficult fight and will require a group.
click Cache of the Ascended##354175
Defeat "The Ascended Council" |achieve 14307/29
step
_Congratulations!_
You Earned the "Adventurer of Bastion" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Adventurer of Revendreth",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievements contained within this guide.",
achieveid={14310},
patch='90001',
startlevel=60,
keywords={"Shadowlands","Exploration","Special","Encounter"},
},[[
step
Cross the bridge |goto Revendreth/0 77.04,49.72 < 20 |only if walking
Enter the building |goto 78.58,49.72 < 10 |walk
kill Soulstalker Doina##160392 |achieve 14310/1 |goto Revendreth/0 78.93,49.75
|tip Inside the building.
|tip Follow her downstairs and through the portals when she runs away.
step
kill Feral Ritualist##160375+
|tip Kill these until you loot the Scorched Crypt Key.
collect Scorched Crypt Key##177223 |goto Revendreth/0 21.68,36.44
step
click Crypt Door##339822 |goto 21.85,35.92 < 5 |walk
kill Reckless Ritualist##160641+
|tip Downstairs inside the crypt.
kill Innervus##160640 |achieve 14310/3 |goto 21.40,36.16
step
kill Stonefist##159503 |achieve 14310/5 |goto Revendreth/0 31.31,23.24
step
Kill Encroaching enemies around this area
collect 1 Enticing Anima##173939 |achieve 14310/6 |goto Revendreth/0 40.08,72.10
step
use Enticing Anima##173939
kill Worldedge Gorger##160821 |achieve 14310/6 |goto 38.61,72.21
step
Kill enemies around this area
|tip Kill enemies inside the broken tower and around this area to free the friendly Darkwall Captives.
|tip Walk next to them after killing enemies to make sure they run free.
|tip Releasing enough Darkwall Captives will cause Executioner Adrastia to spawn.
kill Executioner Adrastia##161310 |achieve 14310/8 |goto Revendreth/0 43.05,51.83
|tip She flies around this area.
step
Enter the crypt |goto Revendreth/0 67.45,82.33 < 7 |walk
Kill enemies that attack in waves
|tip Downstairs inside the crypt.
kill Prideful Hulk##165175 |achieve 14310/10 |goto 67.97,81.79
step
click Mirror Trap##344792+
|tip Click each of the mirrors to move them away from the center.
kill Amalgamation of Light##164388 |achieve 14310/12 |goto Revendreth/0 25.30,48.50
step
click Rubbish Box##349554
Use the "Throw Rubbish" ability
|tip It appears as a button on the screen.
|tip Do this repeatedly to spawn the Amalgamation of Filth.
kill Violent Muckmare##166318+
kill Amalgamation of Filth##166393 |achieve 14310/14 |goto Revendreth/0 53.86,72.52
|tip You can let Muckmaster Rotjaw tank if possible.
step
kill Azgar##166576 |achieve 14310/16 |goto Revendreth/0 35.81,70.52
|tip Avoid the small tornados and keep attacking to break the immune shield, then interrupt the channeled ability.
step
kill Hopecrusher##166679 |achieve 14310/17 |goto Revendreth/0 52.07,51.82
step
kill Stone Legion Punisher##166715+
kill Executioner Aatron##166710 |achieve 14310/19 |goto Revendreth/0 37.07,47.43
|tip He flies up and down the wall.
|tip Kill the Stone Legion Punishers to engage him.
|tip You can tell how many are left alive by the number of stacks of "Strength in Numbers" he has.
step
Enter the building |goto Revendreth/0 20.90,54.38 < 7 |walk
kill Shrouded Ritualist##167467+
|tip Inside the building.
|tip Kill the four Shrouded Ritualists to release Grand Arcanist Dimitri.
kill Grand Arcanist Dimitri##167464 |achieve 14310/21 |goto 20.48,52.98
step
clicknpc Forbidden Tomes##160753+
|tip They look like piles of books and scrolls on the ground around this area.
|tip They will appear on your mini map as yellow dots.
|tip They will only spawn if there is text at the top of the screen that says "Forbidden Tomes returned: 0/4".
|tip If this text is not showing, you must wait for the event to respawn.
|tip Bring four Forbidden Tomes back to the library room to summon Scrivener Lenua.
kill Scrivener Lenua##160675 |achieve 14310/2|goto Revendreth/0 38.31,69.14
step
kill Crawler Egg##155769+
|tip They look like wiggling white coccoons around this area.
|tip If the Crawler Eggs aren't there then the rare is not currently available.
Kill the enemies that attack in waves
kill Tomb Burster##155779 |achieve 14310/4 |goto Revendreth/0 43.09,79.16
step
click Remnant of Light##339499+
|tip They look like small yellow glittering rocks on the ground around this area.
Use _"Light Impalement"_
|tip It appears as a button on the screen.
|tip Use it on Crazed Ash Ghouls around this area to have a chance of spawning the Sire Ladinas.
|tip This ability is usable while carrying a Remnant of Light.
kill Sire Ladinas##160857 |achieve 14310/7 |goto Revendreth/0 34.04,55.55
step
kill Maldraxxi Defector##161180+
collect Mortegore Scroll##174378 |n
|tip You can only hold one at a time.
clicknpc Mortegore Sigil##161870+
|tip They look like small green glowing rocks on the ground around the large central Mortegore Obelisk.
kill Lord Mortegore##161891 |achieve 14310/9 |goto Revendreth/0 75.97,61.61
step
click Anima Stake##
Collect the Anima Stake |havebuff spell:321827 |goto Revendreth/0 65.42,60.18 |achieve 14310/11
It can also be found at [66.64,59.36]
step
Cast _"Lure"_ |cast 321827
|tip It appears as a button on the screen.
kill Endlurker##165206 |achieve 14310/11 |goto 66.55,59.46
step
talk Seeker Hilda##166483
Tell her _"Let's close that rift!"_
|tip Kill the enemies that attack in waves to spawn Famu the Infinite.
kill Famu the Infinite##166521 |achieve 14310/15 |goto Revendreth/0 62.48,47.16
step
Enter the building |goto Revendreth/0 66.48,70.78 < 7 |walk
kill Tollkeeper Varaboss##165253 |achieve 14310/13 |goto 66.48,71.50
|tip Inside the building.
step
accept Muck It Up##59808 |goto Revendreth/0 35.55,32.37 |achieve 14310/18
|tip If this world quest is available today, you will accept this quest automatically.
|tip The Bog Beast can only be summoned while this world quest is active.
step
kill Primordial Sludge##166206+
collect Primordial Muck##177880 |n
use the Primordial Muck##177880
|tip Using the Primordial Muck has a chance to spawn the Bog Beast.
|tip After collecting lots of Primordial Muck, you can join a raid group using the LFG system and then throw all of the muck at once, since being in a raid group will prevent the world quest from completing.
kill Bog Beast##166292 |achieve 14310/18 |goto 35.00,32.30
step
Enter the building |goto Revendreth/0 61.80,79.01 < 10 |walk
kill Huntmaster Petrus##166993 |achieve 14310/20 |goto 61.71,79.49
|tip Inside the building.
step
accept Swarming Souls##60654 |goto Revendreth/0 50.84,31.99 |achieve 14310/22
|tip If this world quest is available today, you will accept this quest automatically.
|tip The Manifestation of Wrath can only be spawned while this world quest is active.
step
clicknpc Lost Soul##169916+
|tip They look like floating ghosts around this area.
talk Avowed Ritualist##169917
Tell him _"I have a soul for you."_
|tip The Manifestation of Wrath has a chance to spawn when returning Lost Souls.
|tip If it doesn't spawn for you, you can wait here to see if it spawns for another player.
kill Manifestation of Wrath##170048 |achieve 14310/22 |goto 49.02,34.86
step
accept Summon Your Sins##60656 |goto Revendreth/0 65.74,30.70 |achieve 14310/23
|tip If this world quest is available today, you will accept this quest automatically.
|tip The Amalgamation of Sin can only be summoned while this world quest is active.
step
click Sinstone Fragment##353655+
|tip They look like small broken stone tablets on the ground around this area.
Kill Sinstone enemies around this area
collect 20 Sinstone Fragment##180279 |q 60656/1 |goto 65.74,30.70  |achieve 14310/23
step
Enter the building |goto 65.93,29.37 < 7 |walk
Click an object on the table
|tip Inside the building.
Choose a Catalyst |q 60656/2 |goto 65.69,29.15  |achieve 14310/23
step
talk Alchemist Leticia##170291
|tip Inside the building.
Tell her _"I am ready."_
Watch the dialogue
collect Amalgamation of Sin##180376  |achieve 14310/23 |goto 65.74,28.98
|tip The quest reward is random, so this drop is not guaranteed and may take several attempts.
step
use Amalgamation of Sin##180376
kill Amalgamation of Sin##170434 |achieve 14310/23 |goto 65.94,29.70
step
Enter the building |goto Revendreth/0 66.92,30.32 < 7 |only if walking
clicknpc Catacombs Cache##162503
|tip Inside the building.
kill Sinstone Hoarder##162481
clicknpc Catacombs Cache##162503 |achieve 14310/24 |goto 67.44,30.48
step
_Congratulations!_
You Earned the "Adventurer of Revendreath" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Treasures of Maldraxxus",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievements contained within this guide.",
achieveid={14312},
patch='90001',
startlevel=60,
keywords={"Shadowlands","Exploration","Special","Encounter"},
},[[
step
click Ornate Bone Shield##347444
Discover the "Ornate Bone Shield" Hidden Treasure |achieve 14312/1 |goto Maldraxxus/0 47.23,62.16
step
clicknpc Kyrian Corpse##169664
Choose _Take the box._
collect Kyrian Keepsake##180085 |achieve 14312/2 |goto Maldraxxus/0 32.74,21.27
step
use Kyrian Keepsake##180085
Recover the Kyrian Keepsake |achieve 14312/2
step
click Halis's Lunch Pail##353380
Discover the "Halis's Lunch Pail" Hidden Treasure |achieve 14312/3 |goto Maldraxxus/0 30.79,28.74
step
click Empty Plague Bottle##355867
collect 1 Empty Plague Bottle##181394 |achieve 14312/4|goto Maldraxxus/0 59.92,79.03
step
click Vat of Conspicuous Slime##355865 |achieve 14312/4 |goto 59.86,79.06
step
Enter the cave |goto Maldraxxus/0 65.64,50.80 < 7 |walk
click Stolen Jar##355872 |goto 66.09,50.07
|tip Inside the cave.
Discover the "Stolen Jar" Hidden Treasure |achieve 14312/5
step
Complete the "Secrets Among the Shelves" quest in Maldraxxus |q 58622 |future
|tip This quest is part of the Archival Protection questline.
|tip Use the "Maldraxxus" leveling guide to accomplish this.
step
Enter the building |goto Maldraxxus/0 42.34,24.29 < 7 |only if walking
Run up the stairs |goto 41.99,23.94 < 7 |only if walking
click The Necronom-i-nom##355880
|tip At the top of the tower.
Discover the "Necro Tome" Hidden Treasure |achieve 14312/6 |goto 42.38,23.33
step
Enter the cave |goto 24.5,31.6 < 10 |walk
Follow the path |goto Etheric Vault/0 36.62,61.70 < 7 |walk
Enter the chamber |goto 25.84,64.10 < 7 |walk
Cross to the chain |goto 26.19,53.65 < 7 |walk
click Vault Portcullis##341415 Chain
Return to the treasure room |goto 36.27,57.75 < 7 |walk
click Forgotten Momentos##341424
|tip If the treasure isn't there, wait a few minutes for it to respawn.
Discover the "Forgotten Mementos" Hidden Treasure |achieve 14312/7
step
Follow the path up |goto Maldraxxus/0 51.62,13.74 < 15 |only if walking
Follow the path |goto 51.06,13.94 < 10 |only if walking
Continue following the path |goto 49.02,14.62 < 10 |only if walking
click Chest of Eyes##345456
Discover the "Chest of Eyes" Hidden Treasure |achieve 14312/8 |goto 48.30,16.31
step
Run up the rocks |goto Maldraxxus/0 62.04,58.64 < 7 |only if walking
Jump to the mushroom |goto 62.63,58.51 < 7 |only if walking
Jump back to the rock |goto 63.10,58.80 < 7 |only if walking
Continue up the rock |goto 62.87,59.17 < 7 |only if walking
Jump across to the mushroom |goto 62.92,59.63 < 7 |only if walking
click Misplaced Supplies##351980
|tip On the top of the large mushroom.
Discover the "Misplaced Supplies" Hidden Treasure |achieve 14312/9 |goto 62.41,59.98
step
Go behind the waterfall |goto Maldraxxus/0 71.97,52.59 < 10 |walk
Enter the cave |goto 72.22,52.84 < 5 |walk
click Glutharn's Stash##355947 |confirm |q 61484 |goto 72.89,53.65 |future
|tip Inside the cave.
Discover the "Glutharn's Stash" Hidden Treasure |achieve 14312/10
step
kill Runespeaker Phaeton##170563
collect 1 Phaeton's Key##181777 |achieve 14312/11 |goto Maldraxxus/0 37.91,70.10
step
Enter the building |goto 32.14,68.92 < 7 |walk
click Runespeaker's Trove##356535
|tip Inside the building.
Discover the "Runespeaker's Trove" Hidden Treasure |achieve 14312/11 |goto 31.75,70.03
step
click Plaguefallen Potion##365130
Turn into a Plaguefallen |havebuff spell:330092 |achieve 14312/12 |goto Maldraxxus/0 59.15,71.93
step
Enter the sewer |goto 62.37,76.55 < 7 |walk
clicknpc Plaguefallen Pipe##176355 |goto 61.58,76.70
|tip Inside the cave.
|tip You need to reach the cave and pipe within two minutes or you'll have to click the plague potion again.
Climb through the Pipe |achieve 14312/12 |goto 57.68,77.27 < 5 |c
step
click Plaguefallen Chest##355886
Discover the "Plaguefallen Chest" Hidden Treasure |achieve 14312/12 |goto 57.66,75.85
step
Enter the building |goto Maldraxxus/0 64.89,25.08 < 7 |walk
click Ritual Pages##355979
|tip Inside the building.
collect 1 Missing Ritual Pages##181558 |achieve 14312/13 |goto 64.89,24.76
step
click Book of Binding Rituals##356366
|tip Inside the building.
Gain Ritualist's Knowledge |havebuff spell:337041 |goto 64.62,24.49 |achieve 14312/13
step
click Ritualist's Cache##355980
|tip Inside the building.
Discover the "Ritualist's Cache" Hidden Treasure |achieve 14312/13 |goto 64.67,24.75
step
"Treasures of Maldraxxus"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Treasures of Revendreth",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievements contained within this guide.",
achieveid={14314},
patch='90001',
startlevel=60,
keywords={"Shadowlands","Exploration","Special","Encounter"},
},[[
step
Enter the building |goto Revendreth/0 38.07,68.83 < 15 |walk
click Forbidden Ink
|tip Inside the building.
collect Forbidden Ink##182475 |goto 37.65,68.76 |achieve 14314/1
step
Hug the wall |goto 38.41,68.14 < 10 |only if walking
talk Lost Quill##173449
Tell it _"Here, I found this ink in a bottle."_
Return the Forbidden Ink
Discover the "Lost Quill" Hidden Treasure |achieve 14314/1 |goto 37.72,69.25
step
click Stylish Parasol##357487
Discover the "Stylish Parasol" Hidden Treasure |achieve 14314/2 |goto Revendreth/0 38.39,44.24
step
Collect 99 Infused Rubies |complete curcount(1820) >= 99 or completedq(62063)
|tip Collect them by killing rare mobs, completing covenant callings, looting treasures, and running dungeons.
step
talk The Count##173488
Choose _<Wake the Count>_
Discover "The Count" Hidden Treasure |achieve 14314/3 |goto Revendreth/0 57.37,43.37
step
clicknpc Rapier of the Fearless##173603
|tip On top of the rock pile on top of the building.
kill Rapier of the Fearless##173603
Discover the "Rapier of the Fearless" Hidden Treasure |achieve 14314/4 |goto Revendreth/0 80.00,37.01
step
click Vrytha's Dredglaive
Discover the "Vrytha's Dredglaive" Hidden Treasure |achieve 14314/5 |goto 70.24,60.10
step
Collect 30 Infused Rubies |complete curcount(1820) >= 30 |q 62198 |future
|tip Collect them by killing rare mobs, completing covenant callings, looting treasures, and running dungeons.
step
Follow the path |goto Revendreth/0 28.17,38.00 < 7 |only if walking
Enter the building |goto 29.47,36.86 < 15 |only if walking
click Outcast's Makeshift Muckpool## |q 62198 |goto 29.69,37.23 |future
|tip Inside the building.
Discover the "Makeshift Muckpool" Hidden Treasure |achieve 14314/6
step
click Ingress and Egress Rites
Gain the "Taskmaster's Trove" Buff |complete hasbuff("spell:341237") or completedq(62199) |goto Revendreth/0 63.01,72.36
step
click Taskmaster's Trove##357697 |q 62199 |goto 62.82,75.31 |future
|tip Avoid the floating blue orbs that knock you back.
Discover the "Taskmaster's Trove" Hidden Treasure |achieve 14314/7
step
Run up the stairs |goto Revendreth/0 46.66,55.55 < 20 |only if walking
Enter the building |goto 47.17,55.75 < 7 |walk
click Discarded Anima Canister##357936
|tip Inside the building.
Carry the Anima Canister |havebuff spell:340656 |goto 47.57,55.46 |achieve 14314/8
step
clicknpc Silent Observer##173838+ |goto 47.51,55.37
|tip They look like tiny stone gargoyles inside the building around this area.
|tip Use the "Drain Anima" ability on-screen to fill the Anima Canister.
|tip When full, use the "Open Door" ability on-screen to unlock the door.
Watch the dialogue
click Forbidden Chamber Lockbox##358298 |goto 47.34,55.36
Discover the "Forbidden Chamber" Hidden Treasure |achieve 14314/8
step
click Smuggled Cache##349798 |goto Revendreth/0 31.05,55.06
|tip Underneath the bridge.
Discover the "Smuggled Cache" Hidden Treasure |achieve 14314/9
step
click Chest of Envious Dreams##349565 |goto Revendreth/0 69.32,77.95
Discover the "Chest of Envious Dreams" Hidden Treasure |achieve 14314/10
step
click Filcher's Prize##349792
Discover the "Filcher's Prize" Hidden Treasure |achieve 14314/11 |goto Revendreth/0 64.18,72.65
step
label "Jump_on_the_Bounding_Shroom"
Gain the "Bounding Spores" Buff |havebuff spell:330976 |goto Revendreth/0 67.96,64.58 |achieve 14314/12
|tip Jump on the Bounding Shroom.
step
click Wayfarer's Abandoned Spoils##349793
|tip On the broken wall.
'|complete not hasbuff("spell:330976") and not completedq(59884) |next "Jump_on_the_Bounding_Shroom" |or
Discover the "Wayfarer's Abandoned Spoils" Hidden Treasure |achieve 14314/12 |goto 68.44,64.45 |or
step
Jump up here |goto Revendreth/0 60.44,60.10 < 7 |only if walking
Jump down here |goto 61.35,58.64 < 10 |only if walking
click Remlate's Hidden Cache##349794
Discover the "Remlate's Hidden Cache" Hidden Treasure |achieve 14314/13 |goto 61.52,58.64
step
click Fleeing Soul's Bundle##349795
|tip Up on the platform.
Discover the "Fleeing Soul's Bundle" Hidden Treasure |achieve 14314/14 |goto Revendreth/0 46.39,58.17
step
kill Greedy Soul##166680
|tip It walks up and down the road.
|tip It will drop the chest on the ground.
click Gilded Plum Chest##349796
Discover the "Gilded Plum Chest" Hidden Treasure |achieve 14314/15 |goto Revendreth/0 75.46,55.42
step
label "Jump_on_the_Bounding_Shroom"
Gain the "Bounding Spores" Buff |havebuff spell:330976 |goto Revendreth/0 52.48,59.20 |q 59888 |future
|tip Jump on the Bounding Shroom.
step
click Abandoned Curios##349797
'|complete not hasbuff("spell:330976") and not completedq(59888) |next "Jump_on_the_Bounding_Shroom" |or
Discover the "Abandoned Curios" Hidden Treasure |achieve 14314/16  |goto 51.85,59.54
step
_Congratulations!_
You Earned the "Treasures of Revendreth" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Treasures of Ardenweald",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievements contained within this guide.",
achieveid={14313},
patch='90001',
startlevel=60,
keywords={"Shadowlands","Exploration","Special","Encounter"},
},[[
step
clicknpc Aerto##171156 |goto Ardenweald/0 56.00,21.01
Discover the "Aerto's Body" Hidden Treasure |achieve 14313/1 |goto Ardenweald/0 56.00,21.01
step
Carefully walk down the root |goto Ardenweald/0 48.34,20.49 < 5 |only if walking
click Lost Satchel##354645
|tip Hanging from the root next to the waterfall.
accept Satchel of Culexwood##62187 |goto 48.26,20.39
|tip You will accept this quest automatically.
step
talk Fluttercatch##158489
turnin Satchel of Culexwood##62187
Discover the "Lost Satchel" Hidden Treasure |achieve 14313/2 |goto 48.07,24.34
step
Follow the path up |goto Ardenweald/0 50.66,38.85 < 15 |only if walking
Run down the ramp |goto 52.59,37.89 < 10 |only if walking
click Ancient Cloudfeather Egg##16115
Discover the "Veilwing Egg" Hidden Treasure |achieve 14313/3 |goto 52,37
step
click Swollen Anima Seed##354911
accept Swollen Anima Seed##62186 |goto Ardenweald/0 76.68,29.75
|tip You will accept this quest automatically.
step
talk Droman Tashmur##158487
turnin Swollen Anima Seed##62186 |goto 63.49,36.28
Discover the "Swollen Anima Seed" Hidden Treasure |achieve 14313/4
step
Run under the platform |goto Ardenweald/0 49.87,55.92 < 5 |walk
click Faerie Trove##354652
|tip Underneath the wooden platform.
Discover the "Faerie Trove" Hidden Treasure |achieve 14313/5 |goto 49.71,55.89
step
click Harmonic Chest##355355
|tip You'll need two players to obtain this treasure.
|tip Click the Fae Harp and Fae Drum at the same time to unlock the Harmonic Treasure.
Discover the "Harmonic Chest" Hidden Treasure |achieve 14313/6 |goto Ardenweald/0 67.80,34.62
step
Cross the bridge |goto Ardenweald/0 46.05,39.08 < 15 |only if walking
Jump down carefully here |goto 47.59,39.50 < 7 |only if walking
Jump down here |goto 48.09,38.83 < 7 |only if walking
click Hearty Dragon Plume##354647
|tip Up on the large root.
|tip It may be easiest to jump down and use a Goblin Glider Kit to reach it.
Discover the "Hearty Dragon Plume" Hidden Treasure |achieve 14313/7 |goto 48.21,39.27
step
Speak and emote with the Playful Vulpin in the order the tips are presented:
|tip When the "Playful Vulpin begins to dig curiously." use the "/curious" emote.
|tip When the "Playful Vulpin wanders around unable to sit still." use the  "/sit" emote.
|tip When the "Playful Vulpin sings all alone." use the "/sing" emote.
|tip When the "Playful Vulpin dances with joy." use the "/dance" emote.
|tip When the "Playful Vulpin sits down lonely and sad." use the "/pet" emote.
|tip The Vulpin will vanish after each emote but should shortly respawn after.
The Playful Vulpin can be found at these locations:
|tip The spawn is random so searching will be required.
[40.7,27.4]
[51.2,55.1]
[51.0,54.3]
[72.4,31.4]
[50.7,55.1]
[31.85,43.63]
[31.76,41.00]
[32.60,42.92]
[34.10,45.00]
[50.21,53.53]
[41.31,28.74]
[40.94,51.56]
[41.37,49.79]
[51.16,55.07]
[67.16,28.88]
[70.14,30.04]
[65.22,22.65]
[67.55,31.91]
[72.39,31.46]
Discover the "Playful Vulpin Befriended" Hidden Treasure |achieve 14313/8
step
click Aromatic Flowers##355271
collect Aromatic Flowers##180784 |goto Ardenweald/0 31.77,32.48 |achieve 14313/10
step
Step onto the mushroom |goto 41.43,31.59 < 5 |only if walking
click Incense Burner##355273
|tip Up high in the tree.
clicknpc Desiccated Moth##171484
Discover the "Desiccated Moth" Hidden Treasure |achieve 14313/10 |goto 41.95,32.53
step
Step onto the mushroom |goto Ardenweald/0 38.01,36.30 < 5 |only if walking
Carefully walk down the thin branch |goto 37.31,36.47 < 7 |only if walking
|tip Stay on the central ridge; the sides are slanted and you can slide down them. |only if walking
click Dreamsong Heart##354650
|tip Hanging from a branch at the very top of the huge tree.
Discover the "Dreamsong Heart" Hidden Treasure |achieve 14313/11 |goto 37.64,37.07
step
Run up the rocks |goto Ardenweald/0 36.03,25.18 < 7 |only if walking
Continue up the large root |goto 36.04,25.77 < 7 |only if walking
click Enchanted Dreamcatcher##354651
|tip Hanging from the large roots.
accept Anima-Laden Dreamcatcher##62259 |goto 36.42,25.06
|tip You will accept this quest automatically.
step
talk Droman Dawnblossom##165341
turnin Anima-Laden Dreamcatcher##62259 |goto 38.16,36.74
Discover the "Enchanted Dreamcatcher" Hidden Treasure |achieve 14313/12
step
click Faerie Lamp##354665
Carry the Faerie Lamp |havebuff spell:333923 |goto Ardenweald/0 46.50,70.12 |achieve 14313/13
step
clicknpc Elusive Faerie Cache##171475
|tip Inside the broken tree stump.
Discover the "Elusive Faerie Cache" Hidden Treasure |achieve 14313/13 |goto 44.81,75.83
step
Cross the bridge |goto Ardenweald/0 52.11,57.27 < 7 |only if walking
click Fae Ornament##355021
collect Fae Ornament##180654 |goto 51.55,61.60 |achieve 14313/14
step
click Enchanted Bough##355020
|tip Under the platform.
collect Enchanted Bough##180656 |goto 42.42,46.72 |achieve 14313/14
step
Cross the bridge |goto 36.83,27.64 < 15 |only if walking
click Raw Dream Silk##355019
|tip Up on the platform.
collect Raw Dream Fibers##180655 |goto 36.99,29.83 |achieve 14313/14
step
use Raw Dream Fibers##180655
collect Fae Dreamcatcher##180652 |achieve 14313/14
step
Run up the ramp |goto 35.39,65.22 < 10 |only if walking
Enter the tree |goto 36.02,65.51 < 7 |walk
click Cache of the Night##355000
|tip Inside the trunk of the tree.
Discover the "Cache of the Night" Hidden Treasure |achieve 14313/14 |goto 36.23,65.27
step
Follow the path up |goto Ardenweald/0 36.52,59.68 < 10 |only if walking
Step onto the mushroom |goto 37.64,61.60 < 5 |only if walking
Fly into the broken tree |goto 36.35,65.14 < 7 |walk
click Darkreach Supplies##354648
|tip Inside the trunk of the large broken tree.
Discover the "Darkreach Supplies" Hidden Treasure |achieve 14313/15 |goto 36.19,65.20
step
click Gardener's Basket##355212
|tip It looks like a small grey basket laying in between two rocks.
collect Gardener's Basket##180758  |achieve 14313/9 |goto Ardenweald/0 40.32,52.62
step
click Gardener's Hammer##355211
|tip It looks like a small wooden hammer laying inside the cart.
collect Gardener's Hammer##180754  |achieve 14313/9 |goto 39.75,54.38
step
Follow the path |goto 40.13,53.86 < 7 |only if walking
Cross the bridge |goto 40.04,55.40 < 7 |only if walking
click Diary of the Night##355216
|tip It looks like an open book laying on a small desk up on the tree platform.
collect Diary of the Night##180759  |achieve 14313/9 |goto 39.00,56.98
step
click Gardener's Flute##355215
|tip It looks like a small white flute laying on the ground next to the glowing plants.
collect Gardener's Flute##180756 |achieve 14313/9 |goto 38.49,58.08
step
click Gardener's Wand##355214
|tip It looks like a small white and wooden wand laying on the ground between two wheels of the cart.
collect Gardener's Wand##180757 |achieve 14313/9 |goto 38.85,60.11
step
use the Gardener's Basket##180758
collect Twinklestar's Gardening Toolkit##180753 |achieve 14313/9
step
talk Twinklestar##171360
Tell her _"I found your gardening tools."_
Gain the Moonsight Buff |havebuff spell:334353  |achieve 14313/9 |goto 63.88,37.55
step
click Cache of the Moon##355041
|tip It looks like a blue and purple orb floating behind Twinklestar.
Discover the "Cache of the Moon" Hidden Treasure |achieve 14313/9 |goto 63.90,37.77
step
_Congratulations!_
You Earned the "Treasures of Ardenweald" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Exploration\\Treasures of Bastion",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievements contained within this guide.",
achieveid={14311},
patch='90001',
startlevel=60,
keywords={"Shadowlands","Exploration","Special","Encounter"},
},[[
step
click Purians##339587
collect 2 Purian##173973 |goto Bastion/0 54.37,81.87 |achieve 14311/1
step
click Tribute##339572
|tip Place the first tribute.
Click Here to Continue |confirm |goto 56.17,83.06 |achieve 14311/1
step
click Tribute##339572
|tip Place the second tribute.
Click Here to Continue |confirm |goto 54.43,83.87 |achieve 14311/1
step
click Scroll of Aeons##339601
|tip Follow the trail.
Discover the "Scroll of Aeons" Hidden Treasure |achieve 14311/1 |goto 53.50,80.37
step
Enter the building |goto Bastion/0 58.53,72.01 < 7 |only if walking
click Vesper of Virtues##352428
|tip Inside the building.
Discover the "Vesper of Virtues" Hidden Treasure |achieve 14311/2 |goto 58.66,71.35
step
click Purifying Draught##339641
Discover the "Purifying Draught" Hidden Treasure |achieve 14311/3 |goto Bastion/0 52.03,86.07
step
click Lost Disciple's Notes##354213 |achieve 14311/4 |goto Bastion/0 59.33,60.92
|tip It looks like a small rolled-up scroll sitting on a small rock ledge.
step
accept You'll Never Walk Alone##62170
|tip You will accept this quest automatically.
step
talk Inkiep##160173
turnin You'll Never Walk Alone##62170
Discover the "Lost Disciple's Notes" Hidden Treasure |achieve 14311/4 |goto 53.21,46.86 |region heros_rest
step
Enter the cave |goto Bastion/0 55.71,42.82 < 7 |walk
Follow the path |goto 56.72,40.66 < 7 |only if walking
click Larion Tamer's Harness##354214
|tip Inside the cave.
Discover the "Larion Tamer's Harness" Hidden Treasure |achieve 14311/5 |goto 58.23,39.99
step
click Stolen Equipment##354208
Discover the "Stolen Equipment" Hidden Treasure |achieve 14311/6 |goto Bastion/0 40.50,49.80
step
Enter the cave |goto Bastion/0 46.50,46.65 < 7 |walk
click Abandoned Stockpile##354202
|tip Inside the cave.
Discover the "Abandoned Stockpile" Hidden Treasure |achieve 14311/7 |goto 46.11,45.36
step
click Unstable Construct Anima##354279
|tip They look like small, glowing blue glass cylinder containers on the ground around this area.
|tip They can be found anywhere around The Eternal Forge.
collect 1 Unstable Construct Anima##180534 |goto Bastion/0 53.54,17.15 |achieve 14311/8
step
click Experimental Construct Part##354275 |confirm |q 61052 |goto 51.47,17.95 |future
Discover the "Experimental Construct Part" Hidden Treasure |achieve 14311/8
step
kill Agitated Etherwyrm##159610+
|tip Inside and outside the cave.
collect 1 Broken Kyrian Flute##180536 |goto Bastion/0 56.20,41.00 |q 61053 |future
|tip This item drops from any Etherwyrm in Bastion.
|tip The Agitated Etherwyrms appear to have the highest drop rate at 2%.
|tip They usually don't drop anything but the flute, and the respawn rate is pretty good.
step
click Windsmith's Tools##354289
Discover the "Windsmith's Tools" Hidden Treasure |achieve 14311/9 |goto 35.83,48.11
step
talk Kobri##171526
|tip He walks around this area.
buy 1 Memorial Wine##180788 |goto Bastion/0 51.79,46.18 |region heros_rest |achieve 14311/10
step
click Drink Tray##355274
collect 1 Memorial Offering Key##180797 |goto 56.85,18.99 |achieve 14311/10
step
click Memorial Offerings##355286
Discover the "Memorial Offerings" Hidden Treasure |achieve 14311/10 |goto Bastion/0 56.48,17.14
step
click Agthia's Flame##354153
Carry Agthia's Flame |havebuff spell:333320 |goto Bastion/0 39.10,54.47 |achieve 14311/11
step
click Path of Courage##354169 |goto 38.45,57.07 < 3 |walk
Cross the light bridge |goto 37.63,56.80 < 5 |walk
click Path of Courage##354169 |goto 37.41,56.75 < 3 |walk
click Path of Courage##354169 |goto 37.11,56.85 < 3 |walk
Cross the light bridge |goto 35.31,58.11 < 5 |walk
|tip You may need to mount in order to cross this bridge in time.
click Path of Courage##354169
Gain the Proof of Courage |havebuff spell:333063 |goto 35.17,58.22 |achieve 14311/11
step
click Gift of Agthia##353942
Discover the "Gift of Agthia" Hidden Treasure |achieve 14311/11 |goto 35.09,58.07
step
Cross the bridge |goto Bastion/0 61.00,74.60 < 15 |only if walking
Run up the stairs |goto 63.02,73.21 < 20 |only if walking
click Bell of Purification##354094 |goto 64.94,71.43 < 3 |walk
kill Lingering Impurity##170849
Walk Next to the Purity Steward
|tip Walking on to the little platform under the waterfall next to the Purity Steward after ringing the Bell of Purification and killing the Lingering Impurity will grant you the Proof of Purity.
Gain the Proof of Purity |havebuff spell:332785 |goto 64.60,71.38 |achieve 14311/12
step
click Gift of Vesiphone##353940
Discover the "Gift of Vesiphone" Hidden Treasure |achieve 14311/12 |goto 64.87,71.14
step
click Anima Gateway## |goto Bastion/0 69.37,40.32 < 5 |only if walking
Fly to the Temple of Humility |goto 71.78,36.88 < 5 |achieve 14311/13
step
Kneel Before the Treasure |script DoEmote("KNEEL")
|tip Perform the "/kneel" emote.
Gain the Proof of Humility |havebuff spell:333045 |goto 70.50,36.53 |achieve 14311/13
step
click Gift of Chyrus##353941 |achieve 14311/13 |goto Bastion/0 70.47,36.45
Discover the "Gift of Chyrus" Hidden Treasure |achieve 14311/13
step
click Anima Gateway## |goto Bastion/0 39.55,19.00 < 5 |only if walking
click Path of Wisdom##355242 |goto 40.73,18.77 < 5 |only if walking
Fly to The Eonian Archives |goto 40.95,15.74 |achieve 14311/14
step
click Path of Wisdom##355242 |goto 40.48,15.48 < 3 |only if walking
click Incense of Patience##355039 |goto 37.10,18.29 |walk
confirm |achieve 14311/14
step
click Path of Wisdom##355242 |goto 36.92,18.68 < 3 |only if walking
click Path of Wisdom##355242 |goto 37.27,19.17 < 3 |only if walking
click Path of Wisdom##355242 |goto 41.78,18.44 < 3 |only if walking
click Incense of Knowledge##355044 |goto 40.77,15.64 |walk
confirm |achieve 14311/14
step
click Path of Wisdom##355242 |goto 40.48,15.48 < 3 |only if walking
click Path of Wisdom##355242 |goto 36.92,18.68 < 3 |only if walking
click Incense of Insight##355052 |goto 37.36,18.73 |walk
confirm |achieve 14311/14
step
click Path of Wisdom##355242 |goto 37.27,19.17 < 3 |only if walking
click Path of Judgment## |goto 42.12,18.48 < 3 |only if walking
click Incense of Judgment##355075 |goto 41.89,15.83
confirm  |achieve 14311/14
step
click Path of Wisdom##355242
Gain the Proof of Wisdom |havebuff spell:333068 |goto 41.61,15.91 |achieve 14311/14
step
click Gift of Thenios##353943 |achieve 14311/14 |goto 40.61,18.89
Discover the "Gift of Thenios" Hidden Treasure |achieve 14311/14
step
click Flame of Devotion##354133
|tip Carry the torch to the treasure to unlock it.
|tip Avoid enemies and the aoe detection sentries around this area.
|tip Getting into combat will cause you to drop the flame and you'll have to get it again.
|tip It helps to make sure the area is clear before taking the flame.
|tip This treasure is easier to obtain when the world quest "Disloyal Denizens" is active.
Carry the Torch |havebuff spell:333912 |goto Bastion/0 23.93,24.82 |achieve 14311/15
step
Run up the stairs |goto 27.04,21.44 < 15 |only if walking
Enter the building |goto 27.68,21.23 < 7 |only if walking
click Brazier of Devotion##354135
|tip Inside the building.
Gain the Proof of Loyalty |havebuff spell:333070 |goto 27.48,21.72 |achieve 14311/15
step
click Gift of Devos##353944
|tip Inside the building.
Discover the "Gift of Devos" Hidden Treasure |achieve 14311/15 |goto 27.60,21.79
step
_Congratulations!_
You Earned the "Treasures of Bastion" Achievement
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Glory of the Shadowlands Hero",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the following Shadowlands Mythic dungeon achievements:\n\n"..
"Bountiful Harvest\nSurgeon's Supplies\nReady for Raiding VII\nHooked On Hydroponics\nSomeone Could Trip on These!\n"..
"Hunger for Knowledge\nFull Gores Meal\nGoing Viral\nRiding with my Slimes\nPicking Up the Pieces\nBreaking Bad\n"..
"Nobody Puts Denathrius in a Corner\nCouple's Therapy\nHighly Communicable\nThinking with...\nGoliath Offline\n"..
"ExSPEARiential\nI Can See My House From Here\nThree Choose One\nFresh Meat!\nRoyal Rumble\nResidue Evil\n"..
"I Only Have Eyes For You\nKaal-ed Shot",
achieveid={14322},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Mythic"},
},[[
step
Earn the "Bountiful Harvest" Achievement |achieve 14322/1
|tip Use the "Bountiful Harvest" achievement guide to accomplish this.
Click here to load the "Bountiful Harvest" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Bountiful Harvest"
step
Earn the "Surgeon's Supplies" Achievement |achieve 14322/2
|tip Use the "Surgeon's Supplies" achievement guide to accomplish this.
Click here to load the "Surgeon's Supplies" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Surgeon's Supplies"
step
Earn the "Ready for Raiding VII" Achievement |achieve 14322/3
|tip Use the "Ready for Raiding VII" achievement guide to accomplish this.
Click here to load the "Ready for Raiding VII" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Ready for Raiding VII"
step
Earn the "Hooked On Hydroponics" Achievement |achieve 14322/4
|tip Use the "Hooked On Hydroponics" achievement guide to accomplish this.
Click here to load the "Hooked On Hydroponics" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Hooked On Hydroponics"
step
Earn the "Someone Could Trip on These!" Achievement |achieve 14322/5
|tip Use the "Someone Could Trip on These!" achievement guide to accomplish this.
Click here to load the "Someone Could Trip on These!" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Someone Could Trip on These!"
step
Earn the "Hunger for Knowledge" Achievement |achieve 14322/6
|tip Use the "Hunger for Knowledge" achievement guide to accomplish this.
Click here to load the "Hunger for Knowledge" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Hunger for Knowledge"
step
Earn the "Full Gores Meal" Achievement |achieve 14322/7
|tip Use the "Full Gores Meal" achievement guide to accomplish this.
Click here to load the "Full Gores Meal" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Full Gores Meal"
step
Earn the "Going Viral" Achievement |achieve 14322/8
|tip Use the "Going Viral" achievement guide to accomplish this.
Click here to load the "Going Viral" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Going Viral"
step
Earn the "Riding with my Slimes" Achievement |achieve 14322/9
|tip Use the "Riding with my Slimes" achievement guide to accomplish this.
Click here to load the "Riding with my Slimes" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Riding with my Slimes"
step
Earn the "Picking Up the Pieces" Achievement |achieve 14322/10
|tip Use the "Picking Up the Pieces" achievement guide to accomplish this.
Click here to load the "Picking Up the Pieces" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Picking Up the Pieces"
step
Earn the "Breaking Bad" Achievement |achieve 14322/11
|tip Use the "Breaking Bad" achievement guide to accomplish this.
Click here to load the "Breaking Bad" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Breaking Bad"
step
Earn the "Nobody Puts Denathrius in a Corner" Achievement |achieve 14322/12
|tip Use the "Nobody Puts Denathrius in a Corner" achievement guide to accomplish this.
Click here to load the "Nobody Puts Denathrius in a Corner" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Nobody Puts Denathrius in a Corner"
step
Earn the "Couple's Therapy" Achievement |achieve 14322/13
|tip Use the "Couple's Therapy" achievement guide to accomplish this.
Click here to load the "Couple's Therapy" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Couple's Therapy"
step
Earn the "Highly Communicable" Achievement |achieve 14322/14
|tip Use the "Highly Communicable" achievement guide to accomplish this.
Click here to load the "Highly Communicable" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Highly Communicable"
step
Earn the "Thinking with..." Achievement |achieve 14322/15
|tip Use the "Thinking with..." achievement guide to accomplish this.
Click here to load the "Thinking with..." achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Thinking with..."
step
Earn the "Goliath Offline" Achievement |achieve 14322/16
|tip Use the "Goliath Offline" achievement guide to accomplish this.
Click here to load the "Goliath Offline" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Goliath Offline"
step
Earn the "ExSPEARiential" Achievement |achieve 14322/17
|tip Use the "ExSPEARiential" achievement guide to accomplish this.
Click here to load the "ExSPEARiential" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\ExSPEARiential"
step
Earn the "I Can See My House From Here" Achievement |achieve 14322/18
|tip Use the "I Can See My House From Here" achievement guide to accomplish this.
Click here to load the "I Can See My House From Here" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\I Can See My House From Here"
step
Earn the "Three Choose One" Achievement |achieve 14322/19
|tip Use the "Three Choose One" achievement guide to accomplish this.
Click here to load the "Three Choose One" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Three Choose One"
step
Earn the "Fresh Meat!" Achievement |achieve 14322/20
|tip Use the "Fresh Meat!" achievement guide to accomplish this.
Click here to load the "Fresh Meat!" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Fresh Meat!"
step
Earn the "Royal Rumble" Achievement |achieve 14322/21
|tip Use the "Royal Rumble" achievement guide to accomplish this.
Click here to load the "Royal Rumble" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Royal Rumble"
step
Earn the "Residue Evil" Achievement |achieve 14322/22
|tip Use the "Residue Evil" achievement guide to accomplish this.
Click here to load the "Residue Evil" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Residue Evil"
step
Earn the "I Only Have Eyes For You" Achievement |achieve 14322/23
|tip Use the "I Only Have Eyes For You" achievement guide to accomplish this.
Click here to load the "I Only Have Eyes For You" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\I Only Have Eyes For You"
step
Earn the "Kaal-ed Shot" Achievement |achieve 14322/24
|tip Use the "Kaal-ed Shot" achievement guide to accomplish this.
Click here to load the "Kaal-ed Shot" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Kaal-ed Shot"
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Bountiful Harvest",{
author="support@zygorguides.com",
description="\nDefeat Amarth the Harvester after he's consumed the corpse of a Grisly Colossus using Final Harvest in the Necrotic Wake on Mythic difficulty.",
achieveid={14295},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Necrotic", "Wake", "Amarth", "Mythic"},
},[[
step
Enter the "Necrotic Wake" Dungeon on Mythic Difficulty |goto The Necrotic Wake/0 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14295 |or
step
clicknpc Grisly Curio##171094 |goto 16.95,56.49
|tip It looks like a sparkling object by the grass around this area.
|tip A Grisly Colossus will spawn that should be killed.
kill Amarth##163157
|tip Pull the boss next to the corpse and wait for it to cast "Final Harvest."
|tip After consuming the corpse, use all cooldowns and burn Amarth down as quickly as possible.
Earn the "Bountiful Harvest" Achievement |achieve 14295 |goto 20.47,40.53
step
_Congratulations!_
You Earned the "Bountiful Harvest" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Surgeon's Supplies",{
author="support@zygorguides.com",
description="\nDefeat Surgeon Stitchflesh after destroying two barrels of spare parts in the Necrotic Wake on Mythic difficulty.",
achieveid={14320},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Necrotic", "Wake", "Surgeon", "Stitchflesh", "Mythic"},
},[[
step
Enter the "Necrotic Wake" Dungeon on Mythic Difficulty |goto The Necrotic Wake/0 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14320 |or
step
kill Surgeon Stitchflesh##166882
|tip Clear all trash.
|tip During the encounter, Stitchflesh' Creations will use the ability "Meat Hook" on a random party member.
|tip That party member must stand on top of the Barrel of Spare Parts in order to destroy it.
kill Barrel of Spare Parts##171430
|tip Found on the left and right sides of the room where you encounter Stitchflesh.
Earn the "Surgeon's Supplies" Achievement |achieve 14320 |goto The Necrotic Wake/1 50.87,35.58
step
_Congratulations!_
You Earned the "Surgeon's Supplies" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Ready for Raiding VII",{
author="support@zygorguides.com",
description="\nDefeat Nalthor the Rimebinder without being struck by Comet Storm, Blizzard, or the secondary \n"..
"effect of Frozen Binds in the Necrotic Wake on Mythic difficulty.",
achieveid={14285},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Necrotic", "Wake", "Nalthor", "Rimebinder", "Mythic"},
},[[
step
Enter the "Necrotic Wake" Dungeon on Mythic Difficulty |goto The Necrotic Wake/0 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14285 |or
step
kill Nalthor the Rimebinder##166945
|tip Defeat Nalthor without being hit by "Comet Storm", "Frozen Binds" or "Blizzard"
|tip Comet Storm: Watch for blue swirls beneath your feet.
|tip Frozen Binds: This will only be cast on DPS or Healers.
|tip Stay spread out to avoid being hit with this.
|tip Also, do not dispel it or you will fail the achievement.
|tip Blizzard: You will only have to worry about being hit with this if you are sent to the Gauntlet.
Earn the "Ready for Raiding VII" Achievement |achieve 14285 |goto The Necrotic Wake/2 51.03,43.66
step
_Congratulations!_
You Earned the "Ready for Raiding VII" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Hooked On Hydroponics",{
author="support@zygorguides.com",
description="\nDefeat Ingra Maloch after defeating an Overgrown Hydra on in the Mists of Tirna Scithe on Mythic difficulty.",
achieveid={14503},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Mists", "of", "Tirna", "Scithe", "Ingra", "Maloch", "Mythic"},
},[[
step
Enter the "Mists of Tirna Scithe" Dungeon on Mythic Difficulty |goto Mists of Tirna Scithe/0 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
|tip IMPORTANT: This achievement requires someone in the Night Fae covenant to complete.
'|achieve 14503 |or
step
kill Ingra Maloch##164567
|tip People in the Night Fae Covenant must loot "Hydro Seeds", which are hidden in a secret grove.
|tip Bring the seed to Ingra Maloch's room.
|tip During the encounter, pay attention for Droman casting "Tears of the Forest".
|tip The tears will need to land on the Hydra Seed in order to spawn an Overgrown Hydra.
kill Overgrown Hydra##172992
|tip Defeat the boss after killing the hydra for the achievement.
Earn the "Hooked On Hydroponics" Achievement |achieve 14503 |goto 75.44,18.89
step
_Congratulations!_
You Earned the "Hooked On Hydroponics" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Someone Could Trip on These!",{
author="support@zygorguides.com",
description="\nFind Mistcaller's 6 toys in the Mists of Tirna Scithe on Mythic difficulty.",
achieveid={14291},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Mists", "of", "Tirna", "Scithe", "Mythic"},
},[[
step
Enter the "Mists of Tirna Scithe" Dungeon on Mythic Difficulty |goto Mists of Tirna Scithe/0 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14291 |or
step
Inside the Mists of Tirna Scithe Dungeon (Mythic):
|tip While in the Mistveil Tangle, there will be 6 toys.
|tip 2 will be found closer to the North West side of the map.
|tip 2 will be near the center.
|tip 2 will be at the South East.
Earn the "Someone Could Trip on These!" Achievement |achieve 14291
step
_Congratulations!_
You Earned the "Someone Could Trip on These!" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Hunger for Knowledge",{
author="support@zygorguides.com",
description="\nDefeat Tred'ova after defeating an Elightened Spinemaw Gorger in the Mists of Tirna Scithe on Mythic difficulty.",
achieveid={14375},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Mists", "of", "Tirna", "Scithe", "Tred'ova", "Mythic"},
},[[
step
Enter the "Mists of Tirna Scithe" Dungeon on Mythic Difficulty |goto Mists of Tirna Scithe/0 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14375 |or
step
kill Tred'ova##164517
|tip Before the encounter, keep a "Spinemaw Gorger" alive from the trash, bringing it to the boss.
|tip Once the Spinemaw Gorger consumes the cocoon near the boss, it will gain the "Enlightened" buff.
|tip Kill it for the achievement.
Earn the "Hunger for Knowledge" Achievement |achieve 14375 |goto 15.11,74.45
step
_Congratulations!_
You Earned the "Hunger for Knowledge" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Full Gores Meal",{
author="support@zygorguides.com",
description="\nDefeat Globgrog after feeding him a three course meal in Plaguefall on Mythic difficulty.",
achieveid={14347},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Plaguefall", "Globgrog", "Mythic"},
},[[
step
Enter the "Plaguefall" Dungeon on Mythic Difficulty |goto Plaguefall/1 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14347 |or
step
kill Globgrog##164255
|tip During the encounter, slimes will spawn near the edge of the room.
|tip Find it and pull it to Globgrog.
|tip They spawn one at a time.
Serve the Appetizer |achieve 14347/1
Serve the Entree |achieve 14347/2
Serve the Dessert |achieve 14347/3
Earn the "Full Gores Meal" Achievement |achieve 14347 |goto 50.26,21.38
step
_Congratulations!_
You Earned the "Full Gores Meal" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Going Viral",{
author="support@zygorguides.com",
description="\nDefeat Doctor Ickus after destroying 2 Volatile Plague Bombs in Plaguefall on Mythic difficulty.",
achieveid={14296},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Plaguefall", "Doctor", "Ickus", "Mythic"},
},[[
step
Enter the "Plaguefall" Dungeon on Mythic Difficulty |goto Plaguefall/1 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14296 |or
step
click Volatile Substance+
|tip Clear the trash first.
|tip It'll appear on the desk in the right of the room.
|tip IMPORTANT: You will only have 10 seconds to throw the substance into the cauldron.
|tip Use the Extra Action Button that appears in order to throw it into a cauldron.
|tip The cauldron will turn purple and a new Volatile Substance will spawn by the current cauldron.
|tip A different player should pick it up and run to the next cauldron, repeating the process until all cauldrons are lit.
kill Doctor Ickus##164967
Earn the "Going Viral" Achievement |achieve 14296 |goto 61.82,44.09
step
_Congratulations!_
You Earned the "Going Viral" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Riding with my Slimes",{
author="support@zygorguides.com",
description="\nDefeat all bosses while affected by Plaguefallen within a single visit in the Plaguefall dungeon on Mythic difficulty.",
achieveid={14292},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Plaguefall", "Globgrog", "Doctor", "Ickus", "Domina", "Venomblade", "Margrave", "Stradama", "Mythic"},
},[[
step
Enter the "Plaguefall" Dungeon on Mythic Difficulty |goto Plaguefall/1 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14292 |or
step
Gain the "Plaguefallen" Debuff |havebuff spell:330092 |goto 50.48,19.70 |or
|tip Stand in the green sludge to gain ten stacks of "Concentrated Plague."
|tip At ten stacks of "Concentrated Plague," you will become Plaguefallen.
|tip While Plaguefallen, your movement speed will be halved and your haste reduced by 10%.
|tip You will also be unable to mount.
|tip You will have 2 minutes to kill the boss before it wears off.
|tip It's a good idea to DPS the boss down to a lower health total and stack in the ooze to get the debuff before it dies.
'|achieve 14292 |or
step
kill Globgrog##164255 |goto 50.26,21.38
Click Here to Continue |confirm |or
'|achieve 14292 |or
step
Gain the "Plaguefallen" Debuff |havebuff spell:330092 |goto 61.60,41.56 |or
|tip Stand in the green sludge to gain ten stacks of "Concentrated Plague."
|tip At 10 stacks of "Concentrated Plague," you will become Plaguefallen.
|tip While Plaguefallen, your movement speed will be halved and your haste reduced by 10%.
|tip You will also be unable to mount.
|tip You will have 2 minutes to kill the boss before it wears off.
|tip It's a good idea to DPS the boss down to a lower health total and stack in the ooze to get the debuff before it dies.
'|achieve 14292 |or
step
kill Doctor Ickus##164967 |goto 61.82,44.09
Click Here to Continue |confirm |or
'|achieve 14292 |or
step
Gain the "Plaguefallen" Debuff |havebuff spell:330092 |goto 53.22,71.25 |or
|tip Stand in the green sludge to gain ten stacks of "Concentrated Plague."
|tip At 10 stacks of "Concentrated Plague," you will become Plaguefallen.
|tip While Plaguefallen, your movement speed will be halved and your haste reduced by 10%.
|tip You will also be unable to mount.
|tip You will have 2 minutes to kill the boss before it wears off.
|tip It's a good idea to DPS the boss down to a lower health total and stack in the ooze to get the debuff before it dies.
'|achieve 14292 |or
step
kill Domina Venomblade##164266 |goto 55.45,75.48
Click Here to Continue |confirm |or
'|achieve 14292 |or
step
Gain the "Plaguefallen" Debuff |havebuff spell:330092 |goto Plaguefall/0 54.63,68.90 |or
|tip Stand in the green sludge to gain ten stacks of "Concentrated Plague."
|tip At 10 stacks of "Concentrated Plague," you will become Plaguefallen.
|tip While Plaguefallen, your movement speed will be halved and your haste reduced by 10%.
|tip You will also be unable to mount.
|tip You will have 2 minutes to kill the boss before it wears off.
|tip It's a good idea to DPS the boss down to a lower health total and stack in the ooze to get the debuff before it dies.
'|achieve 14292 |or
step
kill Margrave Stradama##164267 |goto 52.41,78.50
Click Here to Continue |confirm |or
'|achieve 14292 |or
step
Defeat each boss while Plaguefallen
|tip Stand in the green sludge to gain ten stacks of "Concentrated Plague."
|tip At 10 stacks of "Concentrated Plague," you will become Plaguefallen.
|tip While Plaguefallen, your movement speed will be halved and your haste reduced by 10%.
|tip You will also be unable to mount.
Earn the "Riding with my Slimes" Achievement |achieve 14292
step
_Congratulations!_
You Earned the "Riding with my Slimes" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Picking Up the Pieces",{
author="support@zygorguides.com",
description="\nDefeat Halkias after he reabsorbs all three Shards of Halkias in the Halls of Atonement on Mythic difficulty.",
achieveid={14567},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Halls", "of", "Atonement", "Halkias", "Mythic"},
},[[
step
Enter the "Halls of Atonement" Dungeon on Mythic Difficulty |goto Halls of Atonement/0 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14567 |or
step
kill Halkias##165408
|tip Before pulling Halkias, clear all trash in the area.
|tip Kite Halkias to the locations where the shards were killed.
|tip After being taken to all 3 of the shard spawns, defeat him for the achievement.
Earn the "Picking Up the Pieces" Achievement |achieve 14567 |goto 52.79,53.23
step
_Congratulations!_
You Earned the "Picking Up the Pieces" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Breaking Bad",{
author="support@zygorguides.com",
description="\nDefeat Echelon after shattering 18 or more Undying Stonefiends at one time in the Halls of Atonement on Mythic difficulty.",
achieveid={14284},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Halls", "of", "Atonement", "Echelon", "Mythic"},
},[[
step
Enter the "Halls of Atonement" Dungeon on Mythic Difficulty |goto Halls of Atonement/0 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14284 |or
step
kill Echelon##156827
|tip During the encounter, Echelon will spawn "Undying Stonefiends".
|tip 6 will be summoned at a time.
|tip To earn the achievement, slay a total of 18 Undying Stonefiends before defeating the boss.
Earn the "Breaking Bad" Achievement |achieve 14284 |goto 26.51,54.23
step
_Congratulations!_
You Earned the "Breaking Bad" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Nobody Puts Denathrius in a Corner",{
author="support@zygorguides.com",
description="\nDefeat Lord Chamberlain with 3 Sinstone Statues in corners of the room in the Halls of Atonement on Mythic difficulty.",
achieveid={14352},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Halls", "of", "Atonement", "Lord", "Chamberlain", "Mythic"},
},[[
step
Enter the "Halls of Atonement" Dungeon on Mythic Difficulty |goto Halls of Atonement/0 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14352 |or
step
kill Lord Chamberlain##164218
|tip Start the encounter, bringing Lord Chamberlain down to 40% health.
|tip Pay attention to where he tosses the statues.
|tip Move to a corner in the room and have the group stack.
|tip Lord Chamberlain will cast "Telekinetic Toss" which will throw a statue and a random party member.
|tip Once the three statues are in the corners, defeat Lord Chamberlain for the achievement.
Earn the "Nobody Puts Denathrius in a Corner" Achievement |achieve 14352 |goto Halls of Atonement/2 14.24,48.61
step
_Congratulations!_
You Earned the "Nobody Puts Denathrius in a Corner" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Couple's Therapy",{
author="support@zygorguides.com",
description="\nCause Millhouse and Millificent to strike each other with each Shadowfury and Echo \n"..
"Finger Laser X-treme cast and defeat the Manastorms in De Other Side on Mythic difficulty.",
achieveid={14374},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "De", "Other", "Side", "Manastorm", "Mythic"},
},[[
step
Enter the "De Other Side" Dungeon on Mythic Difficulty |goto De Other Side/2 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14374 |or
step
Defeat the Manastorms
|tip During the encounter, two players will randomly be marked with red markers.
|tip Druing the first phase, marked players must position the boss in between them.
|tip When done correctly, Millhouse will be stunned for a moment.
|tip During the second phase, someone will then be marked with a blue arrow as well as a purple circle around them.
|tip Stand on Millificent to stun her, then defeat the bosses.
Earn the "Couple's Therapy" Achievement |achieve 14374 |goto De Other Side/0 48.37,66.92
step
_Congratulations!_
You Earned the "Couple's Therapy" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Highly Communicable",{
author="support@zygorguides.com",
description="\nDefeat Hakkar, the Manastorms, Dealer Xy'exa, and Mueh'zala while at least one party \n"..
"member is afflicted with Corrupted Blood within a single visit to in De Other Side on Mythic difficulty.",
achieveid={14354},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "De", "Other", "Side", "Mythic"},
},[[
step
Enter the "De Other Side" Dungeon on Mythic Difficulty |goto De Other Side/2 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14354 |or
step
Clear the dungeon trash mobs
|tip Start by clearing all trash in the instance.
|tip During the Hakkar encounter: Have two players get the "Corrupted Blood" debuff and stack.
|tip You don't need to have the buff personally, just be in the group.
|tip IMPORTANT: The two players with the debuff must stand by each other for the remainder of the instance to maintain this debuff!
|tip If you have access to a 2 seat mount, infected players should ride together.
|tip Defeat every boss in the instance while maintaining this debuff for the achievement.
Earn the "Highly Communicable" Achievement |achieve 14354 |goto 25.33,48.47
step
_Congratulations!_
You Earned the "Highly Communicable" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Thinking with...",{
author="support@zygorguides.com",
description="\nDefeat Dealer Xy'exa after collecting all 5 orbs floating above her in De Other Side on Mythic Difficulty.",
achieveid={14606},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "De", "Other", "Side", "Mythic"},
},[[
step
Enter the "De Other Side" Dungeon on Mythic Difficulty |goto De Other Side/2 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14606 |or
step
kill Dealer Xy'exa##164450
|tip During the encounter, there will be white orbs that spawn in the air in the boss room.
|tip Move your camera so that it is facing top down.
|tip Then, stand directly below the white orbs in the air.
|tip Xy'exa will cast "Displacement Trap" which will cause you to launch in the air.
|tip Collect the orbs when possible.
|tip The achievement tracker can keep track of how many orbs you have collected.
|tip Collect 5 then defeat the boss for the achievement.
Earn the "Thinking with..." Achievement |achieve 14606 |goto De Other Side/1 83.38,57.87
step
_Congratulations!_
You Earned the "Thinking with..." Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Goliath Offline",{
author="support@zygorguides.com",
description="\nDefeat Oryphrion after activating and destroying all three Shattered Devastators \n"..
"in the Spires of Ascension on Mythic difficulty.",
achieveid={14331},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Spires", "of", "Ascension", "Oryphrion", "Mythic"},
},[[
step
Enter the "Spires of Ascension" Dungeon on Mythic Difficulty |goto Spires of Ascension/1 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14331 |or
step
kill Oryphrion##162060
|tip Start by clearing all trash in the room before engaging with the boss.
|tip After, there will be 3 "Shattered Devastator" enemies whom are inactive.
|tip When Oryphrion casts "Empyreal Ordnance", stack on top of the Shattered Devastators.
|tip When the spell hits the Shattered Devastators it will activate them for 30 seconds.
|tip Charge one at a time, killing all 3 before the boss.
Destroy First Shattered Devastator |achieve 14331/1
Destroy Second Shattered Devastator |achieve 14331/2
Destroy Third Shattered Devastator |achieve 14331/3
Earn the "Goliath Offline" Achievement |achieve 14331 |goto Spires of Ascension/2 52.90,38.22
step
_Congratulations!_
You Earned the "Goliath Offline" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\ExSPEARiential",{
author="support@zygorguides.com",
description="\nDefeat Devos, Paragon of Doubt after hitting her with five Spears of Duty in \n"..
"the Spires of Ascension on Mythic difficulty.",
achieveid={14323},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Spires", "of", "Ascension", "Devos", "Mythic"},
},[[
step
Enter the "Spires of Ascension" Dungeon on Mythic Difficulty |goto Spires of Ascension/1 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14323 |or
step
kill Devos##167410
|tip During the encounter, "Spears of Duty" will appear when a pair of angels that are fighting in the area dies.
|tip For the achievement, you need to hit Devos with five of the spears.
|tip Each time Devos is hit, the group will gain a stack of "Lingering Doubt" which will have you gain damage every second and can ramp up quickly.
|tip IMPORTANT: The same person needs to be the one to hit Devos with all 5 of the spears!
|tip Aim for hitting Devos with 2 Spears before the end of the first phase.
Earn the "ExSPEARiential" Achievement |achieve 14323 |goto Spires of Ascension/3 45.51,62.77
step
_Congratulations!_
You Earned the "ExSPEARiential" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\I Can See My House From Here",{
author="support@zygorguides.com",
description="\nGather all five orbs within 60 seconds of each other in Spires of Ascension after defeating \n"..
"Devos, Paragon of Doubt in the Spires of Ascension on Mythic difficulty.",
achieveid={14327},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Spires", "of", "Ascension", "Devos", "Mythic"},
},[[
step
Enter the "Spires of Ascension" Dungeon on Mythic Difficulty |goto Spires of Ascension/1 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14327 |or
step
kill Devos##167410
|tip After the encounter orbs will appear in the sky.
|tip Gold Wings will appear on the edge of a platform.
|tip There tend to be more than 5 orbs in the air and there is no timer on this achievement, so it's advised to find 5 orbs before attempting.
|tip One you have located all orbs, collect 5 within 60 seconds for the achievement.
Earn the "I Can See My House From Here" Achievement |achieve 14327 |goto Spires of Ascension/3 45.51,62.77
step
_Congratulations!_
You Earned the "I Can See My House From Here" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Three Choose One",{
author="support@zygorguides.com",
description="\nDefeat each of the combatants last throughout multiple completions of the Affront \n"..
"of Challengers encounter in the Theater of Pain on Mythic difficulty.",
achieveid={14297},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Spires", "of", "Ascension", "Challenger", "Mythic"},
},[[
step
Enter the "Theater of Pain" Dungeon on Mythic Difficulty |goto Theater of Pain/4 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14297 |or
step
Defeat the Affront to Challengers
|tip During the first encounter, mark Paceran, Sathel and Dessia for kill order.
|tip This will take multiple runs.
|tip Each time, defeat a different opponent last for the achievement.
Paceran the Virulent Defeated Last |achieve 14297/1
Sathel the Accursed Defeated Last |achieve 14297/2
Dessia the Decapitator Defeated Last|achieve 14297/3
Earn the "Three Choose One" Achievement |achieve 14297 |goto Theater of Pain/4 50.58,91.96
step
_Congratulations!_
You Earned the "Three Choose One" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Fresh Meat!",{
author="support@zygorguides.com",
description="\nDefeat Gorechop after tenderizing 2 hunks of meat with Tenderizing Smash in the Theater of Pain on Mythic difficulty.",
achieveid={14607},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Theater", "of", "Pain", "Gorechop", "Mythic"},
},[[
step
Enter the "Theater of Pain" Dungeon on Mythic Difficulty |goto Theater of Pain/4 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14607 |or
step
kill Gorechop##162317
|tip Before you start, look for the two piles of meat that appear in the corners of the room.
|tip Bring Gorechop next to them so that when they use "Tenderizing Smash" it hits the piles.
|tip Defeat the boss once you have tenderized both piles.
Earn the "Fresh Meat!" Achievement |achieve 14607 |goto Theater of Pain/0 69.46,63.57
step
_Congratulations!_
You Earned the "Fresh Meat!" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Royal Rumble",{
author="support@zygorguides.com",
description="\nDefeat Mordretha, the Endless Empress, after performing a /challenge and defeating 2 \n"..
"Ghostly Contenders in the Theater of Pain on Mythic difficulty.",
achieveid={14533},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Theater", "of", "Pain", "Mordretha", "the", "Endless", "Empress", "Mythic"},
},[[
step
Enter the "Theater of Pain" Dungeon on Mythic Difficulty |goto Theater of Pain/4 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14533 |or
step
kill Mordretha, the Endless Empress##165946
|tip DPS the boss down to 50% health.
|tip After, "Ghostly Contenders" will appear in the audience.
|tip Target them and use the "/challenge" emote.
|tip Once they aggro you, kill them and repeat the process one more time.
|tip Defeat the boss for the achievement.
Earn the "Royal Rumble" Achievement |achieve 14533 |goto 46.67,36.24
step
_Congratulations!_
You Earned the "Royal Rumble" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Residue Evil",{
author="support@zygorguides.com",
description="\nDefeat Executor Tarvold after slaying 8 Forlorn Captives with the effects of \n"..
"Residue in Sanguine Depths on Mythic difficulty.",
achieveid={14286},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Sanguine", "Depths", "Executor", "Tarvold", "Mythic"},
},[[
step
Enter the "Sanguine Depths" Dungeon on Mythic Difficulty |goto Sanguine Depths/1 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14286 |or
step
kill Executor Tarvold##162103
|tip To start, we recommend that you use two healers for this.
|tip Secondly, you need a Druid or a Hunter.
|tip Bring Tarvold into the cell with the first Forlon Captives.
|tip "Fleeting Manifestation" will explode when they reach 100 energy.
|tip Once the add spawns, pull it to the cell and keep it rooted there until it explodes.
|tip Using the other cells in the room, repeat the process until you earn the achievement.
Earn the "Residue Evil" Achievement |achieve 14286 |goto 47.76,86.04
step
_Congratulations!_
You Earned the "Residue Evil" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\I Only Have Eyes For You",{
author="support@zygorguides.com",
description="\nDefeat Duraka the Unbreakable in the Sanguine Depths on Mythic difficulty.",
achieveid={14290},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Sanguine", "Depths", "Duraka", "the", "Unbreakable", "Mythic"},
},[[
step
Enter the "Sanguine Depths" Dungeon on Mythic Difficulty |goto Sanguine Depths/1 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14290 |or
step
Inside the Sanguine Depths Dungeon (Mythic):
clicknpc Left Gem Eye##169603
|tip It looks like a small pointed red gem on the table.
collect Left Gem Eye##180052 |goto Sanguine Depths/1 86.51,50.86
step
Inside the Sanguine Depths Dungeon (Mythic):
use the Left Gem Eye##180052
|tip Use it next to Duraka the Unbreakable.
Place the Left Gem Eye |complete itemcount(180052) == 0 or achieved(14290) |goto 73.05,33.71
step
Inside the Sanguine Depths Dungeon (Mythic):
clicknpc Right Gem Eye##169604
|tip It looks like a small pointed red gem on the table.
collect Right Gem Eye##180053 |goto Sanguine Depths/0 20.01,23.42
step
Inside the Sanguine Depths Dungeon (Mythic):
use the Right Gem Eye##180053
|tip Use it next to Duraka the Unbreakable.
|tip Using this second gem will cause Duraka to become hostile.
Place the Right Gem Eye |complete itemcount(180053) == 0 or achieved(14290) |goto Sanguine Depths/1 73.05,33.71
step
Inside the Sanguine Depths Dungeon (Mythic):
kill Duraka the Unbreakable##169617
|tip Defeat Duraka for the achievement.
Earn the "I Only Have Eyes For You" Achievement |achieve 14290 |goto 73.05,33.71
step
_Congratulations!_
You Earned the "I Only Have Eyes For You" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Dungeons\\Kaal-ed Shot",{
author="support@zygorguides.com",
description="\nDefeat General Kaal while affected by Slammed! in the Sanguine Depths on Mythic difficulty.",
achieveid={14289},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Dungeons", "Sanguine", "Depths", "General", "Kaal", "Mythic"},
},[[
step
Enter the "Sanguine Depths" Dungeon on Mythic Difficulty |goto Sanguine Depths/1 0.00,0.00 > 1000 |c |or
|tip You must complete this achievement on Mythic Difficulty.
'|achieve 14289 |or
step
clicknpc Filled Anima Container##169594
|tip They are in the jars before the boss.
|tip You will get a "Shadow Ball" which you will lose if you die.
kill General Kaal##165318
|tip Once the encounter has started, look to the left side of General Kaal's platform.
|tip You will see Anima Containers on the far side.
|tip When General Kaal casts "Gloom Squall", stand on the ledge of the platform as close as you can.
|tip You will be knocked towards the Anima Containers.
|tip Click the Filled Anima Container to get the "Slammed!" buff.
|tip Kill General Kaal for the buff.
|tip IMPORTANT: Immunity skills can remove the Slammed! buff.
Earn the "Kaal-ed Shot" Achievement |achieve 14289 |goto Sanguine Depths/0 15.78,17.38
step
_Congratulations!_
You Earned the "Kaal-ed Shot" Achievement
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Glory of the Nathria Raider",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievements contained within this guide.",
achieveid={14355},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Dungeons, Raids, Glory, of, the, Nathria, Raider"},
},[[
step
Earn the "Blind as a Bat" Achievement |achieve 14355/1
|tip Use the "Blind as a Bat" achievement guide to accomplish this.
Click here to load the "Blind as a Bat" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Blind as a Bat"
step
Earn the "Taking Care of Business" Achievement |achieve 14355/2
|tip Use the "Taking Care of Business" achievement guide to accomplish this.
Click here to load the "Taking Care of Business" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Taking Care of Business"
step
Earn the "Burning Bright" Achievement |achieve 14355/3
|tip Use the "Burning Bright" achievement guide to accomplish this.
Click here to load the "Burning Bright" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Burning Bright"
step
Earn the "Private Stock" Achievement |achieve 14355/4
|tip Use the "Private Stock" achievement guide to accomplish this.
Click here to load the "Private Stock" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Private Stock"
step
Earn the "Feed the Beast" Achievement |achieve 14355/5
|tip Use the "Feed the Beast" achievement guide to accomplish this.
Click here to load the "Feed the Beast" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Feed the Beast"
step
Earn the "I Don't Know What I Expected" Achievement |achieve 14355/6
|tip Use the "I Don't Know What I Expected" achievement guide to accomplish this.
Click here to load the "I Don't Know What I Expected" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\I Don't Know What I Expected"
step
Earn the "Pour Decision Making" Achievement |achieve 14355/7
|tip Use the "Pour Decision Making" achievement guide to accomplish this.
Click here to load the "Pour Decision Making" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Pour Decision Making"
step
Earn the "Dirtflap's Revenge" Achievement |achieve 14355/8
|tip Use the "Dirtflap's Revenge" achievement guide to accomplish this.
Click here to load the "Dirtflap's Revenge" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Dirtflap's Revenge"
step
Earn the "Feed Me, Seymour!" Achievement |achieve 14355/9
|tip Use the "Feed Me, Seymour!" achievement guide to accomplish this.
Click here to load the "Feed Me, Seymour!" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Feed Me, Seymour!"
step
Earn the "Clear Conscience" Achievement |achieve 14355/10
|tip Use the "Clear Conscience" achievement guide to accomplish this.
Click here to load the "Clear Conscience" achievement guide |confirm |next "Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Clear Conscience"
step
_Congratulations!_
You Earned the "Glory of the Nathria Raider" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Blind as a Bat",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14293},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Shriekwing"},
},[[
step
Inside the Castle Nathria Raid (Normal or Higher):
|tip Before the fight, find and mark 6 rock piles along the walls of the room.
|tip Demon Hunters can see which rock piles are the hidden servitors.
kill Shriekwing##172145
|tip During the encounter, Shriekwing will cast "Echolocation" targeting random players.
|tip Players who were targeted need to move to the piles of rocks before it goes off.
|tip The pool of "Sanguine Ichor" left behind will kill the Sneaky Servitors.
|tip After killing 6, defeat Shriekwing for the achievement.
Earn the "Blind as a Bat" Achievement |achieve 14293
step
_Congratulations!_
You Earned the "Blind as a Bat" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Taking Care of Business",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14523},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Huntsman", "Altimor"},
},[[
step
Inside the Castle Nathria Raid (Normal or Higher):
kill Huntsman Altimor##165066
|tip During the encounter, a tank will need to pull Margore, Bargast and Hecutis.
|tip Bring them to the nearest wall, kiting them around the room along the wall.
|tip If they are moving slowly, slow your DPS on them.
|tip Provoke causes them to move faster so spam that.
|tip After you complete a lap with each, you will be notified by a pile of poop that appears.
|tip Once there are 3 Piles, defeat the boss for the achievement.
Earn the "Taking Care of Business" Achievement |achieve 14523
step
_Congratulations!_
You Earned the "Taking Care of Business" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Burning Bright",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14523},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Huntsman", "Altimor"},
},[[
step
Inside the Castle Nathria Raid (Normal or Higher):
Defeat the Sun King's Salvation Encounter
|tip There will be 4 Brazier in the room
|tip The "Embered Brazier" must be hit with "Ember Blast".
|tip The "Blazing Brazier" must be hit with "Blazing Surge".
|tip The "Fiery Brazier" must be hit with "Fiery Strike"
|tip The "Smouldering Brazier" must be hit by "Smoldering Plumage", left behind by Phoenix.
|tip The easiest way to achieve this is stacking on top of each brazier until they are lit.
|tip The Phoenix will track a player, so no need to stack for that one.
Earn the "Burning Bright" Achievement |achieve 14523
step
_Congratulations!_
You Earned the "Burning Bright" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Private Stock",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14617},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Artificer", "Xy'mox"},
},[[
step
Inside the Castle Nathria Raid (Normal or Higher):
|tip IMPORTANT: This can only happen once per phase, so use slow dps until it is completed each phase.
|tip In the room before the boss, collect 3 Loose Anima.
|tip 2 will be on the right side and one on the top left.
|tip Anima carriers will gain the "Maldraxxus Anima", "Ardenweald Anima" or "Maw Anima" buff.
kill Artificer Xy'mox##166644
|tip Depending on the phase, the buff will be removed and the anima will go to the center of the room.
|tip A circle with the same color as the anima will appear.
|tip Whoever grabs the anima from the center of the room will not be able to move, but needs to be put into the circle.
|tip Players marked with "Dimensional Tear" will need to coordinate to drop a wormhole onto the frozen player, then another into the circle where the anima belongs.
|tip Repeat this 3 times then kill the boss for the achievement.
Earn the "Private Stock" Achievement |achieve 14617
step
_Congratulations!_
You Earned the "Private Stock" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Feed the Beast",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14376},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Hungering", "Destroyer"},
},[[
step
Inside the Castle Nathria Raid (Normal or Higher):
kill Hungering Destroyer##164261
|tip There are 3 giant red Anima Canisters on each side of the boss room, 6 in total.
|tip The Hungering Destroyer will cast "Volatile Ejection" which is used to destroy the Anima Canisters.
|tip Players will be marked with Volatile Ejection.
|tip These players will need to run to the Anima Canisters.
|tip Once they are all destroyed, defeat the boss for the achievement.
Earn the "Feed the Beast" Achievement |achieve 14376
step
_Congratulations!_
You Earned the "Feed the Beast" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\I Don't Know What I Expected",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14524},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Lady", "Inerva", "Darkvein"},
},[[
step
You are a raid member will need the "Son of Animus" pet to earn this achievement
learnpet Son of Animus##69820 |use Son of Animus##94152 |or
Click Here to Continue |confirm |or
step
Inside the Castle Nathria Raid (Normal or Higher):
|tip Summon the "Son of Animus" pet before the battle.
kill Lady Inerva Darkvein##167517
|tip During the fight, the Son of Animus will channel an ability.
|tip After 4 minutes, it will change into the "Dark Animus".
|tip Kill it before the boss for the achievement.
Earn the "I Don't Know What I Expected" Achievement |achieve 14524
step
_Congratulations!_
You Earned the "I Don't Know What I Expected" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Pour Decision Making",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14619},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Council", "Blood"},
},[[
step
Inside the Castle Nathria Raid (Normal or Higher):
Defeat the Council of Blood
|tip During the encounter, "Belligerent Waiters" will enter the room, stand around for a few seconds and then exit.
clicknpc Belligerent Waiter##174842
|tip Interact with 4 of them before the encounter ends for the achievement.
Earn the "Pour Decision Making" Achievement |achieve 14619
step
_Congratulations!_
You Earned the "Pour Decision Making" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Dirtflap's Revenge",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14294},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Sludgefist"},
},[[
step
Inside the Castle Nathria Raid (Normal or Higher):
|talk Dirtflap##174073
|tip They are found to the right as you leave Shriekwing's room and down the hall.
|tip Once you've spoken, they will appear on a pillar in the room with Sludgefist before starting the encounter.
kill Sludgefist##174733
|tip During the encounter, Sludgefist will cast "Hateful Gaze".
|tip The tank should guide Sludgefist to the pillar that Dirtflap is standing on and destroy it.
|tip Repeat this for the remaining pillars then defeat the boss for the achievement.
Earn the "Dirtflap's Revenge" Achievement |achieve 14294
step
_Congratulations!_
You Earned the "Dirtflap's Revenge" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Feed Me, Seymour!",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14525},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Stone", "Legion", "Generals"},
},[[
step
Inside the Castle Nathria Raid (Normal or Higher):
click Wilting Sanguine Rose
|tip Just outside the boss area.
|tip IMPORTANT: Every single player in the raid must have this buff or you will not earn this achievement.
|tip There is an internal timer of 10 minutes, so be sure to pick it up at the same time.
|tip Use the in game timer to track as soon as you click the flower.
Defeat the Stone Legion Generals
|tip General Kaal will cast "Wicked Blade", which gives you a bleed.
|tip For Tanks, Serrated Swipe will apply a bleed, which will also activate "Blooming Rose" eventually.
|tip If your class can taunt, you can potentially stack Blooming Roses quicker by taunting rigth at the end of each Serrated Swipe cast.
|tip IMPORTANT: On Normal difficulty, this ability does not cleave and is completely RNG on it's target.
|tip After 90 seconds, your "Wilting Rose" buff will change to "Blooming Rose".
|tip Every player in the raid must have this buff for the achievement.
|tip IMPORTANT: The "Crystallize" ability will reset your stacks.
|tip If you die and have Bloomed, DO NOT RESSURECT.
Earn the "Feed Me, Seymour!" Achievement |achieve 14525
step
_Congratulations!_
You Earned the "Feed Me, Seymour!" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Dungeons & Raids\\Shadowlands Raids\\Clear Conscience",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Castle Nathria raid achievement contained within this guide.",
achieveid={14610},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Raids", "Glory", "of", "the", "Nathria", "Raider", "Castle", "Sire", "Denathrius"},
},[[
step
Inside the Castle Nathria Raid (Normal or Higher):
|tip The goal of this achievement is to remove everyone in the raids "Burden of Sin".
kill Sire Denathrius##168938
|tip Keep damage low.
|tip During phase 1, "Cleansing Pain" will be cast up to 6 times before running needing to reset.
|tip At this point, you should ave 4 stacks of "Burden of Sin".
|tip Standing in CLeansing Pain will remove stacks of Burden of Sin.
|tip Try having even groups soak the first two Cleansing Pain.
|tip Then, everyone soak the next two.
|tip Then finally, odd groups soak the last two.
Earn the "Clear Conscience" Achievement |achieve 14610
step
_Congratulations!_
You Earned the "Clear Conscience" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Shadowlands\\We Can Rebuild",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete various achievements within Revendreth, found in this guide.",
achieveid={15023},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Exploration, Revendreth, The, Accuser's, Avowed"},
},[[
step
Unlock Rank I of all four Covenant Upgrades |achieve 15023
|tip These require Anima to upgrade.
|tip You will need to farm World Quests and complete various activities to earn it.
|tip Below is your progress.
Upgrade your Command Table to Rank 1 |complete covenantfeature("Command Table") <= 1
Upgrade your Transport Network to Rank 1 |complete covenantfeature("Transport Network") <= 1
Upgrade your Anima Conductor Beyond to 1 |complete covenantfeature("Anima Conductor") <= 1
Upgrade your Queen's Conservatory to Rank 1 |complete covenantfeature("Reservoir Upgrades") <= 1 |only if  NightFae
Upgrade your Abomination Factory to Rank 1 |complete covenantfeature("Reservoir Upgrades") <= 1 |only if  Necrolord
Upgrade your Path of Ascension to Rank 1 |complete covenantfeature("Reservoir Upgrades") <= 1 |only if  Kyrian
Upgrade your Ember Court to Rank 1 |complete covenantfeature("Reservoir Upgrades") <= 1 |only if  Venthyr
step
_Congratulations!_
You Earned the "We Can Rebuild" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Shadowlands\\Denying the Drought",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete various achievements within Revendreth, found in this guide.",
achieveid={15024},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Exploration, Revendreth, The, Accuser's, Avowed"},
},[[
step
Unlock Rank II of all four Covenant Upgrades |achieve 15024
|tip These require Anima to upgrade.
|tip You will need to farm World Quests and complete various activities to earn it.
|tip Below is your progress.
Upgrade your Command Table to Rank 2 |complete covenantfeature("Command Table") >= 2
Upgrade your Transport Network to Rank 2 |complete covenantfeature("Transport Network") >= 2
Upgrade your Anima Conductor to Rank 2 |complete covenantfeature("Anima Conductor") >= 2
Upgrade your Queen's Conservatory to Rank 2 |complete covenantfeature("Reservoir Upgrades") >= 2 |only if  NightFae
Upgrade your Abomination Factory to Rank 2 |complete covenantfeature("Reservoir Upgrades") >= 2 |only if  Necrolord
Upgrade your Path of Ascension to Rank 2 |complete covenantfeature("Reservoir Upgrades") >= 2 |only if  Kyrian
Upgrade your Ember Court to Rank 2 |complete covenantfeature("Reservoir Upgrades") >= 2 |only if  Venthyr
step
_Congratulations!_
You Earned the "Denying the Drought" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Shadowlands\\Sanctum Superior",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete various achievements within Revendreth, found in this guide.",
achieveid={15024},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Exploration, Revendreth, The, Accuser's, Avowed"},
},[[
step
Unlock Rank III of all four Covenant Upgrades |achieve 15024
|tip These require Anima to upgrade.
|tip You will need to farm World Quests and complete various activities to earn it.
|tip Below is your progress.
Upgrade your Command Table to Rank 3 |complete covenantfeature("Command Table") >= 3
Upgrade your Transport Network to Rank 3 |complete covenantfeature("Transport Network") >= 3
Upgrade your Anima Conductor to Rank 3 |complete covenantfeature("Anima Conductor") >= 3
Upgrade your Queen's Conservatory to Rank 3 |complete covenantfeature("Reservoir Upgrades") >= 3 |only if  NightFae
Upgrade your Abomination Factory to Rank 3 |complete covenantfeature("Reservoir Upgrades") >= 3 |only if  Necrolord
Upgrade your Path of Ascension to Rank 3 |complete covenantfeature("Reservoir Upgrades") >= 3 |only if  Kyrian
Upgrade your Ember Court to Rank 3 |complete covenantfeature("Reservoir Upgrades") >= 3 |only if  Venthyr
step
_Congratulations!_
You Earned the "Sanctum Superior" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Path of Ascension\\The Path Towards Ascension 1",{
author="support@zygorguides.com",
description="\nThis Guide will walk you through completing The Path Towards Ascension Achievement.",
achieveid={14340},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Expansion Features, The, Path, Towards, Ascension"},
},[[
step
Defeat a boss in The Path of Ascension |achieve 14340
|tip Refer to the "Kyrian Path of Ascension" guide to accomplish this.
step
_Congratulations!_
You Earned the "The Path Towards Ascension 1" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Path of Ascension\\The Path Towards Ascension 3",{
author="support@zygorguides.com",
description="\nThis Guide will walk you through completing The Path Towards Ascension Achievement.",
achieveid={14342},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Expansion Features, The, Path, Towards, Ascension"},
},[[
step
Defeat three bosses in The Path of Ascension |achieve 14342
|tip Refer to the "Kyrian Path of Ascension" guide to accomplish this.
step
_Congratulations!_
You Earned the "The Path Towards Ascension 3" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Path of Ascension\\The Path Towards Ascension 5",{
author="support@zygorguides.com",
description="\nThis Guide will walk you through completing The Path Towards Ascension Achievement.",
achieveid={14343},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Expansion Features, The, Path, Towards, Ascension"},
},[[
step
Defeat five bosses in The Path of Ascension |achieve 14343
|tip Refer to the "Kyrian Path of Ascension" guide to accomplish this.
step
_Congratulations!_
You Earned the "The Path Towards Ascension 5" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Path of Ascension\\The Path Towards Ascension 7",{
author="support@zygorguides.com",
description="\nThis Guide will walk you through completing The Path Towards Ascension Achievement.",
achieveid={14344},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Expansion Features, The, Path, Towards, Ascension"},
},[[
step
Defeat seven bosses in The Path of Ascension |achieve 14344
|tip Refer to the "Kyrian Path of Ascension" guide to accomplish this.
step
_Congratulations!_
You Earned the "The Path Towards Ascension 7" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Torghast\\Twisting Corridors: Layer 2",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete Layer 2 of Twisting Corridors in Torghast, Tower of the Damned.",
achieveid={14469},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Expansion Features, Twisting, Corridors, Layer, 2"},
},[[
step
Clear the Twisting Corridors: Layer 2 in Torghast
|tip You will need to clear the first layer to gain access to this.
|tip It is recommended you have an Item Level of 170 if attempting to solo.
Earn the "Twisting Corridors: Layer 2" Achievement |achieve 14570
step
_Congratulations!_
You Earned the "Twisting Corridors: Layer 2" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Torghast\\Twisting Corridors: Layer 4",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete Layer 4 of Twisting Corridors in Torghast, Tower of the Damned.",
achieveid={14471},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Expansion Features, Twisting, Corridors, Layer, 4"},
},[[
step
Clear the Twisting Corridors: Layer 4 in Torghast
|tip You will need to clear the previous 3 layers to gain access to this.
|tip It is recommended you have an Item Level of 195 if attempting to solo.
Earn the "Twisting Corridors: Layer 4" Achievement |achieve 14570
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Torghast\\Twisting Corridors: Layer 6",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete Layer 6 of Twisting Corridors in Torghast, Tower of the Damned.",
achieveid={14568},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Expansion Features, Twisting, Corridors, Layer, 6"},
},[[
step
Clear the Twisting Corridors: Layer 6 in Torghast
|tip You will need to clear the previous 5 layers to gain access to this.
|tip It is recommended you have an Item Level of 210 if attempting to solo.
Earn the "Twisting Corridors: Layer 6" Achievement |achieve 14570
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Expansion Features\\Torghast\\Twisting Corridors: Layer 8",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete Layer 8 of Twisting Corridors in Torghast, Tower of the Damned.",
achieveid={14570},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Expansion Features, Dungeons, Twisting, Corridors, Layer, 8"},
},[[
step
Clear the Twisting Corridors: Layer 8 in Torghast
|tip You will need to clear the previous 7 layers to gain access to this.
|tip It is recommended you have an Item Level of 225 if attempting to solo.
Earn the "Twisting Corridors: Layer 8" Achievement |achieve 14570
step
_Congratulations!_
You earned the "Twisting Corridors: Layer 8" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Explore Bastion",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete various achievements within Revendreth, found in this guide.",
achieveid={14303},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Exploration, Revendreth, The, Accuser's, Avowed"},
},[[
step
Explore the Vestribule of Eternity |achieve 14303/1 |goto Bastion/0 45.84,79.54
step
Cross the bridge |goto Bastion/0 51.59,76.67 < 7 |only if walking
Explore the Aspirant's Curcible |achieve 14303/10 |goto Bastion/0 54.90,82.32
step
Follow the path |goto 55.94,79.33 < 7 |only if walking
Cross the bridge |goto 61.06,74.55 < 7 |only if walking
Explore Purity's Pinnacle |achieve 14303/3 |goto Bastion/0 62.15,73.60
step
Follow the path down |goto 52.33,60.56 15 |only if walking
Explore The Mnemonic Locus |achieve 14303/5 |goto Bastion/0 49.88,57.52
step
Follow the path up |goto 48.98,59.63 < 10 |only if walking
Explore Agthia's Repose |achieve 14303/11 |goto Bastion/0 46.91,63.46
step
Jump down here |goto 39.77,61.47 < 15 |only if walking
Explore the Temple of Courage |achieve 14303/9 |goto Bastion/0 38.00,59.19
step
Run up the stairs |goto 40.79,57.01 |only if walking
Follow the path down |goto 48.73,55.86 < 10 |only if walking
Explore the Firstborne's Bounty |achieve 14303/4 |goto Bastion/0 51.41,49.47
step
Follow the path up |goto 54.46,51.28 < 7 |only if walking
Explore the Temple of Humility |achieve 14303/2 |goto Bastion/0 61.22,43.87
step
Explore Elysian Hold |achieve 14303/7 |goto Bastion/0 58.28,28.82
step
Explore The Eternal Forge |achieve 14303/6 |goto Bastion/0 50.79,21.01
step
Run down the stairs |goto 48.31,25.99 < 7 |only if walking
Follow the path |goto 42.28,30.89 < 15 |only if walking
Explore the Citadel of Loyalty |achieve 14303/8 |goto Bastion/0 27.59,28.36
step
_Congratulations!_
You Earned the "Explore Bastion" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Explore Maldraxxus",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete various achievements within Revendreth, found in this guide.",
achieveid={14305},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Exploration, Revendreth, The, Accuser's, Avowed"},
},[[
step
Explore Forgotten Wounds |achieve 14305/12 |goto Maldraxxus/0 54.67,32.40
step
Explore the House of Eyes |achieve 14305/9 |goto Maldraxxus/0 54.61,16.38
step
Follow the path up |goto Maldraxxus/0 53.46,22.58 < 7 |only if walking
Continue following the path |goto 56.56,29.49 < 7 |only if walking
Explore the House of Rituals |achieve 14305/8 |goto Maldraxxus/0 63.61,36.19
step
Jump down carefully here |goto 62.41,41.11 < 15 |only if walking
Explore Glutharn's Decay |achieve 14305/11 |goto Maldraxxus/0 65.04,48.42
step
Follow the path |goto 67.91,51.46 < 15 |only if walking
Run down the stairs |goto 65.59,54.26 < 10 |only if walking
Run up the stairs |goto 57.81,66.71 < 15 |only if walking
Explore the House of Plagues |achieve 14305/6 |goto Maldraxxus/0 59.68,71.93
step
Follow the path |goto 57.85,68.04 < 15 |only if walking
Run up the stairs |goto 55.60,64.79 < 15 |only if walking
Run up the stairs |goto 52.31,66.17 < 15 |only if walking
Continue up the stairs |goto 51.16,67.84 < 10 |only if walking
Explore Seat of the Primus |achieve 14305/5 |goto Maldraxxus/0 50.46,67.82
step
Jump down here |goto 49.55,65.67 < 15 |only if walking
Follow the path |goto 50.37,58.22 < 20 |only if walking
Run down the stairs |goto 50.37,51.66 < 15 |only if walking
Explore the Theater of Pain|achieve 14305/1 |goto Maldraxxus/0 49.77,46.13
step
Run up the stairs |goto 50.36,49.29 < 20 |only if walking
Follow the path |goto 50.11,55.46 < 20 |only if walking
Follow the path down |goto 42.53,50.99 < 15 |only if walking
Explore The Spearhead |achieve 14305/3 |goto Maldraxxus/0 39.16,55.40
step
Explore the Burning Thicket |achieve 14305/13 |goto Maldraxxus/0 29.69,59.34
step
Follow the path |goto 32.70,60.83 < 15 |only if walking
Continue following the path |goto 34.00,67.38 < 10 |only if walking
Continue following the path |goto 35.76,72.52 < 15 |only if walking
Explore the House of the Chosen |achieve 14305/7 |goto Maldraxxus/0 34.54,77.28
step
Follow the path |goto 35.76,72.52 < 15 |only if walking
Continue following the path |goto 34.00,67.38 < 10 |only if walking
Follow the path |goto 34.16,62.53 < 15 |only if walking
Follow the path down |goto 32.31,49.91 < 15 |only if walking
Enter the tunnel |goto 29.97,39.83 < 15 |only if walking
Explore The Stitchyard |achieve 14305/2 |goto Maldraxxus/0 27.99,36.88
step
Explore the House of Constructs |achieve 14305/10 |goto Maldraxxus/0 30.02,28.36
step
Run up the stairs |goto 31.44,27.58 < 10 |only if walking
Continue up the stairs |goto 33.07,28.67 < 15 |only if walking
Enter the tunnel |goto 33.72,29.65 < 15 |only if walking
Follow the path up |goto 36.53,30.91 < 15 |only if walking
Enter the cave |goto 38.74,32.93 < 15 |only if walking
Explore the Sepulcher of Knowledge |achieve 14305/4 |goto Maldraxxus/0 43.31,29.04
step
_Congratulations!_
You Earned the "Explore Maldraxxus" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Explore Ardenweald",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete various achievements within Revendreth, found in this guide.",
achieveid={14304},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Exploration, Revendreth, The, Accuser's, Avowed"},
},[[
step
Explore the Crumbled Ridge|achieve 14304/12 |goto Ardenweald/0 72.83,27.56
step
Follow the path |goto Ardenweald/0 70.16,25.84 < 15 |only if walking
Cross the bridge |goto 67.75,23.87 < 7 |only if walking
Explore the Starlit Overlook |achieve 14304/3 |goto Ardenweald/0 64.81,19.83
step
Follow the path down |goto 65.85,20.75 < 15 |only if walking
Continue down the path |goto 63.31,24.25 < 10 |only if walking
Explore the Dusty Burrows |achieve 14304/1 |goto Ardenweald/0 61.26,34.41
step
Follow the path |goto 60.87,36.49 < 15 |only if walking
Continue following the path |goto 58.85,36.96 < 15 |only if walking
Explore Glitterfall Basin |achieve 14304/9 |goto Ardenweald/0 51.19,33.72
step
Cross the bridge |goto 49.17,30.98 < 10 |only if walking
Follow the path up |goto 39.25,29.52 < 10 |only if walking
Explore the  Gossamer Cliffs |achieve 14304/13 |goto Ardenweald/0 36.61,29.49
step
Explore The Stalks |achieve 14304/2 |goto Ardenweald/0 31.00,34.43
step
Follow the path |goto 33.12,36.60 < 15 |only if walking
Cross the water |goto 33.62,39.25 < 15 |only if walking
Cross the bridge |goto 31.12,45.76 < 15 |only if walking
Cross the bridge |goto 28.90,48.72 < 10 |only if walking
Follow the path |goto 27.29,51.73 < 15 |only if walking
Follow the path |goto 27.41,54.35 < 15 |only if walking
Jump down here |goto 26.12,59.26 < 15 |only if walking
Explore the Tirna Scithe |achieve 14304/5 |goto Ardenweald/0 24.94,60.95
step
Follow the path |goto 25.71,63.09 < 15 |only if walking
Continue following the path |goto 29.94,63.94 < 15 |only if walking
Cross the water |goto 34.55,63.61 < 15 |only if walking
Explore Darkreach |achieve 14304/11 |goto Ardenweald/0 35.54,66.43
step
Follow the path |goto 36.20,66.52 < 15 |only if walking
Cross the bridge |goto 37.45,65.95 < 10 |only if walking
Follow the path |goto 39.81,63.94 < 15 |only if walking
Continue following the path |goto 46.77,70.97 < 15 |only if walking
Continue following the path |goto 47.13,74.61 < 15 |only if walking
Explore Gormhive |achieve 14304/8 |goto Ardenweald/0 53.51,74.42
step
Follow the path up |goto 53.47,66.90 < 10 |only if walking
Continue following the path |goto 53.62,62.66 < 10 |only if walking
Explore the Shimmerbough |achieve 14304/4 |goto Ardenweald/0 52.36,59.72
step
Follow the path up |goto 52.03,59.35 < 15 |only if walking
Cross the bridge |goto 50.35,57.73 < 15 |only if walking
Explore the Heart of the Forest |achieve 14304/7 |goto Ardenweald/0 47.98,51.36
step
Run down the ramp |goto 50.37,52.04 < 10 |only if walking
Follow the road |goto 53.82,51.20 < 15 |only if walking
Continue following the road |goto 55.22,53.45 < 15 |only if walking
Continue following the road |goto 58.12,55.32 < 15 |only if walking
Explore the Hibernal Hollow |achieve 14304/6 |goto Ardenweald/0 60.23,53.40
step
_Congratulations!_
You Earned the "Explore Ardenweald" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Explore Revendreth",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete various achievements within Revendreth, found in this guide.",
achieveid={14306},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Exploration, Revendreth"},
},[[
step
Explore Caretaker's Manor |achieve 14306/1 |goto Revendreth/0 72.89,65.82
step
Explore The Endmire |achieve 14306/4 |goto Revendreth/0	66.98,58.80
step
Ride the Elevator up |goto Revendreth/0 70.13,57.85 < 10 |only if walking
Follow the road |goto 70.77,53.57 < 15 |only if walking
Cross the bridge |goto 73.06,47.41 < 15 |only if walking
Run down the stairs |goto 76.10,46.69 < 15 |only if walking
Cross the bridge |goto 75.09,43.14 < 15 |only if walking
Cross the bridge |goto 73.94,37.85 < 15 |only if walking
Explore the Archivam |achieve 14306/2 |goto Revendreth/0 75.26,37.41
step
Follow the path down |goto 69.95,37.58 < 15 |only if walking
Explore the Catacombs of Regret |achieve 14306/5 |goto Revendreth/0 65.95,32.42
step
Follow the path up |goto 63.65,30.41 < 10 |only if walking
Run up the stairs |goto 62.48,37.22 < 15 |only if walking
Explore the Old Gate |achieve 14306/6 |goto Revendreth/0 61.13,38.79
step
Run up the stairs |goto 60.27,38.73 < 15 |only if walking
Run up the stairs |goto 58.24,40.22 < 15 |only if walking
Follow the path up |goto 57.18,37.22 < 15 |only if walking
Explore the Redelav District |achieve 14306/11 |goto Revendreth/0 55.08,36.33
step
Run up the stairs |goto 53.36,35.74 < 15 |only if walking
Follow the path |goto 49.22,35.27 < 15 |only if walking
Explore the Dominance Gate |achieve 14306/16 |goto Revendreth/0 43.54,34.23
step
Run up the stairs |goto 42.05,36.25 < 15 |only if walking
Continue up the stairs |goto 44.14,42.42 < 15 |only if walking
Explore the Court of the Harvesters |achieve 14306/15 |goto Revendreth/0 45.20,45.59
step
Explore the Chalice District |achieve 14306/10 |goto Revendreth/0 49.29,50.58
step
Ride the elevator up  |goto 46.29,50.85 < 15 |only if walking
Explore Darkwall Tower |achieve 14306/14 |goto 45.78,50.84
step
Follow the path |goto 43.90,52.31 < 20 |only if walking
Run down the stairs |goto 40.88,48.11 < 15 |only if walking
Continue down the stairs |goto 39.45,46.09 < 15 |only if walking
Continue down the stairs |goto 39.61,44.47 < 10 |only if walking
Follow the path |goto 39.89,41.48 < 10 |only if walking
Cross the bridge |goto 36.54,41.46 < 15 |only if walking
Run up the stairs |goto 32.92,41.48 < 15 |only if walking
Ride the elevator down |goto 30.33,47.34 < 10 |only if walking
Explore the Ember Ward |achieve 14306/13 |goto Revendreth/0 29.17,50.02
step
Follow the path |goto 26.23,44.96 < 15 |only if walking
|tip Avoid Boulderfoot.
Cross the bridge |goto 25.09,37.13 < 15 |only if walking
Explore Dominance Keep |achieve 14306/18 |goto Revendreth/0 25.99,28.86
step
Jump down carefully here |goto 30.18,48.82 < 10 |only if walking
Follow the path |goto 25.54,51.40 < 15 |only if walking
Run up the stairs |goto 22.49,54.37 < 15 |only if walking
Explore  The Shrouded Asylum |achieve 14306/17 |goto Revendreth/0 21.60,55.17
step
Run down the stairs < 15 |only if walking
Follow the path |goto 25.49,51.46 < 10 |only if walking
Continue following the path |goto 29.58,54.00 < 15 |only if walking
Follow the path up |goto 30.49,58.14 < 15 |only if walking
Follow the path |goto 35.67,69.85 < 15
Jump down carefully here |goto 36.53,70.51 < 10 |only if walking
Follow the path up |goto 41.86,71.51 < 10 |only if walking
Explore The Banewood |achieve 14306/8 |goto Revendreth/0 43.02,71.36
step
Explore the Stalker's Lodge |achieve 14306/9 |goto Revendreth/0 46.57,59.51
step
Follow the path |goto 42.95,74.23 < 15 |only if walking
Continue following the path |goto 41.65,76.25 < 15 |only if walking
Explore Dredhollow |achieve 14306/12 |goto Revendreth/0 40.94,80.22
step
Follow the path |goto 43.04,74.15 < 10 |only if walking
Explore The Night Market |achieve 14306/7 |goto Revendreth/0 51.08,78.41
step
Follow the path |goto 51.17,75.59 < 15 |only if walking
Follow the path up |goto 53.53,75.27 < 15 |only if walking
Explore the Witherfall Ruin |achieve 14306/3 |goto Revendreth/0	61.23,74.29
step
_Congratulations!_
You Earned the "Explore Revendreth" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Explore The Maw",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete various achievements within Revendreth, found in this guide.",
achieveid={14663},
patch='90001',
startlevel=60,
keywords={"Shadowlands, Exploration, Revendreth, The, Accuser's, Avowed"},
},[[
step
Complete the "Rule 6: Concealment is Everything" Ve'nari Quest |q 60285 |future
|tip Refer to "The Maw" leveling guide to accomplish this.
Click here to load "The Maw" guide |confirm |next "Leveling Guides\\Shadowlands (50-60)\\The Maw"
step
Explore Cocyrus |achieve 14663/2 |goto The Maw/0 42.86,43.12
step
Explore Zovaal's Cauldron |achieve 14663/12 |goto The Maw/0 38.78,41.31
step
Explore Planes of Torment |achieve 14663/8 |goto The Maw/0 33.24,21.61
step
Explore Gorgoa: River of Souls |achieve 14663/5 |goto The Maw/0 31.37,33.72
step
Explore Calcis |achieve 14663/1 |goto The Maw/0 23.85,36.67
step
Explore Crucible of the Damned |achieve 14663/3 |goto The Maw/0 16.91,49.43
step
Cross the bridge |goto The Maw/0 44.72,51.97 < 10 |only if walking
Explore The Beastwarrens |achieve 14663/11 |goto The Maw/0 49.57,63.30
step
Explore Desmotaeron |achieve 14663/4 |goto The Maw/0 55.19,62.09
step
Follow the path |goto 51.59,62.73 < 15 |only if walking
Continue following the path |goto 60.53,63.04 < 15
Explore Ravener's Lament |achieve 14663/9 |goto The Maw/0 62.50,66.85
step
Explore Marrow's Coppice |achieve 14663/6 |goto The Maw/0 47.00,80.86
step
Cross the bridge |goto 42.94,63.59 < 10 |only if walking
Explore Perdition Hold |achieve 14663/7 |goto The Maw/0 32.88,66.54
step
Enter the gate |goto 34.93,66.39 < 10 |only if walking
Explore The Altar of Domination |achieve 14663/10 |goto The Maw/0 23.15,68.38
step
_Congratulations!_
You Earned the "Explore The Maw" Achievement
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Shadowlands\\Loremaster of Shadowlands",{
author="support@zygorguides.com",
description="\nTo earn this achievement",
achieveid={14280},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Sojourner", "of", "Bastion"},
},[[
step
Earn "The Path to Ascension" Achievement |achieve 14280/1
|tip Refer to the "Bastion" leveling guide to accomplish this.
Click here to load the "Bastion" Leveling Guide |confirm |next "Leveling Guides\\Shadowlands (50-60)\\Bastion"
step
Earn the "Sojourner of Bastion" Achievement |achieve 14280/2
|tip Refer to the "Sojourner of Bastion" guide to accomplish this.
Click here to load the "Sojourner of Bastion" guide |confirm |next "Achievement Guides\\Quests\\Shadowlands\\Sojourner of Bastion"
step
Earn the "Blade of the Primus" Achievement |achieve 14280/3
|tip Refer to the "Maldraxxus" leveling guide to accomplish this.
Click here to load the "Maldraxxus" Leveling Guide |confirm |next "Leveling Guides\\Shadowlands (50-60)\\Maldraxxus"
step
Earn the "Sojourner of Maldraxxus" Achievement |achieve 14280/4
|tip Refer to the "Sojourner of Maldraxxus" guide to accomplish this.
Click here to load the "Sojourner of Maldraxxus" guide |confirm |next "Achievement Guides\\Quests\\Shadowlands\\Sojourner of Maldraxxus"
step
Earn the "Awaken, Ardenweald" Achievement |achieve 14280/5
|tip Refer to the "Ardenweald" leveling guide to accomplish this.
Click here to load the "Ardenweald" Leveling Guide |confirm |next "Leveling Guides\\Shadowlands (50-60)\\Ardenweald"
step
Earn the "Sojourner of Ardenweald" Achievement |achieve 14280/6
|tip Refer to the "Sojourner of Ardenweald" guide to accomplish this.
Click here to load the "Sojourner of Ardenweald" guide |confirm |next "Achievement Guides\\Quests\\Shadowlands\\Sojourner of Ardenweald"
step
Earn "The Master of Revendreth" Achievement |achieve 14280/7
|tip Refer to the "Revendreth" leveling guide to accomplish this.
Click here to load the "Revendreth" Leveling Guide |confirm |next "Leveling Guides\\Shadowlands (50-60)\\Revendreth"
step
Earn the "Sojourner of Revendreth" Achievement |achieve 14280/8
|tip Refer to the "Sojourner of Revendreth" guide to accomplish this.
Click here to load the "Sojourner of Revendreth" guide |confirm |next "Achievement Guides\\Quests\\Shadowlands\\Sojourner of Revendreth"
step
_Congratulations!_
You Earned the "Loremaster of Shadowlands" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Shadowlands\\Sojourner of Bastion",{
author="support@zygorguides.com",
description="\nTo earn this achievement",
achieveid={14801},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Sojourner", "of", "Bastion"},
},[[
step
Complete the "In Agthia's Memory" Storyline |achieve 14801/1
Complete the "In the Garden of Respite" Storyline |achieve 14801/2
Complete the "Pride of Unit" Storyline |achieve 14801/3
|tip Refer to the Bastion leveling guide to accomplish this.
Click here to load the "Bastion" Leveling Guide |confirm |next "Leveling Guides\\Shadowlands (50-60)\\Bastion"
step
Reach Level 60 |ding 60
step
talk Kowalskos##164640
accept Broken Wings##59262 |goto Bastion/0 42.83,42.72
step
kill Ariella##164819
|tip Flying around this area.
collect Ariella's Wing##175791 |q 59262/1 |goto 46.11,36.76
step
talk Kowalskos##164640
turnin Broken Wings##59262 |goto 42.83,42.73
accept Feathers of Flight##59263 |goto 42.83,42.73
step
Kill enemies around this area
collect #100# Larion Flight Feather##175792 |q 59263/1 |goto Bastion/0 46.05,38.27
You can find more around here [goto 47.39,35.49]
step
talk Kowalskos##164640
turnin Feathers of Flight##59263 |goto 42.83,42.73
accept Flight Test##60660 |goto 42.83,42.73
step
talk Kowalskos##164640
Tell them _"Ready when you are."_
Talk to Kowalskos |q 60660/1 |goto 42.83,42.73
step
Follow Kowalskos
Watch the dialogue
Observe Kowalskos' Flight Test |q 60660/2 |goto 42.83,42.78
step
talk Kowalskos##164640
turnin Flight Test##60660 |goto 42.83,42.72
accept More Wings!##59348 |goto 42.83,42.72
accept Strings and Things##59351 |goto 42.83,42.73
stickystart "Collect_10_Etherwyrm_Filament"
step
map Bastion/0
path loop off;  dist 8
path	40.79,43.00	41.49,45.84	43.62,47.07	45.18,47.01
click Animyllis Bloom##346108
collect 4 Animyllis Bloom##175968 |q 59348/1
step
label "Collect_10_Etherwyrm_Filament"
Kill Etherwyrm enemies around this area
collect 10 Etherwyrm Filament##175967 |q 59351/1 |goto 43.67,46.97
You can find more here [goto 49.52,50.05]
step
map Bastion/0
path loop off;  dist 8
path	47.78,47.81	49.51,46.07	50.91,45.18	50.15,48.87	50.22,50.55
path	50.72,51.27
click Animyllis Bloom##346108
collect 10 Animyllis Bloom##175968 |q 59348/1
step
talk Kowalskos##164640
turnin More Wings!##59348 |goto 42.83,42.72
turnin Strings and Things##59351 |goto 42.83,42.73
accept How to Catch a Glimmerfly##59311 |goto 42.83,42.73
step
Cross the bridge |goto 44.49,36.86 < 10 |only if walking
use Animyllis Bloom##176812
clicknpc Starving Glimmerfly##165077
Capture #5# Glimmerflies |q 59311/1 |goto 41.89,30.50
step
Cross the bridge |goto 44.24,35.71 < 7 |only if walking
talk Kowalskos##164640
turnin How to Catch a Glimmerfly##59311 |goto 42.83,42.73
accept Glimmerflight##59865 |goto 42.83,42.73
step
Follow Kowalsko
Observe Kowalskos' Test Flight |q 59865/1 |goto 42.90,42.60
step
talk Kowalskos##164640
turnin Glimmerflight##59865 |goto 42.83,42.73
step
Earn the "Wings of Freedom" Achievement |achieve 14801/2
step
talk Haetio##159248
accept How to Become Forsworn##57860 |goto 36.69,37.57
accept Unshackled Knowledge##59207 |goto 36.69,37.57
stickystart "Collect_3_Uniform_Uniform_Piece"
step
clicknpc Historian Tyrana##165963
Free Historian Tyrana |q 59207/3 |goto 38.89,38.74
step
clicknpc Curator Lano##165961
Free Curator Lano |q 59207/1 |goto 39.07,40.29
step
clicknpc Librarian Eratus##165962
Free Librarian Eratus |q 59207/2 |goto 40.05,40.54
step
kill Quartermaster Taelica##159319
collect Quartermaster's Insignia##173029 |q 57860/2 |goto 40.57,41.00
step
label "Collect_3_Uniform_Uniform_Piece"
Kill Forsworn enemies around this area
collect 3 Forsworn Uniform Piece##175277 |q 57860/1 |goto 40.03,41.65
step
talk Haetio##159248
turnin How to Become Forsworn##57860 |goto 36.69,37.57
turnin Unshackled Knowledge##59207 |goto 36.69,37.57
accept Just Act Natural##57861 |goto 36.69,37.57
step
Use the _"Forsworn Disguise"_ ability
|tip It appears as a button on the screen.
Wear the Forsworn Disguise |havebuff spell:310616 |q 57861
step
talk Artificer Ligiea##159272
turnin Just Act Natural##57861 |goto 42.73,39.42
accept Mark of Humility##57875 |goto 42.73,39.41
accept Mark of Knowledge##57914 |goto 42.73,39.41
step
Use the _"Kneel"_ ability
|tip It appears as a button on the screen.
Kneel before the barrier|goto 41.25,37.29
|tip The barrier will drop soon after.
Click here to continue |confirm |q 57875
step
Enter the building |goto 41.24,37.29 < 7
click Kalliope's Cache##345454
|tip Inside the building.
collect Mark of Humility##175754 |q 57875/1 |goto 40.37,36.58
step
Leave the building |goto 41.24,37.29 < 7
talk Forsworn Interrogator##164543
Ask her _"Interrogator! What have you learned?"_
Question the Forsworn Interrogator |q 57914/1 |goto 41.78,37.48
step
talk Forsworn Researcher##164505
Tell him _"Ligiea demands progress! Tell me what you know of the Mark of Knowledge!"_
Question the Forsworn Researcher |q 57914/2 |goto 42.12,36.88
step
click Brazier
Gain the Flame of Knowledge Buff |havebuff spell:320033 |q 57914 |goto 41.89,38.28
step
click Chamber Brazier
Chamber Brazier lit |q 57914/3 |count 1 |goto 42.57,36.61
step
click Chamber Brazier
Chamber Brazier lit |q 57914/3 |goto 42.99,36.58
step
Enter the building |goto 42.75,36.29 < 7
click Kalliope's Cache##345454
|tip Inside the building.
collect Mark of Knowledge##175755 |q 57914/4 |goto 42.64,34.65
step
Leave the building |goto 42.75,36.29 < 7
talk Artificer Ligiea##159272
turnin Mark of Humility##57875 |goto 43.21,38.44
turnin Mark of Knowledge##57914 |goto 43.21,38.44
accept You Go First##57966 |goto 43.21,38.44
step
click Trap Switch
|tip Inside the building.
Disarm the Trap |q 57966/1 |goto Third Chamber of Kalliope/0 33.59,81.08 |count 1
step
click Chamber Incense Burner
|tip Kill the enemies that spawn.
kill First Guardian of Kalliope##160110 |q 57966/2 |goto 38.43,75.81
step
click Trap Switch
|tip Inside the building.
Disarm the Trap |q 57966/1 |goto Third Chamber of Kalliope/0 60.38,79.31 |count 2
step
click Trap Switch
|tip Inside the building.
Disarm the Trap |q 57966/1 |goto Third Chamber of Kalliope/0 68.89,60.18
step
talk Artificer Ligiea##159272
turnin You Go First##57966 |goto 60.96,51.00
accept The Spear of Kalliope##57989 |goto 61.03,51.07
step
Watch the Dialogue
kill Artificer Ligiea##164604 |q 57989/1 |goto 60.79,44.67
step
click Spear of Kalliope##345468
collect Spear of Kalliope##173354 |q 57989/2 |goto 60.09,43.36
step
talk Haetio##159248
turnin The Spear of Kalliope##57989 |goto Bastion/0 43.24,38.46
accept Rightful Resting Place##57967 |goto 43.24,38.46
step
click Spear of Kalliope##345468
|tip Downstairs inside the building.
turnin Rightful Resting Place##57967 |goto Elysian Hold/1 63.62,40.18
step
_Congratulations!_
You Earned the "Sojourner of Bastion" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Shadowlands\\Sojourner of Revendreth",{
author="support@zygorguides.com",
description="\nTo earn this achievement",
achieveid={14798},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Sojourner", "of", "Revendreth"},
},[[
step
Complete the "The Duelists's Debt" Storyline |achieve 14798/1
Complete the "Tithes of Darkhaven" Storyline |achieve 14798/2
Complete the "Dirty Jobs" Storyline |achieve 14798/3
Complete the "Mirror Maker of the Master" Storyline |achieve 14798/5
Complete the "Revelations of the Light" Storyline |achieve 14798/6
|tip Refer to the Bastion leveling guide to accomplish this.
Click here to load the "Revendreth" Leveling Guide |confirm |next "Leveling Guides\\Shadowlands (50-60)\\Revendreth"
step
Reach level 60 |ding 60
step
Enter the building |goto Revendreth/0 71.84,40.34 < 7 |walk
talk The Accuser##160116
|tip Downstairs inside the building.
accept An Abuse of Power##57919 |goto 71.76,40.41
step
clicknpc Abused Soul##160107
|tip Downstairs inside the building.
Subjigate the Abused Soul |q 57919/1 |goto 71.47,40.70
step
kill Shattered Soul##160120
|tip Downstairs inside the building.
Slay the Shattered Soul |q 57919/2 |goto 71.49,40.70
step
talk The Accuser##160116
|tip Downstairs inside the building.
turnin An Abuse of Power##57919 |goto 71.75,40.42
accept The Proper Souls##57920 |goto 71.75,40.42
accept The Proper Tools##57921 |goto 71.75,40.42
accept The Proper Punishment##57922 |goto 71.75,40.42
stickystart "Collect_Venthyr_Ritual_Robes"
stickystart "Collect_Venthyr_Ritual_Dagger"
stickystart "Collect_Venthyr_Ritual_Tome"
stickystart "Subjugate_Fugitive_Souls"
step
Leave the building |goto 71.84,40.33 < 7 |walk
kill Fata the Soulflayer##159677 |q 57922/1 |goto 65.34,43.75
step
label "Subjugate_Fugitive_Souls"
clicknpc Fugitive Soul##160149
Fugitive Souls subjugated |q 57920/1 |goto 68.24,42.84
step
label "Collect_Venthyr_Ritual_Robes"
Kill Depraved enemies around this area
collect Venthyr Ritual Robes##173695 |q 57921/1 |goto 68.24,42.84
step
label "Collect_Venthyr_Ritual_Dagger"
Kill Depraved enemies around this area
collect Venthyr Ritual Dagger##173696|q 57921/2 |goto 68.24,42.84
step
label "Collect_Venthyr_Ritual_Tome"
Kill Depraved enemies around this area
collect Venthyr Ritual Tome##173697 |q 57921/3 |goto 68.24,42.84
step
talk The Accuser##160139
turnin The Proper Souls##57920 |goto 70.70,46.97
turnin The Proper Tools##57921 |goto 70.70,46.97
turnin The Proper Punishment##57922 |goto 70.70,46.97
accept Ritual of Absolution##57923 |goto 70.70,46.97
step
talk The Accuser##160163
Tell her _"I'm ready. Begin the ritual."_
Start the absolution ritual |q 57923/1 |goto 71.98,46.22
step
kill Burden of Pride##160195
|tip They will attack in waves.
Complete the Ritual |q 57923/2 |goto 71.94,46.23
step
talk The Accuser##160163
turnin Ritual of Absolution##57923 |goto 71.96,46.23
accept Ritual of Judgment##57924 |goto 71.96,46.23
step
Follow The Accuser
Tell her _"I'm ready. Begin the ritual."_
Join the Ritual of Judgment |q 57924/1 |goto 74.12,49.72
step
Watch the dialogue
Judge the Souls |q 57924/2 |goto 74.12,49.72
step
talk The Accuser##160294
turnin Ritual of Judgment##57924 |goto 74.30,49.72
accept Archivist Fane##57925 |goto 74.30,49.72
step
talk Archivist Fane##160248
|tip Inside the building.
turnin Archivist Fane##57925 |goto 72.99,52.00
accept The Sinstone Archive##57926 |goto 72.99,52.00
accept Missing Stone Fiend##60127 |goto 72.99,52.00
stickystart "Collect_100_Sinstone_Records"
step
Kill enemies around this area
accept Atonement Crypt Key##57928 |goto 72.51,52.86
|tip You will eventually automatically accept this quest after looting.
step
talk Cryptkeeper Kassir##163073
turnin Missing Stone Fiend##60127 |goto 70.15,56.21
accept Rebuilding Temel##57927 |goto 70.14,56.21
step
click Crypt Door
Open the Atonement Crypt |q 57928/1 |goto 68.99,55.37
step
click Temel's Body##339224
collect Temel's Body##173737 |q 57927/1 |goto 68.90,53.28
step
click Temel's Head##339226
collect Temel's Head##173739 |q 57927/3 |goto 70.23,53.79
step
click Temel's Wings##339225
collect Temel's Wings##173738 |q 57927/2 |goto 66.11,53.09
step
label "Collect_100_Sinstone_Records"
Kill enemies around this area
collect 100 Sinstone Records##173733 |q 57926/1 |goto 69.17,55.28
step
talk Cryptkeeper Kassir##163073
turnin Rebuilding Temel##57927 |goto 70.15,56.22
turnin Atonement Crypt Key##57928 |goto 70.15,56.22
accept Ready to Serve##60128 |goto 70.15,56.22
step
talk Archivist Fane##160248
|tip Inside the building.
turnin The Sinstone Archive##57926 |goto 72.99,52.00
turnin Ready to Serve##60128 |goto 72.99,52.00
accept Hunting an Inquisitor##57929 |goto 72.99,52.00
step
Use the _"Read Inquisitor Traian's Sinstone"_ ability
|tip It appears as a button on the screen.
kill Inquisitor Traian##159151	|q 57929/1 |goto 76.19,52.11
step
talk Archivist Fane##160248
|tip Inside the building.
turnin Hunting an Inquisitor##57929 |goto 72.99,52.00
accept Halls of Atonement: Your Absolution##58092 |goto 73.00,52.00
step
Enter the _Halls of Atonement_ Dungeon:
kill Lord Chamberlain##164218 |q 58092/1
|tip Refer to the Halls of Atonement dungeon guide to accomplish this.
step
Enter the building |goto 71.83,40.34 < 7 |walk
talk Gresit##167332
|tip Downstairs inside the building.
turnin Halls of Atonement: Your Absolution##58092 |goto 71.73,40.37
step
_Congratulations!_
You Earned the "Sojourner of Revendreth" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Shadowlands\\Sojourner of Ardenweald",{
author="support@zygorguides.com",
description="\nTo earn this achievement",
achieveid={14800},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Sojourner", "of", "Ardenweald"},
},[[
step
Complete the "When a Gorm Eats a God" Storyline |achieve 14800/2
Complete the "Trouble at the Gormling Corral" Storyline |achieve 14800/3
Complete the "Tricky Spriggans" Storyline |achieve 14800/4
Complete the "An Ominous Stone" Storyline |achieve 14800/5
Complete the "Wicked Plan" Storyline |achieve 14800/6
|tip Refer to the Ardenweald leveling guide to accomplish this.
Click here to load the "Ardenweald" Leveling Guide |confirm |next "Leveling Guides\\Shadowlands (50-60)\\Ardenweald"
step
Reach level 60 |ding 60
step
talk Aithlyn##158556
accept Silk Shortage##57661 |goto Ardenweald/0 48.49,50.42
step
talk Caretaker Lillythistle##159270
turnin Silk Shortage##57661 |goto 38.98,29.93
accept Tough as Silk##60061 |goto 38.98,29.93
stickystart "Preserve_the_Silk_Production"
step
click Broken Harp
accept The Shattered Harp##60062 |goto 38.11,28.71
step
Kill enemies around this area
collect 3 Harp Piece##178138 |q 60062/1 |goto 35.37,28.83
step
label "Preserve_the_Silk_Production"
Kill enemies around this area
clicknpc Silkstrider Caretaker##159424
Preserve the Silk Production |q 60061/1 |goto 35.37,28.83
step
talk Caretaker Lillythistle##159270
turnin Tough as Silk##60061 |goto 38.98,29.93
step
Follow the path up |goto 38.83,28.43 < 10 |only if walking
Cross the bridge |goto 36.83,27.59 < 10 |only if walking
talk Artisan Rees##167047
turnin The Shattered Harp##60062 |goto 37.05,29.66
accept A Song for Silkstriders##60063 |goto 37.05,29.66
accept Save Ol' Gertie##60064 |goto 37.05,29.66
step
use the Silkstrider Harp##178143
|tip use it on Maribel.
click Raw Silkstrider Silk##350886
|tip Appears on the ground.
collect 1 Raw Silkstrider Silk##178144 |q 60063/1 |goto 37.57,27.70
step
use the Silkstrider Harp##178143
|tip use it on Daisy.
click Raw Silkstrider Silk##350886
|tip Appears on the ground.
collect 2 Raw Silkstrider Silk##178144 |q 60063/1 |goto 36.26,28.14
step
use the Silkstrider Harp##178143
|tip use it on Lillythistle Jr..
click Raw Silkstrider Silk##350886
|tip Appears on the ground.
collect 3 Raw Silkstrider Silk##178144 |q 60063/1 |goto 35.03,29.60
step
Follow the path up < 10 |only if walking
use the Silkstrider Harp##178143
|tip use it on .
click Raw Silkstrider Silk##350886
|tip Appears on the ground.
collect 4 Raw Silkstrider Silk##178144 |q 60063/1 |goto 35.01,28.82
step
Follow the path up |goto 35.16,27.46 < 7 |only if walking
kill Noisul of Many Faces##167089 |q 60064/1 |goto 36.25,26.31
step
talk Gertie Jr.##159388
turnin Save Ol' Gertie##60064 |goto 37.28,25.99
accept Thread of Hope##60065 |goto 37.28,25.99
step
Cross the bridge |goto 36.83,27.59 < 10 |only if walking
talk Artisan Rees##167047
turnin A Song for Silkstriders##60063 |goto 37.05,29.66
step
talk Caretaker Lillythistle##159270
turnin Thread of Hope##60065 |goto 38.98,29.93
accept Silk for Ardenweald##60066 |goto 38.98,29.93
step
talk Aithlyn##158556
turnin Silk for Ardenweald##60066 |goto 48.48,50.42
step
_Congratulations!_
You Earned the "Sojourner of Ardenweald" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Shadowlands\\Sojourner of Maldraxxus",{
author="support@zygorguides.com",
description="\nTo earn this achievement",
achieveid={14799},
patch='90001',
startlevel=60,
keywords={"Shadowlands", "Sojourner", "of", "Maldraxxus"},
},[[
step
Complete the "Archival Protection" Storyline |achieve 14799/2
Complete the "Wasteland Work" Storyline |achieve 14799/4
|tip Refer to the Ardenweald leveling guide to accomplish this.
Click here to load the "Maldraxxus" Leveling Guide |confirm |next "Leveling Guides\\Shadowlands (50-60)\\Maldraxxus"
step
talk Anzio the Infallible##161733
accept The Ladder##57316 |goto Maldraxxus/0 50.57,51.62
step
Kill enemies around this area
Kill 2 Arena opponents |q 58605/1 |goto 50.34,47.27
step
talk Anzio the Infallible##161733
turnin The Ladder##57316 |goto 50.58,51.62
step
Complete the "Theater of Pain" Storyline |achieve 14799/1
step
talk Foul-Tongue Cyrlix##157313
accept Callous Concoctions##57301 |goto 58.52,73.45
step
kill Burning Extract##165027+
|tip Click the oil, goo, or ooze that sometimes spawns after killing extracts.
Collect an Oozing Ingredient |q 57301/1 |goto 60.71,77.24 |count 1
step
Deliver #3# Viscous Oil, Mephitic Goo, or Miscible Ooze to the Pool |q 57301/2 |goto 58.43,74.31 |count 1
|tip Walk near the pool of blood.
step
kill Burning Extract##165027+
|tip Click the oil, goo, or ooze that sometimes spawns after killing extracts.
Collect an Oozing Ingredient |q 57301/1 |goto 60.71,77.24 |count 2
step
Deliver #3# Viscous Oil, Mephitic Goo, or Miscible Ooze to the Pool |q 57301/2 |goto 58.43,74.31 |count 2
|tip Walk near the pool of blood.
step
kill Burning Extract##165027+
|tip Click the oil, goo, or ooze that sometimes spawns after killing extracts.
Collect an Oozing Ingredient |q 57301/1 |goto 60.71,77.24 |count 3
step
Deliver #3# Viscous Oil, Mephitic Goo, or Miscible Ooze to the Pool |q 57301/2 |goto 58.43,74.31 |count 3
|tip Walk near the pool of blood.
step
talk Foul-Tongue Cyrlix##157313
turnin Callous Concoctions##57301 |goto 58.52,73.45
step
_Congratulations!_
You Earned the "Sojourner of Maldraxxus" Achievement
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Character Achievements\\Quest Achievements\\Shadowlands\\Return to Lordaeron",{
author="support@zygorguides.com",
description="\nTo earn this achievement, complete the Return to Lordaeron storyline.",
achieveid={15579},
patch='90205',
startlevel=60,
keywords={"Shadowlands","9.2.5","Dark","Ranger"},
},[[
step
talk Genn Greymane##185525 |only if Alliance
talk Calia Menethil##173386 |only if Horde
accept Eyes of the Wolf##65655 |goto Oribos/0 41.64,62.88 |only if Alliance
accept Call to Lordaeron##65656 |goto Oribos/0 41.19,69.29 |only if Horde
step
talk Gilnean Greymage##185914 |only if Alliance
talk Forsaken Dreadmage##186199 |only if Horde
Tell him _"Send me to Tirisfal Glades."_
Speak to a Gilnean Greymage for a Teleport |q 65655/1 |goto 41.44,62.38 |only if Alliance
Speak to a Forsaken Dreadmage for a Teleport |q 65656/1 |goto 41.51,69.77 |only if Horde
step
Enter the building |goto Tirisfal Glades L/0 60.83,51.92 < 7 |walk
talk Calia Menethil##185512
|tip Inside the building.
turnin Eyes of the Wolf##65655 |goto 60.80,51.37 |only if Alliance
turnin Call to Lordaeron##65656 |goto 60.80,51.37 |only if Horde
accept Assemble the Forsaken##65657 |goto 60.80,51.37
step
talk Dark Ranger Velonara##185514
accept This Land is Ours##65658 |goto 61.97,50.50
stickystart "Slay_8_Blighted_Soldiers_and_Shadowmages"
step
talk Master Apothecary Faranell##185794
Tell him _"It's time to meet with the other Forsaken."_
Speak to Master Apothecary Faranell |q 65657/3 |goto 63.23,55.52
step
talk Lilian Voss##185793
Tell her _"It's time to meet with the other Forsaken."_
Speak to Lilian Voss |q 65657/2 |goto 57.57,49.21
step
label "Slay_8_Blighted_Soldiers_and_Shadowmages"
Kill enemies around this area
Slay #8# Blighted Soldiers and Shadowmages |q 65658/1 |goto 63.83,50.75
step
Enter the building |goto 60.83,51.92 < 7 |walk
talk Dark Ranger Velonara##185792
|tip Inside the building.
turnin This Land is Ours##65658 |goto 60.79,51.56
step
talk Lilian Voss##185513
|tip Inside the building.
turnin Assemble the Forsaken##65657 |goto 60.90,51.34
accept The Blight Congress##65659 |goto 60.90,51.34
step
talk Lilian Voss##185513
|tip Inside the building.
Tell her _"Let's begin."_
Speak with Lilian to begin |q 65659/1 |goto 60.90,51.34
step
Watch the dialogue
|tip Inside the building.
Listen to the Discussion |q 65659/2 |goto 60.90,51.34
step
talk Calia Menethil##185512
|tip Inside the building.
Tell her _"What do you propose?"_
Speak to Calia |q 65659/3 |goto 60.80,51.37
step
talk Calia Menethil##185797
turnin The Blight Congress##65659 |goto 61.97,55.66
accept Walk of Faith##65660 |goto 61.97,55.66
step
talk Calia Menethil##185797
Tell her _"Let's get that plague sample."_
Speak to Calia to Begin |q 65660/1 |goto 61.97,55.66
step
Kill enemies that attack Calia
extraaction Collect Pure Sample##368875
|tip Use it when it appears on your screen as Calia stops.
|tip Stay inside Calia's bubble for protection.
Collect a Pure Plague Sample |q 65660/2 |goto 61.94,58.48
step
Kill enemies that attack Calia
|tip Stay inside Calia's bubble for protection.
Escape the Blight with Calia |q 65660/3 |goto 61.92,55.55
step
talk Lilian Voss##185513
turnin Walk of Faith##65660 |goto 61.92,55.56
accept Consulting Our Allies##65661 |goto 61.92,55.56
step
talk Margrave Sin'dane##177782
|tip Inside the the floating citadel.
turnin Consulting Our Allies##65661 |goto Maldraxxus/0 74.83,33.65
accept House of Plagues##65662 |goto 74.83,33.65
step
talk Plague Deviser Marileth##185517
turnin House of Plagues##65662 |goto 71.15,71.47
accept Essence of Plague##65664 |goto 71.15,71.47
step
talk Calia Menethil##185803
accept Feed the Eater##65663 |goto 71.14,71.37
stickystart "Clear_the_House_of_Plagues"
step
clicknpc Simmering Concoction##185816
Absorb the Simmering Concoction |q 65664/1 |goto 70.96,74.06
step
clicknpc Unstable Concoction##185821
Absorb the Unstable Concoction |q 65664/2 |goto 69.65,75.61
step
clicknpc Tumultuous Concoction##185824
Absorb the Tumultuous Concoction |q 65664/3 |goto 68.53,79.80
step
label "Clear_the_House_of_Plagues"
Kill Plague enemies around this area
Clear the House of Plagues |q 65663/1 |goto 69.98,73.42
You can find more around [69.09,76.72] |notinsticky
step
talk Calia Menethil##185826
turnin Feed the Eater##65663 |goto 68.67,81.69
step
talk Plague Deviser Marileth##185825
turnin Essence of Plague##65664 |goto 68.66,81.76
accept Embodiment##65665 |goto 68.67,81.76
step
kill Lordaeron Blight##185828 |q 65665/1 |goto 68.26,84.56
|tip Avoid slime waves from the sides and don't stand in slime pools.
step
talk Lilian Voss##185829
turnin Embodiment##65665 |goto 68.61,81.81
accept Return to Brill##65666 |goto 68.61,81.81
step
use Lilian's Hearthstone##191029
Return to Brill |goto Tirisfal Glades L/0 60.92,50.28 < 100 |c |noway |q 65666
step
Leave the building |goto 60.83,51.91 < 7 |walk
talk Master Apothecary Faranell##185831
Tell him _"Checking in. What's next?"_
Speak to Master Apothecary Faranell |q 65666/1 |goto 65.78,60.13
step
Watch the dialogue
talk Master Apothecary Faranell##185831
turnin Return to Brill##65666 |goto 65.78,60.13
step
talk Calia Menethil##185839
accept The Remedy of Lordaeron##65667 |goto 65.84,60.37
step
clicknpc Shadowbat##185832
Mount the Shadowbat |q 65667/1 |goto 65.72,59.78
step
Drop Plague Eaters in the Ruins of Lordaeron |q 65667/2 |goto 59.18,71.38
|tip Use the "Deploy" ability in the first slot of your action bar.
|tip Use the "Call Batriders" in the second slot of your action bar on areas with purple arrows.
step
kill Amalgam##185841 |q 65667/3 |goto 62.56,72.12
|tip Use the final three abilities on your action bar.
step
Watch the dialogue
Return to the Ground |outvehicle |q 65667
step
talk Lilian Voss##185852
turnin The Remedy of Lordaeron##65667 |goto 61.85,67.75
accept The Desolate Council##65668 |goto 61.85,67.75
step
Watch the dialogue
Witness the Formation of the Desolate Council |q 65668/1 |goto 61.79,67.78
step
talk Calia Menethil##185848
turnin The Desolate Council##65668 |goto 61.79,67.78
step
talk Dark Ranger Velonara##185851
accept Path of the Dark Rangers##66090 |goto 61.92,67.78 |only if Alliance
accept Path of the Dark Rangers##66091 |goto 61.92,67.78 |only if Horde
step
talk Calia Menethil##185848 |only if Alliance
talk Lilian Voss##185852 |only if Horde
accept Report to Greymane##65669 |goto 61.79,67.78 |only if Alliance
accept A Walk with Ghosts##65788 |goto 61.85,67.75 |only if Horde
step
talk Genn Greymane##185525
Choose _<Give Genn Greymane the letter.>_
Deliver Calia's Letter to Genn Greymane |q 65669/1 |goto Oribos/0 41.65,62.86
|only if Alliance
step
talk Genn Greymane##185525 |only if Alliance
turnin Report to Greymane##65669 |goto 41.65,62.86
|only if Alliance
step
Enter the Throne Room of Lordaeron |q 65788/1 |goto Tirisfal Glades L/0 61.81,72.04
|only if Horde
step
talk Calia Menethil##185893 |only if Horde
turnin A Walk with Ghosts##65788 |goto 61.85,72.83
|only if Horde
step
_Congratulations!_
You Earned the "Return to Lordaeron" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Unlocking the Secrets",{
author="support@zygorguides.com",
description="\nComplete the Zereth Mortis achievements listed below:\n\nExplore Zereth Mortis\n"..
"Tales of the Exile\nCurious Collections\nAdventures in Zereth Mortis\nPath to Enlightenment\n"..
"A Means to an End",
achieveid={15514},
patch='90200',
startlevel=60,
keywords={"Zereth", "Mortis", "Flying", "9.2"},
},[[
stickystart "Earn_Curious_Collections_Achievement"
stickystart "Earn_Adventures_in_Zereth_Mortis_Achievement"
step
Complete the "The Way Forward" Quest |complete completedq(65305) |or
|tip This quest unlocks the "Look Who I Found!" questline.
|tip Use the "Zereth Mortis" leveling guide to accomplish this.
|tip While doing this, you will complete the "Not All Are Lost" questline.
Click Here to Load the Zereth Mortis Leveling Guide |loadguide "Leveling Guides\\Shadowlands (50-60)\\Eternity's End\\Zereth Mortis"
step
talk Tamra##184486
accept Look Who I Found!##65064 |goto Zereth Mortis/0 34.71,66.29
stickystart "Collect_6_Chromatic_Rosid"
step
label "Collect_6_Chromatic_Rosid"
click Chromatic Rosid##373461+
|tip They look like clusters of white and blue flowers on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect Chromatic Rosid##187942 |q 65064/1 |goto 44.50,67.78
You can find more around [45.53,72.82]
step
Follow the path up |goto 47.43,73.78 < 20 |only if walking
Follow the path |goto 49.76,76.92 < 10 |only if walking
click Firim in Exile, Part 4##375984
|tip It looks like a small scroll next to the bush and wall.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
|tip This is required to unlock flying.
collect Firim in Exile, Part 4##189579 |goto Zereth Mortis/0 49.86,76.60 |achieve 15509/4 |or
|only if not achieved(15509)
step
talk Tamra##182346
Choose _<Give the flowers to Tamra.>_
Deliver the Chromatic Rosids to Tamra |q 65064/2 |goto 49.25,71.75
step
Watch the dialogue
Observe Tamra's Experiment |q 65064/3 |goto 49.25,71.75
step
talk Tamra##182346
turnin Look Who I Found!##65064 |goto 49.25,71.75
accept Flora Aroma##65066 |goto 49.25,71.75
accept Broker Beaker##65067 |goto 49.25,71.75
step
use the Chromatic Rosid##189479
|tip Use it on the Dimensional Bufonid.
Use a Chromatic Rosid on a Dimensional Bufonid |q 65066/3 |goto 49.20,74.15
step
use the Chromatic Rosid##189479
|tip Use it on the Dimensional Vombata.
Use a Chromatic Rosid on a Dimensional Vombata |q 65066/2 |goto 50.91,71.86
stickystart "Collect_Component_Breaker"
step
use the Chromatic Rosid##189479
|tip Use it on the Dimensional Cervid.
Use a Chromatic Rosid on a Dimensional Cervid |q 65066/1 |goto 53.71,68.43
step
label "Collect_Component_Breaker"
Kill Cervid enemies around this area
collect Component Beaker##187940 |q 65067/1 |goto 49.96,68.00
|tip Ravenous and Carnivorous Cervid drop this.
step
talk Tamra##182346
turnin Flora Aroma##65066 |goto 49.25,71.75
turnin Broker Beaker##65067 |goto 49.25,71.75
accept Cascades of Magnitude##65068 |goto 49.25,71.75
step
Fill the Water Beaker in the Waterfall |q 65068/1 |goto 50.88,72.60
|tip Just walk under it.
step
Use the _"Throw Water"_ ability
|tip Use it on Scaphio.
|tip Scaphio is a giant frog.
Throw Water on Scaphio |q 65068/2 |goto 50.43,74.19
step
Use the _"Throw Water"_ ability
|tip Use it on E'rnee.
|tip on E'rnee is a small creature following you.
Throw Water on E'rnee |q 65068/3 |goto 50.16,73.65
step
kill E'rnee##184604
|tip Reduce E'rnee's health.
Hold off E'rnee |q 65068/4 |goto 49.56,73.67
step
talk Tamra##182346
turnin Cascades of Magnitude##65068 |goto 49.25,71.75
accept Culling the Maelstrom##65069 |goto 49.25,71.75
step
Enter the cave |goto 52.37,73.44 < 10 |walk
kill 50 E'rnee Duplicate##182375 |q 65069/1 |goto 53.43,72.97
|tip Inside the cave.
step
talk Tamra##182346
turnin Culling the Maelstrom##65069 |goto 49.25,71.75
accept Can I Keep Him?##65070 |goto 49.25,71.75
step
Use the _"Throw Water"_ ability
|tip Use it on E'rnee.
Throw Water on E'rnee |q 65070/1 |goto 49.28,71.80
step
talk Tamra##182346
turnin Can I Keep Him?##65070 |goto 49.25,71.75
step
Explore Haven |achieve 15224/2 |goto Zereth Mortis/0 34.0,68.0 |notravel
step
Explore The Great Veldt |achieve 15224/3 |goto Zereth Mortis/0 38.0,63.0 |notravel
step
Run up the ramp |goto Zereth Mortis/0 40.81,62.77 < 10 |only if walking |notravel
click Firim in Exile, Part 2##375982
|tip It looks like a small scroll in Bitterbeak's nest.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 2##189576 |goto Zereth Mortis/0 41.78,62.47 |achieve 15509/2 |or |notravel
'|achieve 15509 |or
step
click Firim in Exile, Part 1##375973
|tip It looks like a small scroll where the ground meets the rock.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 1##189575 |goto Zereth Mortis/0 35.75,55.47 |achieve 15509/1 |or |notravel
'|achieve 15509 |or
step
Explore the Path of Inception |achieve 15224/1 |goto Zereth Mortis/0 27.0,53.0
step
click Firim in Exile, Part 3##375983
|tip It looks like a small scroll hidden on the ground between the two plants.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 3##189578 |goto Zereth Mortis/0 37.54,46.01 |achieve 15509/3 |or |notravel
'|achieve 15509 |or
step
Explore Faith's Repose |achieve 15224/4 |goto Zereth Mortis/0 36.0,43.0 |notravel
step
Explore the Terrace of Formation |achieve 15224/5 |goto Zereth Mortis/0 40.0,41.0 |notravel
step
Enter the cave |goto 38.68,31.88 < 15 |walk |notravel
click Firim in Exile, Part 5##375985
|tip It looks like a small scroll inside the cave where the floor meets the wall.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 5##189580 |goto Zereth Mortis/0 39.03,31.09 |achieve 15509/5 |or |notravel
'|achieve 15509 |or
step
Explore Zovaal's Grasp |achieve 15224/12 |goto Zereth Mortis/0 41.0,31.0 |notravel
step
Explore the Resonant Peaks |achieve 15224/17 |goto Zereth Mortis/0 51.0,29.0 |notravel
step
Explore the Deserted Overlook |achieve 15224/7 |goto Zereth Mortis/0 57.0,31.0 |notravel
step
Explore The Dread Portal |achieve 15224/9 |goto Zereth Mortis/0 59.0,22.0 |notravel
step
click Firim in Exile, Part 6##375986
|tip It looks like a small scroll where the sand meets the rock.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 6##189581 |goto Zereth Mortis/0 67.42,25.17 |achieve 15509/6 |or |notravel
'|achieve 15509 |or
step
click Firim in Exile, Part 7##375987
|tip It looks like a small scroll on the mound of sand next to a corpse.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 7##189582 |goto Zereth Mortis/0 64.83,33.65 |achieve 15509/7 |or |notravel
'|achieve 15509 |or
step
Explore the Arrangement Index |achieve 15224/15 |goto Zereth Mortis/0 66.0,36.0 |notravel
step
Explore the Plain of Actualization |achieve 15224/14 |goto Zereth Mortis/0 54.0,47.0 |notravel
step
Explore Pilgrim's Grace |achieve 15224/13 |goto Zereth Mortis/0 59.0,51.0 |notravel
step
Explore the Lexical Glade |achieve 15224/16 |goto Zereth Mortis/0 56.0,84.0 |notravel
step
Explore the Catalyst Gardens |achieve 15224/6 |goto Zereth Mortis/0 44.0,87.0 |notravel
step
Follow the path |goto 49.76,76.92 < 10 |only if walking |notravel
click Firim in Exile, Part 4##375984
|tip It looks like a small scroll next to the bush and wall.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 4##189579 |goto Zereth Mortis/0 49.86,76.60 |achieve 15509/4 |or |notravel
'|achieve 15509 |or
step
Explore the Dimensional Falls |achieve 15224/8 |goto Zereth Mortis/0 52.0,72.0 |notravel
step
Explore the Provis Fauna |achieve 15224/10 |goto Zereth Mortis/0 46.0,64.0 |notravel
step
Explore the Genesis Fields |achieve 15224/11 |goto Zereth Mortis/0 40.0,72.0 |notravel
step
talk Drim##181084
|tip This quest is likely not available until at least week two of patch 9.2.
accept The Wellspring of the First Ones##65463 |goto 61.49,49.18
step
Visit the Wellspring |q 65463/1 |goto 61.88,53.52
step
talk Olem##182146
turnin The Wellspring of the First Ones##65463 |goto 61.88,53.52
accept Lost Grace##65349 |goto 61.88,53.52
step
Investigate Provis Esper |q 65349/1 |goto 55.05,50.16
step
talk Ruined Locrian Technician##184421
turnin Lost Grace##65349 |goto 55.05,50.16
step
talk Nadir##184537
accept Restore the Flow##65350 |goto 55.12,50.19
accept An Automa-free Diet##65353 |goto 55.12,50.19
stickystart "Slay_10_Breachers_and_Gorgers_Temporary"
step
click Locrian Key
collect Locrian Swale##188199 |q 65350/1 |goto 55.12,50.19
step
Fight your way into Locrian Esper |q 65350/2 |goto Locrian Esper/0 31.08,34.87
step
click Locrian Swale
|tip Inside the building.
Place the Unpowered Keystone |q 65350/3 |goto 48.66,68.73
step
click Locrian Power Pylon
|tip Inside the building.
Reactivate the Power Pylon |q 65350/4 |goto 48.65,75.04 |count 1
step
click Locrian Power Pylon
|tip Inside the building.
Reactivate the Southern Pylon |q 65350/4 |goto 44.14,68.80 |count 2
step
click Percolation Array
|tip Inside the building.
Align the Percolation Array |q 65350/5 |goto 51.57,68.76
step
kill Xyrath the Souldrinker##185037 |q 65350/6 |goto 74.81,68.86
|tip Inside the building.
step
click Percolation Array
|tip Inside the building.
turnin Restore the Flow##65350 |goto 51.57,68.76
accept A Return to Grace##65448 |goto 51.57,68.76
step
label "Slay_10_Breachers_and_Gorgers_Temporary"
kill Reality Breacher##184185
kill Invading Gorger##184198
Slay #10# Breachers and Gorgers |q 65353/1 |goto Zereth Mortis/0 53.96,51.95
step
talk Olem##182146
Tell him _"The devourer threat has been pushed back and the Wellspring has been restored."_
Report Back to Conservator Olem |q 65448/1 |goto 61.87,53.52
step
Step Into the Center of the Wellspring |q 65448/2 |goto 61.53,53.67
step
talk Olem##182146
turnin A Return to Grace##65448 |goto 61.87,53.52
step
talk Nadir##182458
turnin An Automa-free Diet##65353 |goto 61.86,53.39
step
Complete the "Arbiter in the Making" Quest |complete completedq(65328) |achieve 15518 |or
|tip This quest completes the "A Means to an End" achievement and the sixth chapter of the campaign.
|tip Additional chapters past the first release on a weekly basis.
|tip Use the "Zereth Mortis" leveling guide to accomplish this.
Click Here to Load the Zereth Mortis Leveling Guide |loadguide "Leveling Guides\\Shadowlands (50-60)\\Eternity's End\\Zereth Mortis"
step
label "Earn_Curious_Collections_Achievement"
Earn the "Curious Collections" Achievement |achieve 15513
|tip Open your map in Zereth Mortis and click POI treasure icons to load the associated guide.
|tip Complete any five treasure guides to earn this achievement.
step
label "Earn_Adventures_in_Zereth_Mortis_Achievement"
Earn the "Adventures in Zereth Mortis" Achievement |achieve 15512
|tip Open your map in Zereth Mortis and click POI rare icons to load the associated guide.
|tip Most of these mobs are rare elite and will require a group and some amount of waiting.
|tip Complete any ten rare NPC guides to earn this achievement.
step
Earn the "Unlocking the Secrets" Achievement |achieve 15514
step
_Congratulations!_
You Earned the "Unlocking the Secrets" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Curious Collections",{
author="support@zygorguides.com",
description="\nDiscover 5 hidden treasures of Zereth Mortis.",
achieveid={15513},
patch='90200',
startlevel=60,
keywords={"Zereth", "Mortis", "Flying", "9.2", "Treasures, Exploration"},
},[[
step
Earn the "Curious Collections" Achievement |achieve 15513
|tip Open your map in Zereth Mortis and click POI treasure icons to load the associated guide.
|tip Complete any five treasure guides to earn this achievement.
step
_Congratulations!_
You Earned the "Curious Collections" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Adventures in Zereth Mortis",{
author="support@zygorguides.com",
description="\nComplete 10 of the special encounters in Zereth Mortis.",
achieveid={15512},
patch='90200',
startlevel=60,
keywords={"Zereth", "Mortis", "Flying", "9.2", "Rares, Exploration"},
},[[
step
Earn the "Adventures in Zereth Mortis" Achievement |achieve 15512
|tip Open your map in Zereth Mortis and click POI rare icons to load the associated guide.
|tip Most of these mobs are rare elite and will require a group and some amount of waiting.
|tip Complete any ten rare NPC guides to earn this achievement.
step
_Congratulations!_
You Earned the "Adventures in Zereth Mortis" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Tales of the Exile",{
author="support@zygorguides.com",
description="\nRead the seven volumes of \"Firim in Exile\" found in Zereth Mortis.",
achieveid={15509},
patch='90200',
startlevel=60,
keywords={"Firim", "In", "Zereth", "Mortis", "Flying", "9.2", "Exploration"},
},[[
step
Run up the ramp |goto Zereth Mortis/0 40.81,62.77 < 10 |only if walking
click Firim in Exile, Part 2##375982
|tip It looks like a small scroll in Bitterbeak's nest.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 2##189576 |goto Zereth Mortis/0 41.78,62.47 |or
'|achieve 15509 |or
step
click Firim in Exile, Part 1##375973
|tip It looks like a small scroll where the ground meets the rock.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 1##189575 |goto Zereth Mortis/0 35.75,55.47 |or
'|achieve 15509 |or
step
click Firim in Exile, Part 3##375983
|tip It looks like a small scroll hidden on the ground between the two plants.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 3##189578 |goto Zereth Mortis/0 37.54,46.01 |or
'|achieve 15509 |or
step
Enter the cave |goto 38.68,31.88 < 15 |walk
click Firim in Exile, Part 5##375985
|tip It looks like a small scroll inside the cave where the floor meets the wall.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 5##189580 |goto Zereth Mortis/0 39.03,31.09 |or
'|achieve 15509 |or
step
click Firim in Exile, Part 7##375987
|tip It looks like a small scroll on the mound of sand next to a corpse.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 7##189582 |goto Zereth Mortis/0 64.83,33.65 |or
'|achieve 15509 |or
step
click Firim in Exile, Part 6##375986
|tip It looks like a small scroll where the sand meets the rock.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 6##189581 |goto Zereth Mortis/0 67.42,25.17 |or
'|achieve 15509 |or
step
Follow the path up |goto 47.43,73.78 < 20 |only if walking
Follow the path |goto 49.76,76.92 < 10 |only if walking
click Firim in Exile, Part 4##375984
|tip It looks like a small scroll next to the bush and wall.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Part 4##189579 |goto Zereth Mortis/0 49.86,76.60 |or
'|achieve 15509 |or
step
Earn the "Tales of the Exile" Achievement |achieve 15509
step
Enter the cave |goto Zereth Mortis/0 34.97,45.67 < 10 |walk
click Firim in Exile, Epilogue##375988
|tip This volume is not required for the achievement.
|tip You can skip this step if you prefer.
|tip It looks like a small scroll inside the cave on the table in front of Firim.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
collect Firim in Exile, Epilogue##189753 |goto Zereth Mortis/0 34.25,48.72
step
_Congratulations!_
You Earned the "Tales of the Exile" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Shadowlands\\Path to Enlightenment",{
author="support@zygorguides.com",
description="\nComplete the storylines listed below:\n\nSmall Pet Problems\n"..
"Not All Are Lost\nA Return to Grace",
achieveid={15515},
patch='90200',
startlevel=60,
keywords={"Zereth", "Mortis", "Flying", "9.2", "Quests"},
},[[
step
Complete the "The Way Forward" Quest |complete completedq(65305) |or
|tip This quest unlocks the "Look Who I Found!" questline.
|tip Use the "Zereth Mortis" leveling guide to accomplish this.
|tip While doing this, you will complete the "Not All Are Lost" questline.
Click Here to Load the Zereth Mortis Leveling Guide |loadguide "Leveling Guides\\Shadowlands (50-60)\\Eternity's End\\Zereth Mortis"
step
talk Tamra##184486
accept Look Who I Found!##65064 |goto Zereth Mortis/0 34.71,66.29
stickystart "Collect_6_Chromatic_Rosid"
step
label "Collect_6_Chromatic_Rosid"
click Chromatic Rosid##373461+
|tip They look like clusters of white and blue flowers on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect Chromatic Rosid##187942 |q 65064/1 |goto 44.50,67.78
You can find more around [45.53,72.82]
step
Follow the path up |goto 47.43,73.78 < 20 |only if walking
Follow the path |goto 49.76,76.92 < 10 |only if walking
click Firim in Exile, Part 4##375984
|tip It looks like a small scroll next to the bush and wall.
|tip You may have to wait a few minutes for it to respawn if someone has recently looted it.
|tip This is required to unlock flying.
collect Firim in Exile, Part 4##189579 |goto Zereth Mortis/0 49.86,76.60 |achieve 15509/4 |or
|only if not achieved(15509)
step
talk Tamra##182346
Choose _<Give the flowers to Tamra.>_
Deliver the Chromatic Rosids to Tamra |q 65064/2 |goto 49.25,71.75
step
Watch the dialogue
Observe Tamra's Experiment |q 65064/3 |goto 49.25,71.75
step
talk Tamra##182346
turnin Look Who I Found!##65064 |goto 49.25,71.75
accept Flora Aroma##65066 |goto 49.25,71.75
accept Broker Beaker##65067 |goto 49.25,71.75
step
use the Chromatic Rosid##189479
|tip Use it on the Dimensional Bufonid.
Use a Chromatic Rosid on a Dimensional Bufonid |q 65066/3 |goto 49.20,74.15
step
use the Chromatic Rosid##189479
|tip Use it on the Dimensional Vombata.
Use a Chromatic Rosid on a Dimensional Vombata |q 65066/2 |goto 50.91,71.86
stickystart "Collect_Component_Breaker"
step
use the Chromatic Rosid##189479
|tip Use it on the Dimensional Cervid.
Use a Chromatic Rosid on a Dimensional Cervid |q 65066/1 |goto 53.71,68.43
step
label "Collect_Component_Breaker"
Kill Cervid enemies around this area
collect Component Beaker##187940 |q 65067/1 |goto 49.96,68.00
|tip Ravenous and Carnivorous Cervid drop this.
step
talk Tamra##182346
turnin Flora Aroma##65066 |goto 49.25,71.75
turnin Broker Beaker##65067 |goto 49.25,71.75
accept Cascades of Magnitude##65068 |goto 49.25,71.75
step
Fill the Water Beaker in the Waterfall |q 65068/1 |goto 50.88,72.60
|tip Just walk under it.
step
Use the _"Throw Water"_ ability
|tip Use it on Scaphio.
|tip Scaphio is a giant frog.
Throw Water on Scaphio |q 65068/2 |goto 50.43,74.19
step
Use the _"Throw Water"_ ability
|tip Use it on E'rnee.
|tip on E'rnee is a small creature following you.
Throw Water on E'rnee |q 65068/3 |goto 50.16,73.65
step
kill E'rnee##184604
|tip Reduce E'rnee's health.
Hold off E'rnee |q 65068/4 |goto 49.56,73.67
step
talk Tamra##182346
turnin Cascades of Magnitude##65068 |goto 49.25,71.75
accept Culling the Maelstrom##65069 |goto 49.25,71.75
step
Enter the cave |goto 52.37,73.44 < 10 |walk
kill 50 E'rnee Duplicate##182375 |q 65069/1 |goto 53.43,72.97
|tip Inside the cave.
step
talk Tamra##182346
turnin Culling the Maelstrom##65069 |goto 49.25,71.75
accept Can I Keep Him?##65070 |goto 49.25,71.75
step
Use the _"Throw Water"_ ability
|tip Use it on E'rnee.
Throw Water on E'rnee |q 65070/1 |goto 49.28,71.80
step
talk Tamra##182346
turnin Can I Keep Him?##65070 |goto 49.25,71.75
step
talk Drim##181084
|tip This quest is likely not available until at least week two of patch 9.2.
accept The Wellspring of the First Ones##65463 |goto 61.49,49.18
step
Visit the Wellspring |q 65463/1 |goto 61.88,53.52
step
talk Olem##182146
turnin The Wellspring of the First Ones##65463 |goto 61.88,53.52
accept Lost Grace##65349 |goto 61.88,53.52
step
Investigate Provis Esper |q 65349/1 |goto 55.05,50.16
step
talk Ruined Locrian Technician##184421
turnin Lost Grace##65349 |goto 55.05,50.16
step
talk Nadir##184537
accept Restore the Flow##65350 |goto 55.12,50.19
accept An Automa-free Diet##65353 |goto 55.12,50.19
stickystart "Slay_10_Breachers_and_Gorgers_Temporary"
step
click Locrian Key
collect Locrian Swale##188199 |q 65350/1 |goto 55.12,50.19
step
Fight your way into Locrian Esper |q 65350/2 |goto Locrian Esper/0 31.08,34.87
step
click Locrian Swale
|tip Inside the building.
Place the Unpowered Keystone |q 65350/3 |goto 48.66,68.73
step
click Locrian Power Pylon
|tip Inside the building.
Reactivate the Power Pylon |q 65350/4 |goto 48.65,75.04 |count 1
step
click Locrian Power Pylon
|tip Inside the building.
Reactivate the Southern Pylon |q 65350/4 |goto 44.14,68.80 |count 2
step
click Percolation Array
|tip Inside the building.
Align the Percolation Array |q 65350/5 |goto 51.57,68.76
step
kill Xyrath the Souldrinker##185037 |q 65350/6 |goto 74.81,68.86
|tip Inside the building.
step
click Percolation Array
|tip Inside the building.
turnin Restore the Flow##65350 |goto 51.57,68.76
accept A Return to Grace##65448 |goto 51.57,68.76
step
label "Slay_10_Breachers_and_Gorgers_Temporary"
kill Reality Breacher##184185
kill Invading Gorger##184198
Slay #10# Breachers and Gorgers |q 65353/1 |goto Zereth Mortis/0 53.96,51.95
step
talk Olem##182146
Tell him _"The devourer threat has been pushed back and the Wellspring has been restored."_
Report Back to Conservator Olem |q 65448/1 |goto 61.87,53.52
step
Step Into the Center of the Wellspring |q 65448/2 |goto 61.53,53.67
step
talk Olem##182146
turnin A Return to Grace##65448 |goto 61.87,53.52
step
talk Nadir##182458
turnin An Automa-free Diet##65353 |goto 61.86,53.39
step
Earn the "Path to Enlightenment" Achievement |achieve 15515
step
_Congratulations!_
You Earned the "Path to Enlightenment" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Shadowlands\\Explore Zereth Mortis",{
author="support@zygorguides.com",
description="\nExplore Zereth Mortis, revealing the covered areas of the world map.",
achieveid={15224},
patch='90200',
startlevel=60,
keywords={"Zereth", "Mortis", "Flying", "9.2", "Exploration"},
},[[
step
Explore Haven |achieve 15224/2 |goto Zereth Mortis/0 34.0,68.0
step
Explore The Great Veldt |achieve 15224/3 |goto Zereth Mortis/0 38.0,63.0
step
Explore the Path of Inception |achieve 15224/1 |goto Zereth Mortis/0 27.0,53.0
step
Explore Faith's Repose |achieve 15224/4 |goto Zereth Mortis/0 36.0,43.0
step
Explore the Terrace of Formation |achieve 15224/5 |goto Zereth Mortis/0 40.0,41.0
step
Explore Zovaal's Grasp |achieve 15224/12 |goto Zereth Mortis/0 41.0,31.0
step
Explore the Resonant Peaks |achieve 15224/17 |goto Zereth Mortis/0 51.0,29.0
step
Explore the Deserted Overlook |achieve 15224/7 |goto Zereth Mortis/0 57.0,31.0
step
Explore The Dread Portal |achieve 15224/9 |goto Zereth Mortis/0 59.0,22.0
step
Explore the Arrangement Index |achieve 15224/15 |goto Zereth Mortis/0 66.0,36.0
step
Explore the Plain of Actualization |achieve 15224/14 |goto Zereth Mortis/0 54.0,47.0
step
Explore Pilgrim's Grace |achieve 15224/13 |goto Zereth Mortis/0 59.0,51.0
step
Explore the Lexical Glade |achieve 15224/16 |goto Zereth Mortis/0 56.0,84.0
step
Explore the Catalyst Gardens |achieve 15224/6 |goto Zereth Mortis/0 44.0,87.0
step
Explore the Dimensional Falls |achieve 15224/8 |goto Zereth Mortis/0 52.0,72.0
step
Explore the Provis Fauna |achieve 15224/10 |goto Zereth Mortis/0 46.0,64.0
step
Explore the Genesis Fields |achieve 15224/11 |goto Zereth Mortis/0 40.0,72.0
step
Earn the "Explore Zereth Mortis" Achievement |achieve 15224
step
_Congratulations!_
You Earned the "Explore Zereth Mortis" Achievement
]])
